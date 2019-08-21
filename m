Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E67D696FC0
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 04:46:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726606AbfHUCqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Aug 2019 22:46:52 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:37748 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726514AbfHUCqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Aug 2019 22:46:52 -0400
Received: by mail-pg1-f194.google.com with SMTP id d1so428299pgp.4
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 19:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rzA9S1AIz/6xQmIDVoSvFl0QH4KJ3JhpAFF3D1CfKh0=;
        b=s+ipYvK/PXc0BFsqo5Tnmt2Vnc6JFR0aG8HAWklRvlWdQyin8D1mC7EnMGjfhhEy7O
         qGmpCNR02TbHZhdQ/+2f7zpJJAJ1jyftQeKEWnNFTYymKnDuID4xnBxALF7r9DMvAiwe
         f0n42KeMUI2n3utsk8x+EKkqiXYKo9BtU3xWPR22lQ7A5ThtHJ4rJxXSfg3+NguML63t
         VL7nUXJe8KbLx36EXA0i4nQdDQtMmvRJADZbIrOPuBliIvCw/JEL+DYXdBh1cdLlpIyL
         hs/gPjQSXzFGNPnsYytfIqvcVXjg2MxQ36l0r8Y1drjG/qqd4lziE/XKOvupAVPalNs9
         iXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rzA9S1AIz/6xQmIDVoSvFl0QH4KJ3JhpAFF3D1CfKh0=;
        b=euFQ14xsQRzmE4Qd4kb4CIpq5FPMRWoxnG2cW+gD+H0K/Y6NtzkORzz/KGJV379TaS
         mKGUiDpoMm9BALQBRGzbOPQYtmQpE5sCSZmO7UlMuJkGydnj5o3lRsM3FTN5Abxl9unK
         bEvIGy524IpzBiPZkO0SKk5UIoVMBBx9GK8rHY6FpMJbrOu0c8x/Uj4kYcySgw5ad1Go
         Rbu8eW46762yQw3pvEg6jGuQCdEylJsTEsI03/hPpUVE7u0BoxMpgvF8gA4Qsa+H3Zh0
         ud9LjvG5/Go44qD4WQj5QdiJI34jGjnSY00XDOmniwFzisqrian8GIzB/js1JHKt2/qH
         LDdA==
X-Gm-Message-State: APjAAAUGoiTlUgHOgIiXnNMgyPaPXaszI7GgOGIKRZ5ho8xIdG75XQmM
        9OUnkjBRSJVsXoXtRAXbNAef
X-Google-Smtp-Source: APXvYqxWjSAeaVO7l8MTk1p6uF2HhW/owqfIUdX/K1HMqNwAehrCyxIRk1mn/yYnS0T+S5vx1rqVzA==
X-Received: by 2002:a17:90a:c24e:: with SMTP id d14mr3161488pjx.129.1566355611709;
        Tue, 20 Aug 2019 19:46:51 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:7101:175:ddd7:6c31:ebc7:37e8])
        by smtp.gmail.com with ESMTPSA id x2sm1517865pja.22.2019.08.20.19.46.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 20 Aug 2019 19:46:51 -0700 (PDT)
Date:   Wed, 21 Aug 2019 08:16:43 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     afaerber@suse.de
Cc:     linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        thomas.liau@actions-semi.com, linux-actions@lists.infradead.org,
        linus.walleij@linaro.org, linux-clk@vger.kernel.org,
        ulf.hansson@linaro.org, robh+dt@kernel.org, sboyd@kernel.org
Subject: Re: [PATCH v2 4/7] arm64: dts: actions: Add uSD and eMMC support for
 Bubblegum96
Message-ID: <20190821024643.GA14176@Mani-XPS-13-9360>
References: <20190821024014.14070-1-manivannan.sadhasivam@linaro.org>
 <20190821024014.14070-5-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190821024014.14070-5-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andreas,

On Wed, Aug 21, 2019 at 08:10:11AM +0530, Manivannan Sadhasivam wrote:
> Add uSD and eMMC support for Bubblegum96 board based on Actions Semi
> Owl SoC. SD0 is connected to uSD slot and SD2 is connected to eMMC.
> Since there is no PMIC support added yet, fixed regulator has been
> used as a regulator node.
> 

Just realised that I missed your review on the patch description here.
Will either modify in next iteration (if needed) or modify it while
applying.

Sorry for that!

Thanks,
Mani

> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../boot/dts/actions/s900-bubblegum-96.dts    | 60 +++++++++++++++++++
>  1 file changed, 60 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> index 732daaa6e9d3..92376b71cb8f 100644
> --- a/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> +++ b/arch/arm64/boot/dts/actions/s900-bubblegum-96.dts
> @@ -12,6 +12,9 @@
>  	model = "Bubblegum-96";
>  
>  	aliases {
> +		mmc0 = &mmc0;
> +		mmc1 = &mmc1;
> +		mmc2 = &mmc2;
>  		serial5 = &uart5;
>  	};
>  
> @@ -23,6 +26,22 @@
>  		device_type = "memory";
>  		reg = <0x0 0x0 0x0 0x80000000>;
>  	};
> +
> +	vcc_3v1: vcc-3v1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.1V";
> +		regulator-min-microvolt = <3100000>;
> +		regulator-max-microvolt = <3100000>;
> +		regulator-always-on;
> +	};
> +
> +	sd_vcc: sd-vcc {
> +		compatible = "regulator-fixed";
> +		regulator-name = "fixed-3.1V";
> +		regulator-min-microvolt = <3100000>;
> +		regulator-max-microvolt = <3100000>;
> +		regulator-always-on;
> +	};
>  };
>  
>  &i2c0 {
> @@ -241,6 +260,47 @@
>  			bias-pull-up;
>  		};
>  	};
> +
> +	mmc0_default: mmc0_default {
> +		pinmux {
> +			groups = "sd0_d0_mfp", "sd0_d1_mfp", "sd0_d2_d3_mfp",
> +				 "sd0_cmd_mfp", "sd0_clk_mfp";
> +			function = "sd0";
> +		};
> +	};
> +
> +	mmc2_default: mmc2_default {
> +		pinmux {
> +			groups = "nand0_d0_ceb3_mfp";
> +			function = "sd2";
> +		};
> +	};
> +};
> +
> +/* uSD */
> +&mmc0 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc0_default>;
> +	no-sdio;
> +	no-mmc;
> +	no-1-8-v;
> +	cd-gpios = <&pinctrl 120 GPIO_ACTIVE_LOW>;
> +	bus-width = <4>;
> +	vmmc-supply = <&sd_vcc>;
> +	vqmmc-supply = <&sd_vcc>;
> +};
> +
> +/* eMMC */
> +&mmc2 {
> +	status = "okay";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&mmc2_default>;
> +	no-sdio;
> +	no-sd;
> +	non-removable;
> +	bus-width = <8>;
> +	vmmc-supply = <&vcc_3v1>;
>  };
>  
>  &timer {
> -- 
> 2.17.1
> 
