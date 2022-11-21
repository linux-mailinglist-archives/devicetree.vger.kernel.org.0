Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BEB463225A
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:37:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231477AbiKUMh5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:37:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231407AbiKUMhz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:37:55 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CB162F381
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:37:53 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id b9so14352984ljr.5
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HfG+hA+uYwDsZ1UdfYKRtVV9KVyXwGJ9M9n0nwa5OFc=;
        b=qVRdaXRkwOZckqHytSlZzPQYqP9Y2TWyDf9/s0fgu823ggTHiRlvplRtwsy0grDGxf
         ccQ7o6o33EtwKwG//itIwf4diZmaVYzRFy9oyaivR2zdfA4I2b4CfEVKWI3hO5i+ik+s
         XgoVHRTKA5XYbIvi4DqaLUZBWxwy7mZl+d9D3fJcvQms9LGfE8beV94uDv3z9PqZ8J1F
         ZkjpXSo+yhIzwyvimRjSJ+Hb1lGfvqflyZpRUtCrZVV2Gtwo+76O1JgWxX7O1CqHjeua
         df8Re6bNRJdR29VlAS2Fnpr0NQCuB6zW5AjJiOzFW59JMr91yIoKltR+0sPf5BCU6TDJ
         VLUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HfG+hA+uYwDsZ1UdfYKRtVV9KVyXwGJ9M9n0nwa5OFc=;
        b=py2tJ+A0uom/zN/QJaYLi38oQ/GZj/xAzJkv9fjsPrRnRzJQdcPqNwRpp4ywAFYZhN
         W2xV0tB5VYBU74kBqgaYZ9GdKelqmX8FZGQMln23UoBR+G+VVxgD+uvV3GbDCZU71wwR
         u+aqWtui+2vNSfcJTp992RZO3jqbOoeScY4gWrWp4KCnrPuk6pqIYVgQ2wNU+VC8Bgpn
         rbYhWnZ4W1bh8t7QShrwSskTTtNwPuoD2iWhgvTHXCAZGylgDWBmsj1WJTvCmLWz9azV
         UC+Wg1QzTZp1sYL29Fy+kTFDFU4o2+3BD/VWnp//EmQOAWQVYmeg6Wb3EN8UsS+giZYi
         RWLA==
X-Gm-Message-State: ANoB5pm+OJRLjlUeQ4jXAXazD4jL03BWXwZwpb0qzjM/43qlpAjSr8Fu
        4omJ1jjzN0mykFDJnsZxGP/MOA==
X-Google-Smtp-Source: AA0mqf4lADTH4UBnhnzITCAh4PxE4jvuBtauyFJ39lIlkTlmOgO2oOYF9BQyH7qnNp+r3XAy3V46Cg==
X-Received: by 2002:a2e:b63b:0:b0:277:56d:fcfb with SMTP id s27-20020a2eb63b000000b00277056dfcfbmr5221175ljn.264.1669034271700;
        Mon, 21 Nov 2022 04:37:51 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k12-20020a0565123d8c00b004979df1c1fasm2006030lfv.61.2022.11.21.04.37.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 04:37:51 -0800 (PST)
Message-ID: <fd714745-ea9f-fba5-3154-7c4babfc7ba9@linaro.org>
Date:   Mon, 21 Nov 2022 13:37:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 0/9] Remove the pins-are-numbered DT property
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        devicetree@vger.kernel.org
Cc:     linux-mediatek@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, khilman@baylibre.com,
        mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com
References: <20221121015451.2471196-1-bero@baylibre.com>
 <2cc7a3c5-563d-cdf6-f49b-5e0a9852fb54@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2cc7a3c5-563d-cdf6-f49b-5e0a9852fb54@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/11/2022 13:31, Matthias Brugger wrote:
> Hi Bernhard,
> 
> On 21/11/2022 02:54, Bernhard Rosenkränzer wrote:
>> During the review of my MT8365 support patchset
>> (https://lore.kernel.org/linux-mediatek/20221117210356.3178578-1-bero@baylibre.com/),
>> the issue of the "pins-are-numbered" DeviceTree property has come up.
>>
>> This property is unique to Mediatek MT65xx and STM32 pinctrls, and
>> doesn't seem to serve any purpose (both the Mediatek and STM32 drivers
>> simply refuse to deal with a device unless pins-are-numbered is set to
>> true).
>>
>> There is no other use of this property in the kernel or in other projects
>> using DeviceTrees (checked u-boot and FreeBSD -- in both of those, the
>> flag is present in Mediatek and STM devicetrees, but not used anywhere).
>>
>> There is also no known use in userspace (in fact, a userland application
>> relying on the property would be broken because it would get true on
>> any Mediatek or STM chipset and false on all others, even though other
>> chipsets use numbered pins).
>>
>> This patchset removes all uses of pins-are-numbered.
>>
>>
> 
> My personal preference is to add a summary of the files touched by the series in 
> the cover letter (the tools will do that for you). This allows maintainers to 
> easier understand if they have to look deeper into the series or can ignore it.
> 
> No need to send again, just saying for the future.

Yep. And git format-patch does it automatically in both common cases -
writing cover letter manually or taking it from branch description
(which is absolutely cool, IMHO).

Best regards,
Krzysztof

