Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A9314D5E5C
	for <lists+devicetree@lfdr.de>; Fri, 11 Mar 2022 10:24:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347457AbiCKJX5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Mar 2022 04:23:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347464AbiCKJXz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Mar 2022 04:23:55 -0500
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CB5E9A981
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:22:49 -0800 (PST)
Received: by mail-qt1-x831.google.com with SMTP id c4so6858447qtx.1
        for <devicetree@vger.kernel.org>; Fri, 11 Mar 2022 01:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5yB2ssbuBZx5F0u4321kFXuP4TmIeDrCq6d7hvGDPTg=;
        b=cmhwVxbwFxNLFe88VcQKADx1bM2QPDytOUGUzFpRUf6kfONBxDn3fCJJOWbMgyIjs6
         3yt7nNySNS+pzTrYw7kFmgPCgeP0SelBrffzhy6vkhYUV0d1GxoU4+IP8ni5VXNhmUoK
         YQ55VpIVgQaGYdtng2Eeo7b4RnlHMaLiEy74J5StS34Vh/N6krSkcs4cei7tRYFp0d80
         xuLVy+IBziQVmOGUOBjc7ZYIzcOs46V4I6n7GWZfn99mNWEZbJs+YFt8c0Na1fELKSvr
         3sz+5TA/n9KvE8/j+epguoOl7q2qml6OHE+q3Iiyuz2taFl3vqChrstWFhg02cyHpE5v
         tarw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5yB2ssbuBZx5F0u4321kFXuP4TmIeDrCq6d7hvGDPTg=;
        b=fPNemh5TdXcbcE44BYbpWY4XsxrA5UCVUSsJS4cGWzzCWsS4gohOAmjICuNi8q1nv9
         pcy2fmrY+gLCzXjFmIzzIZ0F2gRgwVI7FaqWg9J7qG4Fwvar3v62V9T/2XuOsLGt20tz
         03XIvyvycKXBwikcYFCFsOS5f7wCXMEfUxscU4Qb4Hi01XU1ugApn34xyC2Dw50riN01
         soPK1yrME/I5+SketpOEYP441no5kjA5otLEd8loaLHnunwTNwdxGy1mVe4VsTUHrd32
         BRzMKr47TcrQasqxbYfowgVdIkvHUKaFCZGGIaf+H0PceRbFcyGZkSo1zEqUuXt3WvkV
         xRTg==
X-Gm-Message-State: AOAM533yU2NG3sUMtIWl9C/Mp96f8N6RBn7H7xEGt/2k+8GBJrqr0noL
        HOA+yUqKkSYazRrlYCMh/ffr1CYuTvvzP8Ty/3ZlYA==
X-Google-Smtp-Source: ABdhPJzOrg/mWzHuLqY4b86LL9GlAgWC/OwT3yStEwxtsa3p088p8nFS7JNBlBKBc5nLmwxCu/dm/rrw7Goxu+n5yFg=
X-Received: by 2002:ac8:7d0a:0:b0:2e0:4e16:d3fb with SMTP id
 g10-20020ac87d0a000000b002e04e16d3fbmr7249289qtb.295.1646990568534; Fri, 11
 Mar 2022 01:22:48 -0800 (PST)
MIME-Version: 1.0
References: <1646758500-3776-1-git-send-email-quic_vpolimer@quicinc.com>
 <1646758500-3776-2-git-send-email-quic_vpolimer@quicinc.com>
 <CAE-0n51bfqWs8yOiyQ-A_bEQ7CZSqavz8epcFEWYyZxxoRYFHg@mail.gmail.com> <BN0PR02MB8173F2E408848216D489D503E40C9@BN0PR02MB8173.namprd02.prod.outlook.com>
In-Reply-To: <BN0PR02MB8173F2E408848216D489D503E40C9@BN0PR02MB8173.namprd02.prod.outlook.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 11 Mar 2022 12:22:37 +0300
Message-ID: <CAA8EJppt_NjOdJWGrP=8zwG1yEAyJBtnv4G5vLW3CHZ8WrGFvw@mail.gmail.com>
Subject: Re: [PATCH v5 1/5] arm64/dts/qcom/sc7280: remove assigned-clock-rate
 property for mdp clk
To:     Vinod Polimera <vpolimer@qti.qualcomm.com>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        quic_vpolimer <quic_vpolimer@quicinc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robdclark@gmail.com" <robdclark@gmail.com>,
        "dianders@chromium.org" <dianders@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Mar 2022 at 11:06, Vinod Polimera <vpolimer@qti.qualcomm.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Stephen Boyd <swboyd@chromium.org>
> > Sent: Wednesday, March 9, 2022 1:36 AM
> > To: quic_vpolimer <quic_vpolimer@quicinc.com>;
> > devicetree@vger.kernel.org; dri-devel@lists.freedesktop.org;
> > freedreno@lists.freedesktop.org; linux-arm-msm@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org; robdclark@gmail.com;
> > dianders@chromium.org; quic_kalyant <quic_kalyant@quicinc.com>
> > Subject: Re: [PATCH v5 1/5] arm64/dts/qcom/sc7280: remove assigned-clock-
> > rate property for mdp clk
> >
> > WARNING: This email originated from outside of Qualcomm. Please be wary
> > of any links or attachments, and do not enable macros.
> >
> > Quoting Vinod Polimera (2022-03-08 08:54:56)
> > > Kernel clock driver assumes that initial rate is the
> > > max rate for that clock and was not allowing it to scale
> > > beyond the assigned clock value.
> >
> > How? I see ftbl_disp_cc_mdss_mdp_clk_src[] has multiple frequencies and
> > clk_rcg2_shared_ops so it doesn't look like anything in the clk driver
> > is preventing the frequency from changing beyond the assigned value.
>
> Folowing the comment of Stephen, i have checked a bit more. it appears that clock driver is not setting the max clock from assgined clocks, dpu driver is doing that.
> i am planning to fix it as below.
> 1) assign ULONG_MAX to max_rate while initializing clock in dpu driver.
> 2) remove unnecessary checks in the core_perf library. If rate doesn't match with the entries in the opp table, it will throw error, hence furthur checks are not needed.
> 3) no changes in dt are required. (we can drop all the posted ones)

Why? They made perfect sense. The dts assignments should be replaced
by the opp setting in the bind function, as this would also set the
performance point of the respective power domain.

>
> Changes :
> ```--- a/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_core_perf.c
> @@ -284,17 +284,6 @@ void dpu_core_perf_crtc_release_bw(struct drm_crtc *crtc)
>         }
>  }
>
> -static int _dpu_core_perf_set_core_clk_rate(struct dpu_kms *kms, u64 rate)
> -{
> -       struct dss_clk *core_clk = kms->perf.core_clk;
> -
> -       if (core_clk->max_rate && (rate > core_clk->max_rate))
> -               rate = core_clk->max_rate;
> -
> -       core_clk->rate = rate;
> -       return dev_pm_opp_set_rate(&kms->pdev->dev, core_clk->rate);
> -}
> -
>  static u64 _dpu_core_perf_get_core_clk_rate(struct dpu_kms *kms)
>  {
>         u64 clk_rate = kms->perf.perf_tune.min_core_clk;
> @@ -405,7 +394,7 @@ int dpu_core_perf_crtc_update(struct drm_crtc *crtc,
>
>                 trace_dpu_core_perf_update_clk(kms->dev, stop_req, clk_rate);
>
> -               ret = _dpu_core_perf_set_core_clk_rate(kms, clk_rate);
> +               ret = dev_pm_opp_set_rate(&kms->pdev->dev, clk_rate);
>                 if (ret) {
>                         DPU_ERROR("failed to set %s clock rate %llu\n",
>                                         kms->perf.core_clk->clk_name, clk_rate);
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_io_util.c

This file has been removed in msm/next

> @@ -175,7 +175,7 @@ int msm_dss_parse_clock(struct platform_device *pdev,
>                         continue;
>                 mp->clk_config[i].rate = rate;
>                 mp->clk_config[i].type = DSS_CLK_PCLK;
> -               mp->clk_config[i].max_rate = rate;
> +               mp->clk_config[i].max_rate = ULONG_MAX;
>         }
>
>         mp->num_clk = num_clk;
> --```
>
> Thanks,
> Vinod.
>
> >
> > >
> > > Drop the assigned clock rate property and vote on the mdp clock as per
> > > calculated value during the usecase.
> > >
> > > Changes in v2:
> > > - Remove assigned-clock-rate property and set mdp clk during resume
> > sequence.
> > > - Add fixes tag.
> > >
> > > Changes in v3:
> > > - Remove extra line after fixes tag.(Stephen Boyd)
> >
> > This changelog should be removed.
> >
> > >
> > > Fixes: 62fbdce91("arm64: dts: qcom: sc7280: add display dt nodes")
> >
> > I thought folks were saying that this is bad to keep? I don't really
> > mind either way, but I guess it's better to drop the fixes tag because
> > this is largely a performance improvement?
> >
> > > Signed-off-by: Vinod Polimera <quic_vpolimer@quicinc.com>
> > > Reviewed-by: Stephen Boyd <swboyd@chromium.org>



-- 
With best wishes
Dmitry
