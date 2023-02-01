Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5B61768670D
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 14:37:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbjBANhj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 08:37:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231863AbjBANhh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 08:37:37 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 277451BC0
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 05:37:36 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id q10so17342128wrm.4
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 05:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oyrI3NvpPP2H73tDQUkeXD7ywpVhyUvLhc3oDCVzmjw=;
        b=syH1KHQ/S1ZhTMEWn8mGlOLilhwDzgl5stlHCbswfoBFUCEgraZl9lsaAcEna+mSr7
         0yQGorNeBSBk41id+jZlvxatCUTVNamJmetV04g3YOp1vzf6URiHJ/GpOZBsGGdcVcG1
         yrydldS4xEBG2aSivt2oEhXphJU80jy47PMqdCjy/LO2FSQ5T6VEg6QpRspV9HEimqJk
         3e9ZAzTREjbWqsFGo/UUp/WIjnlaKS+fmPnYI2DiaMNOsbH/H6kT6181YUDUW+1jAO5G
         tDRXMgVmhTqfJ3jza91l11GpS533qzK4b3gUtrYU6EhUp+8Rz5aHCIE5jcBUR5K2QUq8
         zoRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oyrI3NvpPP2H73tDQUkeXD7ywpVhyUvLhc3oDCVzmjw=;
        b=dN+iOQ7kXtEjlUGGEetW/BSdHhhmQCnRsPXLrfrIy9bYf7ewgWC++p1vidXTIteRr9
         4RvjVq45cFHG9K9slbi4Zr+o2NitHBCMK+VrYDknULjnzvtDW4K560vA7p2G9kqytaXF
         33XBFxBdpre9tHFrDkWCH8mmAjzz3WX1vPOuDhrP5K2P1Ce4Z2r8pue4foU1Re+Vb9XO
         OopbT43//Nj9h6L20fshr4oe96LI8eoEz9u6G3Pl0GY32/f6rSGeC8vH9yZOV5LZTYDy
         CjX779GIi6In+mdfxdu+sXENoc99eSSBM6ePCRKtGa2sOX+hIqKuwDcbwfDdlgkOc0xE
         x+TA==
X-Gm-Message-State: AO0yUKX3S+JsYF4EbKYii64BQ+Z1adMCC1sbuB+IK3mmHK9MEK5wFxXW
        SbzWujdQPUokmxv7Ez+sCbWN6Q==
X-Google-Smtp-Source: AK7set/7fI04cn7R2f0gMOHtzvRdfhScVUINCv8IHm1+jVlFbB8TfUyUXTZ0va8DMEFCFYNEQvg2wg==
X-Received: by 2002:a05:6000:1a53:b0:2bf:b743:f035 with SMTP id t19-20020a0560001a5300b002bfb743f035mr1641562wry.28.1675258654696;
        Wed, 01 Feb 2023 05:37:34 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f12-20020adfdb4c000000b002bfb1de74absm17328592wrj.114.2023.02.01.05.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Feb 2023 05:37:34 -0800 (PST)
Message-ID: <ad24739b-f8e7-45ad-ecd7-6d3329f01986@linaro.org>
Date:   Wed, 1 Feb 2023 14:37:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v3] dt-bindings: thermal: mediatek: Add LVTS thermal
 controllers
Content-Language: en-US
To:     Balsam CHIHI <bchihi@baylibre.com>
Cc:     daniel.lezcano@linaro.org, angelogioacchino.delregno@collabora.com,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        khilman@baylibre.com, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com
References: <20230126161048.94089-1-bchihi@baylibre.com>
 <20230131140439.600164-1-bchihi@baylibre.com>
 <ab3357ad-01ec-8a1a-d627-a1543874f0ef@linaro.org>
 <CAGuA+oqXN3eoVyYkjuZjefPa-q542b7QLkBv+E-0a7k3U8BbFA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAGuA+oqXN3eoVyYkjuZjefPa-q542b7QLkBv+E-0a7k3U8BbFA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/02/2023 14:34, Balsam CHIHI wrote:
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - mediatek,mt8195-lvts-ap
>>> +      - mediatek,mt8195-lvts-mcu
>>
>> What about other devices? You called the file name as generic for all
>> Mediatek SoCs, so why only one SoC is here? Is there going to be more?
>> If yes, why they cannot be added now?
> 
> Yes, there is another MTK SoC mt8192 that supports LVTS,
> I was asked in v10 of the series to remove the unimplemented SoC.
> It will be added later with the driver that supports it.
> just let me know if you still want to add mt8192 bindings in the next
> version without the driver.

The binding should be complete, if that's possible, so if you had mt8192
already there, it could stay. Anyway it's fine then.

Best regards,
Krzysztof

