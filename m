Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EB0DFCEF55
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2019 01:00:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729285AbfJGXAl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Oct 2019 19:00:41 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:38511 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729440AbfJGXAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Oct 2019 19:00:38 -0400
Received: by mail-wm1-f66.google.com with SMTP id 3so1120306wmi.3
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2019 16:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5sEe5owGp1W2adbjPNudunYGCk7mIJAE9kb0DI5bzNA=;
        b=O+c9lew/nusfCZUjADv9wuSQXLp8VOFYy/0WSdV/7Hy21ZsROhuKwQjW8kQQXN6EYP
         Sv/S5RTGBNu3HghEfpz93Z3IxaEP71CfoMQ8yRIWjAZkBM3qr7pYKJC0heA6i7K0XIcn
         N82zQD4R4/WQjJ39LS7CrMf6UVIhZA6+XJdQ69bPqsEPYAHzJwxIypY5k7JnlsK9Q0ib
         SCbrqNY+lO0JrDWTCMF9RuUKj9xcNXanM3jhrWRwY9wzLcSmBQM7RSCODbP57hAeuC4s
         U4DBtjCPh8J2TBNea8QagYHaRzlmRSFj/o64vE15uZcJ4KB5T1knTnwffLW2yJeTPY9V
         JEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5sEe5owGp1W2adbjPNudunYGCk7mIJAE9kb0DI5bzNA=;
        b=bgT+rknWDUSchXrD3jO1j+/bj6YRV8WLrtVZ5ULAoxy2qqdhGY9GmY1J+dUAXqtvmi
         mBliQjtTvqt1Dxyn2YYNPaGt6On/oxhqPQ5UyiQypYwhRVqq52dA6lLbmAtUIdZY7/G9
         CzN2ynjsqDmqoF5fPk0z4+uSKeiQ0o7WvAU0UbxIVDHBkCjFdn9Rpd6AqQPwuo9eUbvi
         kOwC/d3bdYK/RNemr4mU9UfRhTqmxLMZCwfmgYFHSAmvscau3xbL5gwPptfEidYCuLdz
         By3DhaTNoBh2DwOH2l096zn1dQ4VBok8UIrSltDDSE+H/B8NT+f/k+Aad5+b8OVE2kj2
         cx8Q==
X-Gm-Message-State: APjAAAW4smtdjgWqou6G3s2sdCTrXg51nE165CDRQaqTJ3TgR14Vm+b5
        joo60860ffCvjYqSe8TMZLWyKbPo/lOGNpi0paZtdA==
X-Google-Smtp-Source: APXvYqy+BmC5YTtsbyp5x++i6ezSvoMcC/H1ujeISLV99HlKGQSQjbkA3iAIZKp3FpomRvKH1ABCvOY29EtNbw0Ljsw=
X-Received: by 2002:a7b:c8d9:: with SMTP id f25mr1209258wml.153.1570489235833;
 Mon, 07 Oct 2019 16:00:35 -0700 (PDT)
MIME-Version: 1.0
References: <20191007175553.66940-1-john.stultz@linaro.org>
 <20191007175553.66940-5-john.stultz@linaro.org> <CAL_JsqJLY2n7hfneNptAGswVZtGm3vJbSR6W2wUG+ZTzMN8wZA@mail.gmail.com>
 <CALAqxLWB7Vd-H70LLLSW0Fv=_4-saQ9CE2k3-L_43E+F8mLj2w@mail.gmail.com> <CAL_JsqJ9uUtqTDEkLi86-BCvW+wM6Pgz_K+JuTsuOqHfFOHStA@mail.gmail.com>
In-Reply-To: <CAL_JsqJ9uUtqTDEkLi86-BCvW+wM6Pgz_K+JuTsuOqHfFOHStA@mail.gmail.com>
From:   John Stultz <john.stultz@linaro.org>
Date:   Mon, 7 Oct 2019 16:00:24 -0700
Message-ID: <CALAqxLVpPvHf2RpwjHh5v9cnQm9CLtj0HHaqVH=EFQJk-GhaPQ@mail.gmail.com>
Subject: Re: [RFC][PATCH v2 4/5] dt-bindings: usb: dwc3: of-simple: add
 compatible for HiSi
To:     Rob Herring <robh+dt@kernel.org>
Cc:     lkml <linux-kernel@vger.kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Yu Chen <chenyu56@huawei.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 7, 2019 at 2:11 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Oct 7, 2019 at 2:07 PM John Stultz <john.stultz@linaro.org> wrote:
> >
> > On Mon, Oct 7, 2019 at 11:38 AM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > On Mon, Oct 7, 2019 at 12:56 PM John Stultz <john.stultz@linaro.org> wrote:
> > > >
> > > > Add necessary compatible flag for HiSi's DWC3 so
> > > > dwc3-of-simple will probe.
> > > >
> > > > Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > > > Cc: Felipe Balbi <balbi@kernel.org>
> > > > Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
> > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > Cc: Mark Rutland <mark.rutland@arm.com>
> > > > Cc: Yu Chen <chenyu56@huawei.com>
> > > > Cc: Matthias Brugger <matthias.bgg@gmail.com>
> > > > Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > > Cc: linux-usb@vger.kernel.org
> > > > Cc: devicetree@vger.kernel.org
> > > > Signed-off-by: John Stultz <john.stultz@linaro.org>
> > > > ---
> > > > v2: Tweaked clock names as clk_usb3phy_ref didn't seem right.
> > > > ---
> > > >  .../devicetree/bindings/usb/hisi,dwc3.txt     | 52 +++++++++++++++++++
> > > >  1 file changed, 52 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/usb/hisi,dwc3.txt
> > >
> > > Can you make this a schema.
> >
> > Sorry, I'm not sure exactly what you're asking. I'm guessing from
> > grepping around you want the bindings in yaml instead (I see a few
> > examples)?
>
> Yes.
>
> > Is there some pointer to documentation? The
> > Documentation/devicetree/bindings/writing-bindings.txt file doesn't
> > seem to say much on it.
>
> You mean Documentation/devicetree/writing-schemas.rst? There's that
> and Documentation/devicetree/bindings/example-schema.yaml which has a
> bunch of annotations on what each part means.

Ah! Sorry for missing that. Thanks for the pointer, though I may get
away with dropping this one.

> > > If it's only clocks and resets for the wrapper node, just make this
> > > all one node.
> >
> > Just to make sure I'm following, you're suggesting I put all the
> > clocks/resets in the dwc3 node (renamed to usb for the node name) and
> > not add the wrapper?
>
> Yes.
>
> > I'll have to see if that's possible. The generic dwc3 binding wants 3
> > clocks, but I only have two in the code I've worked with (similarly it
> > seems to only want two resets, not 4) so I'll have to see if I can
> > figure out how to adapt that.
>
> Possible since commit fe8abf332b8f ("usb: dwc3: support clocks and
> resets for DWC3 core").

Ok. It *seems* like I can get it working with the existing binding
then. There's a little funkiness with the core expecting three clocks
while I only have two (currently I'm duplicating the "bus_early" clk
for "suspend". Is there a preferred way to do this sort of hack?), and
I'm a little worried that only the first reset is being used (instead
of the 4 specified), but it seems to work so far.

I still suspect the dwc3-of-simple.c method might be better since it
can handle arbitrary sets of clks and resets instead of the fixed 3 &
1 in the dwc3.txt binding.
But if I can get away without having to add an extra binding here, I'd
be happier.

thanks
-john
