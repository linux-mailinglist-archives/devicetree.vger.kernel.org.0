Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81CF64791A6
	for <lists+devicetree@lfdr.de>; Fri, 17 Dec 2021 17:42:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239193AbhLQQmi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Dec 2021 11:42:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235779AbhLQQmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Dec 2021 11:42:38 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DECEAC061574
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 08:42:37 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id f18-20020a17090aa79200b001ad9cb23022so3327832pjq.4
        for <devicetree@vger.kernel.org>; Fri, 17 Dec 2021 08:42:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FiPDVH2QGlRyd/pLa0ZQ1pq8VQm2jhuITk7gRJEkbZQ=;
        b=IYMmJJwOAFF/8UmW5ldN5jGT1swUCcbxNLW7gMCPL1ChCvVgM+F23e7BFRhUmxqW64
         1dftM9+xt7/V+cDrrv87pW2+Q5lb1JwxKgTBQ08CMtvvQ8dPwz0FYznD08OXwS+N4ALJ
         M51yGOIlYK3C++djEjy6v7v0c2oxmd8M82dUQxoSEk3Bfv8v8nmhG/WJ2bFSFGlLnjPE
         PgpphYEm0uZGQ0lleZoPLlmg88+cVhf1I1eCsTVSZx4F3Go2q7QqnOkOLHnswFW9w7gI
         4QY8fxhDga1msspCJx1sCyj/E0UA6lPC5/s49PHRcOjSvetpmREOSd3nDe9tNrC5cfLc
         Njew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FiPDVH2QGlRyd/pLa0ZQ1pq8VQm2jhuITk7gRJEkbZQ=;
        b=PpHZyhiwLW169JWSrKIV2/JyB8+LupBRVmc8ij8X86DNka4ypmIRTrXOqHF1u27oYQ
         J+7cbCRGqSHRG7jlYdWrsVEq5/uoZK8YD9mPGDCzeAUzenfYV5RJzc4B7hA/58+SRLrq
         K3+MvXeI4Zk0RGBJ6ln5NSQ4RdxwLj38XmC9MHzbS1FHiG71wPfhfFzuE9wKGuKCIYD1
         HV8K4BeygYcjCk8EsxlD231Uw1dexExOlAmnrXqzSOU/+nK5+kvPFYIxUzwL4FBsVZfv
         RWBpUp2JqU6jjqweoIJwUcOBvgEaWkboC+BYTI+SLbqGQkQnj0fjgefVv1Wd1hD+QIRn
         1fIw==
X-Gm-Message-State: AOAM5334o/32YY7SzgMTcsvcfBD+3E6sH/shjU/vn+4/J8M22kqiyfpc
        mg4xLQFskSmL9nFOGUB9thEHMjpLBOqHRi/PNMttXQ==
X-Google-Smtp-Source: ABdhPJzja82Afya+BhM/bVUB1xysjcoKyLqEYHGz3S3YmbKVmyonYWTvzoQ/hUHOFosPgvWpoaY5Db8ecIuxCfpzOBI=
X-Received: by 2002:a17:902:b94b:b0:143:d3bc:9d83 with SMTP id
 h11-20020a170902b94b00b00143d3bc9d83mr4120083pls.6.1639759357274; Fri, 17 Dec
 2021 08:42:37 -0800 (PST)
MIME-Version: 1.0
References: <1639058951-12660-1-git-send-email-loic.poulain@linaro.org>
 <20211216034909.3EFCBC36AE0@smtp.kernel.org> <CAMZdPi9eAFaExcTTgOt6TFE37EA-bb9xSy3nq9=nKYd5kqwmfQ@mail.gmail.com>
 <7e2502ac-10c6-32e5-369c-260d19d7c225@kali.org>
In-Reply-To: <7e2502ac-10c6-32e5-369c-260d19d7c225@kali.org>
From:   Loic Poulain <loic.poulain@linaro.org>
Date:   Fri, 17 Dec 2021 17:54:09 +0100
Message-ID: <CAMZdPi9YVJUidF+Tc9bdAiYHvFbZCxWzQ7+yLEvOF7-2SsORxA@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] clk: qcom: Add display clock controller driver for QCM2290
To:     Steev Klimaszewski <steev@kali.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org, shawn.guo@linaro.org,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Steev,

On Fri, 17 Dec 2021 at 17:16, Steev Klimaszewski <steev@kali.org> wrote:
> >>> +       .cmd_rcgr = 0x205c,
> >>> +       .mnd_width = 8,
> >>> +       .hid_width = 5,
> >>> +       .parent_map = disp_cc_parent_map_4,
> >>> +       .clkr.hw.init = &(struct clk_init_data){
> >>> +               .name = "disp_cc_mdss_pclk0_clk_src",
> >>> +               .parent_data = disp_cc_parent_data_4,
> >>> +               .num_parents = ARRAY_SIZE(disp_cc_parent_data_4),
> >>> +               .flags = CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE | CLK_OPS_PARENT_ENABLE,
> >> These last two flags are needed for what?
> > NOCACHE is probably useless with mainline.
> >
> > I've added OPS_PARENT_ENABLE because AFAIU changing clock rate can
> > lead to parent switch, and parent switch can only be done if parent
> > clocks are enabled for rcg2 clocks. Otherwise the update fails and we
> > get the following:
> >      disp_cc_mdss_pclk0_clk_src: rcg didn't update its configuration.
> >      WARNING: CPU: 2 PID: 77 at drivers/clk/qcom/clk-rcg2.c:122
> > update_config+0xe0/0xf0
> >
> > I'm a bit surprised other similar dispcc drivers don't use the same
> > flags though.
> >
> So, we do actually see this on other devices - in particular, on the
> Lenovo Yoga C630, and people have been trying to track down the initial
> cause for a while.  I tried here adding CLK_OPS_PARENT_ENABLE to both
> disp_cc_mdss_mdp_clk and disp_cc_mdss_pclk0_clk in dispcc-sdm845.c as
> well as for video_cc_venus_clk_src in videocc-sdm845.c and while it does
> seem to cause the messages to go away for disp_cc_mdss_mdp_clk and
> disp_cc_mdss_pclk0_clk, the one for venus seems to continue to show up here.
>
> video_cc_venus_clk_src: rcg didn't update its configuration. WARNING:
> CPU: 1 PID: 404 at drivers/clk/qcom/clk-rcg2.c:122 update_config+0xd0/0xe0
>
> I'm not sure if this is due to venus being a module and not built-in.

I think what you should do is dumping clk configuration before update
(basically for clk_rcg2_set_parent, __clk_rcg2_configure), especially
which parent source is configured for this clock. As Dmitry said, For
set_rate and set_parent to succeed, both old and new parents must be
running at the time of the operation. But in videocc-sdm845.cc I see
that some parents for video_cc_venus_clk_src are commented, would it
be possible that video_cc_venus_clk_src is configured with one of
these unhandled parents at boot time, making parent switch impossible?

Regards,
Loic
