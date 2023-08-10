Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 631C27771A1
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 09:41:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231726AbjHJHlO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 03:41:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231617AbjHJHlM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 03:41:12 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6085268D
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 00:40:57 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3fe5c0e57d2so4988085e9.0
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 00:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691653256; x=1692258056;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=gE2eDLacDaK6AX9g7TV9Vf/L1NM82eB/CdmYKIBQ0yA=;
        b=4f49vXO7A6Gc22laJ+7VCPltLWc7kgewzD7rQNR7bZkqGKS/AOyyISRqmG1WU0Ohi2
         wHSBViH7T91diiDguLUk/9Zx7Y7AREAjuWTOcvAuvCAxmoJcBVF5ot4Qo+8ppO3RHIVe
         zPqkQ8gIus+gqvKLI3Ek+GR9jWUObFmaGYkVcDPYYaTahfmlhUNSPCe6K9wqvcUzlF0W
         JIoTjqnupVjQaAysnR1UBUyNiW4aSnyisHit2TbeKjzYtkENez+gesZ7l/le0oBcujOc
         70oHShCnOBXZFZal4b/l6CH/37WPgsEBkxQyUkgUR0MWDIf18Z6crIAp9bVmsnwaZkxK
         Iqlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691653256; x=1692258056;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gE2eDLacDaK6AX9g7TV9Vf/L1NM82eB/CdmYKIBQ0yA=;
        b=cyZzYtcu3V1glcEXWjBZzrU5Y5y+2yd5wHkajpwFSoXvQgzmQdv3BQhPXyb5igI2F8
         aF0kht6PnR63mngo7QuUnyVKdZTmC66pKRApv6PFTetaWVlpVaZJ7gRB69XFxQLDsbkY
         FsAggIDvb4iwHio1AA740cd0sUyUsRlbs9eFm7lTT+ZcJTcM28H3dFxGh9WEJTFEigeg
         Ah/up2Q3IWDrD0VWaLrhhzlWpVVndezR6YobRTjLjvDVj5tXqUExvPmVcp5IAdFeGmxa
         EbTn5EqwJJ6tVquWr7+MM6/LD2GAFvwT5VlLvwGCgEhvu+0bMZ9PUY/gQZ9pxWpfnATa
         3tvQ==
X-Gm-Message-State: AOJu0YwFpKDltKG96yhT/9e9MrfQbCgcCaB4zXKnPX9ynOd/AN85GLfG
        3ENMjF0Ud1t8A+cZzsJHuFmvKQ==
X-Google-Smtp-Source: AGHT+IE8Ia4n/NlmCa7gXROhXWJu+aGPVlwNFSbpVUlGZ2/Xb3DQjt4SzY+WI2mGYzsua3kBvb0uow==
X-Received: by 2002:a7b:cd09:0:b0:3f9:c8b2:dfbd with SMTP id f9-20020a7bcd09000000b003f9c8b2dfbdmr1136560wmj.19.1691653256226;
        Thu, 10 Aug 2023 00:40:56 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:6d73:1494:dad2:6a13])
        by smtp.gmail.com with ESMTPSA id c14-20020a05600c0ace00b003fe4548188bsm4113626wmr.48.2023.08.10.00.40.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Aug 2023 00:40:55 -0700 (PDT)
References: <20230808194811.113087-1-alexander.stein@mailbox.org>
 <1j5y5obt0u.fsf@starbuckisacylon.baylibre.com>
 <a48b1a97-2286-d2f9-742e-d718adcf1eed@linaro.org>
 <8294548.NyiUUSuA9g@kongar>
 <5c852193-9298-af2e-2b7d-dbba29768fec@linaro.org>
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
Date:   Thu, 10 Aug 2023 09:32:09 +0200
In-reply-to: <5c852193-9298-af2e-2b7d-dbba29768fec@linaro.org>
Message-ID: <1jwmy39wfs.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Thu 10 Aug 2023 at 08:11, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:

> On 09/08/2023 20:44, Alexander Stein wrote:
>> Hi,
>> 
>> Am Mittwoch, 9. August 2023, 15:02:23 CEST schrieb Krzysztof Kozlowski:
>>> On 09/08/2023 08:58, Jerome Brunet wrote:
>>>>>> +      required:
>>>>>> +        - '#reset-cells'
>>>>>
>>>>> else:
>>>>>   properties:
>>>>>     '#reset-cells': false
>>>>> ???
>>>>>
>>>>>
>>>>> You need to constrain the clocks per variant. Probably names are also
>>>>> specific to each one, so the list of names can be moved here and you
>>>>> keep just min/maxItems in the top level property.
>>>>>
>>>>
>>>> input clock names and constraints are the same for all 3 variants.
>>>
>>> Then why do you have this huge, apparently unnecessary, oneOf? If it's
>>> the same, then drop the oneOf and make number of clocks fixed.
>> 
>> But as far as I understand the number of clocks is not fixed. As Jerome pointed 
>> out in the other post, it can have any combination of clocks and range from 1 
>> up to 11, where 'pclk' is always 1st clock.
>> I currently have no idea how to constraint that, despite limiting the number 
>> of clock-names.
>
> The same as in all other clock controllers (was also present on my list
> of useful patterns - Variable length arrays (per variant)):
> https://elixir.bootlin.com/linux/v5.19-rc6/source/Documentation/devicetree/bindings/clock/samsung,exynos7-clock.yaml#L57

In the example provided, the number and list of clocks required by each
controller variant is fixed, if I'm reading it correctly

Here the controller (regardless of the variant) accepts a maximum 29
clock inputs. Only pclk is required. It is valid to have any of 28
optional clocks at index 2, 3, etc ...

I guess the question is how do you recommend to model that ?
I can think of 'Anyof' with all the optional clocks repeated 28 times
but that would be fairly ugly.

>
> Best regards,
> Krzysztof

