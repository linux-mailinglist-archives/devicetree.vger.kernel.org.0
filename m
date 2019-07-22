Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F29927012A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 15:35:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728793AbfGVNfd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 09:35:33 -0400
Received: from mail-ed1-f67.google.com ([209.85.208.67]:42495 "EHLO
        mail-ed1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725989AbfGVNfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 09:35:33 -0400
Received: by mail-ed1-f67.google.com with SMTP id v15so40661265eds.9
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2019 06:35:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4vYOhRUIOXK8MxeH6VO2LIDecP5NJQuQCLOWgY0ikkY=;
        b=vT6f3KyR7SWQfJU+JjW0bD+i1GdN+Hou3NF2bgXFE4xWV+66W2o9afZD0oCrhYCBAd
         BB8HwuNqRRL0LIhmlREUYmHmdmUot6jul7CvRKbn3dY8FYezwXkl458Sa/BQrAUIR1CC
         nxrABm7uvEpT6HgzMzSnPeVRWJ2mAgtMeci2i72sXMQl3mVmttJvhC+x/kSaHnZ+rxMX
         f613igesJMtQ2sOSIdeEb8ikmk0o9delO8z8VbufLjDFjsE38AnJJCYW93othlF0WdA7
         W9JhZ0fmNGZlTHJvdIg9jQjvoOMJH0pi7a5nFqJzt77J0prfLP8RY37uUAZeVdkavzYP
         oYwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4vYOhRUIOXK8MxeH6VO2LIDecP5NJQuQCLOWgY0ikkY=;
        b=hK58wuxaapajNc92Y3g4F1yamR8DbWyNdjkXwClPkt0UEzJ593jIrm9z0Se6bl42f4
         51u994uQX+1LEmBbPXvA01Je57UNgVJEnxEqVQQq8K0yN9GDdjY2kxwhDVmJHzhpiqlg
         UcfprMMLdYcm3W3KtCyLSwz/wTKEh6HnA8fLpbQh1xrxZxxp+rrMtSJYcIaMSe/2al2w
         9fpSmtsYyE/NzCuSPAhuBlDcxXMFFK/pFYnYDgu+LgKLKV0pLvn8cV45nZqKquAeDu11
         Vc/hQq4T0xSf856+4FpW3rcTYuHETMSrx1TOEbqqbSaJapumn5c8/VvkVqVx7xLr6MqJ
         DRQQ==
X-Gm-Message-State: APjAAAWQ2aUU04c/S0z2bWYUc6JQdqkrMpt9BbiikdfXb0P+nz9sVKNP
        p9h1wMb4k+znXvJf7sszuvBSqK7jfqjr/LSCB7U=
X-Google-Smtp-Source: APXvYqwcmc1Kv5pdMy7S/ZSIh5jJEeiDzZ6cpPSLXlqFRC1oZ2DNlVgHMiZj2fILHLCI8wng6IjNkvTTYLRCn0kyKHs=
X-Received: by 2002:a17:906:499a:: with SMTP id p26mr48422774eju.308.1563802531837;
 Mon, 22 Jul 2019 06:35:31 -0700 (PDT)
MIME-Version: 1.0
References: <1562298766-25066-1-git-send-email-bmeng.cn@gmail.com>
 <MN2PR04MB60611BD1B89E3D76ABFBE94A8DF50@MN2PR04MB6061.namprd04.prod.outlook.com>
 <CAEUhbmWdLoRU1QGVZtwmymtYyQw43UMR8WDB17rJRmvXGbuBTg@mail.gmail.com> <20190722081157.rojxwc6qrsplpduo@salmiak>
In-Reply-To: <20190722081157.rojxwc6qrsplpduo@salmiak>
From:   Bin Meng <bmeng.cn@gmail.com>
Date:   Mon, 22 Jul 2019 21:35:20 +0800
Message-ID: <CAEUhbmWLuFKdM0UhAvp2hjrDwYc5yxX91pZKOt9DHmb_oV-mJA@mail.gmail.com>
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

Hi Mark,

On Mon, Jul 22, 2019 at 4:18 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Fri, Jul 05, 2019 at 01:11:01PM +0800, Bin Meng wrote:
> > On Fri, Jul 5, 2019 at 11:59 AM Anup Patel <Anup.Patel@wdc.com> wrote:
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: linux-riscv <linux-riscv-bounces@lists.infradead.org> On Behalf Of Bin
> > > > Meng
> > > > Sent: Friday, July 5, 2019 9:23 AM
> > > > To: linux-riscv <linux-riscv@lists.infradead.org>; devicetree
> > > > <devicetree@vger.kernel.org>; Rob Herring <robh+dt@kernel.org>; Mark
> > > > Rutland <mark.rutland@arm.com>; Albert Ou <aou@eecs.berkeley.edu>;
> > > > Paul Walmsley <paul.walmsley@sifive.com>; Palmer Dabbelt
> > > > <palmer@sifive.com>; Yash Shah <yash.shah@sifive.com>
> > > > Subject: [PATCH] riscv: dts: fu540-c000: Add "status" property to cpu node
> > > >
> > > > Per device tree spec, the "status" property property shall be present for
> > > > nodes representing CPUs in a SMP configuration. This property is currently
> > > > missing in cpu 1/2/3/4 node in the fu540-c000.dtsi.
> > >
> > > We don't need explicit "status = okay" for SOC internal devices
> > > (such as PLIC, INTC, etc) which are always enabled by default.
> > >
> >
> > Yes, that's fine because those device bindings do not require them.
> >
> > > Absence of "status" DT prop is treated as enabled by default.
> > >
> >
> > But per current device tree spec, "status" in cpu node is mandatory.
> > (spec uses "shall"). Missing it is a spec violation.
>
> I think this is a spec bug (or at least misleading wording in the spec).
>
> IEEE 1275 says (for status as a generic property):
>
>   The absence of this property menas that the operational status is unknown or
>   okay.

Yes, I checked IEEE 1275 doc, and it indeed says like you mentioned.

However, it says "unknown" _or_ "okay", yet provides a definite value.

>
> ... and I think it's fine to treat that the same as an explicit "okay" here, as
> we do generically in Linux.

So what Linux does is a defacto interpretation?

If everyone agrees this is a device tree spec bug, I will submit the
patch to devicetree spec then.

Regards,
Bin
