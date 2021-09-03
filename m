Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73AAC4005B1
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350620AbhICTRj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:17:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351002AbhICTR3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:17:29 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9DE7C0613CF
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 12:16:28 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id a20-20020a0568300b9400b0051b8ca82dfcso275571otv.3
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=L/2apcW8mrsz6OK3ilemzV65I67pSLK0BxUTy23sO3E=;
        b=WKQZrk6yltU3VyKmYhd5vG0mMGP/sJVUz/zftd7FGa0OxfST8O3CEhtI9sUdu1a2jv
         wfzLRo5HzKmq1GGXyS15IkB2T+5d8mWYilCkCGIVmPcCO9JTonM0qsBo3StvWz6q2xfA
         EnQGHVQDN9xrNbe755whrDgTDu9W+Fm8kboQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=L/2apcW8mrsz6OK3ilemzV65I67pSLK0BxUTy23sO3E=;
        b=UzuaJpwM031nQTsd29wFlFCqZ8Zngxr/CXq24c+Wl1wxc5iHf4adsvCezrs8ir8vN6
         Zd6Ej+wJBemLQqpVT5mMeYW6vjY1aHBDvp7TEaU4BMqed1YTS8sIC4UR6uUH7r9hrkqZ
         kXU+j+UiVzUd+zRtRs9xisl9TjaT7uS4enohT07+mGk9B3o4qpDGrSnpJN2uJke4g8BQ
         XkZnAemCaReXscNLLfe+9lX+GatteBSKHqgT3L75UqkeSDMvmOU2wGXwBTFzYARyNLXd
         /m8snh+duYhdrNEecPc7UcEMomNnKuaTg3VQjKE6Mi10X9Z+w2mLaX5QmV4xvNwbAoG5
         ++UQ==
X-Gm-Message-State: AOAM531rC5oq7azVWhsOE/undETVmmw6rzCc51clQ98c8HSfiH4ZTKZL
        r3kEYdmosvzumPVNd5WJqx60d4k4yq4lMlYXRgrqXw==
X-Google-Smtp-Source: ABdhPJw/cOlPupXT1h50NnHT0u5fcyjLVurBe+rkxu3+Ri7msyNK7piJ5M/yOhc92+uWMS+u1chlm0BirEeM+SKmFXQ=
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr502893ots.77.1630696588117;
 Fri, 03 Sep 2021 12:16:28 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Sep 2021 15:16:27 -0400
MIME-Version: 1.0
In-Reply-To: <72483937-8ccb-331b-e1af-8f30f6cefc07@linaro.org>
References: <1630098658-23149-1-git-send-email-khsieh@codeaurora.org> <72483937-8ccb-331b-e1af-8f30f6cefc07@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 3 Sep 2021 15:16:27 -0400
Message-ID: <CAE-0n50R1+6Jx4+OeLS2XZdO5RdueEbrp=tUxk2YoJPJ9v-ssQ@mail.gmail.com>
Subject: Re: [PATCH v2] phy: qcom-qmp: add support for display port voltage
 and pre-emphasis swing
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Kuogee Hsieh <khsieh@codeaurora.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, devicetree@vger.kernel.org,
        robdclark@gmail.com, robh+dt@kernel.org, sean@poorly.run,
        vkoul@kernel.org
Cc:     abhinavk@codeaurora.org, aravindh@codeaurora.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, kishon@ti.com, p.zabel@pengutronix.de
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2021-09-03 12:09:14)
> On 28/08/2021 00:10, Kuogee Hsieh wrote:
> > Both voltage and pre-emphasis swing level are set during link training
> > negotiation between host and sink. There are totally four tables added.
> > A voltage swing table for both hbr and hbr1, a voltage table for both
> > hbr2 and hbr3, a pre-emphasis table for both hbr and hbr1 and a pre-emphasis
> > table for both hbr2 and hbr3. In addition, write 0x0a to TX_TX_POL_INV is
> > added to complete the sequence of configure dp phy base on HPG.
> >
> > Chnages in v2:
> > -- revise commit test
> > -- add Fixes tag
> > -- replaced voltage_swing_cfg with voltage
> > -- replaced pre_emphasis_cfg with emphasis
> > -- delete drv_lvl_reg and emp_post_reg parameters from qcom_qmp_v4_phy_configure_dp_swing()
> > -- delete drv_lvl_reg and emp_post_reg parameters from qcom_qmp_phy_configure_dp_swing()
> >
> > Fixes: aff188feb5e1 ("phy: qcom-qmp: add support for sm8250-usb3-dp phy")
> > Signed-off-by: Kuogee Hsieh <khsieh@codeaurora.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp.c | 117 ++++++++++++++++++++++++++----------
> >   1 file changed, 85 insertions(+), 32 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > index 31036aa..021cbb0 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-qmp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
> > @@ -3546,12 +3546,11 @@ static const u8 qmp_dp_v3_voltage_swing_hbr_rbr[4][4] = {
> >       { 0x1f, 0xff, 0xff, 0xff }
> >   };
> >
> > -static int qcom_qmp_phy_configure_dp_swing(struct qmp_phy *qphy,
> > -             unsigned int drv_lvl_reg, unsigned int emp_post_reg)
> > +static int qcom_qmp_phy_configure_dp_swing(struct qmp_phy *qphy)
>
> As this becomes a v3-only function, could you please rename it to
> qcom_qmp_v3_phy_configure_dp_swing()

Can it be combined with the v4 version instead? The code structure is
essentially the same, modulo the tables used and the register offset
written to.
