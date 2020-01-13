Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7D67B138A75
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2020 05:52:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387588AbgAMEwR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Jan 2020 23:52:17 -0500
Received: from mail-qk1-f196.google.com ([209.85.222.196]:43396 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387540AbgAMEwR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Jan 2020 23:52:17 -0500
Received: by mail-qk1-f196.google.com with SMTP id t129so7406532qke.10
        for <devicetree@vger.kernel.org>; Sun, 12 Jan 2020 20:52:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e91pGy24VVvYbYr4rZmi8ICedLezu/8qcs1+qti5PJ0=;
        b=nJa1RC4Is4dH0rAe9i+D5MWd8LXDimOk6ZHr02eCBlWBA8xjfA1YwLeH281ThOQo26
         3n0FogtRyfXpjYPLqCmbEwWd6PleQsb+MViHIIAEWMv1TouAMJ/z0HNp/N2WOxWDQey8
         01RkACdWQwDmWqyqttBUE7JWHXXbHLKWKmir0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e91pGy24VVvYbYr4rZmi8ICedLezu/8qcs1+qti5PJ0=;
        b=Q6HhcpTqNHgB9Y7U1KVeqcIr+mccO21Dcv3BRecMfwp7gwbCQjmI0ZCbRILmkogclZ
         rg63NSl/4HWMc6eCrDIjzAdcJzSraHFhXMVkNMcKfjvuJbH8rRnrtoYMLsmPCH5GOCg1
         LYJWGoycBkpkJC76IS8KhDyQsEQahoRHugBluLUQ0k3vd/ml+ibGo/vSkpcOMPgeZHvb
         GK3YIvdr5Rfplzx25QgW6dzYnWKC3Mw8PQxKgMjt3+w+YG6LfZhT1FupkhaaiLHYFqg8
         tXF9DhRSyuntGn+Uf0WfCHEBOrYK4i4oqFyK4fLRz4tRTwJkSGCPvFSVoULXB1kg5L9g
         eDig==
X-Gm-Message-State: APjAAAVUFQ3HUi3vcLHLWORMGI+yjcPdTIivH90Xose/dSzFeMTbrzH0
        2GvGfb0DY4qKjgve2YwshwKzOnvfehG4pOvunBH+Vg==
X-Google-Smtp-Source: APXvYqxQiKAiE5eUtsTQf70lo04q3M2951zkP4HBkJ3NdNMiSbRwCRCDOu23qOqzzIb3z7Vd3CR6g4sfwUCYbV478kw=
X-Received: by 2002:ae9:f003:: with SMTP id l3mr9903798qkg.457.1578891136362;
 Sun, 12 Jan 2020 20:52:16 -0800 (PST)
MIME-Version: 1.0
References: <20191226093930.22413-1-yong.liang@mediatek.com>
 <20191226093930.22413-2-yong.liang@mediatek.com> <675aa211-eba5-e44c-0931-32c1b6d5ca8b@gmail.com>
In-Reply-To: <675aa211-eba5-e44c-0931-32c1b6d5ca8b@gmail.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Mon, 13 Jan 2020 12:52:05 +0800
Message-ID: <CANMq1KDAsgxaxU+GTuDMLbQ-MSQHsk+iQCNDSRJ+SPRODyebDw@mail.gmail.com>
Subject: Re: [PATCH v1 1/1] amr64: dts: modify mt8183.dtsi
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Yong Liang <yong.liang@mediatek.com>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 8, 2020 at 10:05 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>
>
>
> On 26/12/2019 10:39, Yong Liang wrote:
> > From: "yong.liang" <yong.liang@mediatek.com>
> >
> > Include mt8183-reset.h and add reset-cells in infracfg
> > in dtsi file
> >
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
>
> applied with fixed subject line to v5.5-next/dts64

Well the subject line here still says amr64 ,-P

https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/commit/?h=v5.5-next/dts64&id=42f8e5356122feb2003d7696c83cfec46daa8d44

I guess you can still fix this up as the branch has nothing else on it
and we shoudn't care about stability.

>
> Thanks
>
> > ---
> >  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > index 10b32471bc7b..76bfcbdf097a 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
> > @@ -8,6 +8,7 @@
> >  #include <dt-bindings/clock/mt8183-clk.h>
> >  #include <dt-bindings/interrupt-controller/arm-gic.h>
> >  #include <dt-bindings/interrupt-controller/irq.h>
> > +#include <dt-bindings/reset-controller/mt8183-resets.h>
> >  #include "mt8183-pinfunc.h"
> >
> >  / {
> > @@ -227,6 +228,7 @@
> >                       compatible = "mediatek,mt8183-infracfg", "syscon";
> >                       reg = <0 0x10001000 0 0x1000>;
> >                       #clock-cells = <1>;
> > +                     #reset-cells = <1>;
> >               };
> >
> >               pio: pinctrl@10005000 {
> >
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek
