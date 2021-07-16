Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30F5B3CBDA1
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 22:19:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233758AbhGPUWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 16:22:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233418AbhGPUWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 16:22:43 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3510C061762
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 13:19:47 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id s2-20020a0568301e02b02904ce2c1a843eso611964otr.13
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 13:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=CkaCIu0m3DpwfwleO0B5cmqATZ+S4ICyCA6JG0g5KFI=;
        b=nKxV1YWDiGQ8xBufsYIxZitBl/zKTFW94qEaH1WzLGa7V9L3Tvch3dHVKsgHkAJ5xQ
         tQv1CHl0yER7naskqNXJxw3u7Ay7He+QMgE3WC9sZCs00fOO2CDE/VLu0Ftrx88R0VkC
         MwIRw2yqhZs/0XLeg1LxjHn6+3+U2CgBBRe3c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=CkaCIu0m3DpwfwleO0B5cmqATZ+S4ICyCA6JG0g5KFI=;
        b=dz/rLfL6m6KJsx4f2G/3yDFhFtkIyCPA0KnecHO9UGlvHn7d4gmpVjqCMtmJ4/ektC
         HS7Ktmg4qoAvz+a6/RNSrdP/8BkYvN5CeEdJYlMZgFS7oD6OMhmj1sX26HT9dSEgMcyq
         5Y7QGNer3u/JCgAFYwHmO4PQnLus3+DNCh5V2BgYLtK4uWOD5c20Z/W7mZUKjq4E7RGe
         LgHo9aPqrooLX37gI39ytTGkTEtKLygzNJLSSGVu0hTQfnShW1s1f4bBdu5WVK5cQ1VN
         QcI38mkjOAB/btvZgl9tn9zmc6v86s4EE0iiAiq8xACZc4I51aXq0kqb4SRqIGMj18sN
         jIJQ==
X-Gm-Message-State: AOAM531WO2z41p758oQ0jye88JZnHDYU4Wr4W67MgNoK9bqPo1qmTpX4
        rbpALDWEpB326oyy3/YGrlworJCYg7f9DBIBjjOErg==
X-Google-Smtp-Source: ABdhPJzdAgjNu9jd8z/7yga9TYzyIf7M4bHwGj2OAzLo0PS7AgFEDbI6VLIumRa/PUycnEYeBYmFUibzrZKtcZkWPZs=
X-Received: by 2002:a9d:2781:: with SMTP id c1mr9471335otb.34.1626466787329;
 Fri, 16 Jul 2021 13:19:47 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 16 Jul 2021 22:19:46 +0200
MIME-Version: 1.0
In-Reply-To: <1626429658-18961-2-git-send-email-rnayak@codeaurora.org>
References: <1626429658-18961-1-git-send-email-rnayak@codeaurora.org> <1626429658-18961-2-git-send-email-rnayak@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 16 Jul 2021 22:19:46 +0200
Message-ID: <CAE-0n52AkJWAL0ptFgZOrD_BXrrMte5EbZUksf5UYzBxYisCBQ@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] PM / Domains: Add support for 'required-opps' to
 set default perf state
To:     Rajendra Nayak <rnayak@codeaurora.org>, bjorn.andersson@linaro.org,
        ulf.hansson@linaro.org, viresh.kumar@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        rojay@codeaurora.org, stephan@gerhold.net
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Rajendra Nayak (2021-07-16 03:00:57)
> Some devics within power domains with performance states do not

devices

> support DVFS, but still need to vote on a default/static state
> while they are active. They can express this using the 'required-opps'
> property in device tree, which points to the phandle of the OPP
> supported by the corresponding power-domains.
>
> Add support to parse this information from DT and then set the
> specified performance state during attach and drop it on detach.
> Also drop/set as part of runtime suspend/resume callbacks.
>
> Signed-off-by: Rajendra Nayak <rnayak@codeaurora.org>
> ---
>  drivers/base/power/domain.c | 37 ++++++++++++++++++++++++++++++++++---
>  include/linux/pm_domain.h   |  1 +
>  2 files changed, 35 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/base/power/domain.c b/drivers/base/power/domain.c
> index a934c67..dcc0b71 100644
> --- a/drivers/base/power/domain.c
> +++ b/drivers/base/power/domain.c
> @@ -1000,6 +1008,8 @@ static int genpd_runtime_resume(struct device *dev)
>         genpd_stop_dev(genpd, dev);
>  err_poweroff:
>         if (!pm_runtime_is_irq_safe(dev) || genpd_is_irq_safe(genpd)) {
> +               if (default_pstate)
> +                       dev_pm_genpd_set_performance_state(dev, 0);
>                 genpd_lock(genpd);
>                 gpd_data->rpm_pstate = genpd_drop_performance_state(dev);

Maybe this should be

		  prev_state = genpd_drop_performance_state(dev);
		  if (!default_pstate)
		  	gdp_data->rpm_pstate = prev_state;

so we don't call dev_pm_genpd_set_performance_state() effectively twice?
Also it would make sure we call dev_pm_genpd_set_performance_state()
underneath the genpd_lock() if that is important. Similarly do that on
suspend path.

>                 genpd_power_off(genpd, true, 0);
> @@ -2598,6 +2608,12 @@ static void genpd_dev_pm_detach(struct device *dev, bool power_off)
>
>         dev_dbg(dev, "removing from PM domain %s\n", pd->name);
>
> +       /* Drop the default performance state */
> +       if (dev_gpd_data(dev)->default_pstate) {
> +               dev_pm_genpd_set_performance_state(dev, 0);
> +               dev_gpd_data(dev)->default_pstate = 0;
> +       }
> +
>         for (i = 1; i < GENPD_RETRY_MAX_MS; i <<= 1) {
>                 ret = genpd_remove_device(pd, dev);
>                 if (ret != -EAGAIN)
> @@ -2675,10 +2692,24 @@ static int __genpd_dev_pm_attach(struct device *dev, struct device *base_dev,
>                 genpd_unlock(pd);
>         }
>
> -       if (ret)
> +       if (ret) {
>                 genpd_remove_device(pd, dev);
> +               return -EPROBE_DEFER;
> +       }
> +
> +       /* Set the default performance state */
> +       np = base_dev->of_node;
> +       if (of_parse_phandle(np, "required-opps", index)) {
> +               pstate = of_get_required_opp_performance_state(np, index);
> +               if (pstate < 0) {
> +                       dev_err(dev, "failed to set pstate:%d", pstate);

Missing newline on printk. Also can we spell out pstate as "failed to
set required performance state %d for power-domain %d"?

> +                       ret = pstate;
> +               }
> +               dev_pm_genpd_set_performance_state(dev, pstate);
> +               dev_gpd_data(dev)->default_pstate = pstate;
> +       }
>
> -       return ret ? -EPROBE_DEFER : 1;
> +       return ret ? ret : 1;
>  }
>
>  /**
