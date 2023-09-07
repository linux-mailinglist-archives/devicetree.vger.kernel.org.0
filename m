Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FD7B797AD4
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 19:51:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233539AbjIGRvw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 13:51:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233098AbjIGRvw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 13:51:52 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 764A5199A
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 10:51:25 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-31f737b8b69so661837f8f.3
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 10:51:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694109049; x=1694713849; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gmjr5UpU43MeSeIRw6DXV3UDbwxWAdsQzgPvfmhxLYE=;
        b=jr7ekOxF/KYsS9gVjnG9ub4EQsgDI2i7aZ3rZ0THBlOiUfB+boIYsd5uw2VxqJnrnT
         qSnNFuhACaSXzdcJZfLfTy7Scazo/qQDrVTug20UxK2oxqaa9pEcW+FGYteMH9KEEWOj
         2oKUZeooTETRUJGDqBOTdaVX98TSIviWqBLxYY2jJRUeNlq6IJEe9x8N1s4R2PkUZplc
         A11JcMP1AJ+P4jQ5LZiIZ7n3cmp3aVuicR4WnjS2bPPILRfSwpFB2E9gLdAWX2/sgcBb
         EnOKFMOQBWlc5Ll1pGbxO513Hj+xrqFpbRcvTby2fh9itR+b7FrLaZrLs036elcYiRik
         vfuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694109049; x=1694713849;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gmjr5UpU43MeSeIRw6DXV3UDbwxWAdsQzgPvfmhxLYE=;
        b=D9x2Oyvws9/k9kXrkBreyuQ3o5kBMDY+JQW+FnESKm+bZpYo4Fw7rzGSUDQX2nXQE1
         XalMjsGsqGy6feSBKRoqQDdni7ge/wOc8o9cxKltNQ6JhuYYzeX9xwfRSwKtjYEXUQnk
         m1DW2o7e3z92gsobiOzYL3cBZh1RaprTwmNdwYmIVpBWnH3zgoZp/thwbF0kwndTSyv/
         pEppx2HH0e6r23jphJgP+enSX4qGmvOBq6jvKsIllAJ0qj1fWtSCYAjEjbdpbgh4ZKme
         mME8OrfTGp5983XLqHNx4B5JD/RoNLSLEoFdA/AXtfRIeoYWMLosajoS3d+ZDx25NWsc
         gicg==
X-Gm-Message-State: AOJu0YyNM/SAKy6j+9SH2b4GVrLO37D/F1/Jmsf6XyQ1haSCgiWiO7xx
        ypfbV+cPFT6libe4C4naVm6kqMHJ3cq9sR7Qo2REOg==
X-Google-Smtp-Source: AGHT+IFL4mJSVN5Q4y9x2wXjsiO7oalgR37HkfDL2LpSJ49fYbLaZ41/2W4HbAU5KOqfz7oCa2LzeA==
X-Received: by 2002:a05:6402:615:b0:523:d1ab:b2ec with SMTP id n21-20020a056402061500b00523d1abb2ecmr3925764edv.35.1694067084345;
        Wed, 06 Sep 2023 23:11:24 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id w13-20020aa7dccd000000b005256e0797acsm9299224edu.37.2023.09.06.23.11.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 23:11:23 -0700 (PDT)
Message-ID: <56334793-3d21-1f2c-2f5c-01ba2f306813@linaro.org>
Date:   Thu, 7 Sep 2023 08:11:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] arm:dts: am3517-evm: Fix LED3/4 pinmux
Content-Language: en-US
To:     Adam Ford <aford173@gmail.com>, linux-omap@vger.kernel.org
Cc:     aford@beaconembedded.com,
        =?UTF-8?Q?Beno=c3=aet_Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Derald D. Woods" <woods.technical@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230907010159.330555-1-aford173@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230907010159.330555-1-aford173@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2023 03:01, Adam Ford wrote:
> The pinmux for LED3 and LED4 are incorrectly attached to the
> omap3_pmx_core when they should be connected to the omap3_pmx_wkup
> pin mux.  This was likely masked by the fact that the bootloader
> used to do all the pinmuxing.
> 
> Fixes: 0dbf99542caf ("ARM: dts: am3517-evm: Add User LEDs and Pushbutton")
> Signed-off-by: Adam Ford <aford173@gmail.com>
> ---
> This likely cannot apply to the original series, because the file has
> moved.  I can generate a separate patch for the pre-move device trees
> if necesssary.  The original location was:
>   arch/arm/boot/dts/am3517-evm.dts
> 
> diff --git a/arch/arm/boot/dts/ti/omap/am3517-evm.dts b/arch/arm/boot/dts/ti/omap/am3517-evm.dts
> index af9df15274be..738189ddc8d5 100644
> --- a/arch/arm/boot/dts/ti/omap/am3517-evm.dts
> +++ b/arch/arm/boot/dts/ti/omap/am3517-evm.dts
> @@ -271,13 +271,6 @@ OMAP3_CORE1_IOPAD(0x21c4, PIN_INPUT_PULLUP | MUX_MODE0)  /* i2c3_sda */
>  		>;
>  	};
>  
> -	leds_pins: leds-pins {
> -		pinctrl-single,pins = <
> -			OMAP3_WKUP_IOPAD(0x2a24, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* jtag_emu0.gpio_11 */
> -			OMAP3_WKUP_IOPAD(0x2a26, PIN_OUTPUT_PULLUP | MUX_MODE4)	/* jtag_emu1.gpio_31 */
> -		>;
> -	};
> -
>  	mmc1_pins: mmc1-pins {
>  		pinctrl-single,pins = <
>  			OMAP3_CORE1_IOPAD(0x2144, PIN_INPUT_PULLUP | MUX_MODE0)	/* sdmmc1_clk.sdmmc1_clk */
> @@ -355,3 +348,12 @@ OMAP3430_CORE2_IOPAD(0x25e2, PIN_INPUT | MUX_MODE3)	/* etk_d3.hsusb1_data7 */
>  		>;
>  	};
>  };
> +
> +&omap3_pmx_wkup {
> +	leds_pins: pinmux_leds_pins {

Come on... why moving it and changing the name to incorrect one? Isn't a
move cut-paste?

Best regards,
Krzysztof

