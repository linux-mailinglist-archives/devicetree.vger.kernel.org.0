Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D69B604DCC
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 18:53:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229921AbiJSQxX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 12:53:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbiJSQxW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 12:53:22 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE28A1CEC00
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 09:53:20 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id a10so30050647wrm.12
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 09:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LTAsnU5E92eB+qM6c/ybV2oQFafDvcuad98jbA6ENts=;
        b=WpIqH6sWxI6Hu6UReuyNYrXyJhDU+rDEgOP2RlGzl1zKwZERTXOvQh6h1JCi3h+LXe
         LZUA9R/IiGCU0NllpowXPn+Uv9KCmsSx5ADU6HXkhZHumIZ+l0Maaw1M+hDV+XYp3gmy
         mHoD7i4M2m4WiiHH6zMqPxqwk/vjAzNXHXHg1zKmOlR6q2+enQZVK4ODS1rTzYEi4c/8
         5NdGRXYH4AfV0uXEiNK5ndX2gGR1VW7a197z2UMKYuwWVSkAvTrAaiIwfBjnGuog9zyB
         C7VUpP0yfgRhA/v8u5PZlcXnxUeHasXCm4yCB6jVt/KliKDsruTiMkmulyRaxTTIu+mt
         S1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LTAsnU5E92eB+qM6c/ybV2oQFafDvcuad98jbA6ENts=;
        b=tKKcwttFsDVYMjT7ZnZhf3TRsn7o74WNr3lsIxgZ9LmH4G+GHNkOHoYyqa9iqtOTGl
         TqYcTcgiymXQK+UwePcNgNSO4CRD4SrjyCKkDjRSws13zDxQrC4lLZorZTnFBBOr7zWe
         9XPjk0HdVBbg7cyLqymlKH3vKV5GS0Tvqi4TXJsTj/aPyMKgsPKpvBa9IqgV3+MC/Ln9
         huz75KQ8gydoqb8C8Bt9ktG3qPEsizs/lHM6a6EfgYZQzjJ/2yUSv5GFIfVfM81fO8xq
         knuF+oEOem4w3mIFznT46eAoHb/6E1xq2RisW1GkFlP4kLwb9jNOoZdj2JRUXSZbAa7a
         z7pg==
X-Gm-Message-State: ACrzQf0PpItp18b1O/mUB7Gn1/rmUH/652m2hfniXYhf4UymipArd22+
        hz1Sct1kKpruaw9d0EUJayOKVw==
X-Google-Smtp-Source: AMsMyM6TUejGXleI8wbR+NzTKQK8JKTIGhCs1+rC2ZIma8ucCBvl4QA0tduEqQwFPKHHpZup6eUUxg==
X-Received: by 2002:a5d:64c2:0:b0:22e:41b0:42ca with SMTP id f2-20020a5d64c2000000b0022e41b042camr5930528wri.411.1666198399330;
        Wed, 19 Oct 2022 09:53:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b15b:4b56:592a:c397? ([2a01:e0a:982:cbb0:b15b:4b56:592a:c397])
        by smtp.gmail.com with ESMTPSA id j30-20020adfa55e000000b0021e51c039c5sm14905294wrb.80.2022.10.19.09.53.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 09:53:18 -0700 (PDT)
Message-ID: <dc918114-8b89-441b-5ba1-aaf3ae084860@linaro.org>
Date:   Wed, 19 Oct 2022 18:53:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v3 1/2] spi: dt-bindings: amlogic, meson-gx-spicc: Add
 pinctrl names for SPI signal states
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Da Xue <da@libre.computer>, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221004-up-aml-fix-spi-v3-0-89de126fd163@baylibre.com>
 <20221004-up-aml-fix-spi-v3-1-89de126fd163@baylibre.com>
 <d355ee40-5905-4d10-8300-81e9a63117ee@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <d355ee40-5905-4d10-8300-81e9a63117ee@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 16:29, Krzysztof Kozlowski wrote:
> On 19/10/2022 10:01, Amjad Ouled-Ameur wrote:
>> SPI pins of the SPICC Controller in Meson-GX needs to be controlled by
>> pin biais when idle. Therefore define three pinctrl names:
>> - default: SPI pins are controlled by spi function.
>> - idle-high: SCLK pin is pulled-up, but MOSI/MISO are still controlled
>> by spi function.
>> - idle-low: SCLK pin is pulled-down, but MOSI/MISO are still controlled
>> by spi function.
>>
> 
> 
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - amlogic,meson-gx-spicc
>> +
>> +    then:
>> +      properties:
>> +        pinctrl-names:
>> +          minItems: 1
>> +          items:
>> +            - const: default
>> +            - const: idle-high
>> +            - const: idle-low
> 
> You should also define in such case pinctrl-0 and others.

Ok I thought it would be covered by the pinctrl-consumer.yaml
but yeah we should allow pinctrl-1 and pinctrl-2 here aswell by adding:

             pinctrl-1: true
             pinctrl-2: true

> 
> Best regards,
> Krzysztof
> 
Neil

