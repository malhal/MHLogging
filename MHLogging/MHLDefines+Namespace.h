//
//  MHLDefines+Namespace.h
//  MHLogging
//
//  Generated using MHNamespaceGenerator on 21/09/2017
//

#if !defined(__MHLOGGING_NAMESPACE_APPLY) && defined(MHLOGGING_NAMESPACE) && defined(MHLOGGING_NAMESPACE_LOWER)
    #define __MHLOGGING_NAMESPACE_REWRITE(ns, s) ns ## _ ## s
    #define __MHLOGGING_NAMESPACE_BRIDGE(ns, s) __MHLOGGING_NAMESPACE_REWRITE(ns, s)
    #define __MHLOGGING_NAMESPACE_APPLY(s) __MHLOGGING_NAMESPACE_BRIDGE(MHLOGGING_NAMESPACE, s)
	#define __MHLOGGING_NAMESPACE_APPLY_LOWER(s) __MHLOGGING_NAMESPACE_BRIDGE(MHLOGGING_NAMESPACE_LOWER, s)
// Classes
// Categories
    #define MHL __MHLOGGING_NAMESPACE_APPLY(MHL)
    #define mhl_loggingDescription __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_loggingDescription)
    #define mhl_loggingDescriptionFromLoggable __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_loggingDescriptionFromLoggable)
    #define mhl_loggingDescriptionIncludingBrackets __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_loggingDescriptionIncludingBrackets)
    #define mhl_loggingIdentifier __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_loggingIdentifier)
    #define mhl_loggingValues __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_loggingValues)
    #define mhl_prettyDescriptionWithTabLevel __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_prettyDescriptionWithTabLevel)
    #define mhl_prettyLoggingDescription __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_prettyLoggingDescription)
    #define mhl_shortLoggingDescription __MHLOGGING_NAMESPACE_APPLY_LOWER(mhl_shortLoggingDescription)
// Externs
#endif
