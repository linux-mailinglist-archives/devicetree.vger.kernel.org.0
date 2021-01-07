Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03A8A2ED768
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 20:22:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728240AbhAGTWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 14:22:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726064AbhAGTWc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 14:22:32 -0500
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B617C0612F4
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 11:21:52 -0800 (PST)
Received: by mail-il1-x12c.google.com with SMTP id v3so7836227ilo.5
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 11:21:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LMmtmUjaLK/oDzSRX4xY8K8bKTjtoJFYEpkuZNYnKbQ=;
        b=ksz//DOqHNryrTsAi7EMMvOGgDzeULjdCyZ3SbRAeA5SnTu43DmAClxdZ0xV1w7zds
         4XFVyrrtuIukc7yMVDFBiT0AKZVYbOTic5nPP3aYhkvgjW1itYFXu84cYQOGhjLZHPTL
         oOzl5wk9VTu27v/FCPJEjnAMkqEENPk9YWJps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LMmtmUjaLK/oDzSRX4xY8K8bKTjtoJFYEpkuZNYnKbQ=;
        b=F0poXJ5s6qyCNUwJGzWXudFYkIXYRrYxONUra0FsCQ6oJsCaDurXeIjkpEma5BXmEM
         EF1T3qZNC+nDa9G9zqJPMoDjZ+qLRMLkh+d7puaO5NWz5whGJlvP3Ykh/D9EewhOgwxj
         yOskIBiqj0/dkh7iAEuEIe/w8V7g2MsDY4Tli3MIFzW6kui3EUzDKH7gukl3hd9ooPjC
         omXDdA4VzZ/siEcHvZxQrG8AgELJ+NaOV9sXyLY1bOa6B5z8j35zT7YCSWD2UeWMmmNg
         IyuxRjcgAQKPwKMuNE+ir2zrNobHTIrx+2Dm41qRvqaM75wR//rzg0FJsoI/ABDsOwBf
         eBTw==
X-Gm-Message-State: AOAM533P+pO21FhD3EBXUEocxkMIhSPAJAPH1Z+AE+QsvMGHL0lCGKb7
        OtOsi6zGkTY1KQdxkIf0gDyDhHI9HBfjxvSjreat
X-Google-Smtp-Source: ABdhPJwOVkAYu414Omcy7kfayKuKewrcr2YcJxv0GFvSThHdqUxeL+ide93PZe552keZuBX+rkRMgj7/mT1PeJLzyAY=
X-Received: by 2002:a92:204:: with SMTP id 4mr381598ilc.79.1610047311610; Thu,
 07 Jan 2021 11:21:51 -0800 (PST)
MIME-Version: 1.0
References: <20201204085835.2406541-1-atish.patra@wdc.com> <20201204085835.2406541-2-atish.patra@wdc.com>
 <4655c810-e406-f807-d2dc-1b2e0198d945@microchip.com>
In-Reply-To: <4655c810-e406-f807-d2dc-1b2e0198d945@microchip.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Thu, 7 Jan 2021 11:21:40 -0800
Message-ID: <CAOnJCUKMNzzk-RxxGJQCqS_9HjdZnOFSDu1FG_oWeKh6Jzq+sA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] RISC-V: Add Microchip PolarFire SoC kconfig option
To:     Cyril.Jean@microchip.com
Cc:     Atish Patra <atish.patra@wdc.com>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Bin Meng <bin.meng@windriver.com>,
        Daire McNamara <Daire.McNamara@microchip.com>,
        Anup Patel <anup@brainfault.org>,
        Anup Patel <anup.patel@wdc.com>, Conor.Dooley@microchip.com,
        Rob Herring <robh+dt@kernel.org>, Ivan.Griffin@microchip.com,
        Albert Ou <aou@eecs.berkeley.edu>,
        Alistair Francis <alistair.francis@wdc.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv <linux-riscv@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jan 7, 2021 at 3:40 AM <Cyril.Jean@microchip.com> wrote:
>
> Hi Atish,
>
> On 12/4/20 8:58 AM, Atish Patra wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > Add Microchip PolarFire kconfig option which selects SoC specific
> > and common drivers that is required for this SoC.
> >
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Reviewed-by: Bin Meng <bin.meng@windriver.com>
> > Reviewed-by: Anup Patel <anup@brainfault.org>
> > ---
> >   arch/riscv/Kconfig.socs | 7 +++++++
> >   1 file changed, 7 insertions(+)
> >
> > diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> > index 8a55f6156661..148ab095966b 100644
> > --- a/arch/riscv/Kconfig.socs
> > +++ b/arch/riscv/Kconfig.socs
> > @@ -1,5 +1,12 @@
> >   menu "SoC selection"
> >
> > +config SOC_MICROCHIP_POLARFIRE
> > +       bool "Microchip PolarFire SoCs"
> > +       select MCHP_CLK_PFSOC
> Can you change MCHP_CLK_PFSOC to MCHP_CLK_MPFS to align with the v2
> clock driver?

Sure. Will do that.

> > +       select SIFIVE_PLIC
> > +       help
> > +         This enables support for Microchip PolarFire SoC platforms.
> > +
> >   config SOC_SIFIVE
> >          bool "SiFive SoCs"
> >          select SERIAL_SIFIVE if TTY
> > --
> > 2.25.1
> >
> Regards,
>
> Cyril.
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv



-- 
Regards,
Atish
