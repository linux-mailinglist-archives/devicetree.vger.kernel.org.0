Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3229378002F
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 23:54:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355439AbjHQVxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 17:53:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355489AbjHQVxf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 17:53:35 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B59F26BE
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 14:53:31 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1bf0b24d925so2197425ad.3
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 14:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1692309210; x=1692914010;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=bIhbOs6w0KnszFFxtSVpc1J87Pj087SiamTsLl7quTE=;
        b=PP7f7rB8oUh4wX56GXLxGOrnsopXNpXsbR+3MJdVOSmAtMCCGawdBMVqOUDcS4AGaF
         lhmwaDNo1vYqaZaSPcmKg3mc8WTWAS/OgzYY1tAMtXrtAlCyOJaxcENuyYZ3RKMxXohx
         WuMngULjAWJJ2f+cGDNO0SNGFRmMVUjaABDLEckSsaLUxSf40QNhYuFbB4h9auk++NzQ
         qivB0ngYcfwFwCPSfnWXpGX/4KY6izuX1zQT8gJNMYQSZmholCoqdMcjBfizQ7/2EZCp
         FnNB5lxDRdp7x7FzO2iCZpmCIVYuzYlyN2c3dT9L7xpPdrJf4uStEzgdLSb7C/WfWVUB
         T4jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692309210; x=1692914010;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bIhbOs6w0KnszFFxtSVpc1J87Pj087SiamTsLl7quTE=;
        b=AnN7XTKDy5YtcyPR7In8WbUYgwrIF0COUldhFdWv0cBZFHMGcmHsdn8aWAWYE2BOrc
         5wnCBDa/2/8mVWbMFEW0eHvnYpE0+xhuhItNCbX8VblTkek9KET3imhdM6wBuUNdW3Mp
         OZiNkF2kK6bAS532b2EL82UvnDKew0hxDmshRNsl9H6CbbTSgf5BqcJWJhqEPB3hBUd1
         EE8LMrZtu6eC99YYqD2Wa4eiIJy00Hudno5znHAl4qY3b/sMXBHudeLeJrjQO5WY8JZe
         1Zw3NGC8wQclTnJX+e59J6OVCjT5htd+3vzfvUCGpIAL2cUK/av4djJFmFgHBxB6+KHK
         kW/w==
X-Gm-Message-State: AOJu0YyaG2TCcmsNotosrvv+OIxrkfsL++OsJ/gmQ0lWAGpnP8zF5W8e
        dAqAcvZYaBI181VqVrVZWl/J3A==
X-Google-Smtp-Source: AGHT+IHodeb66xmCsLfcpIbYneoHY88TDkT5oWKCEQEyHaKong/vb3pbnuTsGz3TPd4KzL4Q1DAzrw==
X-Received: by 2002:a17:902:b70f:b0:1bb:833c:6ba8 with SMTP id d15-20020a170902b70f00b001bb833c6ba8mr598740pls.56.1692309210286;
        Thu, 17 Aug 2023 14:53:30 -0700 (PDT)
Received: from localhost ([75.172.135.98])
        by smtp.gmail.com with ESMTPSA id jf20-20020a170903269400b001b7cbc5871csm253556plb.53.2023.08.17.14.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 14:53:29 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: meson-g12: Fix clock order for
 amlogic,axg-tdm-iface devices
In-Reply-To: <3f437e5b-2bae-384a-0a08-216a4ec55bde@linaro.org>
References: <20230808161755.31594-1-alexander.stein@mailbox.org>
 <7ha5uyes3f.fsf@baylibre.com>
 <3f437e5b-2bae-384a-0a08-216a4ec55bde@linaro.org>
Date:   Thu, 17 Aug 2023 14:53:29 -0700
Message-ID: <7ho7j572ue.fsf@baylibre.com>
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

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

> On 10/08/2023 19:15, Kevin Hilman wrote:
>> DT maintainers,
>> 
>> Alexander Stein <alexander.stein@mailbox.org> writes:
>> 
>>> Binding specify order of clocks as:
>>> 1. "sclk"
>>> 2. "lrclk"
>>> 3. "mclk"
>>> Adjust clocks accordingly. Fixes warnings:
>> 
>> I understand this patch is to fix DT warnings (and thank you Alexander
>> for fixing warnings!) ... *but* the underlying requirement being
>> enforced by the schema here seems completely wrong to me, and a step
>> backwards.
>> 
>> Sorry if this is a FAQ someplace, but I couldn't find an explanation for
>> this.  One of the main goals of introducing names in the first place was
>> to get rid of ordering requirements.
>
> Not entirely. The names was just a helper for cases when order is not
> fixed,

Exactly, "when order is not fixed."  This is the case for lots of
hardware today (not just clocks), and is precisely what we need to
describe multiple, optional and independent (unordered) clocks.

> but even with the names for every regular case the order was
> always strict. We always expect these to be ordered.

I'm not sure who the "we" is you're referring to, but this expectation
is new to me, and honestly a bit surprising.  Before DT schema, driver &
DT writers could happily describe their hardware using names for
optional and unordered resources.

>> Now the DT schema is enforcing
>> ordering requirements, but the drivers don't need ordering, so what is
>> the point of enforcing ordering requirements?
>
> Because names are not everything.  One OS implementation might still
> take by indices, even if names are provided, so you cannot change the
> order.

Wait, isn't this an "OS-ism" imposing requirements on the DT that are
not at all about describing hardware?

Strictly ordering resources in DT that are completely independent (and
unordered!) in hardware seems to be a big step away from the general
guidance of "describe the hardware, not OS-isms".

And so far, we've only been talking about clocks, but the ordering
implications here apply to resets, pinctrl, regulators and probably
others as well.  All of these subsystems today have some way to describe
unordered & independent resources using names.  Yet, what you are
implying here applies to all of these subsystems: even where names are
used, these resources must be strictly ordered in DT.  From my
perspective, this is a new requirement.  Do you have any pointers to
where this was discussed & decided?  Admittedly, I do not follow DT
schema developments closely, but new requirements like this have
implications that I hope were discussed publically.

> Few bindings allow relaxed approach here, but these are written that way
> to allow mixing order.

Right, "mixing order" is another way of saying unordered, which is an
accurate description of lots of hardware out there.

> For few other bindings (e.g. newer Qualcomm clock controllers) we just
> dropped the names entirely, because they bring little value and also
> code for lookup by name is slower than by index.

I can see that names might bring little value if there aren't
independent optional clocks.  I can also see that making that choice for
perf reasons being a design choice, but that also a case of an OS design
choice impacting the DT, and not really about describing the hardware.

IMO, this design should be a choice of the driver writer who is most
likely to best understand the hardware.  Being forced into that strict
ordering requirement by DT schema when that is not an accurate
description of the hardware seems to be enforcing the wrong thing for
the wrong reasons.

Now that I've ranted a bit, maybe our time would be better spent if we
get practical and discuss a concrete example.  This other thread[1] has
a specific example, and ends with a specific question from Jerome about
how one should actually model a specific piece of hardware with current
DT schema.

Kevin

[1] https://lore.kernel.org/linux-amlogic/1jsf8r9v1v.fsf@starbuckisacylon.baylibre.com/
