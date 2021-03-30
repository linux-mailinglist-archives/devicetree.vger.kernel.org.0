Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D64D034E2B0
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 10:05:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229468AbhC3IEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 04:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbhC3IE0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 04:04:26 -0400
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C20AC061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 01:04:26 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id t16so7696675qvr.12
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 01:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0hXTX8IXseXWS6sQ5v0psd9jBHZ3jQktmk6VWJvrFnY=;
        b=AvdkhgznJpxH1Y85tc0K2FisAYU02f2ExRqH01ZlXjycjuvlr/ijazyhskTfgxv6z/
         V2NuyyG79EEi+2rzN+aDLK493ag+xU/jBsSvNsF7rpVlukSgCkraSUKfLiakUcYfPqQb
         Q+l+vEbwokSA1ovQLLaPmPE2t2VN3QkAIMZjkR/GiNfdn8jez1YBMn9b7LMDxqy9xwoS
         XitJxW7dohNEtaBno1G7qsnTNuEivNHlDLd7AfnsmUdJXLw7uiO9Rp9KMk7YhaEUJfdP
         VI0WITXd33/bkpCsR27neG9UVD+HaMNA9376YHZlbnO/M3mHlPd+E+KFzdVQLsinmW7u
         4tvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0hXTX8IXseXWS6sQ5v0psd9jBHZ3jQktmk6VWJvrFnY=;
        b=aZ0TSUfGSyKy9CkaXhmXCHf7IVpF9Gb4cHJ2J+F41J6I9D0zEDrwzD6xzzNOXunbFk
         RTISAV0y7zYr3MRdDq4/AvFdUbgtUuROqKI5jR/ND/AzRn11akEtzKsEPfG3NLN7cyQD
         7EOSjMp9hi2sdJVy1wpemFBJlBAsJy7DtxDz9PxUAc5OzOYmiQyeC67EflONwbgfu+Xy
         DBuZs9mtTcbD4heiavKdSXt4ghvk1j/3pRB35VV0O2E6YpIjcx8f8iIxVq9t9tS/weY5
         JOShSGgm7fEnWmEUg3MtLzKbHnOuy7zzLQrhIELzPD1M+dkB4bXsGF9wJXcE+EJaEjsm
         Eqhw==
X-Gm-Message-State: AOAM533q3B/gz0CQsgvsEQGbUSSpevWa8Ee6BMt/0YB3xfL71dSbm7LH
        E/Y9awZMHAifYbO/4mdEEVVGXltv6bwFS/fpmxApyw==
X-Google-Smtp-Source: ABdhPJzODMwi5bI8/2BWHi0LOLZBUGzb2dOjHsDIuxM7K/fV9heoh5dmZ3joJPfWrl2fM7ixxIx6Ll+z2dooy8ho1Ss=
X-Received: by 2002:a0c:a425:: with SMTP id w34mr28728433qvw.2.1617091465670;
 Tue, 30 Mar 2021 01:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210329120051.3401567-1-dmitry.baryshkov@linaro.org>
 <20210329120051.3401567-4-dmitry.baryshkov@linaro.org> <YGKYDzCzwz+1pxOi@builder.lan>
In-Reply-To: <YGKYDzCzwz+1pxOi@builder.lan>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Tue, 30 Mar 2021 11:04:14 +0300
Message-ID: <CAA8EJppuRyFk5arkjFAuHjeHpVrLiVpXPnXciOxkE1Y0OjKFSQ@mail.gmail.com>
Subject: Re: [PATCH v4 3/4] drm/msm: add compatibles for sm8150/sm8250 display
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <sean@poorly.run>, Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 Mar 2021 at 06:16, Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> On Mon 29 Mar 07:00 CDT 2021, Dmitry Baryshkov wrote:
>
> > From: Jonathan Marek <jonathan@marek.ca>
> >
> > The driver already has support for sm8150/sm8250, but the compatibles were
> > never added.
> >
> > Also inverse the non-mdp4 condition in add_display_components() to avoid
> > having to check every new compatible in the condition.
> >
> > Signed-off-by: Jonathan Marek <jonathan@marek.ca>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 2 ++
> >  drivers/gpu/drm/msm/msm_drv.c           | 6 +++---
> >  2 files changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> > index 5a8e3e1fc48c..fff12a4c8bfc 100644
> > --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> > +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> > @@ -1219,6 +1219,8 @@ static const struct dev_pm_ops dpu_pm_ops = {
> >  static const struct of_device_id dpu_dt_match[] = {
> >       { .compatible = "qcom,sdm845-dpu", },
> >       { .compatible = "qcom,sc7180-dpu", },
> > +     { .compatible = "qcom,sm8150-dpu", },
> > +     { .compatible = "qcom,sm8250-dpu", },
> >       {}
> >  };
> >  MODULE_DEVICE_TABLE(of, dpu_dt_match);
> > diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
> > index 94525ac76d4e..928f13d4bfbc 100644
> > --- a/drivers/gpu/drm/msm/msm_drv.c
> > +++ b/drivers/gpu/drm/msm/msm_drv.c
> > @@ -1185,9 +1185,7 @@ static int add_display_components(struct device *dev,
> >        * Populate the children devices, find the MDP5/DPU node, and then add
> >        * the interfaces to our components list.
> >        */
> > -     if (of_device_is_compatible(dev->of_node, "qcom,mdss") ||
> > -         of_device_is_compatible(dev->of_node, "qcom,sdm845-mdss") ||
> > -         of_device_is_compatible(dev->of_node, "qcom,sc7180-mdss")) {
> > +     if (!of_device_is_compatible(dev->of_node, "qcom,mdp4")) {
>
> Please consider reviewing my proposed alternative solution for this
> hunk:
>
> https://lore.kernel.org/linux-arm-msm/20210317025634.3987908-1-bjorn.andersson@linaro.org/

I'd slightly prefer Jonathan's approach, as it seems simpler, but no
strong preference towards one or another.

>
> For the rest
>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
>
> Regards,
> Bjorn
>
> >               ret = of_platform_populate(dev->of_node, NULL, NULL, dev);
> >               if (ret) {
> >                       DRM_DEV_ERROR(dev, "failed to populate children devices\n");
> > @@ -1320,6 +1318,8 @@ static const struct of_device_id dt_match[] = {
> >       { .compatible = "qcom,mdss", .data = (void *)KMS_MDP5 },
> >       { .compatible = "qcom,sdm845-mdss", .data = (void *)KMS_DPU },
> >       { .compatible = "qcom,sc7180-mdss", .data = (void *)KMS_DPU },
> > +     { .compatible = "qcom,sm8150-mdss", .data = (void *)KMS_DPU },
> > +     { .compatible = "qcom,sm8250-mdss", .data = (void *)KMS_DPU },
> >       {}
> >  };
> >  MODULE_DEVICE_TABLE(of, dt_match);
> > --
> > 2.30.2
> >



-- 
With best wishes
Dmitry
