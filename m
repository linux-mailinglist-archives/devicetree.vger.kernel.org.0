Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA26341DE96
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 18:14:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348842AbhI3QPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 12:15:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349277AbhI3QPi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 12:15:38 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D79A9C06176D
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:13:55 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id m3so27076639lfu.2
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 09:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TJLJJokeuBYs6AoO6ijKwwyEapsnJe80ezxvMfQpOUU=;
        b=TpeqRkh3Bk4tw6JodrzrBa9JGMC+4gSQtumns470j57UrSLxhykEVch6A1EBEr4438
         bf+y1qz/H31jkXLaLh52zSoASLYdb/pMOIGzvaMedeIARQf9L+Sd/MbJd0isYNH3WeIx
         r1Q93fjo9+r/xjgiXqeqdc/eed/HUj+EPI7LmbF94DTyi+TT9RQEW6cNjuIKoeQPbXeo
         F5KQGOOmWCn/WjtEFZ59DqjhhAFSIRRDgdeo5LkO45SX6Gpe7EVsZLSQodrl65t0fO6Q
         DE/3aShu5KtNcii4bHd0RLSrwq1vDAYASHchduRprMYB+Rx9SoZP53ssl9KU4dwRegXN
         BVIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TJLJJokeuBYs6AoO6ijKwwyEapsnJe80ezxvMfQpOUU=;
        b=vZmt49i82h6uEAwSYMhazCkYyqoB7rkl6livibPMGYfS8nVfPC3/7L/VPJJw+PpkzB
         03BmgYS7YsM8twEwsUwyxz4GR5nYZxc21HtyV8JbJxNJaX0Q3ki8Y3xREmYGWEe+V4wR
         b2gJmCahkpO88PaE+q1L3SkuHRlHNEYw0DC2pCIo9aBrUEYmx94Mt9j7YLS/RBx9gZdR
         FAxGx58AUOwxDT5+NtO65ecKhKuaLMha2kRz50LsctW5YxU2EAHMfqYnaqUa6U7XlDMX
         RblhKP6m4RoEWAamRB8Yc4EHniYILdLeH3fVSHzFpliwps7YQzrsfMxpSAJNew71B4J5
         UU5Q==
X-Gm-Message-State: AOAM530BPyewKnsv5k5TZa3O+vxNnKigWZWK8SPJgPN2uE8rBPYmUNIM
        8po8HhrkENv+abw0YQWgwI59m7YddVqpfetF55XQ5A==
X-Google-Smtp-Source: ABdhPJziB9UiBKAN9FvfEgsp/ADUnz+xOaphABzyi6Htfefzx+UDG/tuJ6ghAE0zsLngWGkaUhhfQ2HIt4NB1TMHaQ8=
X-Received: by 2002:a05:651c:4d2:: with SMTP id e18mr6889883lji.432.1633018433492;
 Thu, 30 Sep 2021 09:13:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
 <874ka2tdqe.wl-maz@kernel.org> <CAFr9PXmu2JRSK9==MjpwgWTCET4iqj5U=egQQ2TciN0=B_UwNw@mail.gmail.com>
In-Reply-To: <CAFr9PXmu2JRSK9==MjpwgWTCET4iqj5U=egQQ2TciN0=B_UwNw@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Sep 2021 18:13:42 +0200
Message-ID: <CACRpkdY-G5cN1Bn0yTi+867X93K9kBsV5543d8LoXzk9W-yCOg@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     Marc Zyngier <maz@kernel.org>, DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 30, 2021 at 3:37 PM Daniel Palmer <daniel@0x0f.com> wrote:
> On Thu, 30 Sept 2021 at 22:06, Marc Zyngier <maz@kernel.org> wrote:
> > No, this is the right spot if you really need to set the handler. But
> > it should really be after the parent allocation (see below for
> > something totally untested).
>
> Your change resolves the null pointer difference when enabling the
> interrupt but when it triggers the below happens.
> This might just be my driver so I'll try to debug.

To me this looks like your IRQ handler is firing for unused IRQs, i.e.
you are getting spurious IRQs.

Are you missing to disable all IRQs as part of the set-up before
registering the GPIO chip? (Usually some registers need to
be written with zeroes.)

Yours,
Linus Walleij
