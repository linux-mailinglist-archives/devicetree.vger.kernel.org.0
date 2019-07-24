Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 42B7E74168
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 00:29:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726802AbfGXW3A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 18:29:00 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:42320 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726486AbfGXW3A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 18:29:00 -0400
Received: by mail-pf1-f195.google.com with SMTP id q10so21620103pff.9
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 15:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Fn+jt6MVuRg1+Q1VoeC7kF7YB1DWtgkKK5poDsavIDw=;
        b=fvrhMepM3MI9TPoODmOW5LyNT+V+Zv6zKDACGbQdZMFfJMEBeN532dTMY29v2KYnvK
         gv3SVwK1HLq9kXurmmQp5hZod9hm+25kRxxWLYwj5JHpfgjVhnJHigshI0hHcip0+RB3
         lwlIhZtlmEPh8a42feTA1c0HjjPpF6gs9us4A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Fn+jt6MVuRg1+Q1VoeC7kF7YB1DWtgkKK5poDsavIDw=;
        b=MVnZDOjjdHjs7qLfjzsg+DWf0ztYk/pZEtXd9CAsOIypltCto2b9RORpgl7ieMgboe
         +BFRRL2b5UgWsNZV9vcxCugNLykyaXnczNMLZnn910+2a8HIVyCEzpyb2Z0ecP1spKL7
         spSUcsNJ44MMFlhKIKfAmHdzhkaUD7A6IW7JQ7694t9sBRDOAvyrWa4KcbB0gK3imfck
         eoNtjNbTpeaKmnI4i026ZbT5pHD/ArsM1MpxkXMgDL52CeVyWCSyfyKZMmRV4H0zky3K
         QkW/ur0C6pkmuzlf43cPAPowM9O7zQB4x8MMcQqWgWQ0Ry8P2QvMO91YfJsLUddINICG
         fOGA==
X-Gm-Message-State: APjAAAWMqouuLGxUkN/R6WPqTeS6F83x00YfQ/Pz5EUMEG7ArABgtQ0/
        LAd0OvRtJHeC6LLX7COxcSYoXQ==
X-Google-Smtp-Source: APXvYqzJBNwoxjGzEN0XCKA/1hPnVeLk77TVQGr5Y2y9U+x1Ijy7VePf7vVAxC1GAayFqg6x2k1L5A==
X-Received: by 2002:aa7:8383:: with SMTP id u3mr13506735pfm.175.1564007340007;
        Wed, 24 Jul 2019 15:29:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id z24sm83683358pfr.51.2019.07.24.15.28.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 15:28:57 -0700 (PDT)
Date:   Wed, 24 Jul 2019 15:28:53 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ARM: dts: rockchip: move rk3288-veryon display
 settings into a separate file
Message-ID: <20190724222853.GB250418@google.com>
References: <20190711223455.12210-1-mka@chromium.org>
 <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=U5Z4QqyjzJpERwhvJFPATS+khVWBCStnaJKZR0hHBWNQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 24, 2019 at 02:19:35PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Thu, Jul 11, 2019 at 3:35 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > diff --git a/arch/arm/boot/dts/rk3288-veyron-edp.dtsi b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> > new file mode 100644
> > index 000000000000..5d812e9e78aa
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/rk3288-veyron-edp.dtsi
> > @@ -0,0 +1,124 @@
> > +// SPDX-License-Identifier: GPL-2.0
> 
> Please allow MIT license:
> 
> // SPDX-License-Identifier: (GPL-2.0+ OR MIT)

ok

> > +&pinctrl {
> > +       backlight {
> > +               bl_en: bl-en {
> > +                       rockchip,pins = <7 RK_PA2 RK_FUNC_GPIO &pcfg_pull_none>;
> > +               };
> > +       };
> > +};
> 
> nit: convention on Rockchip device tree files is that all pinctrl
> stuff is at the bottom.  Downstream I think I added comments about
> this but those didn't make it upstream.

I'll move it to the bottom

> Also: why did you move "bl_en" here but not "edp_hpd"?

'bl_en' is defined in rk3288-veyron-chromebook.dtsi, 'edp_hdp' in
rk3288.dtsi of the SoC.
