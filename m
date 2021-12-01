Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D1C6B465908
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 23:19:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353541AbhLAWXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 17:23:06 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:39694 "EHLO
        mail-ot1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343684AbhLAWXE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 17:23:04 -0500
Received: by mail-ot1-f43.google.com with SMTP id r10-20020a056830080a00b0055c8fd2cebdso37280056ots.6
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 14:19:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XmoSzypVIzVj4WDjzMsg2xa4S8LlvmPFd2zvrrPOMdY=;
        b=7dnLcTcG1VDOckEM54TuA6qoRTJHr435+eYl5LWiGHDpc2I7z3lGZ0DADVoaKtA1Om
         MtGpTDWuFUJ1PJSewHU/W2K7B/WCk+a2UVJM2PdeYnpRUbniL90rrL0kr9yLUNwRhRdZ
         7tJx9ESfHetp4cP/GX3LIc4FmRTQ8bed7BkVSL5Og2fHnxEYREkSu/N4Y0KWOgTAd9oV
         icM0MPFBMaE2t6m1OnnzfmW3sL2XVx5CpOUH+scXMqARXMuddx5FXZEv7Hpj/C9zWdxB
         oFRJOChVYsreHPxPecr8kGJGPG6ATVYsvBTzXLyYN2yVr5pdEJr12Juu2Z5Mfu+oUGQV
         1CeQ==
X-Gm-Message-State: AOAM531QOqEQzgIXESbnVa5fWDLQ8x07+txvnh3wtUrABoLWxTJMhAZB
        MKephQE24zknpAn4oszycg==
X-Google-Smtp-Source: ABdhPJxgD8DgCiGQi+x5plAlOw+bgCF85RTVoWjDSei9JRKnFOmq5gS8kQcIhdlEcQZLy+w6rFCSrg==
X-Received: by 2002:a05:6830:1551:: with SMTP id l17mr8157112otp.335.1638397181832;
        Wed, 01 Dec 2021 14:19:41 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l6sm399909otu.12.2021.12.01.14.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 14:19:41 -0800 (PST)
Received: (nullmailer pid 2837236 invoked by uid 1000);
        Wed, 01 Dec 2021 22:19:39 -0000
Date:   Wed, 1 Dec 2021 16:19:39 -0600
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, georgemakarov1@gmail.com,
        robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        otavio@ossystems.com.br, shawnguo@kernel.org
Subject: Re: [PATCH v2] ARM: dts: imx6ull-pinfunc: Fix CSI_DATA07__ESAI_TX0
 pad name
Message-ID: <Yaf0+61okE7YiFdp@robh.at.kernel.org>
References: <20211124184541.745827-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211124184541.745827-1-festevam@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 24 Nov 2021 15:45:41 -0300, Fabio Estevam wrote:
> According to the i.MX6ULL Reference Manual, pad CSI_DATA07 may
> have the ESAI_TX0 functionality, not ESAI_T0.
> 
> Also, NXP's i.MX Config Tools 10.0 generates dtsi with the
> MX6ULL_PAD_CSI_DATA07__ESAI_TX0 naming, so fix it accordingly.
> 
> There are no devicetree users in mainline that use the old name,
> so just remove the old entry.
> 
> Fixes: c201369d4aa5 ("ARM: dts: imx6ull: add imx6ull support")
> Reported-by: George Makarov <georgemakarov1@gmail.com>
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
> Changes since v1:
> - Remove the old name (Shawn, Otavio)
> 
>  arch/arm/boot/dts/imx6ull-pinfunc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
