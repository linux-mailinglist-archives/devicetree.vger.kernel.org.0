Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC04A6579EA
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 16:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233556AbiL1PGB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 10:06:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233550AbiL1PF6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 10:05:58 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10B6EB4BE
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 07:05:57 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id s22so16756748ljp.5
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 07:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OzSUnApml1On80n7HfJBsepysNXlW5SfzG3qgcD+3YY=;
        b=Ucg0KAuaFVS6RZhtg5VTMBCnV8AWw20pioDwN5l2+3ea5pB1VTawBz7sU7JbpUJMRU
         OsLL1hSe0TSHNria3+/uvqD6fMw/S3IUonC1avKPjUAwJ4OEz4GPaSPJeACewXdojU+o
         kzJPCeLHUOoCMHfybTAOV9SfUQQkIoKBZy0lalfRvTcNk77uAnkWLYcWzbA6tvvfZo0I
         AwTko5xOjuXhUHdDTbA/FBl3M4Xo7Qn4GQhPL0UiqbFhCUBwn0C+h7fTGgOp1zQET9Vu
         JLe3Rku/Jmotjq9ZgqR8p/3LCqocnBI5jBsmk5xCTqJmS2KlF5w1uo90KNcgckRT8Bmy
         xUgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OzSUnApml1On80n7HfJBsepysNXlW5SfzG3qgcD+3YY=;
        b=dFHzPSlenMfcQici7v7ZPikEPhZiVuMmjnlTgoKOmjWQJGFCB9w20Ki/ktAo+6zLgV
         g7kWM/BYFzOEyf5572nn9joH3M0hUKEtlHA6vN00NTz9DfqLc/YI2Ww9v6lVZeoSmX7h
         2K5abTGR7lnZ+NVBjt83veREoY+lQRe1kCx/oyeGQaGV1Ht8A/XOmWB7V+06wkRE7pmJ
         5SO+MKNzDABNYO+Zjop+FJ5haWTazzaY/L2VJUprtI/LmO0cKvkMlkpgmbI5uWkA4XtF
         ePRFYGgQItju3sRq6yEnt1VWig7GaFO2xxv9NUdHjdtUdZET/ga+4Pn1PomiM+b3YhIc
         2d2A==
X-Gm-Message-State: AFqh2kpB8r8F4TaW6Xrtswj9sutPd9cJS5m6fWeQgi9tJoFOwVaLiddd
        zfGXq3QS7CHk+AG/qmC51cMtaw==
X-Google-Smtp-Source: AMrXdXvd6Ndb66kaIUVSlnQox53Xq+xs+gRtFV8y4vpR06yi1LfOu1OELbHFZzyDArQ4TxSObNmpng==
X-Received: by 2002:a2e:a604:0:b0:279:c230:a6fb with SMTP id v4-20020a2ea604000000b00279c230a6fbmr9620137ljp.9.1672239955439;
        Wed, 28 Dec 2022 07:05:55 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b3-20020a2eb903000000b0027fb672d5fesm1532318ljb.59.2022.12.28.07.05.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 07:05:54 -0800 (PST)
Message-ID: <513807db-4cf8-5123-fa07-8d4d1feb84db@linaro.org>
Date:   Wed, 28 Dec 2022 16:05:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v5 2/2] dt-bindings: sound: tlv320aic3x: Add optional
 clock and port properties
Content-Language: en-US
To:     Jai Luthra <j-luthra@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20221227082717.29561-1-j-luthra@ti.com>
 <20221227082717.29561-3-j-luthra@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221227082717.29561-3-j-luthra@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/12/2022 09:27, Jai Luthra wrote:
> Describe optional properties for clocks and ports that were missing in
> the original txt binding, to fix warnings like:
> 
> aic33@18: 'assigned-clock-parents', 'assigned-clock-rates',
> 	'assigned-clocks' do not match any of the regexes:
> 	'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/omap2420-n810.dtb
> 
> tlv320aic3106@1b: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/am335x-sl50.dtb
> 
> codec@18: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/imx6dl-gw5903.dtb
> 	arch/arm/boot/dts/imx6q-gw5903.dtb
> 
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---
>  Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
> index f0375bbf4c40..2f9fc76bba55 100644
> --- a/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
> +++ b/Documentation/devicetree/bindings/sound/ti,tlv320aic3x.yaml
> @@ -110,6 +110,12 @@ properties:
>    '#sound-dai-cells':
>      const: 0
>  
> +  clocks: true

maxItems

> +
> +  port:
> +    description: For DAI connection when the codec is used via graph card
> +    type: object

Instead this should be $ref to graph port

> +
>  required:
>    - compatible
>    - reg

Best regards,
Krzysztof

