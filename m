Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E59694C0407
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 22:46:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235860AbiBVVqi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 16:46:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234729AbiBVVqh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 16:46:37 -0500
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A506A139111
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:46:11 -0800 (PST)
Received: by mail-oi1-x22f.google.com with SMTP id a6so16104412oid.9
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 13:46:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=HXh2wWf1n/8+fbu1pdrOCmZrGQ3694naXlsmKt36QH8=;
        b=e90OgSdnQ+hZe3EuGBtW9CUZvz3eGZp0qAl+wQ36AonE5961IiWhfYKsy4ayPmicsx
         n6vcJsAhznvfY3vFDjrJPwcRxCadYdUouYMLulUkfJeacEdart9rkno1+gWMG4Yygx9g
         0vixKsaHQDAgmZYEEYa0Zo1g1MeojVaikUxvg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=HXh2wWf1n/8+fbu1pdrOCmZrGQ3694naXlsmKt36QH8=;
        b=aaQ7rYDV33oP8xSgAYmznNYVYSC9WHo3QvzosJqpWWH+0Bfaezj2DmsAduimT2Aymw
         y5c7b0y0bq74QTc/PP2+wJ4/zXnwK+DixmPQIr98YF6EuGLuDervb9K4OH5TiwR7X0ue
         OopTJ4PCU/5lHI4o3UQW1KcNUpCfq6uzePk+qsPW0iCHmykZbnGgtkN6DgAO2zfz8AlW
         4AuzPh0Ay8VinkAYHMc0OrQ9oTNDbpEPkW1YzPEIqQqPjUo5fQmu+vFDNbhv8L9jXiMP
         OuTfft7vUsVu1/oH1A+I7CudHdzDYIS7HgreO/rxgWiZFjrVk13lc/Qk//Mow59N6TZ2
         ptlA==
X-Gm-Message-State: AOAM533Q48PmWVZ8YatyQlDlJUbOOyyGwK+XwuZ9pYxIvodXsmcym/Lz
        YG1Otux5yFnytEI60p+/OaPupRy5phbfMxkWpbGtWg==
X-Google-Smtp-Source: ABdhPJzm+C5bYVv9anAXu3Z61wQBhQXH7Va4U0f+EoX/aM7qXc1WBaENweddodTaULni5p6NQAa4tqIsS91bDqikSg8=
X-Received: by 2002:aca:df44:0:b0:2ce:285f:cb99 with SMTP id
 w65-20020acadf44000000b002ce285fcb99mr3061739oig.40.1645566371038; Tue, 22
 Feb 2022 13:46:11 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 22 Feb 2022 21:46:10 +0000
MIME-Version: 1.0
In-Reply-To: <CAD=FV=WvstZkDJcHJPAT0aez3X=uSKzDX0paQRHYD4DEktkMEQ@mail.gmail.com>
References: <1645449126-17718-1-git-send-email-quic_vpolimer@quicinc.com>
 <CAE-0n507XcYRz4=Uw-K37kPsLRqi_gN2L9y1wcu_X-UJP+6ySg@mail.gmail.com> <CAD=FV=WvstZkDJcHJPAT0aez3X=uSKzDX0paQRHYD4DEktkMEQ@mail.gmail.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Tue, 22 Feb 2022 21:46:10 +0000
Message-ID: <CAE-0n51V+bfDUb_heV_DVkS+KOzDcjYzxpU=E8cCGFESrUwpeg@mail.gmail.com>
Subject: Re: [v1] arm64/dts/qcom/sc7280: update mdp clk to max supported value
 to support higher refresh rates
To:     Doug Anderson <dianders@chromium.org>
Cc:     Vinod Polimera <quic_vpolimer@quicinc.com>,
        devicetree@vger.kernel.org,
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Doug Anderson (2022-02-22 13:25:05)
> Hi,
>
> On Tue, Feb 22, 2022 at 12:58 PM Stephen Boyd <swboyd@chromium.org> wrote:
> >
> > Quoting Vinod Polimera (2022-02-21 05:12:06)
> > > Panels with higher refresh rate will need mdp clk above 300Mhz.
> > > Select max frequency for mdp clock during bootup, dpu driver will
> > > scale down the clock as per usecase when first update from the framework is received.
> > >
> > > Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> >
> > Please add a Fixes tag.
> >
> > > ---
> > >  arch/arm64/boot/dts/qcom/sc7280.dtsi | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > index baf1653..7af96fc 100644
> > > --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> > > @@ -2895,7 +2895,7 @@
> > >                                 assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>,
> > >                                                 <&dispcc DISP_CC_MDSS_VSYNC_CLK>,
> > >                                                 <&dispcc DISP_CC_MDSS_AHB_CLK>;
> > > -                               assigned-clock-rates = <300000000>,
> > > +                               assigned-clock-rates = <506666667>,
> >
> > Why not simply remove the clock assignment and set the rate based on the
> > OPP when the driver probes?
>
> I was curious so I dug. It turns out that it _is_ using the OPP. It's
> just that the kernel driver currently assumes that the initial rate is
> the max rate. :-P You can actually see in msm_dss_parse_clock() that
> it walks through each of its clocks at boot and records the boot rate
> and stashes it as the "max_rate". That's not a scheme I've seen done
> commonly, so if nothing else it deserves a comment in the commit
> message.

That sounds like a scheme to detect the max frequency of the clk before
an OPP table is written. It would be better to convert that code to use
OPP tables if available and then drop this assigned clock property from
the DT (in both places).

>
> One other note is that I think there are _two_ places in the dtsi that
> are setting this same clock rate, right? The parent node `mdss`, which
> you're not touching, and the child `mdss_mdp`, which you are touching.
> Seems like you should just do it in one place. If it needs to be done
> by the parent then the child could just assume that the clock has
> already been set by the parent.
>

I see that it's this way on sc7180 too, which is sad but it seems nobody
noticed.
