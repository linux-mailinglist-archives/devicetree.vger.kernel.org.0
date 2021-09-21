Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C5E1041376F
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 18:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234561AbhIUQW2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 12:22:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234657AbhIUQWX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 12:22:23 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD1AEC0613EF
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 09:19:20 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d21so40827552wra.12
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 09:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=MXaq8iOfySqXZA1Gvr6zdCXnnl32Qf3xK3Yk/eX2Kdg=;
        b=T10HKb7xvKLIBan/4xZfRTKBgViR3/8S9DJuwfi9iJMeBqH+yWgA3vkc9HmvodCkCp
         ZIb6wlYLidZQe3CpbdsivTbsoh9kH7KqjPVm45WtmO1C2CJKV4/tBkXjGnWALFOFhNPq
         HxCAaCvzRtbttURdCUt4l2ZqRiPF2EUpTf+jpndhhxOPWkaLsk/j6b9vfDsFAddRn3gW
         Kb5pHeNrpSYYuIrOZHQh0cjk94ItHUCvzfqgcvd5b74KMTO9prKyOgsJG9PF1kTylZPb
         +IGRYPKBmM+ydwsFhIqAPGl8IO1/3aXVsi9V0iF6fD5GRRpA+2MYTOVVXAFswVHLS7wl
         6gEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=MXaq8iOfySqXZA1Gvr6zdCXnnl32Qf3xK3Yk/eX2Kdg=;
        b=1ldbjN8QgsxUlDn8nEwk8m+4tbkHr4I6dy4Ij5FBqk/Hf8acQL6bqUINhTWInKrnuz
         L2tk1dNLYFo2+noTG5RvqPqwEV5xiBkmqBwqK4iOtVyEo7JkFlhy/HpdY91u7jzn2HJk
         r0GC2TyPtLEc4plJ70xTJQ6uRf32Yq9f/a+LFd0GBBgfsh316OA9nnzK5EWnt/Gbrz/t
         OCfqS5bqEE1TJWWobFYadAimNpUd50tWoLuF9KtHo95Or+5nJOKzAZ6R/aCQagJXmhzZ
         d9IPtQXtBeuRKIm12GJ1qHFCQ7NYeo1cJctxp7osLXi8sXqXYTg7DsalY1zHSLEk0gN2
         rN5A==
X-Gm-Message-State: AOAM533C0JbSMC5GDxpjyDztem25KrtK/KrEAbME6q5NWbDFUtquaMDq
        KrJLMxUuSyNzO0BDHengltgAITmq7XtAqw==
X-Google-Smtp-Source: ABdhPJyw39UHAdoW7lUNJ2ecxeys3SKoROEMLtfLiSEqtnS9xh7vZsyS1e7yMtk4Mcht7lvp5Lontw==
X-Received: by 2002:a05:6000:1446:: with SMTP id v6mr25242796wrx.427.1632241159302;
        Tue, 21 Sep 2021 09:19:19 -0700 (PDT)
Received: from google.com ([95.148.6.233])
        by smtp.gmail.com with ESMTPSA id y9sm3872115wmj.36.2021.09.21.09.19.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 09:19:18 -0700 (PDT)
Date:   Tue, 21 Sep 2021 17:19:16 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: mfd: add Broadcom's MISC block
Message-ID: <YUoGBDJwbfMLAP0l@google.com>
References: <20210819152552.23784-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210819152552.23784-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021, Rafał Miłecki wrote:

> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Broadcom's MISC is an MFD hardware block used on some of their SoCs like
> bcm63xx and bcm4908. At this point only PCIe reset is fully understood
> and documented. More functions may be added later.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> Broadcom's BCM4908 struct with MISC block registers:
> 
> typedef struct Misc {
>    uint32 miscStrapBus; /* 0x00 */
>    uint32 miscStrapOverride;     /* 0x04 */
>    uint32 miscSoftwareDebug[6];  /* 0x08 */
>    uint32 miscWDResetCtrl;       /* 0x20 */
>    uint32 miscSoftwareDebugNW[2];/* 0x24 */
>    uint32 miscSoftResetB;        /* 0x2c */
>    uint32 miscQAMPllStatus;      /* 0x30 */
>    uint32 miscRsvd1;             /* 0x34 */
>    uint32 miscSpiMasterCtrl;     /* 0x38 */
>    uint32 miscAltBootVector;     /* 0x3c */
>    uint32 miscPeriphCtrl;        /* 0x40 */
>    uint32 miscPCIECtrl;          /* 0x44 */
>    uint32 miscAdsl_clock_sample; /* 0x48 */
>    uint32 miscRngCtrl;           /* 0x4c */
>    uint32 miscMbox_data[4];      /* 0x50 */
>    uint32 miscMbox_ctrl;         /* 0x60 */
>    uint32 miscxMIIPadCtrl[4];    /* 0x64 */
>    uint32 miscxMIIPullCtrl[4];    /* 0x74 */
>    uint32 miscWDResetEn;          /* 0x84 */
>    uint32 miscBootOverlayEn;      /* 0x88 */
>    uint32 miscSGMIIFiberDetect;   /* 0x8c */
>    uint32 miscUniMacCtrl;         /* 0x90 */
>    uint32 miscMaskUBUSErr;        /* 0x94 */
>    uint32 miscTOSsync;            /* 0x98 */
>    uint32 miscPM0_1_status;       /* 0x9c */
>    uint32 miscPM2_3_status;       /* 0xa0 */
>    uint32 miscSGB_status;         /* 0xa4 */
>    uint32 miscPM0_1_config;       /* 0xa8 */
>    uint32 miscPM2_3_config;       /* 0xac */
>    uint32 miscSGB_config;         /* 0xb0 */
>    uint32 miscPM0_1_tmon_config;  /* 0xb4 */
>    uint32 miscPM2_3_tmon_config;  /* 0xb8 */
>    uint32 miscSGB_tmon_config;    /* 0xbc */
>    uint32 miscMDIOmasterSelect;   /* 0xc0 */
>    uint32 miscUSIMCtrl;           /* 0xc4 */
>    uint32 miscUSIMPadCtrl;        /* 0xc8 */
>    uint32 miscPerSpareReg[3];     /* 0xcc - 0xd4 */
>    uint32 miscDgSensePadCtrl;     /* 0xd8 */
>    uint32 miscPeriphMiscCtrl;     /* 0xdc */
>    uint32 miscPeriphMiscStat;     /* 0xe0 */
> } Misc;
> ---
>  .../devicetree/bindings/mfd/brcm,misc.yaml    | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mfd/brcm,misc.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
