Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 783C53F606B
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 16:30:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237807AbhHXObM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 10:31:12 -0400
Received: from mail-ot1-f42.google.com ([209.85.210.42]:38605 "EHLO
        mail-ot1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237718AbhHXObM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 10:31:12 -0400
Received: by mail-ot1-f42.google.com with SMTP id i8-20020a056830402800b0051afc3e373aso35311773ots.5
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 07:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=KKRBlo6cYUB6EuqtLpd0IAL8roGr1zM6h8eyw4yhKUU=;
        b=lOGYEaunePwG2pjeyuZU6wnhon8PHM8+qHKIl1Ol8yp8qMa/ETq5IwgwSzmtwTB3u/
         VawLYlNITBLVLvPLAKCJ5BrfZkO1StmPAvGuxACJSnN1cC562XFY0Ns06NFCUaTmJr3g
         KEhw24OBDRvQ35faCcBtsjFUlaFA3PekBw65spGQ6SMQkiKB7jVdX/2vaYTVNdttWLPL
         pDoh3RXNZh7DOMUmTRTCwzr43hR+j6rwy4DsDznjlrwEJPh1lwOJdlF2ek6ImrxnDwhd
         qVAeEav0IoXZkDRxxXRrLUAOK0I3H4ujg3kj6ECzqPElbwES0o3IyUBxebmI9LPhQ4lC
         Nekg==
X-Gm-Message-State: AOAM5308z3i/mfcqzSX63ZRUWK/BI98DJVpPF55XGmjkZd3HuDdSOtT6
        6xiEZIZhviNrsv0PVm2DHQ==
X-Google-Smtp-Source: ABdhPJx1j07I5u81SX2v3ZIGpT3pW1C3zyCc7zWtUiKlc7tA/amdr8B111w4er5WBQ6ab6QDjxO5wg==
X-Received: by 2002:aca:1005:: with SMTP id 5mr2978943oiq.72.1629815427515;
        Tue, 24 Aug 2021 07:30:27 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n17sm4559661otl.32.2021.08.24.07.30.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 07:30:27 -0700 (PDT)
Received: (nullmailer pid 393497 invoked by uid 1000);
        Tue, 24 Aug 2021 14:30:26 -0000
Date:   Tue, 24 Aug 2021 09:30:26 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     devicetree@vger.kernel.org, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] dt-bindings: mfd: add Broadcom's MISC block
Message-ID: <YSUCgmC3pr7NbSDG@robh.at.kernel.org>
References: <20210819152552.23784-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210819152552.23784-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 17:25:52 +0200, Rafał Miłecki wrote:
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
> 

Reviewed-by: Rob Herring <robh@kernel.org>
