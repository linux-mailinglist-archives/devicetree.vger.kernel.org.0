Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBD2E623023
	for <lists+devicetree@lfdr.de>; Wed,  9 Nov 2022 17:26:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231292AbiKIQ0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Nov 2022 11:26:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229865AbiKIQ0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Nov 2022 11:26:18 -0500
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5006F1A238
        for <devicetree@vger.kernel.org>; Wed,  9 Nov 2022 08:26:17 -0800 (PST)
Received: by mail-il1-x134.google.com with SMTP id r2so9298237ilg.8
        for <devicetree@vger.kernel.org>; Wed, 09 Nov 2022 08:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rothemail-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zKzyUbavYrwcyYfS4DLyEnVR3vwgpUA85jv/+wflbpI=;
        b=iUr8/IyvM1GJJVKCcaW9tsn/whFqKtgjr+ndUGglD/WiYfZZ3XHweJ7NLjPaNAikQ7
         F/AgRQe2RCgmvWByFFbSa1XOjS2e232S5G1lgULkGt1K75N9trMvak4B9lxgfC4zCfZF
         z0Y8A6kgJD7fD378FKWGrKUBMxDmbKlN5pdQFZlGquFiG085uNdMosGR9Z7YoM33RX2e
         OJVwmDBUkq6HTUDRygZJNS6t7pev949q+UwbFpvigfmVhTn8TlhL314WyO/RvpZO6Cvb
         QMounSq7s4CA1Cd8aWqCQGLgiI/jsi8IZmISIr2ZCDLiLJB5916hReg8ZxZ4neS/KWYn
         LAug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zKzyUbavYrwcyYfS4DLyEnVR3vwgpUA85jv/+wflbpI=;
        b=3n9YcJm5FhSrbDy1Nz83dJzOq9oZBtvZwcUZtX3qGoacwXSGqIutDkVyXJSToQ9qeS
         MGdxMvbKRhjjj0KquY6HxJytRHsEODpAxr2FhTVEBtfevNDI6ohBQFbgjdtnMpkeEIF2
         Q8foOx3UpubAFf0v+cEqmWr80aImBPJKTOei7mDv6rpvmtsvYlF0oFRNqnbg0ZFGkhbi
         a+kS1miHnJOCzhmmf8hGfaeHHzREj7bqaIJkCiTOnGM8AERflv3JhZWN/1P2K/iB4WhB
         lJF9SFSZvTq+gLlwMSZM7o+w4qBPzg3vvhpcYO7LZUFOSzl+avkUvUP4EJKVX2x7swDe
         xPTQ==
X-Gm-Message-State: ANoB5pm+gtfuyMRi9ttEzDn7Ba9MLEd4fGB/LZUlChDbzUTfzC6bkVoD
        lmmZp+4M+g8oCA/lVasn45gyFe1Ka8f+5WygY1gR33rj6MBUQ6Wx7H0=
X-Google-Smtp-Source: AA0mqf71K7TZE1+Cwj6WH9wiugctAAzt3dmFQUuRrGWfnuGpfMFJbGU1G6erbIPahmrlypEk1JiW7WMej2x6fb6q1AM=
X-Received: by 2002:a05:6e02:1747:b0:302:11f2:8796 with SMTP id
 y7-20020a056e02174700b0030211f28796mr7545901ill.214.1668011176549; Wed, 09
 Nov 2022 08:26:16 -0800 (PST)
MIME-Version: 1.0
References: <c522c639-db0c-c1c4-0281-5dc524a8a86e@linaro.org>
 <6F5319F3-FDB2-405C-99E1-A9EC64264FD6@rothemail.net> <24ecc077-fc1d-5270-c901-9722ab7b68b1@linaro.org>
In-Reply-To: <24ecc077-fc1d-5270-c901-9722ab7b68b1@linaro.org>
From:   Nicholas Roth <nicholas@rothemail.net>
Date:   Wed, 9 Nov 2022 10:26:05 -0600
Message-ID: <CAD2rFCqrJyTz1KXXK3WTiih7LTfAW07k8V19yQhA6_LeGiqfRg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: media: Add Omnivision ov8858 binding
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     devicetree@vger.kernel.org, mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Happy to reply inline next time. I'm still getting used to this format
:-). Here's the context around my clock frequency question-- I'd
really like to understand this better:

> > +  clock-names:
> > +    description:
> > +      Input clock for the sensor.
> > +    items:
> > +      - const: xvclk
> > +
> > +  clock-frequency:
> > +    description:
> > +      Frequency of the xvclk clock in Hertz.
>
> The frequency of clock should go via common clock framework - you have
> get_rate and set_rate. Drop entire property.

I am trying to be consistent with the ov8856 driver and bindings but
would be happy to change. I=E2=80=99m not familiar with that framework thou=
gh.
Is there somewhere I could read about this, including the driver and
device-tree changes I need to use this?

>
> > +    minimum: 6000000
> > +    default: 24000000
> > +    maximum: 27000000
> > +
> > +  dovdd-supply:
> > +    description:
> > +      Definition of the regulator used as interface power supply.

On Wed, Nov 9, 2022 at 10:19 AM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 09/11/2022 16:12, Nicholas Roth wrote:
> > Hey,
> >
> > I=E2=80=99m doing my best to follow along here. Your feedback didn=E2=
=80=99t get lost and I tried my best to follow it=E2=80=94 I just must not =
have understood it correctly.
> >
> >> 1. There is no driver, no DTS. You received the feedback about it.
> >
> > Driver: I submitted the .c files to linux-media, and as part of the rev=
iew they asked for me to separately submit device tree bindings (https://pa=
tchwork.kernel.org/project/linux-media/patch/20221106171129.166892-2-nichol=
as@rothemail.net/). Are you saying that the driver and the bindings should =
be the same commit after all? Are you saying something else? I=E2=80=99m af=
raid I still don=E2=80=99t understand what you mean by this, but I want to,=
 and I=E2=80=99m trying to.
>
> They come as one patchset. Separate patches, one patchset. Otherwise you
> get checkpatch errors, right?
>
> >
> >> 2. Wrong cc list. You were asked to use get_maintainers.pl and still
> >> decide not to.
> > I included the people from get_maintainers.pl, but it seems like you wo=
uld like for me to include all entries, including the multiple mailing list=
s. Do I understand correctly?
>
> Yes. Do not strip some lists based on your preference. Why only some
> people should receive this, not everyone involved in the subsystem?
>
>
> >>
> >
> >> How can you test bindings with libcamera?
> > I validate the device tree + driver on this setup, but I am happy to dr=
op the comment about validation.
>
> It's not about bindings then.
>
> >
> >>
> >> Filename still does not match compatible. ovti,ov8858.yaml
> > I was trying to be consistent with ov8856.yaml, but happy to change the=
 file name if that=E2=80=99s the convention. Is there a doc I can read with=
 this information or is it institutional knowledge?
>
> All recent submissions follow this, so the best is to take last commits.
>
> >>
> >> The frequency of clock should go via common clock framework - you have
> >> get_rate and set_rate. Drop entire property.
> > I am trying to be consistent with the ov8856 driver and bindings but wo=
uld be happy to change. I=E2=80=99m not familiar with that framework though=
. Is there somewhere I could read about this, including the driver and devi=
ce-tree changes I need to use this?
>
> This is very difficult to respond. Please use inline comments, I have no
> clue which part you are now commenting. This is not mailing list style
> response.
>
> >>
> >> Which driver? In OpenBSD? Which version of OpenBSD? Drop the sentence.
> > Seems like your point here and in the subsequent comments is to avoid i=
mplementation specifics. That makes a ton of sense, and I=E2=80=99ll make t=
hose changes for v3.
> >
> > All of your other comments make sense explicitly and I=E2=80=99ll make =
these changes. Please help me understand what you mean by (1) and (2), corr=
ect me where I=E2=80=99m wrong or misunderstanding you here, and I=E2=80=99=
ll submit the v3.
>
> Best regards,
> Krzysztof
>
