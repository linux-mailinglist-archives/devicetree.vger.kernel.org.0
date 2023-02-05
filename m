Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0EF168B109
	for <lists+devicetree@lfdr.de>; Sun,  5 Feb 2023 17:55:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229553AbjBEQy6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Feb 2023 11:54:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229475AbjBEQy6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Feb 2023 11:54:58 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D19B4BF
        for <devicetree@vger.kernel.org>; Sun,  5 Feb 2023 08:54:56 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id p26so27974755ejx.13
        for <devicetree@vger.kernel.org>; Sun, 05 Feb 2023 08:54:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P4n0911EfpptLanp0PUpzlhcgWUSYJrlrxWPWkoQnzU=;
        b=PrPeMtMovft8QZc8IH3Z+EY+Xe4oUbYrPtg2CV0SxWc/eZ3XPSQ9hvAUPf+dcBfDv9
         kLYY9n2RSFkA51TmKKQBH5JG0u+twP2HJSCyMEGCDxmtlFLKgzjz/9HCzXHzsTUZdwli
         E4+bS8gPR2WLiOY5jMIEAHh3pLTt6+esy7gNQF8QaJhPt4Dj/X6Yjp985AR0OkWqDKjJ
         kmbiEkzajEouDBnqIeGtkJCzGnDTaPpHDdLfJq7W7so6iRCyAwhTL5RNkRdgM5jPIxYc
         w8/zyTBs1+SRvLmGrTVcIL0uMvLYG6rYPAvv30eD/Dyt2WaY0SmdKmcwgYI2Cov0uXfB
         abLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:subject:from:content-language
         :references:cc:to:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P4n0911EfpptLanp0PUpzlhcgWUSYJrlrxWPWkoQnzU=;
        b=KgIFqexTwpr3SjfVe/gbke+UVczga0aIk+gmlyhAAOXlYQvqJXB7v52rLL3r/wbDvU
         TEZcs9FWF2nry0wLb+qefofiN+iwF59+JaiTtYFHjivmrxXiskKeRrFZ7wwhcZUYZdLP
         QGPoeFNtGJdSi9I1GJVZ7QGXbubr3kw2zcQN60Zo0Bii+Nm6M6USVJME8Z2VBI/Znat4
         kUyZQerjGVBzJQwBcpr8T28hqHFzAa7BSNvC6bj1+3mBupRVlpm9IoxKhNZ8pt63GtVE
         Qexty0Sx2dI96RIo51hiG0XtbJMsnvRoYB8AFO+rWqgMvLR5pHkIhrzgWADGlVJbGB/Z
         QLaA==
X-Gm-Message-State: AO0yUKWuvP4euyMnOGT9O+ZGh0H+Swn5OPOh4Js8SEQ+nLVZKpP4kZpR
        YFhvaWaTajJj4PZMu0Cof3k=
X-Google-Smtp-Source: AK7set+yffrjGRgbY188zWjCWyoZ6XwNeMNg1pdoOfVJtd2J8fqwUyeTG9vfLz92Ji0uQ7CxZgTKQQ==
X-Received: by 2002:a17:907:2d0d:b0:88e:d435:3fd6 with SMTP id gs13-20020a1709072d0d00b0088ed4353fd6mr16680276ejc.63.1675616094177;
        Sun, 05 Feb 2023 08:54:54 -0800 (PST)
Received: from ?IPV6:2a01:c22:7648:3c00:e163:47c4:c462:6618? (dynamic-2a01-0c22-7648-3c00-e163-47c4-c462-6618.c22.pool.telefonica.de. [2a01:c22:7648:3c00:e163:47c4:c462:6618])
        by smtp.googlemail.com with ESMTPSA id gv21-20020a170906f11500b0086dd8f20a6asm4319395ejb.77.2023.02.05.08.54.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Feb 2023 08:54:53 -0800 (PST)
Message-ID: <0db3cd05-9a3a-a79b-308a-18ab49d29c17@gmail.com>
Date:   Sun, 5 Feb 2023 17:54:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
To:     Neil Armstrong <narmstrong.kernel@gmail.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <6dcf6333-f75a-f7ec-8ce9-fbbfb81d1a60@gmail.com>
 <9DA78049-10C9-47D6-B36B-9B7E1067385A@gmail.com>
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
Subject: Re: [PATCH v3] dt-bindings: pinctrl: Convert Amlogic Meson pinctrl
 binding
In-Reply-To: <9DA78049-10C9-47D6-B36B-9B7E1067385A@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05.02.2023 08:57, Neil Armstrong wrote:
> 
>> Le 5 févr. 2023 à 01:05, Heiner Kallweit <hkallweit1@gmail.com> a écrit :
>>
>> ﻿On 04.02.2023 23:56, Martin Blumenstingl wrote:
>>> Hi Heiner,
>>>
>>> On Wed, Feb 1, 2023 at 11:13 PM Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>> [...]
>>>>>> +      - items:
>>>>>> +          - const: amlogic,meson8m2-aobus-pinctrl
>>>>>> +          - const: amlogic,meson8-aobus-pinctrl
>>>>>> +      - items:
>>>>>> +          - const: amlogic,meson8m2-cbus-pinctrl
>>>>>> +          - const: amlogic,meson8-cbus-pinctrl
>>>>>
>>>>> Again, can't have both with and without the fallback allowed.
>>>>>
>>>> Hi Martin,
>>>>
>>>> meson8m2 is the only chip version having a fallback for the
>>>> pinctrl compatible. Is this fallback really needed?
>>>> Looking at the driver it seems that both compatibles
>>>> are handled identically.
>>> Back in the day we decided to duplicate the Meson8 driver code just to
>>> add four new pin functions that are added by the Meson8m2 SoC
>>> generation:
>>> "eth_rxd2", "eth_rxd3", "eth_txd2", "eth_txd3"
>>>
>>> The compatible string was defined with a similar approach: since
>>> Meson8m2 just adds a few bits to the Meson8 pin controller it's
>>> backwards compatible.
>>>
>>> If the fallback has to be removed then I'm okay with that but I would
>>> like to understand it first.
>>> So far I thought that Rob basically asked to remove the following two
>>> compatible strings from the enum (as they're listed separately with
>>> their fallbacks):
>>> - amlogic,meson8m2-cbus-pinctrl
>>> - amlogic,meson8m2-aobus-pinctrl
>>>
>> Right, this should be sufficient. There's no place where the 8m2 pinctrl
>> compatibles are used w/o fallback.
>>
>> Then the hopefully final version of the binding is almost ready.
>> I'm just still checking whether there's any way in yaml to specify
>> a reg-names list with mandatory and optional names. Doesn't seem so.
> 
> It’s possible with minItems/maxItems and allOf:if/else to specify different min/max for each compatible
> 
I have a problem here because reg-names is in the gpio-controller child node and compatible is in the
pinctrl parent node. An expression under patternProperties doesn't see the compatible property of the
parent node. It would have been better to place regs/reg-names in the pinctrl node.
Not sure how to deal with this. The easiest would be to just have minItems:2 and maxItems:5 as criteria
for regs and reg-names.

