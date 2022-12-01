Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8032463EAF4
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 09:22:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbiLAIWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 03:22:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229676AbiLAIW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 03:22:29 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF2CE40908
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 00:22:25 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id y16so1460671wrm.2
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 00:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+mR6HUSlaN8hS5l8zD0LYEJ2uQHlTjpXSoGmhbGyVtU=;
        b=Ydc32BuKfcHbEu/s3Wdj0pwQgzomhNrDEZwenH9/myXzg2sDKOik9fkRVLQ3Gf1dnn
         mBfqLQa6KYIoR2ukVBonSyinhS25n3SggfHU+QWR145IFTXL8L93b41I3M53Zdg4lrwV
         e0A72zUXV+qdtHix4qAnz1MJH00yrWAqcte67TEdlkFEyMCNsb/AmFNFJnXHC0g6HAcN
         MbT+cf4Co3eWmrgi7gqXuchXFF2HGrWXbnA/mvEznOpseIKdEdnCOXXhzNsWeDqYFEHR
         ko+/fdN/gSnQndafH+ckBvQYBx/OhAgcwHqg91saR0tCRUMkdV8KXoCgUZOVo3B+rK61
         Oymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+mR6HUSlaN8hS5l8zD0LYEJ2uQHlTjpXSoGmhbGyVtU=;
        b=lnEDbEVKfHp158JlPz+gn7eMcZ8Tm8KfruiwfpK6iS2o5MHSLcxsEEs/9yZkrX/jML
         GyMqFCY36Xomqtnz01+tsSjXFC4LvbN9cc7alNPYZ9rH76dHnJPxqGSl1IVgRh442n0f
         mxg2kW7A7AypvY4nUUTOGKpdl74nZZ3vNsbJbspQjM3nRgdaBhlSvwZ3a9BBzyjold85
         8t++rAeOrW2e24bGyRgiDTdhDTWaEIX+loIncsMHokGnbErChqyAf8K2oc7oiFaNwPbD
         nWpoMjF1MbbxBHXH5g+y5GY9GUMZrxD73AuZ0sRK+dfelMgHuVEzsdPxs8y8Q3eLzZRj
         3OKA==
X-Gm-Message-State: ANoB5pm4cNFMYLfhW1GjfMQ7OAklxPTO2uGHq/hrQTP6AmO0FeFCHHRj
        Vf2hQxgdMg3/ezo/5RoCfM8v7A==
X-Google-Smtp-Source: AA0mqf7HvhClS0aU6onW65JDOt3qKaBnpN5003N6Ve6c6W9mj0StV4JjUryLKPoKEFz7+r6APCmviQ==
X-Received: by 2002:a5d:42d0:0:b0:241:d8e2:868d with SMTP id t16-20020a5d42d0000000b00241d8e2868dmr32627813wrr.671.1669882944447;
        Thu, 01 Dec 2022 00:22:24 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:bec0:73a:70e1:228f? ([2a01:e0a:982:cbb0:bec0:73a:70e1:228f])
        by smtp.gmail.com with ESMTPSA id m35-20020a05600c3b2300b003b50428cf66sm5089970wms.33.2022.12.01.00.22.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 00:22:24 -0800 (PST)
Message-ID: <16c2c7e6-20bb-7593-3197-8925b40d6d77@linaro.org>
Date:   Thu, 1 Dec 2022 09:22:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/5] dt-bindings: reset: meson-g12a: Add missing NNA
 reset
Content-Language: en-US
To:     Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc:     italonicola@collabora.com, Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/Amlogic Meson SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson SoC support" 
        <linux-amlogic@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20221129085047.49813-1-tomeu.vizoso@collabora.com>
 <20221129085047.49813-2-tomeu.vizoso@collabora.com>
Organization: Linaro Developer Services
In-Reply-To: <20221129085047.49813-2-tomeu.vizoso@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Philipp,

On 29/11/2022 09:50, Tomeu Vizoso wrote:
> Doesn't appear in the TRM I have, but it is used by the downstream
> galcore driver.
> 
> Signed-off-by: Tomeu Vizoso <tomeu.vizoso@collabora.com>
> Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>   include/dt-bindings/reset/amlogic,meson-g12a-reset.h | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/include/dt-bindings/reset/amlogic,meson-g12a-reset.h b/include/dt-bindings/reset/amlogic,meson-g12a-reset.h
> index 6d487c5eba2c..45f6b8a951d0 100644
> --- a/include/dt-bindings/reset/amlogic,meson-g12a-reset.h
> +++ b/include/dt-bindings/reset/amlogic,meson-g12a-reset.h

<snip>

Will you mind if I take this patch so I can apply the whole
patchset at once and handle the bindings deps between my drivers and DT trees ?

Neil
