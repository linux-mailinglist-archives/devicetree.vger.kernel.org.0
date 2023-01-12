Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 549A1666E68
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 10:40:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236568AbjALJkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 04:40:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236453AbjALJkm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 04:40:42 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3E94F16
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 01:35:13 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id ud5so43334139ejc.4
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 01:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DPBNusWPBQFBVo5wcFZkwup1oZNZxM+we66QxMffCFg=;
        b=vAJgM0eIAvcbJW4JSWAKOgNzjQtRLekHOsPEeIWh6HpAPukUa8gGl6gdo8OWf3WCHw
         /QTraXFfrx9a2WBUssx1To7vFglhCsxDR78bXh4Rh4iSr9wC7Z3t5ykR82Eu8WG8HlkG
         PA99UH/2C/CLMXqYKYgGHHrnY4AlA3ZIV7ymAoHt87EgiA6csG/brGrFxIxBHqVBpAyJ
         Bt8LlHXywYoCjZq8+YaYxZdNs6YBZMdMcntbsLiJYT7NNdh+yHHCcclPbr5JC9Mdhr1D
         xzeWT9jBOMGhvnKPDny5RyxTeI/F4SXGySf0W3Xsw37lnbbZrrC5vfs9udJfzAsfAGAi
         d5sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DPBNusWPBQFBVo5wcFZkwup1oZNZxM+we66QxMffCFg=;
        b=wmO5VogvTVrSkUhkgJ+lzwE8DLScT2zHmLEVBzKg6GvhtZxit+CtZZ+XE+w6CFVVYJ
         w6x8ufpcNKIYQIfDDRiFUwETNF8b1+yZOIUYMqvG4kZ/WC8XLwp8N4+HOk+G55YVqlhW
         KjhPBOqw6FySIUC2cMNi/SzUNAozQy+FUkcgJVlULY92qutFslPergxhSDjwHKgX0Ta5
         C9pqZwV8YkeiBnbZPDD5m9oI8VEfoQ7+SeA+eHcHCMp73LjvM2jYcQ/woQpbQCHPTara
         qqEu8xWh5VAdD4cwg4u9N047oBPuDE8URw1zbnXSNzK+bFPAzw5ZFfq+tmjl2n+Htq57
         VPEw==
X-Gm-Message-State: AFqh2kqX1LBFkhDbVABIOZdWspV9vldXH3urXAho3uiigkEooCVds41q
        9S8331G6wtv342l9VXtbGQ9FKg==
X-Google-Smtp-Source: AMrXdXvhjxVJKHwo9irN6beEX/MyiSc0tLZwAmrv3n0bu6DJEzdw443wNzfKbQUMom3pymRKd3oDww==
X-Received: by 2002:a17:906:37c8:b0:84d:2fce:f325 with SMTP id o8-20020a17090637c800b0084d2fcef325mr16334213ejc.49.1673516112250;
        Thu, 12 Jan 2023 01:35:12 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id kt7-20020a1709079d0700b007c4fbb79535sm7251059ejc.82.2023.01.12.01.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jan 2023 01:35:11 -0800 (PST)
Message-ID: <2590a514-81f7-1876-c43b-80c8abe40cf9@linaro.org>
Date:   Thu, 12 Jan 2023 10:35:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 3/4] arm64: dts: fsd: Add Ethernet support for FSYS0
 Block of FSD SoC
Content-Language: en-US
To:     Sriranjani P <sriranjani.p@samsung.com>, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        alexandre.torgue@foss.st.com, peppe.cavallaro@st.com,
        joabreu@synopsys.com, mcoquelin.stm32@gmail.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, pankaj.dubey@samsung.com,
        alim.akhtar@samsung.com, ravi.patel@samsung.com,
        Jayati Sahu <jayati.sahu@samsung.com>
References: <20230111075422.107173-1-sriranjani.p@samsung.com>
 <CGME20230111075450epcas5p3f13b94bfeaa66d386aa51f87ca4ec5bf@epcas5p3.samsung.com>
 <20230111075422.107173-4-sriranjani.p@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230111075422.107173-4-sriranjani.p@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2023 08:54, Sriranjani P wrote:
> The FSD SoC contains two instances of Synopsys DWC QoS Ethernet IP, one
> in FSYS0 block and other in PERIC block.
> 
> Adds device tree node for Ethernet in FSYS0 Block and enables the same for
> FSD platform.
> 
> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
> Signed-off-by: Jayati Sahu <jayati.sahu@samsung.com>
> Signed-off-by: Sriranjani P <sriranjani.p@samsung.com>
> ---
>  arch/arm64/boot/dts/tesla/fsd-evb.dts      |  9 ++++
>  arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi | 56 ++++++++++++++++++++++
>  arch/arm64/boot/dts/tesla/fsd.dtsi         | 22 +++++++++
>  3 files changed, 87 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/tesla/fsd-evb.dts b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> index 1db6ddf03f01..ca0c1a28d562 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-evb.dts
> +++ b/arch/arm64/boot/dts/tesla/fsd-evb.dts
> @@ -30,6 +30,15 @@
>  	};
>  };
>  
> +&ethernet_0 {
> +	status = "okay";
> +
> +	fixed-link {
> +		speed = <1000>;
> +		full-duplex;
> +	};
> +};
> +
>  &fin_pll {
>  	clock-frequency = <24000000>;
>  };
> diff --git a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> index d0abb9aa0e9e..7ccc0738a149 100644
> --- a/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd-pinctrl.dtsi
> @@ -64,6 +64,62 @@
>  		samsung,pin-pud = <FSD_PIN_PULL_NONE>;
>  		samsung,pin-drv = <FSD_PIN_DRV_LV2>;
>  	};
> +
> +		eth0_tx_clk: eth0-tx-clk-pins {

Wrong indentation.

> +		samsung,pins = "gpf0-0";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_DOWN>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV6>;
> +	};
> +
> +	eth0_tx_data: eth0-tx-data-pins {
> +		samsung,pins = "gpf0-1", "gpf0-2", "gpf0-3", "gpf0-4";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_UP>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV6>;
> +	};
> +
> +	eth0_tx_ctrl: eth0-tx-ctrl-pins {
> +		samsung,pins = "gpf0-5";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_UP>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV6>;
> +	};
> +
> +	eth0_phy_intr: eth0-phy-intr-pins {
> +		samsung,pins = "gpf0-6";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_NONE>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV4>;
> +	};
> +
> +	eth0_rx_clk: eth0-rx-clk-pins {
> +		samsung,pins = "gpf1-0";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_UP>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV6>;
> +	};
> +
> +	eth0_rx_data: eth0-rx-data-pins {
> +		samsung,pins = "gpf1-1", "gpf1-2", "gpf1-3", "gpf1-4";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_UP>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV6>;
> +	};
> +
> +	eth0_rx_ctrl: eth0-rx-ctrl-pins {
> +		samsung,pins = "gpf1-5";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_UP>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV6>;
> +	};
> +
> +	eth0_mdio: eth0-mdio-pins {
> +		samsung,pins = "gpf1-6", "gpf1-7";
> +		samsung,pin-function = <FSD_PIN_FUNC_2>;
> +		samsung,pin-pud = <FSD_PIN_PULL_NONE>;
> +		samsung,pin-drv = <FSD_PIN_DRV_LV4>;
> +	};
>  };
>  
>  &pinctrl_peric {
> diff --git a/arch/arm64/boot/dts/tesla/fsd.dtsi b/arch/arm64/boot/dts/tesla/fsd.dtsi
> index f35bc5a288c2..ade707cc646b 100644
> --- a/arch/arm64/boot/dts/tesla/fsd.dtsi
> +++ b/arch/arm64/boot/dts/tesla/fsd.dtsi
> @@ -32,6 +32,7 @@
>  		spi0 = &spi_0;
>  		spi1 = &spi_1;
>  		spi2 = &spi_2;
> +		eth0 = &ethernet_0;

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.


Best regards,
Krzysztof

