Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5BC54782E6
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 02:59:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231511AbhLQB7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 20:59:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230322AbhLQB7I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 20:59:08 -0500
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D15EC061574
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 17:59:08 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id g28so754884qkk.9
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 17:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TQ25XqHkVHVxnm4IFzuK36OkNgtpTvvhGDr2LW7KSZ8=;
        b=zO+OyUuQr5ZJI+J++rfcEwNwLAoq/MtY3zQrf3jzBECZQX3hVWrpzQ+BREgcJqazOt
         tdbyV2J8TGXIVRYSFiEmYlFLkox2ASeqfOWrVCs2AZEP/rwDyUGNd1FQ3hNKUhOmSEwI
         oaJBbKCw4qCRGKN+tR2v3IQ6OkMh208lL9JNXipE/Li3inWJX17F5lWhCwloIEoFtF8i
         uy3SxS4yJGEnbka3RnhPlDul5pJ1IBODiHeQetLfU0ReTNf2cYOQ2MH5nwi3qg7aPsaK
         rPjn1Yksb2RAtSK4G1DY/Jqxo2TiDiSJHpzB1pqqMWOEjMf5LIh5OISJ59f4L/qI/kLF
         4NXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TQ25XqHkVHVxnm4IFzuK36OkNgtpTvvhGDr2LW7KSZ8=;
        b=IsZcngfrNsPrfeLu1pq6ZUoeAbPAHIrJVsb+1uPZwyPGg/yrrN1nrywQVBKz/k5OKM
         xtW2mRk7hibxm/StUR4z5ep/lXUayNQSxLLcA1vZpLASUmvMPDh1hWV7c4xOAssUQJ26
         r1oIDDvS58oGCBLGDuAghhdsWRqPqs6Vgak45fAidWl5HI0z6uYVyM1ZemkLgTxH5yu7
         gFoqqZr1U/dXuvSJ0sTh906vHcr21PKSnPKXUNghmiCocFN+PnCoWTGmheeTFz1VzD0x
         EcvZx6Q/aez7ee2vv13sAtyAQ5u4N8w/d6g+cBbRsqhxmp6oO39sFFQvCPq7sFkWwp/V
         u3mw==
X-Gm-Message-State: AOAM532O/SXCqVg2msqmns6PvKDUpkji88qL9i1gBHXP1slj9rljli93
        GjM0WvQVB0v7xQ895QHcxdqn19ySvTM6+pvBQXHqRg==
X-Google-Smtp-Source: ABdhPJwnVR4B9Za7Fc3uQDylj0rJV/xIt9n5N/enR0nsVSrtdu8af5nF/x4sy8ScybZik+6cDg02n/f1IQbxeMuoMvQ=
X-Received: by 2002:a05:620a:4101:: with SMTP id j1mr510379qko.593.1639706346910;
 Thu, 16 Dec 2021 17:59:06 -0800 (PST)
MIME-Version: 1.0
References: <1639058951-12660-1-git-send-email-loic.poulain@linaro.org>
 <20211216034909.3EFCBC36AE0@smtp.kernel.org> <CAMZdPi9eAFaExcTTgOt6TFE37EA-bb9xSy3nq9=nKYd5kqwmfQ@mail.gmail.com>
 <20211217013703.63A46C36AE0@smtp.kernel.org>
In-Reply-To: <20211217013703.63A46C36AE0@smtp.kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 17 Dec 2021 04:58:56 +0300
Message-ID: <CAA8EJpqN=MVbhSB=4V2RE6ywbPYAJ1tC1qNwnZh00_yQ0+RLNQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] clk: qcom: Add display clock controller driver for QCM2290
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Loic Poulain <loic.poulain@linaro.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, shawn.guo@linaro.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Dec 2021 at 04:37, Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Loic Poulain (2021-12-16 11:21:51)
> > Hi Stephen,
> >
> >
> > On Thu, 16 Dec 2021 at 04:49, Stephen Boyd <sboyd@kernel.org> wrote:
> > >
> > > Quoting Loic Poulain (2021-12-09 06:09:10)
> > > > diff --git a/drivers/clk/qcom/dispcc-qcm2290.c b/drivers/clk/qcom/dispcc-qcm2290.c
> > > > new file mode 100644
> > > > index 00000000..8aa5d31
> > > > --- /dev/null
> > > > +++ b/drivers/clk/qcom/dispcc-qcm2290.c
> > > > @@ -0,0 +1,602 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > +/*
> > > > + * Copyright (c) 2020, The Linux Foundation. All rights reserved.
> > > > + * Copyright (c) 2021, Linaro Ltd.
> > > > + */
> > > > +
> > [...]
> > > > +static struct clk_rcg2 disp_cc_mdss_pclk0_clk_src = {
> > > > +       .cmd_rcgr = 0x205c,
> > > > +       .mnd_width = 8,
> > > > +       .hid_width = 5,
> > > > +       .parent_map = disp_cc_parent_map_4,
> > > > +       .clkr.hw.init = &(struct clk_init_data){
> > > > +               .name = "disp_cc_mdss_pclk0_clk_src",
> > > > +               .parent_data = disp_cc_parent_data_4,
> > > > +               .num_parents = ARRAY_SIZE(disp_cc_parent_data_4),
> > > > +               .flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE | CLK_OPS_PARENT_ENABLE,
> > >
> > > These last two flags are needed for what?
> >
> > NOCACHE is probably useless with mainline.
>
> Ok then please remove it.
>
> >
> > I've added OPS_PARENT_ENABLE because AFAIU changing clock rate can
> > lead to parent switch, and parent switch can only be done if parent
> > clocks are enabled for rcg2 clocks. Otherwise the update fails and we
> > get the following:
> >     disp_cc_mdss_pclk0_clk_src: rcg didn't update its configuration.
> >     WARNING: CPU: 2 PID: 77 at drivers/clk/qcom/clk-rcg2.c:122
> > update_config+0xe0/0xf0
> >
> > I'm a bit surprised other similar dispcc drivers don't use the same
> > flags though.
>
> That's quite odd. We migrate the prepare and enable count to the new
> parent in the core framework so is the rcg on, but doesn't look like it
> is on to the core and set_rate is being called?

It's a part of a typical problem for some clocks (that we were
discussing in a thread regarding Bjorn's ASSUME_ENABLED and my 'park
clocks' proposal). For set_rate and set_parent to succeed, both old
and new parrents must be running at the time of the operation/



-- 
With best wishes
Dmitry
