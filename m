Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4267241ED76
	for <lists+devicetree@lfdr.de>; Fri,  1 Oct 2021 14:31:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353248AbhJAMcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Oct 2021 08:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352822AbhJAMcx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Oct 2021 08:32:53 -0400
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com [IPv6:2607:f8b0:4864:20::e2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8552DC061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 05:31:09 -0700 (PDT)
Received: by mail-vs1-xe2a.google.com with SMTP id p9so5633029vst.9
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 05:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z6Aj/ug8Zvuls6wp1BMzCBos9dFTSk+80a6p5ic+0gA=;
        b=h7GzfdoQiH7FzJKv0iPqXzqOFdFWRmAepO4JLwmWbhGhy/XkMyhuhKJONcXujT106B
         odAPLcuYVjxkfchSfkEx24vWM2iOBJ1Xe0PsVzq4PIJTSH6qf68HRs2ZUYC2BB4QTZ2e
         OqdgC9eKKXekYPgshH95e7FyhrVkHeAQJ0k8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z6Aj/ug8Zvuls6wp1BMzCBos9dFTSk+80a6p5ic+0gA=;
        b=JpUcaonB+QNonFV3u4hAGjCvEQ72nnr3IxuvaBMqZWe3RI1AV4VfoSDjS7jMM05P3Y
         /x69f4WA//AGorgGQlBrIgJ82DQLUrcCum0tLPon5foDWEkSKB5a6+/e7Cg3jNR3BM3P
         vFrzcbYRiBBaG5AU16Z840txQl862SPw7ulwpEhwKN1td3zhpURkKNNqJNjcGcGUzxd0
         b+ovcC3DoCFkAc7C+xcLgxIxGaQvIxtIKB762cxrqFJzcVu4cnWqsKmYoeACtoFMJSkN
         aoNZEbcZ3cORUjQSmJaMAQUSlIANZuWiZJmsHBzZ/kTPLiI3dupRyURSvP2YdTsiU8Gf
         MRmA==
X-Gm-Message-State: AOAM533/Yf9hZROJRlRb1Jyztkxc2YdYbAqC49laHctlkniPNuKDrqcd
        hy1+AiFtsJ2R4XU2TwNfOENVxZh1Oqns9jre/n8QSw==
X-Google-Smtp-Source: ABdhPJxFv6FYfscXcdnSRHFL099vEo5kD9Tixgpqgo8iKdTnAMI/8pGi1wKFBfKwzirAoZJsilB4pBmuzJ4culUNfq0=
X-Received: by 2002:a67:f60f:: with SMTP id k15mr3564063vso.9.1633091468666;
 Fri, 01 Oct 2021 05:31:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
 <874ka2tdqe.wl-maz@kernel.org> <CAFr9PXmu2JRSK9==MjpwgWTCET4iqj5U=egQQ2TciN0=B_UwNw@mail.gmail.com>
 <CACRpkdY-G5cN1Bn0yTi+867X93K9kBsV5543d8LoXzk9W-yCOg@mail.gmail.com>
In-Reply-To: <CACRpkdY-G5cN1Bn0yTi+867X93K9kBsV5543d8LoXzk9W-yCOg@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Fri, 1 Oct 2021 21:33:13 +0900
Message-ID: <CAFr9PX=VqbQw-6H0GKdVgWYFGiQ+nnUXOWqsFRMJ14o285Sy-A@mail.gmail.com>
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

On Fri, 1 Oct 2021 at 01:13, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Sep 30, 2021 at 3:37 PM Daniel Palmer <daniel@0x0f.com> wrote:
> To me this looks like your IRQ handler is firing for unused IRQs, i.e.
> you are getting spurious IRQs.
>
> Are you missing to disable all IRQs as part of the set-up before
> registering the GPIO chip? (Usually some registers need to
> be written with zeroes.)

I don't think it's something like the wrong IRQ firing as the same
driver was previously working with EOI to clear the interrupt instead
of ACK.
I'll double check though.

Cheers,

Daniel
