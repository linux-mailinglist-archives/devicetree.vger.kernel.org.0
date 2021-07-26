Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6C763D5CB3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 17:12:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234844AbhGZObp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 10:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234824AbhGZObo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 10:31:44 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9E2EC061764
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 08:12:11 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id l18so3845457wrv.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 08:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SEfxyBBsdqfeyLFZ2nbpK//+jCa1qE/9+zQ9LwwPbhQ=;
        b=H0hDtd3aCHUHBPDSloms35IgrhOF5ZtJrLGWMgoKlxm537RxzcsL1cQz8j97DDsHh9
         ba257rXMv+VCd4/qPOgFYNJLD5tuoWUBjtD6sPNOQALBupambb2XeVKk8ONsoeSfbHT8
         P0og8XIFWCRosGS0qbsF+IHvXILMCixoRzO/T9RqzuxSpCkiIkl0AQ+0BEWhxNPl9ooe
         zIyiJ1/swh7zXH7IE/GtocToTLAeZLfA2fmi2YZtTCR20VpKrQO9S4afpFoQHgp/OGXl
         zQ5uqrgZBrSXyRhgPl2HFBnkIiq1ONVTxN+RJ0GkiL6WB3NZz+wk2OG+msbmpicBJyPU
         xevQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SEfxyBBsdqfeyLFZ2nbpK//+jCa1qE/9+zQ9LwwPbhQ=;
        b=VoHUlRm85JR+fRAdcdj1Y9NsCJ6ly7pqMtBXSjtiVf0aS6OxE6tv04HrVOntgtrB0V
         u8LQphec2wfKU0qFatgsNjqmQDd61r7GA9uYlih2gYNfo3iK+E6xfFqeH/IORSThf9hE
         gUo08FrzFd79yDJl+Thlp3siaGfVfwJGDsQyVLnkHCCVZRdsO9Skt7d6oTLyFaZwYEZn
         cXUYHzgF/Ca+Q8sUv1pBHxoC/wS5ygq/BAOp+CRrWgRQMq/NxWUqnXOSstJDs4AQ088q
         LlF3q422RXXbMeq4hALL6/MYN42mRXiBWOh0I8HaSHgCQo+1iykW60zXQI0iITIkaIg4
         I3EQ==
X-Gm-Message-State: AOAM532C/lD+EZG/Kod9yoSGod/hn2LYzSj7cXVyobJMkF/F4Lc25k42
        namPoRjVBlOKb7XFzPT0JOz1399fEMUyamS3tcWFkA==
X-Google-Smtp-Source: ABdhPJy2FXmilr8kKAcECuQtFjx9dz7AcFI/haY3JRbMnk74CbCDdgkdvTEDD0AbKksuMyT9HXc0AHbJKw8GCdi7V4k=
X-Received: by 2002:a5d:640f:: with SMTP id z15mr11915041wru.325.1627312330294;
 Mon, 26 Jul 2021 08:12:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210618123851.1344518-1-anup.patel@wdc.com> <CAAhSdy3E56j9XBfNr93AdW62mEx40F9F4-SYbNEFdkKA2BWRqA@mail.gmail.com>
 <87im0xdu2a.wl-maz@kernel.org>
In-Reply-To: <87im0xdu2a.wl-maz@kernel.org>
From:   Anup Patel <anup@brainfault.org>
Date:   Mon, 26 Jul 2021 18:31:01 +0530
Message-ID: <CAAhSdy1rA9e2iCJWeVEQwKTRfTZZaRZVcMe1o8wMnFiWOOGW3w@mail.gmail.com>
Subject: Re: [RFC PATCH v2 00/11] Linux RISC-V ACLINT Support
To:     Marc Zyngier <maz@kernel.org>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        Palmer Dabbelt <palmerdabbelt@google.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Atish Patra <atish.patra@wdc.com>,
        Alistair Francis <Alistair.Francis@wdc.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Anup Patel <anup.patel@wdc.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marc,

On Mon, Jul 26, 2021 at 8:02 PM Marc Zyngier <maz@kernel.org> wrote:
>
> On Mon, 26 Jul 2021 13:45:20 +0100,
> Anup Patel <anup@brainfault.org> wrote:
> >
> > Hi Marc,
> >
> > I have taken the approach of IPI domains (like you suggested) in this series.
> >
> > What do you think ?
>
> I have commented on the irqchip driver.
>
> As for the RISC-V specific code, I'll let the architecture maintainers
> look into it. I guess the elephant in the room is that this spec seems
> to be evolving, and that there is no HW implementation (how this
> driver maps on SF's CLINT is anybody's guess).

The SiFive CLINT is a more convoluted device and provides M-level
timer functionality and M-level IPI functionality in one MMIO device.

The RISC-V ACLINT specification is more modular and backward
compatible with the SiFive CLINT. In fact, a SiFive CLINT device
can be viewed as a ACLINT MSWI device + ACLINT MTIMER device.
This means existing RISC-V boards having SiFive CLINT will be
automatically compliant to the RISC-V ACLINT specification.

Here's the RISC-V ACLINT spec:
https://github.com/riscv/riscv-aclint/blob/main/riscv-aclint.adoc

The RISC-V ACLINT spec is quite stable and we are not seeing any
further changes hence I sent out RFC PATCHes to get feedback. The
RISC-V ACLINT spec will be frozen before 2021 end (i.e. before next
RISC-V summit).

The Linux NoMMU kernel (M-level) will use an ACLINT MSWI device
for IPI support whereas the regular Linux MMU kernel (S-level) will
use an ACLINT SSWI device for IPI support.

The ACLINT SWI driver is a common IPI driver for both ACLINT
MSWI (Linux NoMMU) and ACLINT SSWI (Linux MMU). In fact,
the ACLINT SWI also works for IPI part (i.e. MSWI) of SiFive CLINT.

Regards,
Anup

>
>         M.
>
> --
> Without deviation from the norm, progress is not possible.
