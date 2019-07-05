Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 257796007C
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2019 07:11:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725763AbfGEFLP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Jul 2019 01:11:15 -0400
Received: from mail-ed1-f66.google.com ([209.85.208.66]:39492 "EHLO
        mail-ed1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725681AbfGEFLP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Jul 2019 01:11:15 -0400
Received: by mail-ed1-f66.google.com with SMTP id m10so7082007edv.6
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2019 22:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5nGqMOGRrREtq0FFSgC4UXuJiabbKTxeO2VC6p8bpug=;
        b=VH8WWlPYo7hQxS/xuOa2+ppxz4qfV+ZRE8ktONXDASmv+Zs7MSDdjZlSMTlaAi8E2R
         tXnUsRrzMg43HKo8Dj2YmUJQ2Tvl5TViA8CmJ6p//374KNqRkdhYCVqcoN4cCcQRPP9o
         MS5JmPvBTRN5sI0MHYDULjJH3YPwyFk9SL+jFeA2C97VlB//pWN2T3F8ntuVvn2dRNDF
         PRt5LFuouTuJl7xT+ETi20L6OUpglyhvIc5Ba185ynFJrVKjkMYcdaddXHWp+Nfx9lto
         GMxohs5UlpWOrTW9edyBNzp1VqHeNxMaAVc7eIgXiwxAmryfXgIiYpDL8Do2U/dtqxz3
         CO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5nGqMOGRrREtq0FFSgC4UXuJiabbKTxeO2VC6p8bpug=;
        b=GlLsYGj5f019Aovtf+x8/BNnh4bYW+yjyE8b43vUKKzNGV1F1R449G8sQssu2pEi1n
         UKTTXtLrz2upVfgL8f4wA3aOgovGiDdOFotiB2qeuzI0mccwFwzD7AqyPXDaH447/Z0m
         6RgD5j2cHc+aW3iwrHbgG+CLw31GLFUpAb57I3TDs1isJiITaMFTHieNA+KYK2y02vV4
         tjlz9BwIXqtJZhVxSLvC75teUYRYZVnB7EgO+iQ4sXLcM3OKQNuwt2JLzsfyJWRmyNjV
         L906vsK61fWBYPDflJLz9V8K8i13nyAzkZFY3RdsHMOFxJF89q2pSapoGAIz+Wf1Zzd+
         NUyw==
X-Gm-Message-State: APjAAAX1P0gRgbUZuvUGpt6ReP8EqgQE38oBm64Mop+Tq6a/8Z3mEkfO
        o6PbzwBspgHIOAmOlgG9qThk2vKjT4GAPMaIl1M=
X-Google-Smtp-Source: APXvYqwhEclyD5r/MuRZrPMCFY8QPPhwXUvp0u0r3Z4aoXRwYr7yxzjq8rl2+VmBwY8yKsqS4N/RxGQughfvw+qdUWQ=
X-Received: by 2002:a17:906:fcb8:: with SMTP id qw24mr1572300ejb.239.1562303472975;
 Thu, 04 Jul 2019 22:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com> <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
From:   Bin Meng <bmeng.cn@gmail.com>
Date:   Fri, 5 Jul 2019 13:11:01 +0800
Message-ID: <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
To:     Anup Patel <Anup.Patel@wdc.com>
Cc:     linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
>
>
>
> > -----Original Message-----
> > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > Meng
> > Sent: Friday, July 5, 2019 9:23 AM
> > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> >
> > Per device tree spec, the "status" property property shall be present for
> > nodes representing CPUs in a SMP configuration. This property is currently
> > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
>
> We don't need explicit "status = okay" for SOC internal devices
> (such as PLIC, INTC, etc) which are always enabled by default.
>

Yes, that's fine because those device bindings do not require them.

> Absence of "status" DT prop is treated as enabled by default.
>

But per current device tree spec, "status" in cpu node is mandatory.
(spec uses "shall"). Missing it is a spec violation.

Regards,
Bin
