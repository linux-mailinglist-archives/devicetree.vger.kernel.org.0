Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 058FC263F31
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 09:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726996AbgIJH6V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 03:58:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726816AbgIJH6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 03:58:13 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26336C061756
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 00:58:13 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id u20so4842013ilk.6
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 00:58:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tai8qFjVTbhhMUuPlONXFVjFgWeR4r6/lSqQDCLq2Ok=;
        b=HHQ0KEJWk1ralebxe9GR2V01kcrVKprxD80d3zhG0zDJlDbWa9ZKlHRw5Ek9+YgTFE
         g4rJm2dV+c95CN7Fc7NsqQh6fzmVSt1VL9/9QhLdmRBciKqnWJMIfwDXYUBZMkwHcVI6
         qzq8M89gNp9EI0BZB84MzWbdZmibXau0F4SCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tai8qFjVTbhhMUuPlONXFVjFgWeR4r6/lSqQDCLq2Ok=;
        b=Lwko9ICa4New30r+NnLtLtgGzRjEOEK2KG7Js6e3hMSzLXNIeWfsun2AYZRzeipu2B
         w/kR8+nwl2Ot3AAm0EuBJT5aEzEiKByuFV14qyr9lopasdyBzImiVWxF0w5Y+ZuOPaAJ
         fMTuLFwhbXNCsFzjrlin2AIBezPjvkGoUL/KidRxH2+HXZzJ8JvzP9r0J15Kzl3x4Xa7
         CC0BN+tz/H4oGUHPMHeUsGxNSaUuxH76gQzoQgBDj7LNvyOOMxJH5cWYQQ6dCE1IzQYq
         TW8OtGmJ9DndmXSyELk6QFwdHmS6NUJ6koiz65oQiCWudUrVlRiA3VyhFR1jfBGqIPiI
         d9Vg==
X-Gm-Message-State: AOAM532gDUWTJTYrsS+SifEUBtm3+oz1ryScG0Dw5ME2CLWlGBV/XQT0
        vcIMz9q2HcwdQYQ3h7aLDFQf2Tx2BhM2XVpklM0fyw==
X-Google-Smtp-Source: ABdhPJyPFdwKoALShiSo00RiIsvWpaoDC6tNAVzVFRh5HuKKh0MkaY3m7URBqCj+sI1i+vLSoqqISiWX5+cWI3mCkyw=
X-Received: by 2002:a92:906:: with SMTP id y6mr7173891ilg.106.1599724692310;
 Thu, 10 Sep 2020 00:58:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200910054635.3337487-1-hsinyi@chromium.org> <ba77586c-7902-9ce4-0f4f-ad1743596d85@collabora.com>
In-Reply-To: <ba77586c-7902-9ce4-0f4f-ad1743596d85@collabora.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Thu, 10 Sep 2020 15:57:46 +0800
Message-ID: <CAJMQK-j_Syejw1Bc53fN8OuRYppns7g_=EQW+PUDkQDhnwxvSw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: mt8173: elm: Set uart0 to mmio32 iotype
To:     Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc:     "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 10, 2020 at 3:20 PM Enric Balletbo i Serra
<enric.balletbo@collabora.com> wrote:
>
> Hi Hsin-Yi,
>
> On 10/9/20 7:46, Hsin-Yi Wang wrote:
> > Set uart0 iotype to mmio32 to make earlycon work with stdout-path.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > index a5a12b2599a4a..d54e62f72c65d 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
> > @@ -1160,6 +1160,8 @@ &thermal {
> >  };
> >
> >  &uart0 {
> > +     reg-io-width = <4>;
> > +     reg-shift = <2>;
>
> I am wondering if these properties are common enough to go to mt8173.dtsi
> instead of here.
>
Since stdout-path is set on elm.dtsi (using uart0), so I add this
attribute here.
