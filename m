Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4B0BE1FA2D
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 20:43:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727084AbfEOSnv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 14:43:51 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:43405 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727208AbfEOSnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 14:43:50 -0400
Received: by mail-vs1-f65.google.com with SMTP id d128so582263vsc.10
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vNECGk8CnSY+BUMqx/A6sNJnXy1K+tE5/+q6NrpNAeg=;
        b=BQ9VXLFElWFzf7izK1ym/zFCq1WxsSoI7IZR/etFVJ3c6xH3PwVo3az6lB+MkUP/Gj
         PxZMwkXe1rl5EjO3Kxfks/TZY3oYrwLodR/8iZJr/9CDD59tWt7jhU4zsZs0BYYwMRNN
         Iey0Dt7PXFPRad8sX/uvZhi1xQzvN9Br//u9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vNECGk8CnSY+BUMqx/A6sNJnXy1K+tE5/+q6NrpNAeg=;
        b=cM04yDyka4V8n/7XL/9k0JxBI1PJfs35QqBpSWgEfa5Xfq28rB2apGestULFFK7n1F
         r85LLd08HdDJHCf/PgoLAn9MUmpcdM78X1VZLGeeOlHhIsE9z5BBdb7PV0Q0dJncDfVm
         W67BZ8w8Je+f+x0LKbmGFTTCM4i+UgihLbBQJ+cJAEKsU9Qh5ROCCV0S+t/wNrBo6Y5b
         Usz8MweDXxmro91YIhyJZRIprJYHGuoLXNEtdsYSW9sEFDzTcuRtOnndA3L2biAJn3t7
         G8MmsIRQXGasQVy6bDOUBF5RhVcjZGKyyi9IiAqRR9zv/+IgoHnvgOaqf6D4w2lf7TG6
         pjuA==
X-Gm-Message-State: APjAAAXS2ImVi4HhHeQjDcih/G5BjAKfgwqMplxRgjrXGpRVehGxUMlG
        F8hlc6r0qfnd0Y4LpNCVcWeBoG+IAGI=
X-Google-Smtp-Source: APXvYqzL31FRf+9ka3lOwc73fDM/eMYHy+q4LkmA813SgPZMosCJR4ri8BUUrw57cn2yeKaFyOwSww==
X-Received: by 2002:a67:6847:: with SMTP id d68mr21932594vsc.90.1557945829693;
        Wed, 15 May 2019 11:43:49 -0700 (PDT)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com. [209.85.222.50])
        by smtp.gmail.com with ESMTPSA id n68sm3715579vkd.0.2019.05.15.11.43.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 May 2019 11:43:41 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id 7so269611uah.1
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 11:43:41 -0700 (PDT)
X-Received: by 2002:ab0:2692:: with SMTP id t18mr5386901uao.106.1557945821179;
 Wed, 15 May 2019 11:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190424162827.5297-1-mka@chromium.org> <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
In-Reply-To: <CAD=FV=W+QGLmhEaqGc-=wNFzmaCr_f4rb5e8KQ4ZmeRaNi_xCw@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 15 May 2019 11:43:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WQ-yAeB_xU5UVHGWgsC=a9t_CtN9bHvZnoxkfuA9=zGw@mail.gmail.com>
Message-ID: <CAD=FV=WQ-yAeB_xU5UVHGWgsC=a9t_CtN9bHvZnoxkfuA9=zGw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add #cooling-cells entry for rk3288 GPU
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 15, 2019 at 10:59 AM Doug Anderson <dianders@chromium.org> wrote:

> Hi,
>
> On Wed, Apr 24, 2019 at 9:28 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> > The Mali GPU of the rk3288 can be used as cooling device, add
> > a #cooling-cells entry for it.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >  arch/arm/boot/dts/rk3288.dtsi | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> > index ca7d52daa8fb..767e62908a6e 100644
> > --- a/arch/arm/boot/dts/rk3288.dtsi
> > +++ b/arch/arm/boot/dts/rk3288.dtsi
> > @@ -1275,6 +1275,7 @@
> >                 interrupt-names = "job", "mmu", "gpu";
> >                 clocks = <&cru ACLK_GPU>;
> >                 operating-points-v2 = <&gpu_opp_table>;
> > +               #cooling-cells = <2>; /* min followed by max */
> >                 power-domains = <&power RK3288_PD_GPU>;
> >                 status = "disabled";
> >         };
>
> Seems like a good idea to me.  Presumably we should also add this to
> the bindings?
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

I guess we could now also do a follow-up CL that starts using the GPU
as a cooling device.  Presumably it's still OK to specify this and it
will just be ignored if there's no GPU driver?  It's a little funny
because the upstream device tree uses the CPU to cool things down if
the GPU temperature sensor trips.  Downstream uses the GPU to cool
down the GPU.  ...though, of course, it's not really all that simple
since everything is packed in so tightly.

The other case that sticks as a sore thumb is the upstream
"rk3288-veyron-mickey" where all the comments still talk about the GPU
cooling but we have only the CPU cooling actually in the device tree.
:-)

-Doug
