Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29F792CC5B9
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 19:45:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729231AbgLBSo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 13:44:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729044AbgLBSo5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 13:44:57 -0500
Received: from mail-il1-x141.google.com (mail-il1-x141.google.com [IPv6:2607:f8b0:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37D82C0613D4
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 10:44:12 -0800 (PST)
Received: by mail-il1-x141.google.com with SMTP id x15so2502480ilq.1
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 10:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uARoucDP241L4eksuDPrkjlIJVSjlk7U2tzC251j7eQ=;
        b=iBcXkKsc1+A63PzEeDJ/UPDk1sbSz4QoQMmKXqHbU1T+IiCmA7lGgdoV5z/4ySyNUy
         vrAMD8SsMds2gRA8yi+8IjVN6pQzptoegXiRC7PsmL75yISYcfFnbK9vAfNkXDuzO9qM
         k0rt/ZFc9m5a3uaW0oGvSo9OrU8pHKs8Wg/LI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uARoucDP241L4eksuDPrkjlIJVSjlk7U2tzC251j7eQ=;
        b=BW+Z+S12AY1dJg1h8VhyP8MTEFvyUPZAgBkj17oYqPaMbd1aSqmdwRiZiyhd1rs6Nn
         3Qq467Cto317st7iIzIftfHnLsEkjHOyCqNGXSjszZlJghZyEz+NPb8x7bHMhgz348Fu
         mk1RapHSVTcvwK1lHlctjg3SVHVHG3YZn1iRloJExbTIk/gs/jXVzCk4eSnDZzYvqjsk
         MrmZ7mewksShyznGP07RcRJObXWtP+GIGSKovKjKl8VTjyV78VRqyBfZfazhWuPsGOSg
         2sRoY1JpdTm4fAtqpwfFrxRkteSL9zN6uXi0NMZrWFNrM1W9ef/GNmikpJfXU8sUYFlj
         XmAg==
X-Gm-Message-State: AOAM53285kc30QfXGLa75202GBkXbMe627emmIf+8cWrUyda5lJnaNY3
        GtGX/d8eLTWmx4/1xxke2k6rgAvBAE96uUu/xZDX
X-Google-Smtp-Source: ABdhPJxk0FiDQTfyQ6fKrMsQ4RGI3WyhhJQOCYciecAv7LN9WwdpHBELyFYnkGhbAtg8yLVKGdDvsbhhBKxHkKVoqmU=
X-Received: by 2002:a92:d588:: with SMTP id a8mr3619797iln.79.1606934651573;
 Wed, 02 Dec 2020 10:44:11 -0800 (PST)
MIME-Version: 1.0
References: <20201201110316.28656-1-conor.dooley@microchip.com>
 <CAOnJCUL3qELbuDAAgyGB8jMP3x6WB1qhubd3UZNKqE5zs1B2wg@mail.gmail.com> <1cb10c03-d5fd-c6bc-62fa-7eb854a31cba@microchip.com>
In-Reply-To: <1cb10c03-d5fd-c6bc-62fa-7eb854a31cba@microchip.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Wed, 2 Dec 2020 10:44:04 -0800
Message-ID: <CAOnJCU+8Mu4t3U7sVoegm3d=JmK7oBUThumazOZu1ytP82AJjA@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] MAINTAINERS: add microchip polarfire soc support
To:     Conor.Dooley@microchip.com
Cc:     devicetree <devicetree@vger.kernel.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        Albert Ou <aou@eecs.berkeley.edu>, Cyril.Jean@microchip.com,
        David Abdurachmanov <david.abdurachmanov@gmail.com>,
        Daire McNamara <Daire.McNamara@microchip.com>,
        jassisinghbrar@gmail.com, Atish Patra <atish.patra@wdc.com>,
        Anup Patel <anup.patel@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Lewis.Hanly@microchip.com,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 2, 2020 at 1:13 AM <Conor.Dooley@microchip.com> wrote:
>
> On 01/12/2020 18:06, Atish Patra wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > On Tue, Dec 1, 2020 at 3:03 AM <conor.dooley@microchip.com> wrote:
> >> From: Conor Dooley <conor.dooley@microchip.com>
> >>
> >> Add Cyril Jean and Lewis Hanly as maintainers for the Microchip SoC
> >> directory
> >>
> >> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > I think this patch will make more sense in my basic SoC support patch.
> > Can I include this patch in my series as is?
>
> Eh sure, I don't mind.
>
> Should it be split and I add the mailbox entry in my series & you do the rest?
>

Yeah. That's even better.

> >
> >> ---
> >>  MAINTAINERS | 9 +++++++++
> >>  1 file changed, 9 insertions(+)
> >>
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 2daa6ee673f7..2241bdac4816 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -14989,6 +14989,15 @@ F:     arch/riscv/
> >>  N:     riscv
> >>  K:     riscv
> >>
> >> +RISC-V/MICROCHIP POLARFIRE SOC SUPPORT
> >> +M:     Lewis Hanly <lewis.hanly@microchip.com>
> >> +M:     Cyril Jean <cyril.jean@microchip.com>
> >> +L:     linux-riscv@lists.infradead.org
> >> +S:     Supported
> >> +F:     drivers/mailbox/mailbox-mpfs.c
> >> +F:     drivers/soc/microchip/
> >> +F:     include/soc/microchip/mpfs.h
> >> +
> >>  RNBD BLOCK DRIVERS
> >>  M:     Danil Kipnis <danil.kipnis@cloud.ionos.com>
> >>  M:     Jack Wang <jinpu.wang@cloud.ionos.com>
> >> --
> >> 2.17.1
> >>
> >>
> >> _______________________________________________
> >> linux-riscv mailing list
> >> linux-riscv@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/linux-riscv
> >
> >
> > --
> > Regards,
> > Atish
> >
> > _______________________________________________
> > linux-riscv mailing list
> > linux-riscv@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-riscv
>
>


-- 
Regards,
Atish
