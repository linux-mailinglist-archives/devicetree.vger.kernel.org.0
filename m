Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E52A24E7C03
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:21:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229996AbiCYTbk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 15:31:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230010AbiCYTbd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 15:31:33 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E923CCCC5
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:26:27 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id d7so12134008wrb.7
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:organization:in-reply-to:content-transfer-encoding;
        bh=j/qujzbOuESO1PpbNdCPI/EIyCvZoY0MDDUpDJ3vHQ8=;
        b=uP0lqXFXhzYKz5P+7JgxvfcuieaiSaPuf6FKbYTRS1nnhh5/8/waCnRzHNJ5x1Yoco
         zrYA3C9C4XMNhUA0WzVXJEE9gIATswTBPhmTD65WwKR6UUnzz1sNLe7SafOd9hTnAjyj
         EN7M8SBexFuEDWPP4mZhkEfBBCfpBXiHi987yqTmx+nRBmrr0h/P+eRB+ItIAulBYAMh
         //HJtcs2GloFlcIVy/N+Nf3IJnY79DhNMDKHFr5hhFZMbrDN9bQIsWc2sFd+/H4CjDRp
         pUx/FIe2HcWc3iq5Gotf0CRIXxWN5azSG+FZEr5zreXnY+WzOhk1Mqiw79g7lgL2tw/K
         7gBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=j/qujzbOuESO1PpbNdCPI/EIyCvZoY0MDDUpDJ3vHQ8=;
        b=umSekynLWF2eDtMXgUoHQur/n0UHGw5OKdx9qkiYUnRuzX1HwEgvB4uEiEbOeI03Ws
         gDqz0A1zn3kMlenDQnKiN3DSJ8/LmzDobYXNXVeWG4bIaEqFMAX5dxnSTEq4t1y9MSJL
         xk/XeQUUafWWNt3BUQrFUihTGhTn/cTNjxGvb5X/6CKTRRgN+GQiQ1vZG0rRM9VeBMm8
         JlIs7qvjwJAtsoFNQXXflIGL0oZdYggp1VuNUohCTOWXmYxiVwmKlhbnjzXTdlyKF6dQ
         RRcWAxqnAoI2BA5vN9eO6dZqRmLEpWhB0enGdWKWfd5RYia8GCISpHFsdmDnDRU73dQe
         PH6Q==
X-Gm-Message-State: AOAM5313VHH+dSgqtKId2YgYwdSQhCdRMLpYXqpiOCZOYg+WgP6c6Nvb
        Yfg3Od9NOpFG8iVqUvf4LnRxgkSblyA7x+Yw
X-Google-Smtp-Source: ABdhPJxWqVuvY3ZRZ1JUHUDqORUP0Rmjzvw0CFxpJIL8aXbTr9PeJxwL33wgu5gJe3wFMd27QXw06A==
X-Received: by 2002:a05:6000:1379:b0:203:ee50:45ad with SMTP id q25-20020a056000137900b00203ee5045admr10011117wrz.268.1648229609490;
        Fri, 25 Mar 2022 10:33:29 -0700 (PDT)
Received: from ?IPV6:2001:861:44c0:66c0:d3b0:47bd:8485:31cd? ([2001:861:44c0:66c0:d3b0:47bd:8485:31cd])
        by smtp.gmail.com with ESMTPSA id t9-20020a05600c198900b0038cb8b38f9fsm8602540wmq.21.2022.03.25.10.33.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 10:33:29 -0700 (PDT)
Message-ID: <934c32f1-5fc3-7b38-3fee-0c75de928302@baylibre.com>
Date:   Fri, 25 Mar 2022 18:33:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 3/3] arm64: meson: update SDIO in dts for JetHub D1
Content-Language: en-US
To:     Vyacheslav Bocharov <adeep@lexina.in>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220325165501.81551-1-adeep@lexina.in>
 <20220325165501.81551-4-adeep@lexina.in>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <20220325165501.81551-4-adeep@lexina.in>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 25/03/2022 17:55, Vyacheslav Bocharov wrote:
> Fix the dts to match board's reference design:
> - update vddio_boot regulator to 3.3v (Wi-Fi SDIO module)
> - add vccq_1v8 regulator with 1.8v for eMMC SDIO
> 
> In the first revision of JetHub D1 the vccq_1v8 regulator was 3.3v.
> All installed eMMC modules were tested to work in HS200 mode at 3.3v
> supply voltage. In the next revisions of the board eMMC will be
> powered with 1.8v according to the standard.
> 
> Signed-off-by: Vyacheslav Bocharov <adeep@lexina.in>
> ---
>   .../dts/amlogic/meson-axg-jethome-jethub-j100.dts | 15 ++++++++++++---
>   1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j100.dts b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j100.dts
> index 66c1eeba8f48..bc00d672a357 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j100.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-axg-jethome-jethub-j100.dts
> @@ -81,12 +81,22 @@ vddio_ao18: regulator-vddio_ao18 {
>   	vddio_boot: regulator-vddio_boot {
>   		compatible = "regulator-fixed";
>   		regulator-name = "VDDIO_BOOT";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vddao_3v3>;
> +		regulator-always-on;
> +	};
> +
> +	vccq_1v8: regulator-vccq_1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VCCQ_1V8";
>   		regulator-min-microvolt = <1800000>;
>   		regulator-max-microvolt = <1800000>;
>   		vin-supply = <&vddao_3v3>;
>   		regulator-always-on;
>   	};
>   
> +
>   	usb_pwr: regulator-usb_pwr {
>   		compatible = "regulator-fixed";
>   		regulator-name = "USB_PWR";
> @@ -248,8 +258,7 @@ &sd_emmc_b {
>   
>   	bus-width = <4>;
>   	cap-sd-highspeed;
> -	sd-uhs-sdr104;
> -	max-frequency = <200000000>;
> +	max-frequency = <50000000>;

This changes should be in a separate commit

>   	non-removable;
>   	disable-wp;
>   
> @@ -282,7 +291,7 @@ &sd_emmc_c {
>   	mmc-pwrseq = <&emmc_pwrseq>;
>   
>   	vmmc-supply = <&vcc_3v3>;
> -	vqmmc-supply = <&vddio_boot>;
> +	vqmmc-supply = <&vccq_1v8>;
>   };
>   
>   /* UART Bluetooth */

