Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FFEB6E35BC
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 09:27:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230305AbjDPH1v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 03:27:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230232AbjDPH1u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 03:27:50 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30E80171E
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 00:27:49 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id vc20so1377831ejc.10
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 00:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681630067; x=1684222067;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=73bMhyNa0aa8++7vraJhEFeVzDGBZJo8oH+HWy7K7yA=;
        b=vIONb8S4Fov/w6lEJwtIY2XDOhURweSdmf2eYGoohCqBWvMR469wTlBOPxUOHrNLfq
         U7d3RheCV2V3RChebAvRCwecv0QtbwsTQOMJtcFBcqti8d9mtRIODisx1+6/pYcWOsPq
         vvEoIL4v2Zs5kdyRignjh8Pij88mZKU9Ro6UDknWcj3l6VJUvWAy5m1zoVHDDxMMYQA6
         Urz1QYkyvIFOCE5MpYNT55ozc2rXofUXHfkgeSYRunxt6qs0qRjBR/IBSQND7I9UCuh5
         FQUEYZ9Wsnc3sKwAVFlPNQ8AB7eH9VePhcTelqt3BqTt/o0rRwNx1VhMnc5qPvlJ36Nm
         wMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681630067; x=1684222067;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=73bMhyNa0aa8++7vraJhEFeVzDGBZJo8oH+HWy7K7yA=;
        b=Ywzcb9W6wZcYURVEEuVmzQ/h/XhSUJiJ05ezUInJs3BoOcyffervvHyQyRTejJaT50
         58BqvZKjt0x4Ll1Uu/gCyvY3fgNejXMIBU4RfcIJ89NQjLC2rOBfqH+a2QcjQ06v2jPL
         awdr/80VlDCwi76PJuWmtjATl4O9LQ0fGxifP0fzNZlvdeE+BqOWrE2Yp6QfUb5pOcMf
         O17i/Q6DMwVGttyb7wy6sED6cIMaZt44E8ATTX6jzZIpqHRAkRAGtWdE8iOtOpGeDVtH
         nzxNk56cxsCkxR8XSDU0f4dVuC0gsLhJXrBcSnswrE7jvhJcnkVwHKMu6XNV9bxmZaum
         F9Qg==
X-Gm-Message-State: AAQBX9coAzYvvXzeaOPyOJMJ48cV8DtkpdZYMOZxx2f/S6rDnXhuSv/G
        ngnWKrsGkjTnNkO3a++31F3blg==
X-Google-Smtp-Source: AKy350ajcg5svPODaCy5GefECc0x96HqXNNX3Q6QNl7eIsMc6jJRAr0jWQmn+ooPujRSUW5OZDiWvQ==
X-Received: by 2002:a17:906:82c5:b0:94a:8e19:6aba with SMTP id a5-20020a17090682c500b0094a8e196abamr3986530ejy.21.1681630067634;
        Sun, 16 Apr 2023 00:27:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:29dd:ded4:3ccc:83db? ([2a02:810d:15c0:828:29dd:ded4:3ccc:83db])
        by smtp.gmail.com with ESMTPSA id s4-20020a170906500400b0094776b4ef04sm4821709ejj.10.2023.04.16.00.27.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 00:27:47 -0700 (PDT)
Message-ID: <25a8dcf9-fd1b-0eb3-eced-7a1e158ca7fc@linaro.org>
Date:   Sun, 16 Apr 2023 09:27:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 3/3] ARM: dts: axp209: Add iio-hwmon node for internal
 temperature
Content-Language: en-US
To:     Jonathan McDowell <noodles@earth.li>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
References: <cover.1681580558.git.noodles@earth.li>
 <a40b6d46209f9b5626cd5a147c31daf5d19c9439.1681580558.git.noodles@earth.li>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a40b6d46209f9b5626cd5a147c31daf5d19c9439.1681580558.git.noodles@earth.li>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/04/2023 19:47, Jonathan McDowell wrote:
> This adds a DT node to hook up the internal temperature ADC to the

Do not use "This commit/patch", but imperative mood. See:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> iio-hwmon driver. The various voltage + current ADCs are consumed and
> exposed by their respective drivers, but this is not and is always
> available. Naming chosen to match the axp20x_ prefix the power sensors
> use.

Weird choice.

> 
> Signed-off-by: Jonathan McDowell <noodles@earth.li>
> ---
>  arch/arm/boot/dts/axp209.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/axp209.dtsi b/arch/arm/boot/dts/axp209.dtsi
> index ca240cd6f6c3..f00b5a7ec106 100644
> --- a/arch/arm/boot/dts/axp209.dtsi
> +++ b/arch/arm/boot/dts/axp209.dtsi
> @@ -48,6 +48,13 @@
>   * http://dl.linux-sunxi.org/AXP/AXP209%20Datasheet%20v1.0_cn.pdf
>   */
>  
> +/ {
> +	axp20x_temp {

No underscores in node names.

Node names should be generic.
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

> +		compatible = "iio-hwmon";
> +		io-channels = <&axp_adc 4>; /* Internal temperature */
> +	};
> +};
> +
>  &axp209 {
>  	compatible = "x-powers,axp209";
>  	interrupt-controller;

Best regards,
Krzysztof

