Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9C120BEE3
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2020 07:40:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725885AbgF0Fkf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Jun 2020 01:40:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725880AbgF0Fkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 Jun 2020 01:40:35 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0748CC03E979
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2020 22:40:34 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id z15so186298wrl.8
        for <devicetree@vger.kernel.org>; Fri, 26 Jun 2020 22:40:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=D9XiOO31QvLzfIBv/Y4Ns3UZXurh+wrRF7dvs/mssCg=;
        b=RnnpAQbj/Mpa/ox57F0grfeSmok55pNA2xC/1/gJORl72A9n5GDziltMR52wjxYXdf
         IntKHqqXLfIyuYX02vi2sUF4nnG5wUtxdg3OimEd8NhsHKip4774WSvRxG+bM833SZc3
         Lto8nKIIzMSDd9aRMXsvHsFNvhUXh2LBDR9bKlcZJjQkBuW8t2JZYVqmA0U/wXutH9Ug
         Owk+UUc39vLakId+0ZWtKfaBTJK7sOkvU/6c4kBXFhGf3iMgRZ6QyIyxaxzctT5kOclF
         Sj7MWi1KuNE7PQ74RXJT6ffRTqvjm/7kYcDuceYnVep5rXc9TqOSZFyi5S54+KLGy5fx
         DCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=D9XiOO31QvLzfIBv/Y4Ns3UZXurh+wrRF7dvs/mssCg=;
        b=sUsFeXJLfjcyqP0joBEaI+JCLH7GhkrWb9V+983oxNvXsQfRxehjuPnM+Zh++QnFIc
         dNOSXTePqCd3d7lg9FdHk+X+og3xKzFy/PedCSPmardK93FgwqIdYTFB98fFp2/PqXQx
         8XxfA2gVKX1Vu2p46cv2K7CmvZA6WNIyLU2s/l24phu3K65fDoqErI+X/muu4n9/YxwQ
         j07f9aBMrGPw7+wA1kQSGYIp08r4Tlmh9ql6xXd9tKD6t9wCYLh+hzcxgtsFaf3spOSL
         O7COA0yNJBu8J1XftMM17n/tzDVwf7qA97ZtnSIOqxv+NaJXgf56YjCybu5F3osX2Q6X
         prFg==
X-Gm-Message-State: AOAM531Wo/N8J1rk8fIPfHBiPNqyOlmd2aqQKaaIbSoM/vlw4B80r8yL
        hPb/v6OtNC/hWp5cgA9ydqQLimqySOUc2hC3EoHJXUzW
X-Google-Smtp-Source: ABdhPJzYGaVMDSBVDkfEsq5XfhXWrNh+9mApzjZGgFy0P1MaF5t8wOkck1pjn1v/fDwwrTxADnPKO0fcea9ka2nhC6c=
X-Received: by 2002:adf:fe0e:: with SMTP id n14mr6887951wrr.325.1593236433382;
 Fri, 26 Jun 2020 22:40:33 -0700 (PDT)
MIME-Version: 1.0
References: <c0e9e625-daf8-b72f-2237-06018ff5d8a0@gmail.com>
 <mhng-0995a264-b39c-4790-9aa5-b8c598b43ffd@palmerdabbelt-glaptop1> <20200528231803.GA847232@bogus>
In-Reply-To: <20200528231803.GA847232@bogus>
From:   Anup Patel <anup@brainfault.org>
Date:   Sat, 27 Jun 2020 11:10:21 +0530
Message-ID: <CAAhSdy0J2MKR+WMp=sXJ6TaWd2TLLQoKJ5kr_XWUV6UowyJM8w@mail.gmail.com>
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Sean Anderson <seanga2@gmail.com>,
        Anup Patel <Anup.Patel@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Atish Patra <Atish.Patra@wdc.com>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 29, 2020 at 4:48 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, May 26, 2020 at 05:32:30PM -0700, Palmer Dabbelt wrote:
> > On Thu, 21 May 2020 23:29:36 PDT (-0700), seanga2@gmail.com wrote:
> > > On 5/22/20 1:54 AM, Anup Patel wrote:
> > > > On Fri, May 22, 2020 at 1:35 AM Sean Anderson <seanga2@gmail.com> wrote:
> > > > >
> > > > > On 5/21/20 9:45 AM, Anup Patel wrote:
> > > > > > +Required properties:
> > > > > > +- compatible : "sifive,clint-1.0.0" and a string identifying the actual
> > > > > > +  detailed implementation in case that specific bugs need to be worked around.
> > > > >
> > > > > Should the "riscv,clint0" compatible string be documented here? This
> > > >
> > > > Yes, I forgot to add this compatible string. I will add in v2.
> > > >
> > > > > peripheral is not really specific to sifive, as it is present in most
> > > > > rocket-chip cores.
> > > >
> > > > I agree that CLINT is present in a lot of non-SiFive RISC-V SOCs and
> > > > FPGAs but this IP is only documented as part of SiFive FU540 SOC.
> > > > (Refer, https://static.dev.sifive.com/FU540-C000-v1.0.pdf)
> > > >
> > > > The RISC-V foundation should host the CLINT spec independently
> > > > under https://github.com/riscv and make CLINT spec totally open.
> > > >
> > > > For now, I have documented it just like PLIC DT bindings found at:
> > > > Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.txt
> > >
> > > The PLIC seems to have its own RISC-V-sponsored documentation [1] which
> > > was split off from the older privileged specs. By your logic above,
> > > should it be renamed to riscv,plic0.txt (with a corresponding change in
> > > the documented compatible strings)?
> > >
> > > [1] https://github.com/riscv/riscv-plic-spec
> >
> > Let's propose tagging that PLIC spec as v1.0.0 in the platform spec group, but
> > I don't see a reason why that wouldn't be viable.  Assuming that's all OK, we
> > can start calling this a RISC-V PLIC (in addition to a SiFive PLIC, as they'll
> > be compatible).
> >
> > > >
> > > > If RISC-V maintainers agree then I will document it as "RISC-V CLINT".
> > > >
> > > > @Palmer ?? @Paul ??
> >
> > The CLINT is a SiFive spec.  It has open source RTL so it's been implemented in
> > other designs, but it's not a RISC-V spec.  The CLIC, which is a superset of
> > the CLINT, is a RISC-V spec.  IIRC it's not finished yet (it's the fast
> > interrupts task group), but presumably we should have a "riscv,clic-2.0.0" (or
> > whatever it ends up being called) compat string to go along with the
> > specification.
>
> Whatever you all decide on, note that "sifive,<block><num>" is a SiFive
> thing (as it is documented) and <num> corresponds to tag of the IP
> implmentation (at least it is supposed to). So you can't just copy that
> with 'riscv,<block><num>' unless you have the same IP versioning
> and update the documentation.

I agree that "sifive,<block><num>" is a SiFive thingy. Unfortunately,
lot of RISC-V implementations (SiFive and non-SiFive) have DTS
generated from RTL (not part of Linux sources) where most of them
use "riscv,clint0" as compatible string for CLINT.

>
> Using a spec version is fine, but not standalone. You need
> implementation specific compatible too because no one perfectly
> implements any spec and/or there details a spec may not cover.

Sure, a generic compatible string "riscv,clint0" OR "sifive,clint-1.0.0"
along with an implementation specific compatible string sounds
good to me.

Regards,
Anup
