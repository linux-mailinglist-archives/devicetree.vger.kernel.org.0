Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 998A1199A9E
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2020 18:00:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731113AbgCaQAX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Mar 2020 12:00:23 -0400
Received: from mail-vk1-f195.google.com ([209.85.221.195]:43656 "EHLO
        mail-vk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731026AbgCaQAW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Mar 2020 12:00:22 -0400
Received: by mail-vk1-f195.google.com with SMTP id v129so5491780vkf.10
        for <devicetree@vger.kernel.org>; Tue, 31 Mar 2020 09:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/GMoukOL0KHHE8wEvMLxzDD6OsKNGd37py8qqC7r4eI=;
        b=Mdyk4hIdWk9iaKwb4+KZqwkLAVAFtwZV/5MocNo0ZUVnr90atdWYJplVeGt1osWlMJ
         tsGG0jSCSuDfx6UCog8dLugU+8D/yjeNzKb4ikMbN1zz2tOBe/7yHSe5i4d0VKOn18dH
         u6KGIqmobDm7Jdik275lPhk3ZHks5e56i9mV0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/GMoukOL0KHHE8wEvMLxzDD6OsKNGd37py8qqC7r4eI=;
        b=khGPEM2pFbMvZL7rJglbfT3+ZnwKMOuVyizR++jQdso6vLnz64h8o6CUy/r9UOisWz
         6kz10+uF9qceSfeWPPNvcKLFBTFr50ObBeKfV7ylKJvDvJQHBvyFxdQ7NEZHApPgnjT4
         fvgesrnrSd7n/s54o9SWWGLI4bq/2LQHo8j6ttZVot7oPtbhcfxiEnUwqo0q8IeE1/Ne
         BMWA9Tap+7GGMBusoi8UzHD5H509gyA5u/yFYKhZKdvnG6jDAJTyNpDd7YK1KKWGCQwr
         1WHl0WTWh8R24tyTQqOw9A6iEDWdYDiutM3dT9RJfiF+VhVfvOXvLNpfhWe3wkcFLt08
         Ny6A==
X-Gm-Message-State: AGi0PuYzLRGAW5EBbatt2wzsOkR+qZNhgw822nDEyu5u2NU7FMwXX8EP
        GTSgvQvEkXfbRdpi0YET746QBmB3z5g=
X-Google-Smtp-Source: APiQypIv+3S99xel94c8M5g5I0E09D0DvCJTSLz/lYBHf1JgEgcjQBrKtPg8eyaZCi25si6oUBpoKg==
X-Received: by 2002:ac5:ccb9:: with SMTP id p25mr12547860vkm.69.1585670420351;
        Tue, 31 Mar 2020 09:00:20 -0700 (PDT)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id s134sm6612144vke.46.2020.03.31.09.00.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 09:00:19 -0700 (PDT)
Received: by mail-ua1-f49.google.com with SMTP id t20so7836446uao.7
        for <devicetree@vger.kernel.org>; Tue, 31 Mar 2020 09:00:18 -0700 (PDT)
X-Received: by 2002:ab0:7406:: with SMTP id r6mr3595683uap.22.1585670417847;
 Tue, 31 Mar 2020 09:00:17 -0700 (PDT)
MIME-Version: 1.0
References: <1585663107-12406-1-git-send-email-kalyan_t@codeaurora.org>
In-Reply-To: <1585663107-12406-1-git-send-email-kalyan_t@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 31 Mar 2020 09:00:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Up4y6GUkJc8NNJBdC28L+6LvUs7pCUg4pyMCgHMGEkug@mail.gmail.com>
Message-ID: <CAD=FV=Up4y6GUkJc8NNJBdC28L+6LvUs7pCUg4pyMCgHMGEkug@mail.gmail.com>
Subject: Re: [PATCH] drm/msm/dpu: ensure device suspend happens during PM sleep
To:     Kalyan Thota <kalyan_t@codeaurora.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Jeykumar Sankaran <jsanka@codeaurora.org>,
        mkrishn@codeaurora.org, travitej@codeaurora.org,
        nganji@codeaurora.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Mar 31, 2020 at 6:58 AM Kalyan Thota <kalyan_t@codeaurora.org> wrote:
>
> "The PM core always increments the runtime usage counter
> before calling the ->suspend() callback and decrements it
> after calling the ->resume() callback"
>
> DPU and DSI are managed as runtime devices. When
> suspend is triggered, PM core adds a refcount on all the
> devices and calls device suspend, since usage count is
> already incremented, runtime suspend was not getting called
> and it kept the clocks on which resulted in target not
> entering into XO shutdown.
>
> Add changes to force suspend on runtime devices during pm sleep.
>
> Changes in v1:
>  - Remove unnecessary checks in the function
>     _dpu_kms_disable_dpu (Rob Clark).
>
> Changes in v2:
>  - Avoid using suspend_late to reset the usagecount
>    as suspend_late might not be called during suspend
>    call failures (Doug).
>
> Changes in v3:
>  - Use force suspend instead of managing device usage_count
>    via runtime put and get API's to trigger callbacks (Doug).
>
> Signed-off-by: Kalyan Thota <kalyan_t@codeaurora.org>
> ---
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 2 ++
>  drivers/gpu/drm/msm/dsi/dsi.c           | 2 ++
>  drivers/gpu/drm/msm/msm_drv.c           | 4 ++++
>  3 files changed, 8 insertions(+)

This looks much saner to me.  Thanks!  I assume it still works fine
for you?  I'm still no expert on how all the pieces of DRM drivers
work together, but at least there's not a bunch of strange fiddling
with pm_runtime state and hopefully it will avoid weird corner
cases...


> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> index ce19f1d..b886d9d 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> @@ -1123,6 +1123,8 @@ static int __maybe_unused dpu_runtime_resume(struct device *dev)
>
>  static const struct dev_pm_ops dpu_pm_ops = {
>         SET_RUNTIME_PM_OPS(dpu_runtime_suspend, dpu_runtime_resume, NULL)
> +       SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +                               pm_runtime_force_resume)
>  };
>
>  static const struct of_device_id dpu_dt_match[] = {
> diff --git a/drivers/gpu/drm/msm/dsi/dsi.c b/drivers/gpu/drm/msm/dsi/dsi.c
> index 55ea4bc2..62704885 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi.c
> @@ -161,6 +161,8 @@ static int dsi_dev_remove(struct platform_device *pdev)
>
>  static const struct dev_pm_ops dsi_pm_ops = {
>         SET_RUNTIME_PM_OPS(msm_dsi_runtime_suspend, msm_dsi_runtime_resume, NULL)
> +       SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> +                               pm_runtime_force_resume)
>  };
>
>  static struct platform_driver dsi_driver = {
> diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
> index 7d985f8..2b8c99c 100644
> --- a/drivers/gpu/drm/msm/msm_drv.c
> +++ b/drivers/gpu/drm/msm/msm_drv.c
> @@ -1051,6 +1051,8 @@ static int msm_pm_suspend(struct device *dev)
>                 return ret;
>         }
>
> +       pm_runtime_force_suspend(dev);

nit: check return value of pm_runtime_force_suspend()?


> +
>         return 0;
>  }
>
> @@ -1063,6 +1065,8 @@ static int msm_pm_resume(struct device *dev)
>         if (WARN_ON(!priv->pm_state))
>                 return -ENOENT;
>
> +       pm_runtime_force_resume(dev);

nit: check return value of pm_runtime_force_resume()?


-Doug
