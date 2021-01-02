Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 968622E7EA0
	for <lists+devicetree@lfdr.de>; Thu, 31 Dec 2020 08:57:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726037AbgLaHzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Dec 2020 02:55:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726130AbgLaHzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Dec 2020 02:55:25 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F850C061575
        for <devicetree@vger.kernel.org>; Wed, 30 Dec 2020 23:54:45 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id n3so2793772pjm.1
        for <devicetree@vger.kernel.org>; Wed, 30 Dec 2020 23:54:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=LjRECRtXIzwtRi7U4uWbCOAACvteq5kQEsUibs961Aw=;
        b=eRyeXnAgxzHv2sIST/aF1FE0S5bB0fG5s3OFAU9Mig/dUKdY5CLYRbIz7fOmO+Q4+d
         o6eeuqqNT8nzu5n82t3N+VgJhnvemmvg2xzLahiXRVHWSB8im9hJw5x51ytnFpTzBxAc
         PqgXoXWPGBSpxcM7OVvbkzxbQ+sGszr8pMr1ciwHU2WCDPSg6k4Nw4jqan4UjA0l6i2z
         TwfOii3APxx1q2r7/pAUVdyyH5PmQkBFV0drfCZedZbmTKDrzOMWWU3t7ol0I+UZAldX
         WJCpif5reqZ3/IpIqFraKYhl0F8sWyD7GukX1qS6Ba0nGbupRe4gUvHqRV5QLNvKGSnp
         mx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=LjRECRtXIzwtRi7U4uWbCOAACvteq5kQEsUibs961Aw=;
        b=aIoUqJ/fpKbWcJHjjLK0R1RlYf6/oaE+IPhAQRPSF+kNmtXYjagapkPBAjHLsH0XJu
         RHob/XjlNkaXtnC4WnMqr4fWVS9dSk2pi9Puvqb0fwgrKQlmBuKBKUF9nyBf6dIq+iSK
         +y6g55eAqnfWBktLlni2fcgQjvSn1wUCgBZvr9OWx90XkSmWku4uFieOC/U+mSPFdfj7
         Jqs/QXygwv1hu+Mz2iinYYB8Q+CYdMTakvIx6O0Qk32K71RWhBD3Nb+8+UIjGFB5IA7t
         bmJtM0lgeGu64nNtpCc3J9t309DgidadsDNIstzYazX1EBTfzUC1jgpwhrFTYjtZ8sTG
         EdMw==
X-Gm-Message-State: AOAM5311u6G4NvTWh/wGR57PlZm7p33FhlZJUMW1ChkhJU/7mnXerFvF
        c5M0q3nfAMBZBKa8qQLWtp6W
X-Google-Smtp-Source: ABdhPJy5P7AJ+WidqF/ZjXD1Won5mShdQwBoju/Dg6zwADGelOsHTdEdZSA8RHSVZHyR1QuZyCNbZg==
X-Received: by 2002:a17:90a:348f:: with SMTP id p15mr12316040pjb.125.1609401284765;
        Wed, 30 Dec 2020 23:54:44 -0800 (PST)
Received: from thinkpad ([2409:4072:6d1f:be3b:71a9:d2bf:a32d:897d])
        by smtp.gmail.com with ESMTPSA id z28sm46534047pfr.140.2020.12.30.23.54.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Dec 2020 23:54:43 -0800 (PST)
Date:   Thu, 31 Dec 2020 13:24:35 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        Vinod Koul <vkoul@kernel.org>,
        Dan Williams <dan.j.williams@intel.com>,
        Wolfram Sang <wsa@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Peter Korsgaard <peter@korsgaard.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org, linux-i2c@vger.kernel.org,
        linux-mmc@vger.kernel.org
Subject: Re: [PATCH v3 00/13] Add CMU/RMU/DMA/MMC/I2C support for Actions Semi
Message-ID: <20201231075435.GG7345@thinkpad>
References: <cover.1609263738.git.cristian.ciocaltea@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1609263738.git.cristian.ciocaltea@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 29, 2020 at 11:17:15PM +0200, Cristian Ciocaltea wrote:
> Hi,
> 
> This patchset brings a series of improvements for the Actions Semi S500
> SoCs family, by adding support for Clock & Reset Management Units, DMA,
> MMC, I2C & SIRQ controllers.
> 
> Please note the patches consist mostly of DTS and bindings/compatibles
> changes, since all the work they depend on has been already merged,
> i.e. clock fixes/additions, pinctrl driver, sirq driver.
> 
> For the moment, I have only enabled the features I could test on
> RoseapplePi SBC.
> 

Applied all patches except the 2 dmaengine patches for v5.12. Andreas, please
let me know if you want to do the PR this time. Else I'll proceed.

Thanks,
Mani

> Thanks,
> Cristi
> 
> Changes in v3:
> - Squashed 'arm: dts: owl-s500-roseapplepi: Use UART clock from CMU' with
>   'arm: dts: owl-s500: Set CMU clocks for UARTs', according to Mani's review
> - Rebased series on v5.11-rc1 and dropped the already merged patches:
>  * dt-bindings: mmc: owl: Add compatible string for Actions Semi S500 SoC
>  * dt-bindings: i2c: owl: Convert Actions Semi Owl binding to a schema
>  * MAINTAINERS: Update entry for Actions Semi Owl I2C binding
>  * i2c: owl: Add compatible for the Actions Semi S500 I2C controller
> 
> Changes in v2:
> - Added new bindings/compatibles for S500 DMA, MMC & I2C controllers
> - Added support for the SIRQ controller
> - Added new entries in MAINTAINERS
> - Updated naming of some patches in v1
> 
> Cristian Ciocaltea (13):
>   arm: dts: owl-s500: Add Clock Management Unit
>   arm: dts: owl-s500: Set CMU clocks for UARTs
>   arm: dts: owl-s500: Add Reset controller
>   dt-bindings: dma: owl: Add compatible string for Actions Semi S500 SoC
>   dmaengine: owl: Add compatible for the Actions Semi S500 DMA
>     controller
>   arm: dts: owl-s500: Add DMA controller
>   arm: dts: owl-s500: Add pinctrl & GPIO support
>   arm: dts: owl-s500: Add MMC support
>   arm: dts: owl-s500: Add I2C support
>   arm: dts: owl-s500: Add SIRQ controller
>   arm: dts: owl-s500-roseapplepi: Add uSD support
>   arm: dts: owl-s500-roseapplepi: Add I2C pinctrl configuration
>   MAINTAINERS: Add linux-actions ML for Actions Semi Arch
> 
>  .../devicetree/bindings/dma/owl-dma.yaml      |   7 +-
>  MAINTAINERS                                   |   1 +
>  arch/arm/boot/dts/owl-s500-cubieboard6.dts    |   7 -
>  .../arm/boot/dts/owl-s500-guitar-bb-rev-b.dts |   7 -
>  .../arm/boot/dts/owl-s500-labrador-base-m.dts |   7 -
>  arch/arm/boot/dts/owl-s500-roseapplepi.dts    |  97 +++++++++++-
>  arch/arm/boot/dts/owl-s500-sparky.dts         |   7 -
>  arch/arm/boot/dts/owl-s500.dtsi               | 140 ++++++++++++++++++
>  drivers/dma/owl-dma.c                         |   3 +-
>  9 files changed, 239 insertions(+), 37 deletions(-)
> 
> -- 
> 2.30.0
> 
