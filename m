Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6B48735777D
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 00:19:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbhDGWTV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 18:19:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbhDGWTU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 18:19:20 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 416AFC061760
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 15:19:08 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id r193so80241ior.9
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 15:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=hh5op23CkTrIJ5prCh85CaaMWuEfk1PqdHF4uIZuNEE=;
        b=hDfi5cg8KZOifDwdq0VrEy1FTD1k/sza+qmeI0WYF5MFnWqQWTvlWDvD3WbTk8UVPk
         Jl+xNH8nWhuPWtu+h2EELTYnCAc34UgEI2VGAZysOs/gYd/EqW7G0aCjq60SAlOfHoIH
         iqYp4bVldj32rKLog8VVmQhton+cRtQp7TW9R+6BmP0DsaDPvRBnrZj47dWYeZJdObYu
         PBUtoqdSwT++BP/Um880e4rZ0/NV0fOD+ctSMYzM1kNWVzqUYaNuOmaaOjaAWrbFeNv3
         b5FUkVj2cJUztEpMoRCQvWfvKQQlrS/lElC0WOhrI1g6yS4L1XR9SAY/U3OpL2WmbQxg
         oMqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=hh5op23CkTrIJ5prCh85CaaMWuEfk1PqdHF4uIZuNEE=;
        b=Wct7H3a3eyQSE6gRXDNoLPZz61rLjtEtPjChSn6BRnvz8BmJkaY1AFHwf/PmTUuRCU
         QdSkGxRGB4FTyZ/gzKseccKNUJNQr8GvcvlelT/BuF6tIYABe6wyix8V5blUp8HVFhTE
         dBE7rbcOp/wBsTC/oeA7MpdpHj3lNP14D7/i1qG1kFDFv+UqDwUsWqqo3XuSTQjwY7Xk
         FE+6qWYAyCl0f5jR49zw2k9S5b6uyAauSgpxorPTOVcpvNsqO1awkW+BxzUsbrXLPa3k
         n0NUJcspRlhPUbaeN+qls50C4C8RdU0/glR0leSuyF9sBVA0C/1Ji8ZIzQZjFGJpWsxb
         Y3JA==
X-Gm-Message-State: AOAM532/9+A4Lz9fTTmuw1k0lY0O1tqnbdTgJw5EpzDciQseoEFOWFBA
        TO+ZSyeWfrrGsX72vUP2FXo=
X-Google-Smtp-Source: ABdhPJyZPsLAPEgUkkblD7WU0nlgPaxLpquK6A7VZOVcDKeZQnLBzMDh3YJy3OO4CvsGJYXwSSojyw==
X-Received: by 2002:a05:6638:f82:: with SMTP id h2mr4194742jal.89.1617833947644;
        Wed, 07 Apr 2021 15:19:07 -0700 (PDT)
Received: from [192.168.4.31] (199-48-94-65.rochmnaa.metronetinc.net. [199.48.94.65])
        by smtp.gmail.com with ESMTPSA id b15sm14467280ilm.25.2021.04.07.15.19.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 15:19:05 -0700 (PDT)
Subject: Re: [PATCH 18/22] ARM: dts: aspeed: everest: GPIOs support
To:     Eddie James <eajames@linux.ibm.com>, joel@jms.id.au
Cc:     devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Alpana Kumari <alpankum@in.ibm.com>, robh+dt@kernel.org
References: <20210329150020.13632-1-eajames@linux.ibm.com>
 <20210329150020.13632-19-eajames@linux.ibm.com>
From:   Brandon Wyman <bjwyman@gmail.com>
Message-ID: <b74fd3a3-53d9-5dfd-f668-476a27f45ed0@gmail.com>
Date:   Wed, 7 Apr 2021 17:19:05 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210329150020.13632-19-eajames@linux.ibm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2021-03-29 10:00, Eddie James wrote:
> From: Alpana Kumari <alpankum@in.ibm.com>
>
> This commit adds support for-
> - Presence GPIOs
> - I2C control GPIOs
> - Op-panel GPIOs (ex PHR)
>
> Signed-off-by: Alpana Kumari <alpankum@in.ibm.com>
> Signed-off-by: Eddie James <eajames@linux.ibm.com>
Reviewed-by: Brandon Wyman <bjwyman@gmail.com>
> ---
>   arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts | 297 +++++++++++++++++++
>   1 file changed, 297 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
> index 9e77bbb3e4d1..18a3d65fb67d 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
> @@ -204,6 +204,37 @@ fan3-presence {
>   	};
>   };
>   
> +&gpio0 {
> +	gpio-line-names =
> +	/*A0-A7*/	"","","","","","","","",
> +	/*B0-B7*/	"USERSPACE_RSTIND_BUFF","","","","","","","",
> +	/*C0-C7*/	"","","","","","","","",
> +	/*D0-D7*/	"","","","","","","","",
> +	/*E0-E7*/	"","","","","","","","",
> +	/*F0-F7*/	"PIN_HOLE_RESET_IN_N","","",
> +				"PIN_HOLE_RESET_OUT_N","","","","",
> +	/*G0-G7*/	"","","","","","","","",
> +	/*H0-H7*/	"","","","","","","","",
> +	/*I0-I7*/	"","","","","","","","",
> +	/*J0-J7*/	"","","","","","","","",
> +	/*K0-K7*/	"","","","","","","","",
> +	/*L0-L7*/	"","","","","","","","",
> +	/*M0-M7*/	"","","","","","","","",
> +	/*N0-N7*/	"","","","","","","","",
> +	/*O0-O7*/	"","","","","","","","",
> +	/*P0-P7*/	"","","","","","","","",
> +	/*Q0-Q7*/	"","","","","","","","",
> +	/*R0-R7*/	"","","","","","I2C_FLASH_MICRO_N","","",
> +	/*S0-S7*/	"","","","","","","","",
> +	/*T0-T7*/	"","","","","","","","",
> +	/*U0-U7*/	"","","","","","","","",
> +	/*V0-V7*/	"","BMC_3RESTART_ATTEMPT_P","","","","","","",
> +	/*W0-W7*/	"","","","","","","","",
> +	/*X0-X7*/	"","","","","","","","",
> +	/*Y0-Y7*/	"","","","","","","","",
> +	/*Z0-Z7*/   "","","","","","","","";
> +};
> +
>   &i2c0 {
>   	status = "okay";
>   
> @@ -211,10 +242,276 @@ eeprom@51 {
>   		compatible = "atmel,24c64";
>   		reg = <0x51>;
>   	};
> +
> +	pca1: pca9552@62 {
> +		compatible = "nxp,pca9552";
> +		reg = <0x62>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		gpio-line-names =
> +			"presence-ps0",
> +			"presence-ps1",
> +			"presence-ps2",
> +			"presence-ps3",
> +			"presence-pdb",
> +			"presence-tpm",
> +			"", "",
> +			"presence-cp0",
> +			"presence-cp1",
> +			"presence-cp2",
> +			"presence-cp3",
> +			"presence-dasd",
> +			"presence-lcd-op",
> +			"presence-base-op",
> +			"";
> +
> +		gpio@0 {
> +			reg = <0>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@01 {
> +			reg = <1>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@2 {
> +			reg = <2>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@3 {
> +			reg = <3>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@4 {
> +			reg = <4>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@5 {
> +			reg = <5>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@6 {
> +			reg = <6>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@7 {
> +			reg = <7>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@8 {
> +			reg = <8>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@9 {
> +			reg = <9>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@10 {
> +			reg = <10>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@11 {
> +			reg = <11>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@12 {
> +			reg = <12>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@13 {
> +			reg = <13>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@14 {
> +			reg = <14>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@15 {
> +			reg = <15>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +	};
>   };
>   
>   &i2c1 {
>   	status = "okay";
> +
> +	pca2: pca9552@61 {
> +		compatible = "nxp,pca9552";
> +		reg = <0x61>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		gpio-line-names =
> +			"presence-cable-card1",
> +			"presence-cable-card2",
> +			"presence-cable-card3",
> +			"presence-cable-card4",
> +			"presence-cable-card5",
> +			"expander-cable-card1",
> +			"expander-cable-card2",
> +			"expander-cable-card3",
> +			"expander-cable-card4",
> +			"expander-cable-card5";
> +
> +		gpio@0 {
> +			reg = <0>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@1 {
> +			reg = <1>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@2 {
> +			reg = <2>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@3 {
> +			reg = <3>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@4 {
> +			reg = <4>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@5 {
> +			reg = <5>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@6 {
> +			reg = <6>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@7 {
> +			reg = <7>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@8 {
> +			reg = <8>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@9 {
> +			reg = <9>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +	};
> +
> +	pca3: pca9552@62 {
> +		compatible = "nxp,pca9552";
> +		reg = <0x62>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +
> +		gpio-line-names =
> +			"presence-cable-card6",
> +			"presence-cable-card7",
> +			"presence-cable-card8",
> +			"presence-cable-card9",
> +			"presence-cable-card10",
> +			"presence-cable-card11",
> +			"expander-cable-card6",
> +			"expander-cable-card7",
> +			"expander-cable-card8",
> +			"expander-cable-card9",
> +			"expander-cable-card10",
> +			"expander-cable-card11";
> +
> +		gpio@0 {
> +			reg = <0>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@1 {
> +			reg = <1>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@2 {
> +			reg = <2>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@3 {
> +			reg = <3>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@4 {
> +			reg = <4>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@5 {
> +			reg = <5>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@6 {
> +			reg = <6>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@7 {
> +			reg = <7>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@8 {
> +			reg = <8>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@9 {
> +			reg = <9>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@10 {
> +			reg = <10>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +		gpio@11 {
> +			reg = <11>;
> +			type = <PCA955X_TYPE_GPIO>;
> +		};
> +
> +	};
> +
>   };
>   
>   &i2c2 {
