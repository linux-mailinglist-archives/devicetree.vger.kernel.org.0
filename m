Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7F7A66B1AE
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 15:53:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231327AbjAOOxg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 09:53:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231343AbjAOOxa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 09:53:30 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 204F5CDF9
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:53:29 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id i9so37636136edj.4
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 06:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ctHhpu12ctF9VU5Hp3kTq+kulnKm0gztXgUkI0AnIuU=;
        b=UbBrBiQyYbSlgo3/2aqXF5HEsWEfVlR8dQt8GViI7F9syc0wJCVLSxh2qGhSeK9/7Q
         Kf2RZHFdpz6/YSkP7W/iuePFD0vAKAEWJQ1UGNR7/sSda0oHOlCzkDTMqJea2xpdLeyo
         LxeEakLUyZckmvXjcQMr8zkE7Cc0v1GI7kqpvpLj/UC0zRDuiT4PIayU2pVJJrJl5ktp
         jxGU4w5RABPYNd/U0f8U+iIOjd9ydt85xHKpXy1KdTxg2W7S57y4XzR1lN/RaJiFVuQD
         MBVlLF9IlZbTHL/HvMN9uZDq9V1uBuC3PxDe93PXuGDjnQNqebDhT4ZJa3dlhtfbhy/p
         VvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ctHhpu12ctF9VU5Hp3kTq+kulnKm0gztXgUkI0AnIuU=;
        b=2iVYZA7dTjkI+9cgQVPbp9TyxGLFnZzqWacGcuUpFT9a3EBHRyHBNZ/x0bugQl3jRH
         FIxPc+cucTSnI93QVgUidQfVial1cw0gz/5mh+Ry1PBtabcSzqbYmw4wKGWlfndhwiV/
         uSzezOBGPo5N+wHk7/NEMvmQA6WvjiGpIMgsKmiNcDofnYAEqyWSKSR3Sr8X0TypY8vG
         WP4D5NaJkyAuhWsfjzOBMM4+lNeg9OJt6AvjDTToqVRJA5tRS/A9EdltHolLHXpmedJE
         LEbi5X+lKjQiyyvLrbFV44It9ztJ5EmFw12ks3n5P64fEv39B7tmtFli+ZWPIEZX8LVP
         AYAA==
X-Gm-Message-State: AFqh2krhm4KN4G+hr3XVKDTppNFr9LzCfCf4TM4290TVWOtmm89/p7GT
        10oBYTXuo2iAbTg+fyJ9YFVIgA==
X-Google-Smtp-Source: AMrXdXteb/nVwFk9p5p8D4qv1j7S3YBOS8KVu2iaB4Qif4hiYP/nQuN03C/zneXOU0TjGAN6P7aGrw==
X-Received: by 2002:a05:6402:2065:b0:499:bf1b:5de with SMTP id bd5-20020a056402206500b00499bf1b05demr20423208edb.37.1673794407741;
        Sun, 15 Jan 2023 06:53:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m20-20020aa7c2d4000000b00495f4535a33sm10502685edp.74.2023.01.15.06.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 06:53:27 -0800 (PST)
Message-ID: <ba8104e3-efb0-e092-573c-0e1ac57f1052@linaro.org>
Date:   Sun, 15 Jan 2023 15:53:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-phy@lists.infradead.org,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
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

On 15/01/2023 15:19, Heiner Kallweit wrote:
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

