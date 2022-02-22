Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BBFF4C041A
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 22:50:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230274AbiBVVue (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 16:50:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235874AbiBVVud (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 16:50:33 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9658380206
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:50:07 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id p9so47013538ejd.6
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MDe1/XbZZwpMzP4Bd4iYW6ooJa1SuvyIIVKBTpf5jUo=;
        b=JIbNmgkRgP4fmF8fqKDxZPoO3hitMDXsTDRzZdAS3R1lGW5Qw/2Pfw8K2nfHxZpCxZ
         CMraYxwZL0nqKfhrIzAlWOz+jA4Q6lyHsTp9H2qhakiBhCRJmo2r7cSThBodJyHwFBhC
         9sy0CGhOAlttN6NzFmMpVWtPN3xc3gm7AOi00=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MDe1/XbZZwpMzP4Bd4iYW6ooJa1SuvyIIVKBTpf5jUo=;
        b=QO0Kp2irS88OUbJ8UqOQnr8B9Q0R5bq/BbMm5owP8H9Kdhu2WgNJ0AYyED6PrLstc1
         6P/Uijv71Og6TSjm0f6VmJnnLFvMZJ0/RIt8URdDeXJAqupdD8lVvafE9sabKZMRj/Xh
         QQgziHqPNIrBLAevwDBucjaV5+yWPORAj2KZxdOgc8VKJfhz8W5UXMfwGktL8Pw2o9tf
         rEzle38DkT/A3rmZvokmjqCdQgY2x22Ioo3J0bSgyb0GdNzYP52O2RntauSPIPDjD2xv
         7X4pxXuDcc4sH02KnxHnRXht+E3zGom2XLQuJxW76oGmH3Vz24BAwO4H4mamEyl39WLx
         xwiQ==
X-Gm-Message-State: AOAM530Aif3+KATr3rVqLf2U4r1J20NkQ4bG25BWbbJhXYw5+9SrMWMG
        VsVbfMuU8tKQl80lLNRNEjvT2EPLrfGPaVYIMo0=
X-Google-Smtp-Source: ABdhPJyiya71xcyX5SKV9vkRjWFJBH5EV97SFicF4jHGhYLUE2qTSbwJUhfKohMuSJR0kInI4gfgcQ==
X-Received: by 2002:a17:906:1603:b0:6ce:362:c938 with SMTP id m3-20020a170906160300b006ce0362c938mr20819019ejd.253.1645566605548;
        Tue, 22 Feb 2022 13:50:05 -0800 (PST)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com. [209.85.221.52])
        by smtp.gmail.com with ESMTPSA id en27sm8513109edb.5.2022.02.22.13.50.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Feb 2022 13:50:04 -0800 (PST)
Received: by mail-wr1-f52.google.com with SMTP id o24so36029724wro.3
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:50:04 -0800 (PST)
X-Received: by 2002:a5d:64ea:0:b0:1ea:8148:6b97 with SMTP id
 g10-20020a5d64ea000000b001ea81486b97mr4692080wri.679.1645566604132; Tue, 22
 Feb 2022 13:50:04 -0800 (PST)
MIME-Version: 1.0
References: <1645449126-17718-1-git-send-email-quic_vpolimer@quicinc.com>
 <CAE-0n507XcYRz4=Uw-K37kPsLRqi_gN2L9y1wcu_X-UJP+6ySg@mail.gmail.com>
 <CAD=FV=WvstZkDJcHJPAT0aez3X=uSKzDX0paQRHYD4DEktkMEQ@mail.gmail.com> <CAE-0n51V+bfDUb_heV_DVkS+KOzDcjYzxpU=E8cCGFESrUwpeg@mail.gmail.com>
In-Reply-To: <CAE-0n51V+bfDUb_heV_DVkS+KOzDcjYzxpU=E8cCGFESrUwpeg@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 22 Feb 2022 13:49:51 -0800
X-Gmail-Original-Message-ID: <CAD=FV=XAvq5LuhZua3FU39RRsicC2dzGAZkG4NHYx8QaP7ov4A@mail.gmail.com>
Message-ID: <CAD=FV=XAvq5LuhZua3FU39RRsicC2dzGAZkG4NHYx8QaP7ov4A@mail.gmail.com>
Subject: Re: [v1] arm64/dts/qcom/sc7280: update mdp clk to max supported value
 to support higher refresh rates
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_kalyant@quicinc.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Feb 22, 2022 at 1:46 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Doug Anderson (2022-02-22 13:25:05)
> > Hi,
> >
> > On Tue, Feb 22, 2022 at 12:58 PM Stephen Boyd <swboyd@chromium.org> wrote:
> > >
> > > Quoting Vinod Polimera (2022-02-21 05:12:06)
> > > > Panels with higher refresh rate will need mdp clk above 300Mhz.
> > > > Select max frequency for mdp clock during bootup, dpu driver will
> > > > scale down the clock as per usecase when first update from the framework is received.
> > > >
> > > > Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> > >
> > > Please add a Fixes tag.
> > >
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > > index baf1653..7af96fc 100644
> > > > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > > @@ -2895,7 +2895,7 @@
> > > >                                 assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>,
> > > >                                                 <&dispcc DISP_CC_MDSS_VSYNC_CLK>,
> > > >                                                 <&dispcc DISP_CC_MDSS_AHB_CLK>;
> > > > -                               assigned-clock-rates = <300000000>,
> > > > +                               assigned-clock-rates = <506666667>,
> > >
> > > Why not simply remove the clock assignment and set the rate based on the
> > > OPP when the driver probes?
> >
> > I was curious so I dug. It turns out that it _is_ using the OPP. It's
> > just that the kernel driver currently assumes that the initial rate is
> > the max rate. :-P You can actually see in msm_dss_parse_clock() that
> > it walks through each of its clocks at boot and records the boot rate
> > and stashes it as the "max_rate". That's not a scheme I've seen done
> > commonly, so if nothing else it deserves a comment in the commit
> > message.
>
> That sounds like a scheme to detect the max frequency of the clk before
> an OPP table is written. It would be better to convert that code to use
> OPP tables if available and then drop this assigned clock property from
> the DT (in both places).

Ah, good point! You could just check what the max OPP table rate is.
Then you don't need to worry about specifying the same clock rate
twice.


> > One other note is that I think there are _two_ places in the dtsi that
> > are setting this same clock rate, right? The parent node `mdss`, which
> > you're not touching, and the child `mdss_mdp`, which you are touching.
> > Seems like you should just do it in one place. If it needs to be done
> > by the parent then the child could just assume that the clock has
> > already been set by the parent.
> >
>
> I see that it's this way on sc7180 too, which is sad but it seems nobody
> noticed.

Never too late to fix it! :-)

-Doug
