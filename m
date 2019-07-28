Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 303CD77FAB
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2019 15:45:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726060AbfG1Npd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Jul 2019 09:45:33 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:43657 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726046AbfG1Npd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Jul 2019 09:45:33 -0400
Received: by mail-ed1-f68.google.com with SMTP id e3so57069954edr.10
        for <devicetree@vger.kernel.org>; Sun, 28 Jul 2019 06:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2zp7VZgo7gRFXS38Tm1zr34TgnjCWRWdIBcQSP1RHuo=;
        b=sgfNebPeC/Q743cR44AI97kFXhFTzrd62akNIUz49b6KNl/WXGYYOeqSdxmh0X/GLa
         wM7T/wlg00lDg53ul8meQswE8zZnKUu0hMo3oTpdWMYCP7iTZQzrIWGJ1Lu7DxyfShXZ
         YJlZZD4ykunOFsEEGbmIvy54JnV8LFHgDVkAZJP0/JbjZXZpPi1crfosPIVkfR1cDvoR
         rlcpZdVTrADupOvaVtzIVOp+etlcKxs7HCE5WrP+Z8qJOHP67GnD/xQlnqYxD1esHmTT
         tKrYjefQkQNt8bWTBZQD+YYfpx9YyLJ41T+qv5F3cHXqADjYuxZ/nNIyxWSJ9r1FX0tX
         xO8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2zp7VZgo7gRFXS38Tm1zr34TgnjCWRWdIBcQSP1RHuo=;
        b=MKJE0FlSjj4cjBU+mprpL8LvYome3/rFmc+EhDxlf7LuUu5i61u3RUBFAT3gQLZ1IF
         TAsAR6s6Vkt4oB5uEnvl00fSXKfWjz8wZ2NMmB00Sj79Xge1vYZ45tpQhs+V0VdpdSJx
         5Tb8/8sMLkhQRg8ilRNHcTe/Szc5uTKLKvJr5nGKQcAonC1fR7wWZas8rvlii1XVT8Yr
         aGoJAZawHe6IDLQm0argxOan+/LsobNDq1/MqLSoh/00ZT9cNEtz4FQhOcMcYL6wpD32
         IXPZR2xBn87YJez9WnG767nvivykV7NCL5WDVgJJrCHDUA9WFo6UcI1uecm5OvbaVnRX
         J7Xg==
X-Gm-Message-State: APjAAAUxg1EsLHa9X3ECEKBe30TA1mGlRMTiEqStyEhvr+KuO8vIKcHd
        sn8m7tcOg1eZt5ve7EEugxPvia9NPMLPIw75oFE=
X-Google-Smtp-Source: APXvYqxZF5BQ5WWg803jI2sv2cFegFLpIDrN1WzdSX6Eb/wxCph/GHviMtFAJZwBBLp1CqEsXEX6fsVsEoCdCzQylno=
X-Received: by 2002:a50:ad0c:: with SMTP id y12mr89789151edc.25.1564321531714;
 Sun, 28 Jul 2019 06:45:31 -0700 (PDT)
MIME-Version: 1.0
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com>
 <20190722081157.rojxwc6qrsplpduo@salmiak> <CAEUhbmWLuFKdM0UhAvp2hjrDwYc5yxX91pZKOt9DHmb_oV-mJA@mail.gmail.com>
In-Reply-To: <CAEUhbmWLuFKdM0UhAvp2hjrDwYc5yxX91pZKOt9DHmb_oV-mJA@mail.gmail.com>
From:   Bin Meng <bmeng.cn@gmail.com>
Date:   Sun, 28 Jul 2019 21:45:20 +0800
Message-ID: <CAEUhbmWJe=wk9VV9dRAmVYUPVTogW6q9ULwm1xFxi5iLJOdSBw@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
To:     Mark Rutland <mark.rutland@arm.com>
Cc:     Anup Patel <Anup.Patel@wdc.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Yash Shah <yash.shah@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 22, 2019 at 9:35 PM Bin Meng <bmeng.cn@gmail.com> wrote:
>
> Hi Mark,
>
> On Mon, Jul 22, 2019 at 4:18 PM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Fri, Jul 05, 2019 at 01:11:01PM +0800, Bin Meng wrote:
> > > On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
> > > >
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > > > > Meng
> > > > > Sent: Friday, July 5, 2019 9:23 AM
> > > > > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > > > > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > > > > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > > > > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > > > > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > > > > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> > > > >
> > > > > Per device tree spec, the "status" property property shall be present for
> > > > > nodes representing CPUs in a SMP configuration. This property is currently
> > > > > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
> > > >
> > > > We don't need explicit "status = okay" for SOC internal devices
> > > > (such as PLIC, INTC, etc) which are always enabled by default.
> > > >
> > >
> > > Yes, that's fine because those device bindings do not require them.
> > >
> > > > Absence of "status" DT prop is treated as enabled by default.
> > > >
> > >
> > > But per current device tree spec, "status" in cpu node is mandatory.
> > > (spec uses "shall"). Missing it is a spec violation.
> >
> > I think this is a spec bug (or at least misleading wording in the spec).
> >
> > IEEE 1275 says (for status as a generic property):
> >
> >   The absence of this property menas that the operational status is unknown or
> >   okay.
>
> Yes, I checked IEEE 1275 doc, and it indeed says like you mentioned.
>
> However, it says "unknown" _or_ "okay", yet provides a definite value.
>
> >
> > ... and I think it's fine to treat that the same as an explicit "okay" here, as
> > we do generically in Linux.
>
> So what Linux does is a defacto interpretation?
>
> If everyone agrees this is a device tree spec bug, I will submit the
> patch to devicetree spec then.

Any comments from the device tree folks? thanks!

Regards,
Bin
