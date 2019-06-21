Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B78DE4E543
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 12:00:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726372AbfFUJ76 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 05:59:58 -0400
Received: from mail-lf1-f65.google.com ([209.85.167.65]:44725 "EHLO
        mail-lf1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726250AbfFUJ76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 05:59:58 -0400
Received: by mail-lf1-f65.google.com with SMTP id r15so4568085lfm.11
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 02:59:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=97030ehdzrNq8foq07+AWlHk1qrrPe5jsC3Gs0TUlzM=;
        b=HVP6sfaP9Gc2v9i5Jjb8nzD8V6DHQyvjJiS4s0FEPn47BcAFqzpye5nAY7ylHt5pKF
         LvmU5+g67BbcvhGBPiJP3Ff4UIrRJSEgC/sv9ePTwhltpbmaXhQfgGjfwAkaXu1QkKps
         yZYBpzw5RAIMJ1yZvkikCYw7YRkR+g5qJm82SMVIa+frJXh76qD9japXT2/dQrnWMoEB
         nlrA/FhwXjnJn8MKpOOX15Ix1Yzf19VGV+rs3wVUqSdi7//UKJBEytIkmxVmPReVzn9p
         ApMOZn+Yp3652PGvQrz7phLyT0vTGenI1AuXrRsae8IMbmBhidNTTYm98nzaVHt9eL25
         rFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=97030ehdzrNq8foq07+AWlHk1qrrPe5jsC3Gs0TUlzM=;
        b=T0Dap+s9jah323NPazIidovmnLFk4b17MgerIsEFY7C1Fuuy26sDYAjcZ4tvwjk1Wt
         ztvbaZeCfaiajKdkxo/0XkBaptN5y+sKmhyC4449s1JzUFXftaOPy5hGSC18CMIqDJbI
         JWWcQdEoENn059cB6BLrO30dU9dPKxtVWHQ7TEl58QRgZvE/USAEOjGwv3NmtViyPlWS
         qd3tfQAqmuHBpwmxSE5WT0LM/q1G4WjMCtM7cf5rJ1mq8ITeBBF83zKaI6KVzoIu3bds
         B6G0kk7OD21V7fGxup4j1l1hAJ5dawAN55LEmyyUqfSKrM7QLJXz8iCAVv+wVOHgM56H
         GK6w==
X-Gm-Message-State: APjAAAVWdWV8MSO4NtM5ARoYOWt8A1ZVWJnYeIUqRLop/4S9K3QOmDGV
        rpA+I5OhWcodlU8cnXosftJOX0yZGgo+RbhCuyeTMg==
X-Google-Smtp-Source: APXvYqwakQoUYvkQWF0oN/90aJTMVyVOxBQx5u/5NG+eG198vhWKO1eioYF/oNR7gcqsOGkPnn05VWv2jTHPm/NjjoU=
X-Received: by 2002:a19:5046:: with SMTP id z6mr20312857lfj.185.1561111196510;
 Fri, 21 Jun 2019 02:59:56 -0700 (PDT)
MIME-Version: 1.0
References: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
 <1561097422-25130-2-git-send-email-yash.shah@sifive.com> <CAAhSdy2zHozRnwAU6-+U+BE-5h5uNE67D_0TXHJnrHMi53gMog@mail.gmail.com>
In-Reply-To: <CAAhSdy2zHozRnwAU6-+U+BE-5h5uNE67D_0TXHJnrHMi53gMog@mail.gmail.com>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Fri, 21 Jun 2019 15:29:20 +0530
Message-ID: <CAJ2_jOGWFaw6G6vjbfz9rwa3jceL0kmykM4B3zLhu0V+qBVZvw@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Add DT node for SiFive FU540 Ethernet
 controller driver
To:     Anup Patel <anup@brainfault.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 21, 2019 at 2:31 PM Anup Patel <anup@brainfault.org> wrote:
>
> On Fri, Jun 21, 2019 at 11:40 AM Yash Shah <yash.shah@sifive.com> wrote:
> >
> > DT node for SiFive FU540-C000 GEMGXL Ethernet controller driver added
> >
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > ---
> >  arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > index 4e8fbde..584e737 100644
> > --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> > @@ -225,5 +225,25 @@
> >                         #address-cells = <1>;
> >                         #size-cells = <0>;
> >                 };
> > +               eth0: ethernet@10090000 {
> > +                       compatible = "sifive,fu540-macb";
> > +                       interrupt-parent = <&plic0>;
> > +                       interrupts = <53>;
> > +                       reg = <0x0 0x10090000 0x0 0x2000
> > +                              0x0 0x100a0000 0x0 0x1000>;
> > +                       reg-names = "control";
> > +                       local-mac-address = [00 00 00 00 00 00];
> > +                       phy-mode = "gmii";
> > +                       phy-handle = <&phy1>;
> > +                       clock-names = "pclk", "hclk";
> > +                       clocks = <&prci PRCI_CLK_GEMGXLPLL>,
> > +                                <&prci PRCI_CLK_GEMGXLPLL>;
> > +                       #address-cells = <1>;
> > +                       #size-cells = <0>;
>
> Have status = "disabled"; here and have
> status = "okay" in board DTS file.
>
> General convention for any SOC device with external
> connection (e.g. ethernet, SPI, SDHC, SATA, PCI, etc)
> is:
>
> 1. Define only device DT node in SOC DTSi file with
> status = "disabled"
> 2. Enable device in Board DTS file with
> status = "okay"
> 3. Define PHY or external PIN connection details
> in Board DTS file
>
> > +                       phy1: ethernet-phy@0 {
> > +                               reg = <0>;
> > +                       };
>
> The PHY DT node should be in Board DTS file.

Will move all PHY related nodes in board DTS file.

>
> Of course, same comments apply to SPI DT nodes as well
> but I missed reviewing those DT nodes. You can send separate
> DT patch to re-organize SPI DT nodes.

Sure, will send a separate patch for SPI DT nodes as well.
Thanks for your comments.

- Yash

>
> Regards,
> Anup
