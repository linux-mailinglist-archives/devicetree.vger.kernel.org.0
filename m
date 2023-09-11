Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C48C79B3FE
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 02:01:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233663AbjIKUr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235839AbjIKJlW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 05:41:22 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC66B10C
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 02:41:16 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9a9f139cd94so438281366b.2
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 02:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694425275; x=1695030075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/Rdq0URinpTcu5sLen+gjO6hyEzWhm5ftrWrOcMBRpM=;
        b=lMIIa9V5rOMkhv2xupJwO/N4bwoe1QJhGloH0O5tDgH1na4Di3FxyXw7V91OuRwXiH
         O+NgOkn2YEdI6UEh8A60w43Ue5AP4/roHZrp01/xW/RsEy00Vs9cQjZ3k9KDjf+nIubs
         /3ESNtehObRKkCMR3HO0B7O5x9JWYK9pegj2Eo+9c3krnV57u65Zd4GSPYdZCTDMoP8K
         pQgaUw1Io9kDfQcsZZAlvt6nAt6c+dzgsQ0RNj7FJhJDnEavMmxkc8qrowk467F2aN+1
         6EOZy+FWZHtaS09J7qBryTT5KB80WvHEMyJigQOPnbG9zGpKmDrJvkbOTGOqBp/SrnQW
         whTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694425275; x=1695030075;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/Rdq0URinpTcu5sLen+gjO6hyEzWhm5ftrWrOcMBRpM=;
        b=ZLssqfwiefiM/gOokX58ADexJMuPTwB6hvb9Uo6gZcfnN7pPow7Pv0SD3W4wV7X5gr
         1e936mhZHACNP4BYXMY2tYIvOhwZFlAGOdqC6Sdh0tB1nZFx+9YSR+mA2MEU85VW4bTS
         OiMWLzqJ+8ePXyr9QdY7dpfOZhsjSekqXuDavVwpqXOCabgrvdQDowyHoeaBXL+bqzrx
         w2Fm8JokJHe09eBHbwTD9rFBkkkJk3KL2HnMbgIHiLkk+JgRTxFU26NzyOaZHw6otQ1J
         13ajNQK/S5x1rqxeyLOzTkfwxCU+Vv2ZVwSaHrzDE7Jsht9HYPV1XYcI0oUZ0nOh64U1
         sAnQ==
X-Gm-Message-State: AOJu0YyXcLl3L4dvPN1w4ER1nDfeDPpRYbX/QnZqysqSV16d/vxM6vZh
        lhoHAEN82xDR41T9ClKAotEbnA==
X-Google-Smtp-Source: AGHT+IGhnpDY+O7Wu+c7whPNnupCcBmcZnCuU7k3WX1FcCTde0t4ZKRKDDZbCWg2Yu2id6JclD98fw==
X-Received: by 2002:a17:906:1019:b0:9a2:96d2:b1e6 with SMTP id 25-20020a170906101900b009a296d2b1e6mr7687841ejm.75.1694425275244;
        Mon, 11 Sep 2023 02:41:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709064f0e00b0099e05fb8f95sm5089570eju.137.2023.09.11.02.41.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 02:41:14 -0700 (PDT)
Message-ID: <e22e61e7-02b1-8127-888d-e470838f4a18@linaro.org>
Date:   Mon, 11 Sep 2023 11:41:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [RFC PATCH 8/8] dt-bindings: display: panel: add Fascontek
 FS035VG158 panel
To:     John Watts <contact@jookia.org>, dri-devel@lists.freedesktop.org
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Chris Morgan <macromorgan@hotmail.com>,
        Jagan Teki <jagan@edgeble.ai>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230911090206.3121440-1-contact@jookia.org>
 <20230911090206.3121440-9-contact@jookia.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230911090206.3121440-9-contact@jookia.org>
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

On 11/09/2023 11:02, John Watts wrote:
> This is a small 3.5" 640x480 IPS LCD panel.
> 
> Signed-off-by: John Watts <contact@jookia.org>
> ---

Thank you for your patch. There is something to discuss/improve.

> +maintainers:
> +  - John Watts <contact@jookia.org>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    const: fascontek,fs035vg158
> +
> +  backlight: true
> +  port: true
> +  power-supply: true
> +  reg: true
> +  reset-gpios: true

Why do you need all these 5? They are allowed by panel-common.

> +
> +  spi-3wire: true
> +
> +required:
> +  - compatible

Missing reg. Probably also port.


> +  - power-supply
> +  - reset-gpios
> +


Best regards,
Krzysztof

