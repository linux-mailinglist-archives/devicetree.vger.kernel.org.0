Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E71174BB96
	for <lists+devicetree@lfdr.de>; Sat,  8 Jul 2023 05:37:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232391AbjGHDhH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 23:37:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjGHDhG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 23:37:06 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F3461FEA
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 20:37:05 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3a1ebb85f99so2376910b6e.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 20:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1688787424; x=1691379424;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M3rgGvu6dDp9kgkCvmejYCjKrJ7j9etFOdEKK4N8AjQ=;
        b=rleMAlNDGbuo7xx8VqPaW/P+3ohv00JWkJElPiCVvr3n0pFLBE1tTZI95g1fiLgFwz
         nQDkyvXv4twm9rSU6DfvlsJi/DSlZOcwObGL+I7h0COZSIAYo00L0lWlqzxhPRA/2Nib
         skz7793HZILMJwAKWxIVG04wnUXmsFhxMmo4CLqfc1aef8nknCwd7nGNCFCAkxKKTKSV
         HgWIN9qbEibQrk8jZkoExrgVJlhOf8BCDdh1Pwx1Rez8nbTOoV5Uu2ZdOjdBdj8lbCgC
         Og6liNYSfDsBDGy0mwWPoqGl3EvNKJjXB7Y5D0Sbp8b5LmJ8mGq+ICzGNZAV0tawgiGv
         enbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688787424; x=1691379424;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M3rgGvu6dDp9kgkCvmejYCjKrJ7j9etFOdEKK4N8AjQ=;
        b=Ze+pl8wmfw5mVLbSABFP7H2AlPPd7f42Qs3NhbX2281cnRV3/bOJeOz1kDkpT412d3
         Z4I5Rl7rOzUKwvegxtUMGX5Y5WqcBfikRAuPpcgkHM81ElQ0sQyn3FR1TApGQgPrjljj
         ADLDFBN6kT/A10C4Uc+gm96DJP1+ysSxqbsXcQQzxzLGlipS2TTcRFbVCqpYEIcFvkS6
         S8fIysalWTw7lGzFwqblxbBKFYQyFxJvEJgdwV85J+40WS1bbhVjvE0YF/Fe4AiUWOUp
         iv3JDxQyGTWZSgW5bn00AQxZtopS8r3L+76HCOIsfZ5caYzuxHEqOXGCDi/6mKAP3qIc
         AGHA==
X-Gm-Message-State: ABy/qLbXxY1riJ7gX0fuNIQ1ffUDTlvgk1zd6qBALGaRyKg5IvA4Gdmy
        oFhr8SrTjss4LSbnuPXUiPNDrHzU3lAmLN6wnjBUKA==
X-Google-Smtp-Source: APBJJlGhVKn657MJDQ0FirmTnh2DboA6NzWPs4fsSuvodiFS3wXeyRpiaVES/rikoJwyvG1YXLfbfDkdw75ezoHpMBY=
X-Received: by 2002:a05:6808:54b:b0:3a3:7248:252a with SMTP id
 i11-20020a056808054b00b003a37248252amr9628988oig.0.1688787424422; Fri, 07 Jul
 2023 20:37:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230704050744.1196293-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WNLcw2JbMf7tfob2KgjB8eXTC0p1J4OYnQL4k3Mz3mgA@mail.gmail.com>
 <CAHwB_NJbtvXNCFj5=NMBXWCt1S1_WrgGij2Kqdr1omno66kVUw@mail.gmail.com> <CAD=FV=W5adfzPkP6dJGwfGO+mcbTdg8v9A0Sd4-FozF+W7nSrA@mail.gmail.com>
In-Reply-To: <CAD=FV=W5adfzPkP6dJGwfGO+mcbTdg8v9A0Sd4-FozF+W7nSrA@mail.gmail.com>
From:   cong yang <yangcong5@huaqin.corp-partner.google.com>
Date:   Sat, 8 Jul 2023 11:36:53 +0800
Message-ID: <CAHwB_N+bOoTSVvc3KG3fLAnYOzFkcM_Mzg-0WvyBcz54yYyaRA@mail.gmail.com>
Subject: Re: [PATCH] drm/panel: Add avdd/avee delay for Starry-himax83102-j02
 and Starry-ili9882t panel
To:     Doug Anderson <dianders@google.com>
Cc:     sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch,
        airlied@gmail.com, hsinyi@google.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jul 7, 2023 at 11:15=E2=80=AFPM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Thu, Jul 6, 2023 at 6:20=E2=80=AFPM cong yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > Hi,
> >
> > On Fri, Jul 7, 2023 at 3:32=E2=80=AFAM Doug Anderson <dianders@google.c=
om> wrote:
> > >
> > > Hi,
> > >
> > > On Mon, Jul 3, 2023 at 10:07=E2=80=AFPM Cong Yang
> > > <yangcong5@huaqin.corp-partner.google.com> wrote:
> > > >
> > > > From power on/off sequence for panel data sheet[1], T2 timing VSP t=
o VSN
> > > > needs 1ms delay when power on, and VSN to VSP also needs 1ms delay =
when
> > > > power off. Some pmic may not be able to adjust the delay internally=
, so
> > > > let's add a delay between avdd/avee regulator gpio to meet the timi=
ng of
> > > > panel.
> > >
> > > Unless I'm mistaken, all of this is best handled via regulator
> > > constraints in the device tree. See the file:
> > >
> > > Documentation/devicetree/bindings/regulator/regulator.yaml
> > >
> > > Specifically, any delays related to actually ramping up / down the
> > > regulator can be specified in the device tree. Nominally, you could
> > > argue that the 1 ms delay actually _does_ belong in the driver, but
> > > IMO the 1 ms number there is really just there because someone though=
t
> > > it was weird to specify a delay of 0 ms. Given that you already need
> > > remp delays in the device tree, it feels OK to me to just include the
> > > 1 ms there.
> >
> > The regulator device tree has only the power on attribute
> > "regulator-enable-ramp-delay",
> > not has power off attribute. The regulator delay looks more like the
> > HW voltage requirement
> > of the power ic itself, and I just want to meet the panel spec
> > requirement. I add regulator-enable-ramp-delay
> > in dts he can also meet my requirement, but I have no way to control
> > the power off delays.
>
> Hmmm, I guess the fact that the delay needed can be different for
> different boards / PMICs still makes me think that the delay doesn't
> belong in the panel driver. Different boards using the same panel
> would need different delays, right?

Different boards use the same panel, and the delay should be the same,
Unless use different  pmic on the boards.
It should be noted that my current situation is due to the replacement
of the pmic
Before this we used the TPS65132 PMIC, which can control the output timing =
of
AVDD/AVEE by setting the internal register and then store it in EEPROM.
After replacing it with PMIC AW37503, this power ic has no EEPROM,
and its AVDD/AVEE output timing is controlled by regulator gpio (ENN/ENP).

>
> So, thinking more...
>
> You're saying that you _can_ specify the enable delay in the device
> tree, but not the disable one, right? However, the timing diagram you
> provided doesn't seem to show the "disable" part. Since that's the
> part we're talking about now, could you provide a more complete timing
> diagram? Can you also talk to the panel vendor and confirm that the "1
> ms" actually matters or if they just put that there to ensure
> ordering? In other words, is it simply important that VDD1 gets to
> ~90% before you turn on VSP, or do they truly need a full 1 ms delay?
>
Hmmm, sorry, I will let the vendor upload the timing of power off.
If the power off does not have this 1 ms, the panel IC may not be able
to enter sleep normally when system suspend.

> Can you provide any more details about the power IC you're using? Is
> it just a discrete PMIC with a GPIO enable, or is it something
> fancier? Correct me if I'm confused (entirely possible!), but I think
> some PMICs have a feature where they can turn on "active discharge" so
> that they ramp down more quickly when they're disabled. Any chance
> your PMIC has this?

PMIC has "active discharge", but as explained above,
VSP/VSN are discharged at the same time. For the panel vendor
 they want more is to discharge the VSP after the discharge of the VSN
is completed.

>
> In general the fact that nobody has added
> "regulator-disable-ramp-delay" to the regulator framework already
> means that the problem you're facing isn't really a common problem.
> There are lots of devices out there that have more than one regulator
> but I don't see examples where drivers need to delay between turning
> all their regulators off. Are you positive that this is something that
> you really need to worry about?

I think the delay of power off does not affect the work of the power IC its=
elf,
and some panel can accept VSP/VSN to be powered on or off at the same time.
So this part is just to meet the needs of the panel.

>
> The above is a bit rambling (sorry!), but I guess the summary is:
>
> 1. Please confirm that the panel driver truly needs 1 ms between
> regulators enabled.

Yes,I confirmed with the vendor, they think that if the VSN/VSP is
powered off at the same time,
the panel ic may not be able to enter sleep mode in system suspend.

>
> 2. Please provide the power sequence diagram for disable. If there's a
> 1 ms delay between regulators being disabled then please confirm.

Okay,I will push the vendor to update the power off timing on git hub.

>
> 3. If the 1 ms delay isn't truly needed then we can just drop this patch,=
 right?

Yes.

>
> 4. IMO if the panel itself truly requires 1 ms between regulators
> being enabled and/or disabled, it would be OK to put the 1 ms delay in
> the driver but it feels wrong to be accounting for ramp time in the
> driver. This should be specified in the device tree.

Bind the delay in the panel device tree?

>
> 5. If we really need to account for the ramp down time, it would at
> least be good to submit a regulator framework patch proposing a way to
> specify this. We'd have to figure out how to make this work since I'd
> imagine that most regulator consumers don't care that much about ramp
> down time. Mark would be the real person to get advice from, but
> perhaps an API call like "regulator_wait_discharged(percent)" that a
> client could call?

There is no problem with the ramp time of VSN/VSP, but the two rise or
fall at the same time.

>
>
> -Doug
