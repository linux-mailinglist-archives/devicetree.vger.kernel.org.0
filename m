Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 522203577C4
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 00:34:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230458AbhDGWeU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 18:34:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231205AbhDGWeR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 18:34:17 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1A97C061760
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 15:34:06 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id d10so113313ils.5
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 15:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=l5x8E8IpB6sBOTSYy7T7VMMyQFpGPv4ck3hMiF4swhc=;
        b=QqEQVjUA/Fiwi89/NL2AyGwFBPVPPOLUkceVpGjJ0Ln3tFYM+3GiuxBFgLLvBk1W8U
         niGhuXKl08MiHlRAD7tVRDD4zFwFQd+R7wy50p7JUTJ929C5wgFa4ORPjSwccS2EGKAr
         3twyQpu9pRTcsvBSnZx0ZSpnwwJZZ94THz+2DpTayXtLaImpFEgyog+CPpnqgmQIm2av
         gOg7wqNaUg3xaFy6ZHd5WPRbJfneX8F5Amr3x9Uo+nlIJ8XBdpw9t/FQ6WTulCH4IS/r
         2DekhNK1qzVtUHkoVJ+9TISFYHW6lBaDcHnYP0lTdDo8HyyR1WEJVFeR1Ua1VmzmW5PC
         6nww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=l5x8E8IpB6sBOTSYy7T7VMMyQFpGPv4ck3hMiF4swhc=;
        b=kEKVxruqYfokaDVHUSGhx/IUHC8I6doRhIBCZZkEgFGg2KqGXZmdY/wH7QSYLA5W5u
         qmg+xuRCepZP1cUMreFtFiy7NuYaD3PfPLtjWfrW6BYDCRg8J2T+fK0WDD0lVZuEgUFA
         JdZyw7obfUouSJ298d7w4Zf/zfJf/CKfuyfize3jv6LEsW3XXRBrLw/bd+LZKefmTLMA
         UrhYlIsCUek9AoWjsoZHwJPge0j779vbxnrn9STDZzVRkIa7e7alb3j67KWmcEDdebTz
         0sVVnyxcpB2N8sY3U9B0lz7z9k1PskH7d+6juazYnHd7pFqqdPc5k+pU3+lhvp23t5XJ
         AHtQ==
X-Gm-Message-State: AOAM532tOh/AW4+SBzq76hAovECKYTwRM21pK9a1lYqG/q67p0BplkfD
        EjCWt1Tggx1IrElXThm+QjA=
X-Google-Smtp-Source: ABdhPJzPKZEiVctM8VC3mirjU8CPONK+xKH95eGyh2ea+GSaZsjmVzycO3rChD2Gz0V0s/X7TY02Gg==
X-Received: by 2002:a92:c844:: with SMTP id b4mr4457253ilq.36.1617834846367;
        Wed, 07 Apr 2021 15:34:06 -0700 (PDT)
Received: from [192.168.4.31] (199-48-94-65.rochmnaa.metronetinc.net. [199.48.94.65])
        by smtp.gmail.com with ESMTPSA id e7sm2002295ilm.60.2021.04.07.15.34.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 15:34:05 -0700 (PDT)
Subject: Re: [PATCH 15/22] ARM: dts: Aspeed: Everest: Add pca9552 fan presence
To:     Eddie James <eajames@linux.ibm.com>, joel@jms.id.au
Cc:     devicetree@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        Matthew Barth <msbarth@us.ibm.com>, robh+dt@kernel.org
References: <20210329150020.13632-1-eajames@linux.ibm.com>
 <20210329150020.13632-16-eajames@linux.ibm.com>
From:   Brandon Wyman <bjwyman@gmail.com>
Message-ID: <a6ca4ac6-6f6d-b6d5-f3c9-ed304aac3eb0@gmail.com>
Date:   Wed, 7 Apr 2021 17:34:05 -0500
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210329150020.13632-16-eajames@linux.ibm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On 2021-03-29 10:00, Eddie James wrote:
> From: Matthew Barth <msbarth@us.ibm.com>
>
> Add the pca9552 at address 0x61 on i2c14 behind mux0 channel 3 with the
> 4 GPIO fan presence inputs.
>
> Signed-off-by: Matthew Barth <msbarth@us.ibm.com>
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Reviewed-by: Brandon Wyman <bjwyman@gmail.com>


> ---
>   arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts | 128 +++++++++++++++++++
>   1 file changed, 128 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
> index de2606b416e6..d7f23b74dd4b 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-everest.dts
> @@ -171,6 +171,37 @@ vga_memory: region@bf000000 {
>   			reg = <0xbf000000 0x01000000>; /* 16M */
>   		};
>   	};
> +
> +	gpio-keys-polled {
> +		compatible = "gpio-keys-polled";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		poll-interval = <1000>;
> +
> +		fan0-presence {
> +			label = "fan0-presence";
> +			gpios = <&pca0 15 GPIO_ACTIVE_LOW>;
> +			linux,code = <15>;
> +		};
> +
> +		fan1-presence {
> +			label = "fan1-presence";
> +			gpios = <&pca0 14 GPIO_ACTIVE_LOW>;
> +			linux,code = <14>;
> +		};
> +
> +		fan2-presence {
> +			label = "fan2-presence";
> +			gpios = <&pca0 13 GPIO_ACTIVE_LOW>;
> +			linux,code = <13>;
> +		};
> +
> +		fan3-presence {
> +			label = "fan3-presence";
> +			gpios = <&pca0 12 GPIO_ACTIVE_LOW>;
> +			linux,code = <12>;
> +		};
> +	};
>   };
>   
>   &i2c0 {
> @@ -567,6 +598,103 @@ fan@3 {
>   					maxim,fan-fault-pin-mon;
>   				};
>   			};
> +
> +			pca0: pca9552@61 {
> +				compatible = "nxp,pca9552";
> +				reg = <0x61>;
> +
> +				gpio-controller;
> +				#gpio-cells = <2>;
> +
> +				gpio-line-names =
> +					"","","","",
> +					"","","","",
> +					"","","","",
> +					"presence-fan3",
> +					"presence-fan2",
> +					"presence-fan1",
> +					"presence-fan0";
> +
> +				gpio@0 {
> +					reg = <0>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@1 {
> +					reg = <1>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@2 {
> +					reg = <2>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@3 {
> +					reg = <3>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@4 {
> +					reg = <4>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@5 {
> +					reg = <5>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@6 {
> +					reg = <6>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@7 {
> +					reg = <7>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@8 {
> +					reg = <8>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@9 {
> +					reg = <9>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@10 {
> +					reg = <10>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@11 {
> +					reg = <11>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@12 {
> +					reg = <12>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@13 {
> +					reg = <13>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@14 {
> +					reg = <14>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +
> +				gpio@15 {
> +					reg = <15>;
> +					type = <PCA955X_TYPE_GPIO>;
> +				};
> +			};
>   		};
>   	};
>   
