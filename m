Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9182C4F9A96
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 18:26:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231269AbiDHQ2u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 12:28:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbiDHQ2t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 12:28:49 -0400
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41E7D365A31
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 09:26:45 -0700 (PDT)
Received: by mail-oi1-f177.google.com with SMTP id q129so9349853oif.4
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 09:26:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3fbZmWB6O3mb/21fFRIc132TWoVAB1cJZxMXBwE2MHc=;
        b=z7mBKMRGWsboA6Fg18NBg8ipuc8VUNFKHc879q9vILXgpiWm/R94Hw29vvtN91dUzb
         cdPkl+6Ytp3CPngUfkVAJohYVMX0MO2qmMwD4Ni3e7jCx0M82ywquY5/CtPoNh4jhQyh
         nwLuUx9EeZymQKhsp7Bu3PWewbMKxwzMn9Y+f0MvSQMK9XwEyOnLNSE+hdeilLMtE9fX
         WB1WOWxJrwXLBgIKTCEW5+BlSlKtjS0JYAGIwVvR29TGLpAOxfxXiddmY8yg+4bICy60
         lJp/yVykAPOdFKJZRX4bY0UoZ/XPRc5/G74QocrUnxcZx1sunLBQeDA9iR0ubk1weclu
         bSKA==
X-Gm-Message-State: AOAM533lm4Tv5v5007sOBTjnjia4MRTriwN/xZJwkulPMKUmAKO6geDM
        K/8uxQ/vLgKm+AnaGvQE7g==
X-Google-Smtp-Source: ABdhPJxY7fkuQ6s7RK/rZfjDFwW9frnIB8exlVBfHb1VI6Tjtd8dQFqX8ZMxqrA5uRSzqNrck1RRyA==
X-Received: by 2002:a05:6808:1895:b0:2d9:fcf6:94b4 with SMTP id bi21-20020a056808189500b002d9fcf694b4mr222839oib.243.1649435204315;
        Fri, 08 Apr 2022 09:26:44 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p16-20020a05680811d000b002d72ec3a921sm8857640oiv.21.2022.04.08.09.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Apr 2022 09:26:44 -0700 (PDT)
Received: (nullmailer pid 3601685 invoked by uid 1000);
        Fri, 08 Apr 2022 16:26:43 -0000
Date:   Fri, 8 Apr 2022 11:26:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 2/2] arm64: dts: arm: add corstone1000 device tree
Message-ID: <YlBiQ1ss8D2Bg8IZ@robh.at.kernel.org>
References: <20220408131922.3864348-1-rui.silva@linaro.org>
 <20220408131922.3864348-3-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220408131922.3864348-3-rui.silva@linaro.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 08, 2022 at 02:19:22PM +0100, Rui Miguel Silva wrote:
> Corstone1000 is a platform from arm, which includes pre
> verified Corstone SSE710 sub-system that combines Cortex-A and
> Cortex-M processors [0].
> 
> These device trees contains the necessary bits to support the
> Corstone 1000 FVP (Fixed Virtual Platform) [1] and the
> FPGA MPS3 board Cortex-A35 implementation at Cortex-A35 host
> side of this platform. [2]
> 
> 0: https://developer.arm.com/documentation/102360/0000
> 1: https://developer.arm.com/tools-and-software/open-source-software/arm-platforms-software/arm-ecosystem-fvps
> 2: https://developer.arm.com/documentation/dai0550/c/
> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  arch/arm64/boot/dts/arm/Makefile              |   1 +
>  arch/arm64/boot/dts/arm/corstone1000-fvp.dts  |  51 ++++++
>  arch/arm64/boot/dts/arm/corstone1000-mps3.dts |  32 ++++
>  arch/arm64/boot/dts/arm/corstone1000.dtsi     | 164 ++++++++++++++++++
>  4 files changed, 248 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000-fvp.dts
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000-mps3.dts
>  create mode 100644 arch/arm64/boot/dts/arm/corstone1000.dtsi

Reviewed-by: Rob Herring <robh@kernel.org>
