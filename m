Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA23377640
	for <lists+devicetree@lfdr.de>; Sun,  9 May 2021 12:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbhEIKuw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 06:50:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbhEIKuv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 May 2021 06:50:51 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBBE2C061573
        for <devicetree@vger.kernel.org>; Sun,  9 May 2021 03:49:46 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id w4so17190650ljw.9
        for <devicetree@vger.kernel.org>; Sun, 09 May 2021 03:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mQafJtBEfmRTcgozALwkE9M1nF4kym6hXG0iG0sUNgY=;
        b=W2SlqBumDyfZmBDebluEBm0aD61vrqdgA+9lfx0m+eDN2ySYr4WoOetQRyABotFRmV
         ukH8eRgS+44+3xw1sWPdQxS045PpSc74KRsKhyLCwb1Y0nbmZsdvzLEKp/GSwLWNn1Ce
         Q9WlXY56TT/vi/Qh8or36sgc9agzph6RuzoFWWTrIyxmplxTmPJZh5zMvMymB0CHNMwQ
         sSZPi07BLZwtndKImXPv6nWBacfC+9wvWKIuHF/IHgL2PujYQGvJRpMR2o7xT/yHx9So
         et4j0uw2pJveVSzAN2k3dHlFFDwv+/tbUm228lL1gRyoRM52utJ5soaXK1LQqdtR97ws
         PzqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mQafJtBEfmRTcgozALwkE9M1nF4kym6hXG0iG0sUNgY=;
        b=EDCmyg+vxjdJpAXATq2p4XlRFNO7fQp3EKXRDye8GYNPsSWgtTJc5cWiMPChB5f6DN
         YCTlAM2eGJWEEbwg7GBMHKVlcS4/U61b6mO+0w2ONiFe9u2j/C0+XMUgP11g7Ol8+PXc
         4tDC7sSn8muzOmr/vAftFtzye9zOq3Nh1pSD8SZlJBFzZ6Yohd01KkYkZA3mj6dwZ+Mc
         wCTule9jguhOvc0hKS/3W3+SjXwoJUMuGOvxV7c8eitX+EuCm6yx0vjHcOk1wBn05fyx
         /Gyv1sM+HxIlwT5/FnOiXewrqEcRguqQGrHjeXFdTnovkTLG036skwNjagaRF1PAO7Kl
         O7eQ==
X-Gm-Message-State: AOAM533j7U0RqvZ3H3rUUSgufhz4fMPS4sMJtCara18VeiZnZLg3RScm
        zG0vVjKf11qh3+GlWoLG0q8l4xB1juMB6mRh9afTZg==
X-Google-Smtp-Source: ABdhPJw48ytLdN9bKt+Jcnukhvew4xZlQCf6DsNPReSjSfwt96BlLgFJ83xaiLx57shTh2pGawA/4lu8FX6M0NiPqnw=
X-Received: by 2002:a2e:889a:: with SMTP id k26mr15716886lji.438.1620557385112;
 Sun, 09 May 2021 03:49:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210508142000.85116-1-kettenis@openbsd.org> <20210508142000.85116-2-kettenis@openbsd.org>
 <CACRpkdbexpwu9hDWFYe38-+issVw051YfJ-_hatZVmWzkh4M+w@mail.gmail.com> <c1bd67fcc0390275@bloch.sibelius.xs4all.nl>
In-Reply-To: <c1bd67fcc0390275@bloch.sibelius.xs4all.nl>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 9 May 2021 12:49:33 +0200
Message-ID: <CACRpkdZYD3Nq7ZmdXsk_j0CAktvx6Sbqga5B1wbwtL-5T_=vkQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: Add DT bindings for apple,pinctrl
To:     Mark Kettenis <mark.kettenis@xs4all.nl>
Cc:     kettenis@openbsd.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hector Martin <marcan@marcan.st>,
        Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark,

I think we settle with this scheme you choose, so the following
is just some hints for the future.

On Sun, May 9, 2021 at 11:46 AM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:

> Right.  So far it seems we don't need to set the electrical config on
> any of the pins and I don't think we've identified any bits in the
> register that change the electrical configuration.  Although there are
> some hints in the Apple device tree that there are pins that need some
> additional configuration.  But I also see some evidence that the Apple
> firmware on these devices already sets up most of the pins for us.

This is something I think you want to look closer at soon.

It will *probably* be necessary to obtain optimal power management
for the devices, but I am not sure.

What operating systems (especially Android devices under Linux)
tend to do is to reconfigure pins at runtime in order to conserve
power. When the device goes to deep sleep just waiting for an
external interrupt (such as opening the lid on a laptop or pressing
the power button on a phone) the OS tend to reconfigure the
pins into a low power state for the duration of the sleep.

A typical example is to set a bunch of lines as "floating" (tristate)
in pin control terminology "bias-high-impedance". In some cases
pins may be connected to ground depending on use case,
but in each case this is done to avoid leak currents when
sleeping.

I don't know how noticeable impact this will have on standby times,
but the lower micron silicon technology, the bigger the impact.

If possible I'd recommend that you try to intercept what MacOS
is doing with these registers when the system goes in/out of
sleep mode. I think it could be key to some power savings you
would otherwise miss.

These two modes are standardized in pin control terms as
"default" and "sleep" and each affected device driver need
to actively put the pin control state to "sleep" when the
device is going to sleep, so the philosophy is entirely
distributed, in difference from some more sledgehammer-type
OS approaches where the OS is just slamming a number
of values into the pin registers at sleep (suspend) time.

The upside to doing this fine-grained and per device is that
the sleep modes can in best case be used at runtime
to e.g. save power on an unused USB port that isn't plugged
to anything (I don't know if this is a good example).
In Linux we have the runtime PM concept to deal with
this and there are some drivers actively saving power in
this way.

Yours,
Linus Walleij
