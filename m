Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EE9342740B
	for <lists+devicetree@lfdr.de>; Sat,  9 Oct 2021 01:13:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231946AbhJHXPF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 19:15:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243739AbhJHXPE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 19:15:04 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A26C0C061570
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 16:13:08 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id z184so12424978iof.5
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 16:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WAOBnpVSV4rGwJ/ei4hpXfaObGH3N5JtD18S+Uya9JA=;
        b=Vnm1IBY+xw/KY4WQKv3bJvQjQ8AY58QLqmTLq9E0R1DPWm9MMTmO9F4bfq4KkRlfhP
         zYRCo1q16cNumthc35KoplL5rFEBWL+m5tgWL6XOkAaHBLd2FgGyT1Po07dUVhaAVugp
         RiGNKvHfujiNfK+HLiT9FCHVW66AVPefEMvXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WAOBnpVSV4rGwJ/ei4hpXfaObGH3N5JtD18S+Uya9JA=;
        b=dPYqp0T9KFY7lnVDXxsKq5UuGGRlzq+KvxpDJ1Kw7nM3NJLvdzgMEq4RM2B8OUDJ8r
         8CwMJ23OGq7QkeAIQeT+MlBpkgQzuvo8JqKZnx9gbH8naT92PCSr6BGrWglZVrzjdUon
         qVgHN6Ls781hKfhBQ/YBAMnDVXLYqpDowM2J/JTPx7OMOmymXtXzO41LAMNcY9ei3zcR
         p5HZe6MASGYxdS0TPMe0HSPslaPpVqEmmH8pKEoXzAxtJFkcaEkpojLk/E/PtWA9DaYh
         3b5mSOt/QYleIxxqOdMe7whIcnovKnnaiME/QPff7Y1+OFlHjVaklDYRYdOZSZGSYF7y
         bbbQ==
X-Gm-Message-State: AOAM532evRXKNmhjtAgm0IVyQhZ3WtCsVNUU4IUNODk8lJ656D9654ZR
        a74S5PZ9Ze/G4BDTE1eHq6s6oguSjsTd5A==
X-Google-Smtp-Source: ABdhPJzB1hCR9Zlwy9/F269utKWXv6Y11rjt1c4IjlGaGFZc8/Lwr6K9siPEarLrx0twCa04iiGk6A==
X-Received: by 2002:a6b:6901:: with SMTP id e1mr9333346ioc.137.1633734787552;
        Fri, 08 Oct 2021 16:13:07 -0700 (PDT)
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com. [209.85.166.176])
        by smtp.gmail.com with ESMTPSA id j22sm320303ila.6.2021.10.08.16.13.06
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Oct 2021 16:13:06 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id x11so1180225ilv.11
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 16:13:06 -0700 (PDT)
X-Received: by 2002:a05:6e02:1989:: with SMTP id g9mr9971839ilf.165.1633734786303;
 Fri, 08 Oct 2021 16:13:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210929173343.v2.1.Ib7e63ae17e827ce0636a09d5dec9796043e4f80a@changeid>
 <20210929173343.v2.3.I630340a51130f4582dbe14e42f673b74e0531a2b@changeid>
 <CAE-0n53EBvKv-RdMwiiOsUkb+LOKAKwrpP7cDavx4meA2vbvcA@mail.gmail.com>
 <CAD=FV=XoOhSNP2EXurkA=G9iG2BnH9VzkvSEiNJ8W71s8N9bgg@mail.gmail.com>
 <CA+cxXhkM9Gzc+0EVapZVu=pJZ3WZawgucG5J2=bokYEJXFNKCQ@mail.gmail.com> <CA+cxXh=1D08O6EcC4Xq6+cCEthCtXfASOfGW38z=FhkmW3ce9g@mail.gmail.com>
In-Reply-To: <CA+cxXh=1D08O6EcC4Xq6+cCEthCtXfASOfGW38z=FhkmW3ce9g@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 8 Oct 2021 16:12:54 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VfuxrrFbzZwCQr-6KYb2OXEPmrAH5y9UPr4V6Pud2h7g@mail.gmail.com>
Message-ID: <CAD=FV=VfuxrrFbzZwCQr-6KYb2OXEPmrAH5y9UPr4V6Pud2h7g@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: sc7180: Support Parade ps8640 edp bridge
To:     Philip Chen <philipchen@chromium.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Oct 8, 2021 at 11:46 AM Philip Chen <philipchen@chromium.org> wrote:
>
> Hi
>
> On Thu, Oct 7, 2021 at 11:15 AM Philip Chen <philipchen@chromium.org> wrote:
> >
> > Hi,
> >
> > On Thu, Sep 30, 2021 at 9:22 AM Doug Anderson <dianders@chromium.org> wrote:
> > >
> > > Hi,
> > >
> > > On Wed, Sep 29, 2021 at 9:02 PM Stephen Boyd <swboyd@chromium.org> wrote:
> > > >
> > > > > +       pp3300_brij_ps8640: pp3300-brij-ps8640 {
> > > > > +               compatible = "regulator-fixed";
> > > > > +               status = "okay";
> > > > > +               regulator-name = "pp3300_brij_ps8640";
> > > > > +
> > > > > +               regulator-min-microvolt = <3300000>;
> > > > > +               regulator-max-microvolt = <3300000>;
> > > > > +
> > > > > +               gpio = <&tlmm 32 GPIO_ACTIVE_HIGH>;
> > > >
> > > > Doesn't this need
> > > >
> > > >                 enable-active-high;
> > >
> > > Looks like it. Without that it looks like it assumes active low.
> > Thanks for catching this.
> > I'll fix it in v3.
> >
> > >
> > >
> > > > > +
> > > > > +               pinctrl-names = "default";
> > > > > +               pinctrl-0 = <&en_pp3300_edp_brij_ps8640>;
> > > > > +
> > > > > +               vin-supply = <&pp3300_a>;
> > > > > +       };
> > > > > +};
> > > > > +
> > > > > +&dsi0_out {
> > > > > +       remote-endpoint = <&ps8640_in>;
> > > >
> > > > Should this also have data-lanes to be "complete"?
> > >
> > > That's still back in the main trogdor.dtsi, isn't it?
> > Yes, I think so.
> > Plus, ti-sn65 dts doesn't define data-lanes for input either.
> Sorry, I was wrong.
> ti-sn65 dts actually defines data-lanes for input.
> However, since ps8640 driver doesn't parse input data-lanes for now,
> it's not useful to add data-lanes here anyway.

Ah, right. This one _isn't_ in the dtsi. Looking closer, I agree with
you that it's not useful. Specifically it should be noted that, unlike
ti-sn65dsi86, this bridge part looks to only support 2-lanes of DP
traffic. If both of these two lanes are routed to the panel then
there's really nothing to specify--that should be the default
assumption of the driver if/when it ever adds support for data-lanes.

-Doug
