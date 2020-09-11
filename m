Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ED3B265CB0
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 11:43:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725776AbgIKJnj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 05:43:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725710AbgIKJnf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 05:43:35 -0400
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com [IPv6:2607:f8b0:4864:20::d44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B34BC061756
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 02:43:35 -0700 (PDT)
Received: by mail-io1-xd44.google.com with SMTP id m17so10379552ioo.1
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 02:43:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rNzl7xSh7GeYDHs6F5Ee65tcB8SqNtnecrQQkoWodP0=;
        b=kYYtjn4J6Wg5q1cke3GsLsCSOoUQNBxGd/bYFJ65ZjZzFRei0UT3FxD5Z1/2fTN5c2
         sup6bN9bMyISt6qdA8xiEak/Iaor27vcznZQ2oe5rwYHes77LXMtCrDfSqJKY1Kmq2wV
         tK2wDoOsfpJfNH19YLo6Kua3O9Mxzid9qqAG8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rNzl7xSh7GeYDHs6F5Ee65tcB8SqNtnecrQQkoWodP0=;
        b=kSTz+F7OiCUTquPu0hVtezmun6Jiixi08TvzTh5VXMrD/XwQ3T+A/MREZ4Rh5j2wIX
         eJT63u2RtgQYk7W10HlXEDXBe2XECwh1Qv2ZMS8NvNj7lLIixWGx4/pdgF3qcKYPW7jM
         uvfzoHyhhbgB/3o+ApGorMkSCH/Qc5mZEeQG7mabkn1F8qfjNVlVmqgb1BPXFSN/kmHA
         9bnAq18P14BpecftftCJO3Ylyh0VvSUis09zNUk6sfxMWxFS44fsPB5PB2MbVxURFVEM
         8MoE672FY3ZKhPpcja/bOQhYd61qY/X8UdilkYZBNbpS99zySNy/+Jag2MmI3ezWe4dR
         usfQ==
X-Gm-Message-State: AOAM530p8o3LWMhaj8wBDjsJLmQJNg91b4o0Q2b6r5OmB0VdwWYDbW+G
        +5RL7rvXfA/9NsGDj03Rh0S9mwUtdtjtuaIHK8u6jA==
X-Google-Smtp-Source: ABdhPJzoiPOjS7GczBk4qpUIiLCY5BgKwWxC1Z2daUO/hLybds7C4dJoOq5cRA1EXajuX3+ksvlemLAahJbJaPldn9Y=
X-Received: by 2002:a05:6638:1643:: with SMTP id a3mr1105122jat.4.1599817412402;
 Fri, 11 Sep 2020 02:43:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200910084304.3429494-1-hsinyi@chromium.org> <9ca1b7c0-9fec-27b7-ae08-c00613c3004c@gmail.com>
 <CAJMQK-g+pPR6ZrSJHPPcR9Tqw_4QjuMyUqML-RoPOjfnYZ=YGA@mail.gmail.com>
In-Reply-To: <CAJMQK-g+pPR6ZrSJHPPcR9Tqw_4QjuMyUqML-RoPOjfnYZ=YGA@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 11 Sep 2020 17:43:06 +0800
Message-ID: <CAJMQK-gOqTJGgbY3XjOM112vyDQVKKOD3k2XEnJwji2b1TJhRg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] arm64: dts: mt8173: Set uart to mmio32 iotype
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Eddie Huang <eddie.huang@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 10, 2020 at 9:40 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Thu, Sep 10, 2020 at 6:25 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
> >
> > Hi,
> >
> > On 10/09/2020 10:43, Hsin-Yi Wang wrote:
> > > Set uart iotype to mmio32 to make earlycon work with stdout-path.
> > >
> > > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > > ---
> > >   arch/arm64/boot/dts/mediatek/mt8173.dtsi | 8 ++++++++
> > >   1 file changed, 8 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > > index 5e046f9d48ce9..ca6ea71f5f435 100644
> > > --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > > +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> > > @@ -613,6 +613,8 @@ uart0: serial@11002000 {
> > >                       interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_LOW>;
> > >                       clocks = <&pericfg CLK_PERI_UART0_SEL>, <&pericfg CLK_PERI_UART0>;
> > >                       clock-names = "baud", "bus";
> > > +                     reg-io-width = <4>;
> >
> > Why do we need that, we have
> > device->port.iotype = UPIO_MEM32;
> > in early_mtk8250_setup(). That should do the job already.
> >
> >
>
> But if we don't change in dts, we would see
> [    0.000000] earlycon: mtk8250 at MMIO 0x0000000011002000 (options '115200n8')
> instead of
> [    0.000000] earlycon: mtk8250 at MMIO32 0x0000000011002000 (options
> '115200n8')
>
> Perhaps we should move the pr_info part in earlycon_init() after
> match->setup(). Since setup may change iotype. What do you think?
>

The series is sent here: https://lore.kernel.org/patchwork/patch/1304227/

Thanks.
