Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C447C4CB40B
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 02:09:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230513AbiCCAvM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Mar 2022 19:51:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230495AbiCCAvM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Mar 2022 19:51:12 -0500
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 252E64D60B
        for <devicetree@vger.kernel.org>; Wed,  2 Mar 2022 16:50:28 -0800 (PST)
Received: by mail-oo1-xc32.google.com with SMTP id o7-20020a056820040700b003205d5eae6eso3532559oou.5
        for <devicetree@vger.kernel.org>; Wed, 02 Mar 2022 16:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=/2EC8zNvMiYjPaYg70TgRdx3fCegP4HpnaEb1DNrlZA=;
        b=OBFuGz0Ovh0fRb/PVgoG+6iRhtp4Lo5PnJTLPVBDsK3SbG51eTCV9I4bToYGWzzQwQ
         uLhWFAuGVtEUu6Ssk8Uzo1ocqlJ05rCzZpWp6izZ5LzLEP1Ww01xvVoGmkOtrQ219h/u
         wCjoAYhfJqyZV9e8VwkWp+RUhZkYyr03XT89c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=/2EC8zNvMiYjPaYg70TgRdx3fCegP4HpnaEb1DNrlZA=;
        b=Qb6d6soOBducDYjsrLDgcrr0yUdpOgVw1Bghp9J2Ub9QgpNmC4X5xD0Uss+3jZmuZe
         hIjl78yUqPod85M9q3VMb/HwcYH/Qr+mLUq86tw4krb85OxnKWpJ6ndvXdKq0NIRENZp
         gcWXYGRefDGwByJQNu2wLL4kv1YX4YRWU0YdL+7g6HnYTO8aCYThm7eaSRkpWvT93S1H
         AFY7fzGF++JMaDDW3p9PZegqSsWFhEsbtsFPfqOfzyMndqJZY4Lg3jn7qiW96y2TuZLJ
         urPIa4H05RXRcawRlckVxEx4IwvEenTS7+rasQbGmTEaig9I60RYTrO3lS6lmKGnIRx0
         rG2A==
X-Gm-Message-State: AOAM531nuOX+o2hCFZWDGNni9pJ3+ZPCNCDfEX48pC/MY9jE3JlODjai
        wSPfO0PZkTE8s1QkqiGLZ55R1nAaAZtSkuJ95Mjt9g==
X-Google-Smtp-Source: ABdhPJymMjnJcBkJ90VOhI42XO7hU17YKFFFlRx1RXjtrukwo8gQVLyOc3QdIvx9eR+49WHllUiLCYVPLyMyMvHI2gg=
X-Received: by 2002:a05:6870:14cf:b0:d9:a9ce:92a9 with SMTP id
 l15-20020a05687014cf00b000d9a9ce92a9mr2104667oab.64.1646268627242; Wed, 02
 Mar 2022 16:50:27 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 2 Mar 2022 16:50:26 -0800
MIME-Version: 1.0
In-Reply-To: <20220302225411.2456001-6-dmitry.baryshkov@linaro.org>
References: <20220302225411.2456001-1-dmitry.baryshkov@linaro.org> <20220302225411.2456001-6-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 2 Mar 2022 16:50:26 -0800
Message-ID: <CAE-0n52WNiinbFSaKJKQ7sPwD6SNH_o9tyyw5ig-m0v8svsumg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] arm: dts: qcom-msm8974: Drop flags for mdss irqs
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Maybe the subject should say "mdp" because there isn't an "mdss" but
this isn't a big deal.

Quoting Dmitry Baryshkov (2022-03-02 14:54:11)
> The number of interrupt cells for the mdss interrupt controller is 1,
> meaning there should only be one cell for the interrupt number, not two.
> Drop the second cell containing (unused) irq flags.
>
> Fixes: 5a9fc531f6ec ("ARM: dts: msm8974: add display support")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
