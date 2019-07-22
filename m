Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 17FAB6FAD9
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 10:02:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726339AbfGVICR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 04:02:17 -0400
Received: from mail-ed1-f65.google.com ([209.85.208.65]:37732 "EHLO
        mail-ed1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726236AbfGVICQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 04:02:16 -0400
Received: by mail-ed1-f65.google.com with SMTP id w13so39789509eds.4
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 01:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9Mr2lXDff0lWl4Oqb0zskCrpJHB3nAzy/iWfb+JzHRg=;
        b=dXUYR9n3+f8L2eN97a1+qqhDgw3U3vSVikqYWbYvVYZtv6s9K1ZBTlKPBOLw7kYoAa
         V/2VI+EpUIFyS+tJJBs0tfElcRfOzateyJ/Ccr5d5Ne/o+JlDXwznlDbU7yF20TiyDK4
         nx7gf8igz7cQLsShnt/cgC96G+8GWnqmzV3cmpkxf4jQF7r6ds6NUPTa/OpJDI8HYNnD
         gBhpXA0GOfLdV3+TKY31dFdZXULRthpD/+9oGp1cjwz3dYBrbzy5BomaquuFB+L6RX8a
         7b01QqqVqhKiGELSTRdt+lWh2p9Soo2d77hATkoW22hkvVciAAEZcjSKvDm63Xeam2ds
         FlaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9Mr2lXDff0lWl4Oqb0zskCrpJHB3nAzy/iWfb+JzHRg=;
        b=taQrnpzRgc9eX/IZQjFHwtWQ9GDWYbnCDAp3Rb/8QvisuVYgETQdd7vFvmsR/uKKdA
         7lCRqAWOzR+1FGQtrU8EBgb4HoZkggZlAwfWpcEH9j7g3gYvcFRdzjg3TqwCj68wdRme
         4oV25SOY93vg0ECtHd6/zZYX4CC6FDwK0jHDc1povR2/kAfxfzQIWqg5W1ywmd/ZYQAS
         BaFSDYmwK3UwkGd8TirmAbnIPGAMpFbxgnzC1/XBSKTjwzDxzZImUEOoxRGipCs2jV0o
         kDYzxZ65b01W17n9IgdbHW9Dqdt4R1ZMpNhRXvawk4tElWQoGTJBuDmoQYWr6Zjr7uuD
         qKTg==
X-Gm-Message-State: APjAAAW2ctHiBmmcPQ5vbOW0xSsajU0YuxQh8AvtiIWfXfBBUbVjxlYm
        BEFcPR2bX1j/GShTYxJnrOexQ0rzUy19rXbBXoI=
X-Google-Smtp-Source: APXvYqxVb4j/pK7lQkG3nN5g+e254vhTdNkB8Z78w2sfgUfvMWSJbq4pUkAXHT0nNm5Hub6BqY7u/RfZeo+HumOqsbo=
X-Received: by 2002:a50:ad0c:: with SMTP id y12mr57892197edc.25.1563782534815;
 Mon, 22 Jul 2019 01:02:14 -0700 (PDT)
MIME-Version: 1.0
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
In-Reply-To: <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
From:   Bin Meng <bmeng.cn@gmail.com>
Date:   Mon, 22 Jul 2019 16:02:03 +0800
Message-ID: <CAEUhbmU99JqdVXK4KKaRg+QSO=5tMPyet-dCmayD_fRx4nbCEg@mail.gmail.com>
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

On Fri, Jul 5, 2019 at 1:11 PM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
> >
> >
> >
> > > -----Original Message-----
> > > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > > Meng
> > > Sent: Friday, July 5, 2019 9:23 AM
> > > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> > >
> > > Per device tree spec, the "status" property property shall be present for
> > > nodes representing CPUs in a SMP configuration. This property is currently
> > > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
> >
> > We don't need explicit "status = okay" for SOC internal devices
> > (such as PLIC, INTC, etc) which are always enabled by default.
> >
>
> Yes, that's fine because those device bindings do not require them.
>
> > Absence of "status" DT prop is treated as enabled by default.
> >
>
> But per current device tree spec, "status" in cpu node is mandatory.
> (spec uses "shall"). Missing it is a spec violation.

Ping?

Regards,
Bin
