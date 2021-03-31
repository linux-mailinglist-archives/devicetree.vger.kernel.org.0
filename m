Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5E3413503E8
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 17:56:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233600AbhCaP40 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 11:56:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233657AbhCaP4A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 11:56:00 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A292C06174A
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 08:56:00 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id g15so19784962qkl.4
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 08:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3txpl7SPHqYWFmYajWj2ZLqZQklbOiGgSGT1F0s0WDs=;
        b=NQWUaXXWMySIF2EP+8LpYt2VqT0hEYBBQPiLFjsHR6kSUpulZam5AaYGVvXpIOfMLf
         OsgyFb42lxRPZDjBSuOxeV2GqM+6W2QryNNKQ8ks3PqlyEZcN5M27OVl8w3pIYj2aS/k
         J1RzZvE1dtaWstaKZ7sZiDlHlAOiriZmnGnng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3txpl7SPHqYWFmYajWj2ZLqZQklbOiGgSGT1F0s0WDs=;
        b=Ru9ZVXqaBKkD7CdAdWIOSV75Ydo7YU+fBaozx1KZ9/aS28oPbbaIkbsudQqX46X7YX
         RY5Zx9r3TKuL8tbsG+sxuNmOXJZbAVawRgxY3a1lcRaPf59KEG/nfrBTbkMLfEAUD9nv
         R7Nq+0SDETbeVfjUH1q6oXCufplWpAd3sixcWJw7Xq4rt+cSytHFjMRzWDPBASlC6X2W
         wv9gRWrAhVH4FLQxSbC4m7fVEkXxoLx9j948NJx0yvmHoI3F7+SQe52JRBNwqNwc+waO
         CwSN/N3+W7CW8jj8c1jgj5x6jcOn4gkIrrTdfFStN2P6DgtdP1q0tjERDjC4CY0/d8oh
         BgNQ==
X-Gm-Message-State: AOAM532cYjgaT3igt6lSMTZcPNyO9Dwf3aOigCUk2fl3dlO0m7UtLYc2
        3XkDXblB6YjhxeCEeiRSoKjHXDjVtJe3tA==
X-Google-Smtp-Source: ABdhPJyieWvUJ6QuyAOyINVR4bEF8ve/kALf11sB7Jb5qhKNSYx3c8Dqppl5Kz++iiZpwNMLgSmgCg==
X-Received: by 2002:a05:620a:22d0:: with SMTP id o16mr3703652qki.376.1617206158760;
        Wed, 31 Mar 2021 08:55:58 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id 18sm1766694qkr.90.2021.03.31.08.55.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Mar 2021 08:55:58 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id x189so21679317ybg.5
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 08:55:57 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr5658516ybp.476.1617206157416;
 Wed, 31 Mar 2021 08:55:57 -0700 (PDT)
MIME-Version: 1.0
References: <1617190020-7931-1-git-send-email-kalyan_t@codeaurora.org>
In-Reply-To: <1617190020-7931-1-git-send-email-kalyan_t@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 31 Mar 2021 08:55:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XKr_0Zw+EaChRuyb9K8XZZvzF9CiZt69C6akRhCGFLvQ@mail.gmail.com>
Message-ID: <CAD=FV=XKr_0Zw+EaChRuyb9K8XZZvzF9CiZt69C6akRhCGFLvQ@mail.gmail.com>
Subject: Re: [v1] drm/msm/disp/dpu1: fix warn stack reported during dpu resume
To:     Kalyan Thota <kalyan_t@codeaurora.org>
Cc:     y@qualcomm.com, dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Rob Clark <robdclark@gmail.com>, mkrishn@codeaurora.org,
        Daniel Hung-yu Wu <hywu@google.com>,
        Matthias Kaehlcke <mka@google.com>,
        Michelle Dean <midean@google.com>,
        Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 31, 2021 at 4:27 AM Kalyan Thota <kalyan_t@codeaurora.org> wrote:
>
> @@ -294,6 +294,9 @@ static int dpu_kms_parse_data_bus_icc_path(struct dpu_kms *dpu_kms)
>         struct icc_path *path1;
>         struct drm_device *dev = dpu_kms->dev;
>
> +       if (!dpu_supports_bw_scaling(dev))
> +               return 0;
> +
>         path0 = of_icc_get(dev->dev, "mdp0-mem");
>         path1 = of_icc_get(dev->dev, "mdp1-mem");
>

Instead of hard coding a check for specific SoC compatible strings,
why not just check to see if path0 and/or path1 are ERR_PTR(-ENODEV)?
Then change dpu_supports_bw_scaling() to just return:

!IS_ERR(dpu_kms->path[0])

It also seems like it would be nice if you did something if you got an
error other than -ENODEV. Right now this function returns it but the
caller ignores it? At least spit an error message out?


> @@ -154,6 +154,15 @@ struct vsync_info {
>
>  #define to_dpu_global_state(x) container_of(x, struct dpu_global_state, base)
>
> +/**
> + * dpu_supports_bw_scaling: returns true for drivers that support bw scaling.
> + * @dev: Pointer to drm_device structure
> + */
> +static inline int dpu_supports_bw_scaling(struct drm_device *dev)
> +{
> +       return of_device_is_compatible(dev->dev->of_node, "qcom,sc7180-mdss");

See above, but I think this would be better as:

  return !IS_ERR(dpu_kms->path[0]);

Specifically, I don't think of_device_is_compatible() is really
designed as something to call a lot. It's doing a whole bunch of data
structure parsing / string comparisons. It's OK-ish during probe
(though better to use the of_match_table), but you don't want to call
it on every runtime suspend / runtime resume.
