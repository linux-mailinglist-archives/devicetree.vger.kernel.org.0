Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF3C1605E8B
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 13:14:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbiJTLOC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 07:14:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230034AbiJTLNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 07:13:55 -0400
Received: from mail-vs1-xe31.google.com (mail-vs1-xe31.google.com [IPv6:2607:f8b0:4864:20::e31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16DB5119BDB
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 04:13:46 -0700 (PDT)
Received: by mail-vs1-xe31.google.com with SMTP id k67so3146231vsk.2
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 04:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RxhhqW9JKRj5MjXW/jzEJqVqePNXtFqQf3mTMtmQZF0=;
        b=LE8QP3ziYOhbahNN6Srlo9VcdqQMB1YVT0KCSfs/iHUhOcliGz42AC9wG8YnxfYIEb
         lIw0Wi+FR7eOI/nKc1jlUvj9gR7wnrirJT5xLm7XqxSmYcB9/VW0m+foAzNDWx1xcwRs
         KnbncNaRL/2mZMUhRU1XoYVC5n0hsB1qY1eDXqmt0ZIBFTnpJLbtqdf+OPAOmldgKlEs
         Hz245KAEKIi3LHYqquTepBX9QIk/JQQUNA3/jJIDu8GouY86WN07n1Tz3FvEEVOcCPXy
         PeXk5/PPPnW5MWHtxBFdJ7Zq4CDrbWEeQFv+3Z38eUcrsmpSlZHMkUDs3tZj9B+02NtR
         OouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RxhhqW9JKRj5MjXW/jzEJqVqePNXtFqQf3mTMtmQZF0=;
        b=aYYun07hCjTD3pmKyvWxG323jAiR0a7UAlRfbgY6AAScAQYroK1ODxscvBaf9C9xRe
         z4DFtq4k/zH4wKFL0HsxtQDce4yBOwEoZDSrjZhEJnNV1iiOECJvzSd4ugM6HJ7SPfqM
         AtuoSC1HL+cWwu2+oQG+CBC3XSt/y7iP2FrY3maSZYcHha7dWj7j7vuc7p0CJmuOKeWt
         BoFsgAFcA/XBRkEB0qRY2T0JI52kQyrrhvWHOr2HGJFKSzFaCp+l2gcOLOdHcop9DJqn
         twTxTjEx8jP1RD2gBrP0ziximpyq97q64D9B19y/ecWQvosvhIqs9UYuQq2qnbG/PNRg
         Pqlg==
X-Gm-Message-State: ACrzQf33EC36+ilrE9Fy/RdUERlo0yzLJJAQ9wRp4j+B2zSGH03r5jPc
        rkm8OnSQGgFLSY5dt9bDp/7o+pXr2gW8QWueCn3pmN3/toq8zQ==
X-Google-Smtp-Source: AMsMyM7623m7f8/X4BmFn/9QBoivUohxCpY9FoUuJ166Lu0mWaqJuWfug6DaDR4S62S0tSLKsXHA8VkGyAjYV+YONU8=
X-Received: by 2002:aa7:8504:0:b0:563:1ae2:6dc0 with SMTP id
 v4-20020aa78504000000b005631ae26dc0mr13457624pfn.48.1666264415497; Thu, 20
 Oct 2022 04:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
 <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com> <9009700.CDJkKcVGEf@phil>
In-Reply-To: <9009700.CDJkKcVGEf@phil>
From:   =?UTF-8?Q?Michele_Zuccal=C3=A0?= <ardutu@gmail.com>
Date:   Thu, 20 Oct 2022 13:13:10 +0200
Message-ID: <CAK1Nf75B-4wzM3pafaOVHCD9WugT3YPjphbEq25-WLRGh3Jhbw@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Alex Bee <knaerzche@gmail.com>,
        Corentin Labbe <clabbe@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Heiko,

>
> no worries, we'll get you through it :-)
>

thank you

>
> actually you want to go the following route:
>
> (1) pick up
> - https://lore.kernel.org/all/20220927075511.3147847-25-clabbe@baylibre.com/
> - https://lore.kernel.org/all/20220927075511.3147847-26-clabbe@baylibre.com/
> as a base to work on
>
> (2) create a patch to add your compatible.
> I _think_ after that, the compatible block should looks
> something like:
>
>   compatible:
>     oneOf:
>       - const: rockchip,rk3288-crypto
>       - const: rockchip,rk3328-crypto
>       - const: rockchip,rk3399-crypto
>       - items:
>           - const: rockchip,rk3228-crypto
>           - const: rockchip,rk3288-crypto
>
> to handle the new dual element compatible.
>         make dt_binding_check
> should tell you about a wrong format.
>
> (3) modify your dts patch to use the two compatibles
> (4) export patches by
>         git format-patch -2 --cover-letter
> and mention in the cover-letter the dependency on the
> yaml conversion.

very clear. But excuse the stupid question, this way it becomes a new patchset
and not the v2 of this patch, right?! Will this patch be automatically
ignored ?!

Michele
