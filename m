Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D1D27818EB
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 12:41:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230161AbjHSKlM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 06:41:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230456AbjHSKkk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 06:40:40 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2868532E7A
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 02:51:51 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99c1f6f3884so217492766b.0
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 02:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692438709; x=1693043509;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nJ8RXMHf+D8JMQhh/b454saBbCjXPZJlbpncVKzLhp8=;
        b=jnbXkmy/MhwwBNJY/rypG6HWctfwKgFPMwz05z52TgozAMv4pCsCFwFUX8Vd7GM/H5
         NPqz4LBp9w7gg5FLfvSQ+2XuBL4UMBW9i1DuzT+nam+FWJk537jUYp7JhRj23sfKxe5k
         sS/askuxfnECI8t2TlV4NVQbj6wA8cQ2qaX1XNq10teoTWFfD2C4/RzH/zQJOg6HQ973
         6m59J9SbH1iT6oLUufHFzwfEvWnz/qwwecJfYNZzGl0ULQQwPxaJq7D7MCNCjGZNXEXg
         zRN7eG+jJjYBckr398dD3rI1bkVp23N1a9TkaeRDa/z2YeKKWq1hhGxlYg4BZoiJvJwX
         UipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692438709; x=1693043509;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nJ8RXMHf+D8JMQhh/b454saBbCjXPZJlbpncVKzLhp8=;
        b=iJ3F9Ghk5oTjVo2nMz1+j8p0J4n1a4rdskHZ6hYjvc+19IywQObbb2bmyX3mHwpXfu
         /mwRwjESUxYW3Ub4keqcinZQgkkX0GgzyGPr7Fxpmhcm+Bk0NECKJJLZVpeB3UwJojEx
         x1L4z9E+IXsuROPSyTKj/aaf6xuFNxPpD+uctmZyZMisP1dQLKwY7BlrGsrkS0QmdwR6
         KusWkzkr55aIlmhTsRN8WuD53PPkNYAGNyrdoS+4y2IoWkdikADGAqlelzrxC02rxk8g
         tJ0w+9CTHGCXaHUm5bxpBhYzEptUZD9kW+ph6CAFKUDhuYIDXw9hmGBiKldbaG5Anc/c
         6uvw==
X-Gm-Message-State: AOJu0Yw24/PLGG1RSUIKBzYL32xkwMk+shUQoHfvPoFPKTbQ5yw18VcS
        Pvs4zFG9+HDU+O4iFVsqZHciIg==
X-Google-Smtp-Source: AGHT+IE8FOLr55BG1DKCX21XOHt066wZxjSJyY1L/p+yA/aSkeprTzNSSzSZQlA19Y1T19NsCpQznQ==
X-Received: by 2002:a17:907:2bec:b0:99b:6687:6107 with SMTP id gv44-20020a1709072bec00b0099b66876107mr1113732ejc.5.1692438709121;
        Sat, 19 Aug 2023 02:51:49 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id qw12-20020a170906fcac00b00992ea405a79sm2413469ejb.166.2023.08.19.02.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 02:51:48 -0700 (PDT)
Message-ID: <890f8619-48ff-cc36-1db5-7332107dd607@linaro.org>
Date:   Sat, 19 Aug 2023 11:51:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for
 amlogic,axg-tdm-iface devices
Content-Language: en-US
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
 <7ha5uyes3f.fsf@baylibre.com>
 <3f437e5b-2bae-384a-0a08-216a4ec55bde@linaro.org>
 <7ho7j572ue.fsf@baylibre.com>
 <1d643d2a-2aa9-6b36-7f5e-bdd01fd2979f@linaro.org>
 <1jo7j4a69j.fsf@starbuckisacylon.baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1jo7j4a69j.fsf@starbuckisacylon.baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2023 13:39, Jerome Brunet wrote:
> 
> On Fri 18 Aug 2023 at 10:58, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 17/08/2023 23:53, Kevin Hilman wrote:
>>> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:
>>>
>>>> On 10/08/2023 19:15, Kevin Hilman wrote:
>>>>> DT maintainers,
>>>>>
>>>>> Alexander Stein <alexander.stein@mailbox.org> writes:
>>>>>
>>>>>> Binding specify order of clocks as:
>>>>>> 1. "sclk"
>>>>>> 2. "lrclk"
>>>>>> 3. "mclk"
>>>>>> Adjust clocks accordingly. Fixes warnings:
>>>>>
>>>>> I understand this patch is to fix DT warnings (and thank you Alexander
>>>>> for fixing warnings!) ... *but* the underlying requirement being
>>>>> enforced by the schema here seems completely wrong to me, and a step
>>>>> backwards.
>>>>>
>>>>> Sorry if this is a FAQ someplace, but I couldn't find an explanation for
>>>>> this.  One of the main goals of introducing names in the first place was
>>>>> to get rid of ordering requirements.
>>>>
>>>> Not entirely. The names was just a helper for cases when order is not
>>>> fixed,
>>>
>>> Exactly, "when order is not fixed."  This is the case for lots of
>>> hardware today (not just clocks), and is precisely what we need to
>>> describe multiple, optional and independent (unordered) clocks.
>>
>> Minority of bindings require relaxed order, literally I remember just few.
>>
> 
> *require* is the keyword here. Yes, a minority of interfaces can't be
> described as ordered, mostly because they have more than 1 optional
> ressource.
> 
> Still the majority out there uses names and have little care for the
> order (or IDs). They are only describe has ordered because that is the
> simple way to do it with 'schema'
> 
>>>
>>>> but even with the names for every regular case the order was
>>>> always strict. We always expect these to be ordered.
>>>
>>> I'm not sure who the "we" is you're referring to, but this expectation
>>
>> DT maintainers. Previously only Rob, now "we".
> 
> AFAIK, kernel maintainers enforces the rule of the linux kernel.
> These rules are part of the kernel itself, so they can be discussed and
> clarified if needed, like checkpatch.pl or the code of conduct.
> 
> It does not seems to be the case here and, maybe, it is partly the problem.
> 
>>
>>> is new to me, and honestly a bit surprising.  Before DT schema, driver &
>>> DT writers could happily describe their hardware using names for
>>> optional and unordered resources.
>>
>> You talk only about Linux and not even all of its drivers (because
>> several took by IDs), what about all other users of bindings?
> 
> Do those drivers which take IDs specify the 'clock-names' as a required
> property ? If that's the case, shouldn't we question that ?
> 
> What is the point of having a required property if it is purely
> decorative ?

No, it is not. I am repeating myself, but okay. In such particular case,
the interface is for different users and we allow one user to use names
and other to use indices. We do not force users (so OS/firmware) to
implement both of ways. The user can choose, because that's what binding
is saying. Since however binding is saying that order and clock-names
matter, we however force DTS to implement both to satisfy users.

Other bindings can do differently and I brought the example of Qualcomm
where we removed the names. Problem? No.

> 
> The property 'clock-names' is required with bindings discussed here.
> I assume that if an interface describes a required property, users of
> the interface will have to pay attention to it
> 
> No one is questionning that the order is strict if "-names' is not part
> of interface or optionnal (that last one would be weird)
> 
>>
>>>
>>>>> Now the DT schema is enforcing
>>>>> ordering requirements, but the drivers don't need ordering, so what is
>>>>> the point of enforcing ordering requirements?
>>>>
>>>> Because names are not everything.  One OS implementation might still
>>>> take by indices, even if names are provided, so you cannot change the
>>>> order.
>>>
>>> Wait, isn't this an "OS-ism" imposing requirements on the DT that are
>>> not at all about describing hardware?
>>>
>>> Strictly ordering resources in DT that are completely independent (and
>>> unordered!) in hardware seems to be a big step away from the general
>>> guidance of "describe the hardware, not OS-isms".
>>
>> Bindings do not describe hardware (although this is usually what I write
>> in emails to simplify the discussion), but the interface between various
>> implementations and representation of hardware (DTS).
>>
>>>
>>> And so far, we've only been talking about clocks, but the ordering
>>> implications here apply to resets, pinctrl, regulators and probably
>>> others as well.  All of these subsystems today have some way to describe
>>> unordered & independent resources using names.  Yet, what you are
>>> implying here applies to all of these subsystems: even where names are
>>> used, these resources must be strictly ordered in DT.
>>
>> Yes, we expect them since long time as strictly ordered, unless
>> exception is needed - which is then encoded in the bindings. Every email
>> from Rob since some years was saying this, recent my talks and my emails.
>>
>>>  From my
>>> perspective, this is a new requirement.  Do you have any pointers to
>>> where this was discussed & decided?  Admittedly, I do not follow DT
>>> schema developments closely, but new requirements like this have
>>> implications that I hope were discussed publically.
>>
>> I don't have resources, except that I recall vaguely that Rob said
>> original ePAPR or PowerPC was requiring it.
>>
>>>
>>>> Few bindings allow relaxed approach here, but these are written that way
>>>> to allow mixing order.
>>>
>>> Right, "mixing order" is another way of saying unordered, which is an
>>> accurate description of lots of hardware out there.
>>>
>>>> For few other bindings (e.g. newer Qualcomm clock controllers) we just
>>>> dropped the names entirely, because they bring little value and also
>>>> code for lookup by name is slower than by index.
>>>
>>> I can see that names might bring little value if there aren't
>>> independent optional clocks.  I can also see that making that choice for
>>> perf reasons being a design choice, but that also a case of an OS design
>>> choice impacting the DT, and not really about describing the hardware.
>>>
>>> IMO, this design should be a choice of the driver writer who is most
>>> likely to best understand the hardware.  Being forced into that strict
>>> ordering requirement by DT schema when that is not an accurate
>>> description of the hardware seems to be enforcing the wrong thing for
>>> the wrong reasons.
>>
>> No one enforces strict order when the hardware is not like this. I wrote
>> it before in the quote above and again in this email.
> 
> Which HW is actually 'like this', ordered among ressources ?
> In every schematics and datasheets I have, things get named. Order is
> not even a topic.

Exactly, but the topic for hardware is which clocks are required and
which are not.

Now, the actual language of bindings and DTS have limitations. Just like
everything, C as well. I wrote that bindings do not describe the
hardware (in contrary to I usually write in responses trying to simplify
it), but the interface, thus the rules of the interface apply.

Devices which have truly optional clocks, can have optional clocks.
What's the problem here?

Devices, which people don't care, or, for which people try to sneak
optional clocks, even though they are not optional, should use fixed
clocks because that's how the interface works between different systems.
clock-names is just a helper.

I don't understand what is the problem for your device. You (or the
developers) did not have to require clock-names. No one of DT team asked
for this, I think. If you implemented that way, you are bound by the
interface. If you also implemented strictly ordered list, you are bound
by that requirement as well. If you had implemented it other way, you
would be bound by other way. It is as simple as that.

> 
> Most 'schema' have been described like this because it is easy and
> natural to just list your ressources. I did not realize when schema was
> introduced that order mattered. I'm pretty sure I'm not alone there.

DT schema was always requiring it, since day zero, because this is how
it worked. Do you want to say that you implemented strict list in the
binding, then use different order in DTS and the validation passed thus
you were happy? I doubt. Your validation could not pass and this should
tell you - oh, schema is requiring the order, either I accept it or
change something somewhere.

Best regards,
Krzysztof

