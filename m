Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 66BFDB3937
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2019 13:19:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729879AbfIPLTT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Sep 2019 07:19:19 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:40798 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727505AbfIPLTT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Sep 2019 07:19:19 -0400
Received: by mail-lj1-f195.google.com with SMTP id 7so33306834ljw.7
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2019 04:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kBaeJfwfLppWDTN+c6Xvp7a5lgEjyq6CvqRjPSkCSsE=;
        b=cPJCYXpgljA0EuMpwlRYgb88hmtm+Zkd2PS4bdnP81XMW+yr9JYKQSAbNKNwxpt6at
         4PBcfW5bxEba2Tx5Sj3WwXWjz2azW8gO95W5Xi7jd3m2hwXZHpgullc+s5IzY2TfEm9V
         i4vYgOzSm5xR9z0hofUO7ZU/IcbXCQaJTXQ7dnXY7N8YIxMm5ac7qqYtp8larQie7Gx8
         JpWFAm4Uckdb1l4benKPwBRAv06azKk87xvEjm6KRLZq12ik3m5yutAbrWYwNsm9ng3V
         ulWYAkmwDNkw9l0coapQBWCETEbgrMyaIsKRyFec52KeYwd4DLO22lDOa2cmBxNCcEvc
         +l8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kBaeJfwfLppWDTN+c6Xvp7a5lgEjyq6CvqRjPSkCSsE=;
        b=RzG/qgbpZeNnbRL8nUNp7xuua0AGk30aAmdx9r7M7RGy3h6MhCpcVj6VEz6bdI16Nf
         YQNNtEVdN65RuK5nuLDnLeIgF+gFPvgJHfDa4ajQl3jLp9YVQSBXOhP1emOqsV5462op
         tFfNtUQvJ0T2MK9uOozqDj5tBGWYhCe63IUDdVFMsAl2ATzPFk/qdbFkCh+fQddu7vJv
         RVaJA4XbLCYbMxiVW7pgAx0UfHzjTf8WByRxHjnIpiA1eJfT2ufKM++frWqyTkLYL4LF
         su4v0/qOQQI0SIGC6zicPMt3FfxzKMD0nQlUxeprxdKJQi0YRe8OADIz198Zx1VILXwk
         Medg==
X-Gm-Message-State: APjAAAVHYtUO/ALI9471a3zGooC4Bin0kaE3iIrme/CQCoc6IUJ92U4q
        5BPrd4K2h6w/Xn7k7O8lnOYYraX9Gm/rQboA2m0low==
X-Google-Smtp-Source: APXvYqzOtuwatIM/fN0oMz9nahH5wOlxzjhK7WDQLmP/Km/rbyCRcFoqvVU/Rdd5uxZhJR9bw/zv3oHPCEVO+AqNIpc=
X-Received: by 2002:a2e:a408:: with SMTP id p8mr5099774ljn.54.1568632756996;
 Mon, 16 Sep 2019 04:19:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAJ2_jOGO-isv52rnwRusV7jtyCY_JWYWAj9opN3Zg6ZbZr-8-w@mail.gmail.com>
 <mhng-c8b87e96-987e-4577-acc2-1e22c9b81b10@palmer-si-x1e>
In-Reply-To: <mhng-c8b87e96-987e-4577-acc2-1e22c9b81b10@palmer-si-x1e>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Mon, 16 Sep 2019 16:48:40 +0530
Message-ID: <CAJ2_jOHJ5zuxDc6gsFiZou+-yVg=pr+uSHGJB8VPT1O-Bu3idg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: Add DT support for SiFive FU540 PWM driver
To:     Palmer Dabbelt <palmer@sifive.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Bin Meng <bmeng.cn@gmail.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Sep 14, 2019 at 2:50 AM Palmer Dabbelt <palmer@sifive.com> wrote:
>
> On Tue, 10 Sep 2019 02:52:07 PDT (-0700), yash.shah@sifive.com wrote:
> > Hi,
> >
> > Any comments on this patch?
>
> I don't see "sifive,pwm0" in the DT bindings documentation, and it doesn't
> match our standard way of doing these things (which would have at least
> "sifive,fu540-c000-pwm").

"sifive,pwm0" is present in the DT bindings documentation at
Documentation/devicetree/bindings/pwm/pwm-sifive.txt
Yes, I agree that this patch is missing "sifive,fu540-c000-pwm". I
will add it along with "sifive,pwm0" and repost as version 2.

Thanks for your comment.

- Yash
>
> >
> > - Yash
> >
> > On Wed, Aug 21, 2019 at 2:53 PM Yash Shah <yash.shah@sifive.com> wrote:
> >>
> >> Add the PWM DT node in SiFive FU540 soc-specific DT file.
> >> Enable the PWM nodes in HiFive Unleashed board-specific DT file.
> >>
> >> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> >> ---
> >>  arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 19 +++++++++++++++++++
> >>  arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  8 ++++++++
> >>  2 files changed, 27 insertions(+)
> >>
> >> diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> >> index 42b5ec2..bb422db 100644
> >> --- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> >> +++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
> >> @@ -230,6 +230,25 @@
> >>                         #size-cells = <0>;
> >>                         status = "disabled";
> >>                 };
> >> +               pwm0: pwm@10020000 {
> >> +                       compatible = "sifive,pwm0";
> >> +                       reg = <0x0 0x10020000 0x0 0x1000>;
> >> +                       interrupt-parent = <&plic0>;
> >> +                       interrupts = <42 43 44 45>;
> >> +                       clocks = <&prci PRCI_CLK_TLCLK>;
> >> +                       #pwm-cells = <3>;
> >> +                       status = "disabled";
> >> +               };
> >> +               pwm1: pwm@10021000 {
> >> +                       compatible = "sifive,pwm0";
> >> +                       reg = <0x0 0x10021000 0x0 0x1000>;
> >> +                       interrupt-parent = <&plic0>;
> >> +                       interrupts = <46 47 48 49>;
> >> +                       reg-names = "control";
> >> +                       clocks = <&prci PRCI_CLK_TLCLK>;
> >> +                       #pwm-cells = <3>;
> >> +                       status = "disabled";
> >> +               };
> >>
> >>         };
> >>  };
> >> diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> >> index 93d68cb..104d334 100644
> >> --- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> >> +++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
> >> @@ -85,3 +85,11 @@
> >>                 reg = <0>;
> >>         };
> >>  };
> >> +
> >> +&pwm0 {
> >> +       status = "okay";
> >> +};
> >> +
> >> +&pwm1 {
> >> +       status = "okay";
> >> +};
> >> --
> >> 1.9.1
> >>
