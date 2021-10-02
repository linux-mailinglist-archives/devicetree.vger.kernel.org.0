Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34EC441F977
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 05:08:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229811AbhJBDKW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 23:10:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229752AbhJBDKV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 23:10:21 -0400
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AFB5C061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 20:08:36 -0700 (PDT)
Received: by mail-vk1-xa2e.google.com with SMTP id z202so5269642vkd.1
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 20:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zWcsoNNbTI1PrEdcKy9yhwvLZLKkP72Q13vQFT7BlXo=;
        b=KQXrpsPYq6s0eg2MINPQMispN40kZXeXFtl9fMCZzH/igW3d8aZ+NS8/vujlfUpeXz
         YhA+KumORTVC424NHqJR11VrsTghbSBI9XLSRZaa6UAE312NTyDBm6HQqQENj2UkSIZL
         quNlbSRca/XUE4YtSEvTl3L6q4IILSFbeFduk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zWcsoNNbTI1PrEdcKy9yhwvLZLKkP72Q13vQFT7BlXo=;
        b=jLZ1hewlumvT7T0X5se8FP+V+aDvqMTXOhCM4P7w4JjSMKp5G3qk1ftzXLZWh2/HD4
         T4VNku8ISMjWPYy8em3KwFX1oqh75H7T0gGSul23kFfXOffBaauJm5HEFLS/Bt3daC0F
         Xy5BKrsvzih+MzD6pxTUgoFCL0lyqRe2nlS0858R3syz/KTAhgr19Unm5fz09w7g7QZO
         ROKKDmshjBrwMp6SH4gS1Dc8JK3EzkJ05ZF+AmOpLhASxHLBY5xPRGybY5X0NWcScaxd
         i10khgJyu9KhFnDfW3VnSgGCYxgUu91jatZW6fKG6ixe7+S6kgs720tlRzuXbxBLnXsa
         oEHQ==
X-Gm-Message-State: AOAM533oSGYIyQTVoWQNMySUcfeS66VPp8aTGrgQjA5ZBBh2TwNUrpyo
        koUAuVBwd5f0tK/ejcE1jrf/qzB5OaWq5UVLT50O2Gm3QLyK0w==
X-Google-Smtp-Source: ABdhPJzQFnjnm+4kFz4Ga2tT8LY1UjJ7dIbzibIxyWK6T3MUPYRc42jt1goxY0qKRKqgi5DvuZtwwU9SxPdx7vjfbcY=
X-Received: by 2002:a1f:f203:: with SMTP id q3mr10454977vkh.1.1633144115355;
 Fri, 01 Oct 2021 20:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
 <874ka2tdqe.wl-maz@kernel.org> <CAFr9PXmu2JRSK9==MjpwgWTCET4iqj5U=egQQ2TciN0=B_UwNw@mail.gmail.com>
 <CACRpkdY-G5cN1Bn0yTi+867X93K9kBsV5543d8LoXzk9W-yCOg@mail.gmail.com>
In-Reply-To: <CACRpkdY-G5cN1Bn0yTi+867X93K9kBsV5543d8LoXzk9W-yCOg@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Sat, 2 Oct 2021 12:08:24 +0900
Message-ID: <CAFr9PXmNLZ5sXhsVXyoNJmaAUMz866ZPDsAAteSv13dVQ_hNEg@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Marc Zyngier <maz@kernel.org>, DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

Sorry for the constant spam on this..

On Fri, 1 Oct 2021 at 01:13, Linus Walleij <linus.walleij@linaro.org> wrote:
> To me this looks like your IRQ handler is firing for unused IRQs, i.e.
> you are getting spurious IRQs.
>
> Are you missing to disable all IRQs as part of the set-up before
> registering the GPIO chip? (Usually some registers need to
> be written with zeroes.)

Changing the handler to handle_edge_irq() on the gpio side resolves
the issue and gpiomon registers edges from the gpio like it should.
So I think it's an ordering thing. Something like the gpio side sets
the handler to handle_bad_irq() after the irqchip side sets it to
handle_edge_irq().

Thanks for the help.

Cheers,

Daniel
