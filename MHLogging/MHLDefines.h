//
//  MHLDefines.h
//  MHLogging
//
//  Created by Malcolm Hall on 20/09/2017.
//  Copyright © 2017 Malcolm Hall. All rights reserved.
//

#ifndef MHL_EXTERN
#ifdef __cplusplus
#define MHL_EXTERN   extern "C" __attribute__((visibility ("default")))
#else
#define MHL_EXTERN   extern __attribute__((visibility ("default")))
#endif
#endif

#ifndef CK_HIDDEN
#define CK_HIDDEN   __attribute__((visibility("hidden")))
#endif

#ifndef MHL_EXTERN_HIDDEN
#ifdef __cplusplus
#define MHL_EXTERN_HIDDEN   extern "C" __attribute__((visibility ("hidden")))
#else
#define MHL_EXTERN_HIDDEN   extern __attribute__((visibility ("hidden")))
#endif
#endif
