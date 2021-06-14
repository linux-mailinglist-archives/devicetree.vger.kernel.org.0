Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 61A003A6786
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 15:14:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232825AbhFNNQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 09:16:41 -0400
Received: from mail-wr1-f51.google.com ([209.85.221.51]:46824 "EHLO
        mail-wr1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232818AbhFNNQk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 09:16:40 -0400
Received: by mail-wr1-f51.google.com with SMTP id a11so14496595wrt.13
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 06:14:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XaqFjDhdi9dIScXFDsKNQBeWGz1HwBH0TF+QCGhEDg4=;
        b=HwYvbf7w8uywUzYEqLUcnCZiAoF1NoeXpwx56KYax2Bqehbxafzv0waHhZPevrg34z
         nMVIV1K2SC/msQ0BkfdJVwOnqO7JGAR3knwH8dySAyCL6llJHF/ZBeBexlWz9Rj1w6ME
         /qsPwb9mSuOs1YXOWxV6d8fSl67TpC0S6DAu1duEPhbxAYsXpUCUufv180Y56LA+2UA2
         7I28bWDD3lZPoygb9Mue5oUHuN2FeGyqZyD+Vg3QeMdAYFkhGqQ0om3jqjWlhXIcRStK
         cmxS9cTwwQWja5rRwcthhKqHsu/h3SifiTTuP5aWrznboqD4461X5ez91LokOV7+f/vd
         X/tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XaqFjDhdi9dIScXFDsKNQBeWGz1HwBH0TF+QCGhEDg4=;
        b=EsCOrzz48xv5RIccMnQx6Me3w6kIgGw+jVuHMCyQRg1m51HCoayUZ3I202IuvOACIB
         oSo1Mu9eWJIuLv/qqUHHALmTtgpvAYCYh7NI1SMQxgvfvNRb4NXqpE2GJ9cf4upORerQ
         w70iNMtYHYRFGkgerLdrSQ9qMvfUXYBO4XT7xGNhHvl4eaFK/W9wVvlQegn/aDP6wvRB
         O8t0CGIreggMz1lMMtvqQibZ9vsnpuSo6gFyM+NfMHZ7QVWf0IaSxrcBIOdlbsmL1uQ4
         UORumAs3WwE+995JAfEL9XxwXGko7vXMfGbf6CoZu/4IQClWhlStIi/+okstz8megWha
         VHdA==
X-Gm-Message-State: AOAM532PwMv0HrLDldUIkZse685kH4QQDEP7anOblWkeLEHNdGXaEBEB
        0JGNIIqRzCfk+VGZ7YiHggtujtf/LmV4HX2hEkq6HQ==
X-Google-Smtp-Source: ABdhPJwaIml99G0JVblKb/bJU6ZJxhC4NnG3pECobXr6p0v0dm5rhMCSciB3jhJPIU6+0Ueq2o9rrQ5zrI4HAOZY5mY=
X-Received: by 2002:a5d:6b81:: with SMTP id n1mr18528505wrx.144.1623676416729;
 Mon, 14 Jun 2021 06:13:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210612160422.330705-1-anup.patel@wdc.com> <20210612160422.330705-6-anup.patel@wdc.com>
 <878s3et831.wl-maz@kernel.org> <CAAhSdy2e9BsgtTL3ETRC-dvHW9hgKmgRi87Gsk+vUT-kMsJ4NQ@mail.gmail.com>
 <87a6nsrdkm.wl-maz@kernel.org>
In-Reply-To: <87a6nsrdkm.wl-maz@kernel.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 14 Jun 2021 18:43:25 +0530
Message-ID: <CAAhSdy0jZTqZ+zTazpQLeCnbAHr99t40vEa-_GD0_UjBZsXWzg@mail.gmail.com>
Subject: Re: [RFC PATCH v1 05/10] irqchip: Add ACLINT software interrupt driver
To:     Marc Zyngier <maz@kernel.org>
Cc:     Anup Patel <anup.patel@wdc.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Atish Patra <atish.patra@wdc.com>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 14, 2021 at 3:08 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On Sun, 13 Jun 2021 13:25:40 +0100,
> Anup Patel <anup@brainfault.org> wrote:
> >
> > On Sun, Jun 13, 2021 at 3:11 PM Marc Zyngier <maz@kernel.org> wrote:
> > >
> > > I'm sorry, but this really isn't an irqchip driver. This is a piece of
> > > arch-specific code that uses *none* of the irq subsystem abstractions
> > > apart from the IRQCHIP_DECLARE() macro.
> >
> > Yes, I was not sure we can call it IRQCHIP hence the RFC PATCH.
> >
> > Both ACLINT MSWI and SSWI are special devices providing only IPI
> > support so I will re-think how to fit this.
>
> It depends on how you think of IPIs in your architecture.
>
> arm64 (and even now 32bit) have been moved to a mode where IPIs are
> normal interrupts, as it helps with other things such as our pseudo
> NMIs, and reduces code duplication. MIPS has done the same for a long
> time (they don't have dedicated HW for that).

RISC-V is also moving in a similar direction with the RISC-V advanced
interrupt architecture (AIA) specification which aims at defining an
interrupt controller having MSI support, virtualization support and
scalable for a large number of CPUs. The RISC-V AIA treats IPIs as
normal interrupts.

The RISC-V ACLINT based IPI support is for RISC-V systems which
only need a simple interrupt controller without MSI support and
virtualization support. These systems will not implement RISC-V AIA.

Regards,
Anup

>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.
