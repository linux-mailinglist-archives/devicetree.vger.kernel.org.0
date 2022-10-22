Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC12608302
	for <lists+devicetree@lfdr.de>; Sat, 22 Oct 2022 02:56:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229871AbiJVA4y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 20:56:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230046AbiJVA4u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 20:56:50 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF3842AE6FF
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 17:56:48 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id o8so2965544qvw.5
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 17:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rFpIzpIwgjuZIMXJiBfrrEfT6Hz5p7X9gD7zlqNfnbA=;
        b=aR2sH423g/FNEnomin/v+RK1B90ppCX8kpK4nXnKvCovSs9pJ64zMhoJoDVZH7jTp/
         kyGTvbBp8PPxqAaZ3BluNZFpGF/HvTi7eqDMp2lfzzLz0yheHYgyRLI4je6a6swGGBss
         XYuNFJQSVfCYvZ/FLTh2xp9LfK7nDMffawWBneabi0tFN+cXflsb3krFurrk4nvC9w9u
         U//jDOj8wisFw4+pFVKzWRiFBSVMdNBZvjR5yKaj548C2obS76/8IBxFTFMHbPuvAwEr
         26ZFwPrqQKEOsmUMQTzQdC7JTZ2NEKTB3eiE5JBl1hr3ixsTYK4KI3n0jKwkO5W/eVSU
         R05w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rFpIzpIwgjuZIMXJiBfrrEfT6Hz5p7X9gD7zlqNfnbA=;
        b=5xRHSEBir1ojEoKplbTNUNfdgSkwvvsEnV5njItxrp+oK5/MoYEmnrdNHd28tJDODx
         p+e6mtW40+DPCEdCu+Ic0zD87IiSxxOGCXIkkzjAzHHmNylYbmJc4W6MXYSLLy/SoNoB
         HyKi9ESg1UhHfCSupsf/wv2e3FdXUbp3OUaU0qIv6lN9cFD3V6YoSmV8Hs/zNm2GLAqX
         c2b6xKZDL8KSVBC8GpxEFo+nL6esFHpldJxK4vwsDYSqYlEA0Dsty3qG/tarXzvjeD6u
         2jQolbPdSnzP/G2vHQN6AjcAYvje1ju/O3YfFwQCQwOKqkmA7aN5NIWebDtWKVxx2kyP
         Nmvg==
X-Gm-Message-State: ACrzQf0A2SPRQkrnqllCJhnrYGdDF8uR6J8tINgYMqIe6HHQPXy8j4W8
        Rw61jyEU0xOcLJkhRDROCKEt6Q==
X-Google-Smtp-Source: AMsMyM7deIHgoRkR5AV441jdJc6NbHPCIuhVKS8qUIPyZpwKB2+r+V1b726Izf33aSQSx3x1w3VklA==
X-Received: by 2002:ad4:5cc2:0:b0:4b1:9631:3f01 with SMTP id iu2-20020ad45cc2000000b004b196313f01mr19178222qvb.82.1666400207983;
        Fri, 21 Oct 2022 17:56:47 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id bm2-20020a05620a198200b006ce7d9dea7asm10863961qkb.13.2022.10.21.17.56.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Oct 2022 17:56:47 -0700 (PDT)
Message-ID: <16e7e524-a6f6-9b43-6a64-489f61216ae4@linaro.org>
Date:   Fri, 21 Oct 2022 20:56:46 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] arm: dts: socfpga: align mmc node names with dtschema
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20221021153223.159030-1-dinguyen@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221021153223.159030-1-dinguyen@kernel.org>
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

On 21/10/2022 11:32, Dinh Nguyen wrote:
> dwmmc0@ff704000: $nodename:0: 'dwmmc0@ff704000' does not match '^mmc(@.*)?$'
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  arch/arm/boot/dts/socfpga.dtsi                      | 2 +-
>  arch/arm/boot/dts/socfpga_arria10.dtsi              | 2 +-
>  arch/arm/boot/dts/socfpga_arria5.dtsi               | 2 +-
>  arch/arm/boot/dts/socfpga_arria5_socdk.dts          | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5.dtsi             | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts  | 4 ++--
>  arch/arm/boot/dts/socfpga_cyclone5_de0_nano_soc.dts | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_mcv.dtsi         | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_socdk.dts        | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_sockit.dts       | 2 +-
>  arch/arm/boot/dts/socfpga_cyclone5_sodia.dts        | 2 +-
>  arch/arm/boot/dts/socfpga_vt.dts                    | 2 +-
>  12 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
> index a2419a5c6c26..6eda6fdc101b 100644
> --- a/arch/arm/boot/dts/socfpga.dtsi
> +++ b/arch/arm/boot/dts/socfpga.dtsi
> @@ -754,7 +754,7 @@ l3regs@0xff800000 {
>  			reg = <0xff800000 0x1000>;
>  		};
>  
> -		mmc: dwmmc0@ff704000 {
> +		mmc: mmc@ff704000 {
>  			compatible = "altr,socfpga-dw-mshc";
>  			reg = <0xff704000 0x1000>;
>  			interrupts = <0 139 4>;
> diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
> index eb528c103d70..3b2a2c9c6547 100644
> --- a/arch/arm/boot/dts/socfpga_arria10.dtsi
> +++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
> @@ -655,7 +655,7 @@ L2: cache-controller@fffff000 {
>  			arm,shared-override;
>  		};
>  
> -		mmc: dwmmc0@ff808000 {
> +		mmc: mmc@ff808000 {
>  			#address-cells = <1>;
>  			#size-cells = <0>;
>  			compatible = "altr,socfpga-dw-mshc";
> diff --git a/arch/arm/boot/dts/socfpga_arria5.dtsi b/arch/arm/boot/dts/socfpga_arria5.dtsi
> index b531639ce7dc..c20a1f04f29a 100644
> --- a/arch/arm/boot/dts/socfpga_arria5.dtsi
> +++ b/arch/arm/boot/dts/socfpga_arria5.dtsi
> @@ -18,7 +18,7 @@ osc1 {
>  			};
>  		};
>  
> -		mmc0: dwmmc0@ff704000 {
> +		mmc: mmc@ff704000 {
>  			broken-cd;
>  			bus-width = <4>;
>  			cap-mmc-highspeed;
> diff --git a/arch/arm/boot/dts/socfpga_arria5_socdk.dts b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
> index 7f5458d8fccc..40f12232c150 100644
> --- a/arch/arm/boot/dts/socfpga_arria5_socdk.dts
> +++ b/arch/arm/boot/dts/socfpga_arria5_socdk.dts
> @@ -107,7 +107,7 @@ rtc@68 {
>  	};
>  };
>  
> -&mmc0 {
> +&mmc {
>  	vmmc-supply = <&regulator_3_3v>;
>  	vqmmc-supply = <&regulator_3_3v>;
>  	status = "okay";
> diff --git a/arch/arm/boot/dts/socfpga_cyclone5.dtsi b/arch/arm/boot/dts/socfpga_cyclone5.dtsi
> index a9d1ba66f1ff..1d08d48559e5 100644
> --- a/arch/arm/boot/dts/socfpga_cyclone5.dtsi
> +++ b/arch/arm/boot/dts/socfpga_cyclone5.dtsi
> @@ -18,7 +18,7 @@ osc1 {
>  			};
>  		};
>  
> -		mmc0: dwmmc0@ff704000 {
> +		mmc: mmc@ff704000 {
>  			broken-cd;
>  			bus-width = <4>;
>  			cap-mmc-highspeed;
> diff --git a/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts b/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
> index 76262f1e5e03..f3e7169bc93a 100644
> --- a/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
> +++ b/arch/arm/boot/dts/socfpga_cyclone5_chameleon96.dts
> @@ -43,7 +43,7 @@ user_led1 {
>  		user_led2 {
>  			label = "green:user2";
>  			gpios = <&porta 22 GPIO_ACTIVE_LOW>;
> -			linux,default-trigger = "mmc0";
> +			linux,default-trigger = "mmc";

I think this is not correct... or at least not really related to this
commit.


Best regards,
Krzysztof

