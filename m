Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72A38780797
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 10:59:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358804AbjHRI6g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 04:58:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358866AbjHRI6d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 04:58:33 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBEAC35A9
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 01:58:20 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99cdb0fd093so84033766b.1
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 01:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692349099; x=1692953899;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/40FOI+UE8uhwsIlRFkslsjReirMmwIe+IGd1ZVdpFo=;
        b=YKM6U+LTpYp7c8EOnDaASoMJGFXCPiJkrh2+y0FqD0bjv32x4sRcmCS824KIEFxtPZ
         d0s/b7Amr/GSx/mX5PUAyAxBhns/LTRRF8nFqpMRoqXWhJvYhcsHdzVejXUK0JLDksyN
         7S38DNLN/h7FrLVeTAVGL5IfFpMFBuQ/mPYg0xk69SnQ/mFd7p8PguMZPW/wT+9xeXqA
         5iC6iovhPfkqun3APfjuk/BKJPogJLcbAK0kr26g0naexUN7dUSTCi4Ndb35chOIJN3k
         dEpoY5ZKNFP+aQgw86jaWn+L+gn/u8JCdbJKrBAQ3ujIc6OqTJJ2SNuut6KaTIEluzvi
         TEGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692349099; x=1692953899;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/40FOI+UE8uhwsIlRFkslsjReirMmwIe+IGd1ZVdpFo=;
        b=Ge1sitpBcj5/16Zevwlsegjr7j8BpIbGz07aUxpPbSX6QUbOJ7uDfvjMnbSDya2z77
         QidUnVDv9hgLKDJ0Hy/IDjDpK9tNhH+vW0b24owQwOS1sSuNZxqvX2fPt842TnO90+th
         6AGFDy4oKNMnvD5ij+vaYd38W2lu6vUVa/AlKFNTDme+XHIuBE2u5iYCHWr1BA4cgxDI
         5yvZYaadFrc5f6jfwrq3SACmtvGvKUXDxuThnv9yfjWqCkTnuJ/dBKDRTHMcvJpSIrCZ
         014CTLQxcUYxAX21G8AfAotNhZZrLqN0Jnx0CoC5aJ53spX595nDyFAvUnBJe5WLsMd7
         ofSw==
X-Gm-Message-State: AOJu0YwmXskXz4nmH7pOm61sBdlwSaWylAwP0uVmeuheN3d/9PQm9czJ
        b4SxslwixIVBzNO4oft0oiinJg==
X-Google-Smtp-Source: AGHT+IHNfzvAReyhNChJ6SQpO7U/Wyncr2M/c5O30YcdW/3a4hBsY/s5yg78Yyf/ywvyZabdJJ3kwQ==
X-Received: by 2002:a17:906:5342:b0:957:2e48:5657 with SMTP id j2-20020a170906534200b009572e485657mr1446984ejo.68.1692349099131;
        Fri, 18 Aug 2023 01:58:19 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id m15-20020a1709062acf00b009930042510csm919060eje.222.2023.08.18.01.58.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 01:58:18 -0700 (PDT)
Message-ID: <1d643d2a-2aa9-6b36-7f5e-bdd01fd2979f@linaro.org>
Date:   Fri, 18 Aug 2023 10:58:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for
 amlogic,axg-tdm-iface devices
Content-Language: en-US
To:     Kevin Hilman <khilman@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
 <7ha5uyes3f.fsf@baylibre.com>
 <3f437e5b-2bae-384a-0a08-216a4ec55bde@linaro.org>
 <7ho7j572ue.fsf@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <7ho7j572ue.fsf@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/08/2023 23:53, Kevin Hilman wrote:
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:
> 
>> On 10/08/2023 19:15, Kevin Hilman wrote:
>>> DT maintainers,
>>>
>>> Alexander Stein <alexander.stein@mailbox.org> writes:
>>>
>>>> Binding specify order of clocks as:
>>>> 1. "sclk"
>>>> 2. "lrclk"
>>>> 3. "mclk"
>>>> Adjust clocks accordingly. Fixes warnings:
>>>
>>> I understand this patch is to fix DT warnings (and thank you Alexander
>>> for fixing warnings!) ... *but* the underlying requirement being
>>> enforced by the schema here seems completely wrong to me, and a step
>>> backwards.
>>>
>>> Sorry if this is a FAQ someplace, but I couldn't find an explanation for
>>> this.  One of the main goals of introducing names in the first place was
>>> to get rid of ordering requirements.
>>
>> Not entirely. The names was just a helper for cases when order is not
>> fixed,
> 
> Exactly, "when order is not fixed."  This is the case for lots of
> hardware today (not just clocks), and is precisely what we need to
> describe multiple, optional and independent (unordered) clocks.

Minority of bindings require relaxed order, literally I remember just few.

> 
>> but even with the names for every regular case the order was
>> always strict. We always expect these to be ordered.
> 
> I'm not sure who the "we" is you're referring to, but this expectation

DT maintainers. Previously only Rob, now "we".

> is new to me, and honestly a bit surprising.  Before DT schema, driver &
> DT writers could happily describe their hardware using names for
> optional and unordered resources.

You talk only about Linux and not even all of its drivers (because
several took by IDs), what about all other users of bindings?

> 
>>> Now the DT schema is enforcing
>>> ordering requirements, but the drivers don't need ordering, so what is
>>> the point of enforcing ordering requirements?
>>
>> Because names are not everything.  One OS implementation might still
>> take by indices, even if names are provided, so you cannot change the
>> order.
> 
> Wait, isn't this an "OS-ism" imposing requirements on the DT that are
> not at all about describing hardware?
> 
> Strictly ordering resources in DT that are completely independent (and
> unordered!) in hardware seems to be a big step away from the general
> guidance of "describe the hardware, not OS-isms".

Bindings do not describe hardware (although this is usually what I write
in emails to simplify the discussion), but the interface between various
implementations and representation of hardware (DTS).

> 
> And so far, we've only been talking about clocks, but the ordering
> implications here apply to resets, pinctrl, regulators and probably
> others as well.  All of these subsystems today have some way to describe
> unordered & independent resources using names.  Yet, what you are
> implying here applies to all of these subsystems: even where names are
> used, these resources must be strictly ordered in DT.

Yes, we expect them since long time as strictly ordered, unless
exception is needed - which is then encoded in the bindings. Every email
from Rob since some years was saying this, recent my talks and my emails.

>  From my
> perspective, this is a new requirement.  Do you have any pointers to
> where this was discussed & decided?  Admittedly, I do not follow DT
> schema developments closely, but new requirements like this have
> implications that I hope were discussed publically.

I don't have resources, except that I recall vaguely that Rob said
original ePAPR or PowerPC was requiring it.

> 
>> Few bindings allow relaxed approach here, but these are written that way
>> to allow mixing order.
> 
> Right, "mixing order" is another way of saying unordered, which is an
> accurate description of lots of hardware out there.
> 
>> For few other bindings (e.g. newer Qualcomm clock controllers) we just
>> dropped the names entirely, because they bring little value and also
>> code for lookup by name is slower than by index.
> 
> I can see that names might bring little value if there aren't
> independent optional clocks.  I can also see that making that choice for
> perf reasons being a design choice, but that also a case of an OS design
> choice impacting the DT, and not really about describing the hardware.
> 
> IMO, this design should be a choice of the driver writer who is most
> likely to best understand the hardware.  Being forced into that strict
> ordering requirement by DT schema when that is not an accurate
> description of the hardware seems to be enforcing the wrong thing for
> the wrong reasons.

No one enforces strict order when the hardware is not like this. I wrote
it before in the quote above and again in this email.

> 
> Now that I've ranted a bit, maybe our time would be better spent if we
> get practical and discuss a concrete example.  This other thread[1] has
> a specific example, and ends with a specific question from Jerome about
> how one should actually model a specific piece of hardware with current
> DT schema.

The same as other cases. I cannot find examples, because there are
really just few real world cases like this. Maybe
qcom,sc7280-lpass-rx-macro.

But remember - people confuse clock which is not strictly required. E.g.
if UFS is not yet implemented, we can skip UFS-clock parent in some
clock-controller because UFS driver does not exist thus we do not care
about proper parenting and frequency of UFS.

Now, that UFS clock is not optional. It must be there for proper
representation of hardware. We only allow to skip it if OS drivers are
half-developed.


Best regards,
Krzysztof

