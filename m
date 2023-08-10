Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 018B5777252
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 10:11:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232202AbjHJILG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 04:11:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232289AbjHJILF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 04:11:05 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 056AB2697
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:10:55 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3175f17a7baso571539f8f.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 01:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691655053; x=1692259853;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=fg9G7GnbTJdewMNTEJgW8SVAuCvIfpPe9RrCKJ5D/9Y=;
        b=Cpqy3BQE7SssOGVas3hMwLeiIStGEE7Qe9/cLT8ypZtDwg0UG1Q+RyEi05SbHAh+Kv
         1QzfJlwk601kP+S1nO3a34c42TioVjLHU+kRMghX/F9PHtFWO6fPvR9IHidyqvgS8eg6
         UcGY6qARGxDkUv+y+wBD2Dxd6+dVEqvWHY2tOAeh+pwCxJnyLCqUrP8Ic+/oQkAOUJ7L
         pgtEDe5C2pnjSMaENbVVR7PeUbaNdtK7AqnMggRowEAXbRb8bInWYwpkZqAuLGlGsidy
         TUvGm3aTUc1nQ1ZjkZwXBQLwyVlugTwN0LwErZVSOZFLWW+t6BX5MJhNX2P3hghUEtIW
         ODhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691655053; x=1692259853;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fg9G7GnbTJdewMNTEJgW8SVAuCvIfpPe9RrCKJ5D/9Y=;
        b=hRueNqEye5HJyZVwVYYaSYYkUdnU91h3cKdAs5LlIriLMX+CUy1B2TM6DKraNhHCAP
         ss5r91mnJf0pWbPlcXYu+PxJ/cLP5jgMgk9r7ojKrkJFYlPQ3Ul6xZzB/qqliuqtP+2K
         I9DfCdXqE4dIsi6eduhLHOiFVxFmWSxYm+RoUrcs4bAYSij89K5QklXukDlndJBszdtu
         UcytEIDn7uNXMTtgdxzAfalMXhMYcqA/Nsw4nPgqRBL/DSuhwcgTe3fPLxOQ30a6Rimv
         tNsu7Zscgh4G+kWcFTPsDpG2Iw2vYfEgYk0LPYHrhxEn+g9LN29LMN51ebyzdvjDFVHQ
         z0+w==
X-Gm-Message-State: AOJu0YzxoPZC5g48Ifmbb7It7W4nFK5MvucWwj5ogKSRxmlmOE2KuIOk
        5W5BaYD5mKrtLWlFOYPY1w+Tb+3owqrebSFw1HQ=
X-Google-Smtp-Source: AGHT+IHHhqKUVDFFOmKZ02JBpZrS7ui+XZ8GK1HCkhmr+1iBQmxRUOM6/BB4osdTAuK20h4BxV3HbA==
X-Received: by 2002:adf:f08a:0:b0:316:f3f3:a1db with SMTP id n10-20020adff08a000000b00316f3f3a1dbmr1344948wro.32.1691655053267;
        Thu, 10 Aug 2023 01:10:53 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:6d73:1494:dad2:6a13])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d6283000000b00317643a93f4sm1272988wru.96.2023.08.10.01.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 01:10:52 -0700 (PDT)
References: <20230808194811.113087-1-alexander.stein@mailbox.org>
 <1j5y5obt0u.fsf@starbuckisacylon.baylibre.com>
 <a48b1a97-2286-d2f9-742e-d718adcf1eed@linaro.org>
 <8294548.NyiUUSuA9g@kongar>
 <5c852193-9298-af2e-2b7d-dbba29768fec@linaro.org>
 <1jwmy39wfs.fsf@starbuckisacylon.baylibre.com>
 <d2225b8a-a622-3936-1e43-d5a9801c2cd7@linaro.org>
User-agent: mu4e 1.8.13; emacs 28.2
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alexander Stein <alexander.stein@mailbox.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Rokosov <ddrokosov@sberdevices.ru>
Cc:     linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/1] dt-bindings: clock: meson: Convert axg-audio-clkc
 to YAML format
Date:   Thu, 10 Aug 2023 09:51:05 +0200
In-reply-to: <d2225b8a-a622-3936-1e43-d5a9801c2cd7@linaro.org>
Message-ID: <1jsf8r9v1v.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu 10 Aug 2023 at 09:46, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 10/08/2023 09:32, Jerome Brunet wrote:
>>>>> Then why do you have this huge, apparently unnecessary, oneOf? If it's
>>>>> the same, then drop the oneOf and make number of clocks fixed.
>>>>
>>>> But as far as I understand the number of clocks is not fixed. As Jerome pointed 
>>>> out in the other post, it can have any combination of clocks and range from 1 
>>>> up to 11, where 'pclk' is always 1st clock.
>>>> I currently have no idea how to constraint that, despite limiting the number 
>>>> of clock-names.
>>>
>>> The same as in all other clock controllers (was also present on my list
>>> of useful patterns - Variable length arrays (per variant)):
>>> https://elixir.bootlin.com/linux/v5.19-rc6/source/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml#L57
>> 
>> In the example provided, the number and list of clocks required by each
>> controller variant is fixed, if I'm reading it correctly
>> 
>> Here the controller (regardless of the variant) accepts a maximum 29
>> clock inputs. Only pclk is required. It is valid to have any of 28
>> optional clocks at index 2, 3, etc ...
>
> I actually doubt that it is optional. These are valid clock inputs. I
> could imagine they are optional depending on the use-case, like some
> block being turned off or on... but then still the clock is there, just
> not actively used.
>
> Aren't you now describing existing Linux driver?

They are valid inputs but not required. It is valid (and expected) to
have a fair share of them not connected. The slave clocks just don't exist
most of the time, and the IP can totally accept unwired master clock
inputs on SoC variant. Nothing is going to break down if some are
missing.

From the controller perspective, the description given here is correct
and the inputs are optional.

The more generic question is how do we deal with multiple,
independent and optional ressources ? Because then, the order in which
they appear cannot be predicted.

>
>> I guess the question is how do you recommend to model that ?
>> I can think of 'Anyof' with all the optional clocks repeated 28 times
>> but that would be fairly ugly.
>
>
> Best regards,
> Krzysztof

