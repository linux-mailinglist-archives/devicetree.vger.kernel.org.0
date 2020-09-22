Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02DFD273B5C
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 09:03:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729638AbgIVHDR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 03:03:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729637AbgIVHDR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 03:03:17 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CAA5C061755
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 00:03:17 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id b124so11556054pfg.13
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 00:03:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H6GC637knYVN8eJobfI1SKqM4NRNLSQiEmFK7Zq3AGw=;
        b=gX4u92SMT71TJDtD0Sqse2aiBZd6hdMqRNbpfpdp4/2Pa7NUZbszTlgTy6a6Vxi/ov
         E0VXXjrfmVO+xlAok5yp/Oaej2BnekAV8Mdgz4G8CCa0IFxiiJmMqZv1+6ck27y4rzq1
         rwHFVBzemDJsoYWj/4yhi7quozE3oqVJilNzJrE8A6+hJGPE2MNnFVmAyzYFhDPmjCe9
         UZZRqRuyvttEo2b8U79xksaPQzH6eXFb/vrb7Gl91/uVZO2sfQIJKAwBlXRzX4xr7Ne4
         dBk7I3tdp9w0Ij34nw37aYWS7+D3/Yy6R0rS1Q6lGcnV+AsWM8xtRA1SBG3hoB+1DNMg
         7IyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H6GC637knYVN8eJobfI1SKqM4NRNLSQiEmFK7Zq3AGw=;
        b=ZfoUDxKGvllmY34RVmgTKU7xK/ftLAvdymIqGUVbPOvSgTPmX195nJooJIMFviUpqY
         fEY1paE5Riza1ElFd51FlqB4xPi3ClRcThjYhQNdcSE665ztumXeMt5QDLPGDfxUyeSH
         u7+5b56SFXz1Nlwry/CI5mRbbYRp1vhTyin9/fkgbB40EExHx56BhOjVWf/NSUyxVy6z
         XQmYwbNZfiyzLrp9T5bagGeVw2NJVKLoiqzUetyXwqpYFzIll69fY6+nrezQ2ke2Tjnv
         isHqA9XmiftaTtplXE0/cSuZjU1qSEEt+v5WlcKsIKppmRtpCdKJeXdIVbuE65xOsNZD
         Etdg==
X-Gm-Message-State: AOAM531Lrz11fCohopmASoAKbdsd4q7SMBHKuMtpot/cfKVmaY05cYU1
        6R5GiR2yStAYvqAjDJaqYtdc
X-Google-Smtp-Source: ABdhPJxuvIGpynV4qW6cpD3xaKQD9HNmvEvAUEvKiZLNll5n/Bq0wBiqraGUb8OQ+cY/W/dqe8lFIQ==
X-Received: by 2002:a17:902:ba8a:b029:d2:439c:5206 with SMTP id k10-20020a170902ba8ab02900d2439c5206mr570051pls.50.1600758196620;
        Tue, 22 Sep 2020 00:03:16 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e1c:c062:1004:2ccf:6900:b97])
        by smtp.gmail.com with ESMTPSA id f28sm14190627pfq.191.2020.09.22.00.03.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 22 Sep 2020 00:03:15 -0700 (PDT)
Date:   Tue, 22 Sep 2020 12:33:07 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Amit Singh Tomar <amittomer25@gmail.com>
Cc:     andre.przywara@arm.com, afaerber@suse.de, robh+dt@kernel.org,
        cristian.ciocaltea@gmail.com, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v7 09/10] arm64: dts: actions: Add MMC controller support
 for S700
Message-ID: <20200922070307.GH29035@Mani-XPS-13-9360>
References: <1595180527-11320-1-git-send-email-amittomer25@gmail.com>
 <1595180527-11320-10-git-send-email-amittomer25@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1595180527-11320-10-git-send-email-amittomer25@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jul 19, 2020 at 11:12:06PM +0530, Amit Singh Tomar wrote:
> This commits adds support for MMC controllers present on Actions S700 SoC,
> there are 3 MMC controllers in this SoC which can be used for accessing
> SD/EMMC/SDIO cards.
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> Signed-off-by: Amit Singh Tomar <amittomer25@gmail.com>

Not applying this one as the bindings patch is not merged yet! Please post
it in next revision.

Thanks,
Mani

> ---
> Changes since v6:
> 	* No change.
> Changes since v5:
>         * Added Mani's Reviewed-by: tag.
> Changes since v4:
>         * No change.
> Changes since v3:
>         * No change.
> Changes since v2:
>         * No change.
> Changes since v1:
>         * Added SoC specific compatibe string.
> Changes since RFC:
>         * No change.
> ---
>  arch/arm64/boot/dts/actions/s700.dtsi | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s700.dtsi b/arch/arm64/boot/dts/actions/s700.dtsi
> index 2c78caebf515..9ed88aafc2da 100644
> --- a/arch/arm64/boot/dts/actions/s700.dtsi
> +++ b/arch/arm64/boot/dts/actions/s700.dtsi
> @@ -259,5 +259,38 @@
>  			clocks = <&cmu CLK_DMAC>;
>  			power-domains = <&sps S700_PD_DMA>;
>  		};
> +
> +		mmc0: mmc@e0210000 {
> +			compatible = "actions,s700-mmc", "actions,owl-mmc";
> +			reg = <0x0 0xe0210000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD0>;
> +			resets = <&cmu RESET_SD0>;
> +			dmas = <&dma 2>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc1: mmc@e0214000 {
> +			compatible = "actions,s700-mmc", "actions,owl-mmc";
> +			reg = <0x0 0xe0214000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD1>;
> +			resets = <&cmu RESET_SD1>;
> +			dmas = <&dma 3>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
> +
> +		mmc2: mmc@e0218000 {
> +			compatible = "actions,s700-mmc", "actions,owl-mmc";
> +			reg = <0x0 0xe0218000 0x0 0x4000>;
> +			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&cmu CLK_SD2>;
> +			resets = <&cmu RESET_SD2>;
> +			dmas = <&dma 4>;
> +			dma-names = "mmc";
> +			status = "disabled";
> +		};
>  	};
>  };
> -- 
> 2.7.4
> 
