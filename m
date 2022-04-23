Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CD3350C5BD
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 02:29:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230143AbiDWAcb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 20:32:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229899AbiDWAc3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 20:32:29 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90B5F41339
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 17:29:34 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-e67799d278so6486656fac.11
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 17:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=TV1o9feYxCdyKt0JuJiBgbZSXqeh07AaBQWI/pgyL08=;
        b=LHERZD4VRU537UNeGu4kQJYZvCu0l/bUDJruPxQimieXQjAX7LiJpdEkKbNSh1uoEy
         8oSyOUxSJNDayHO96q+MfbC8WSVI1QsSik5zxPPllIpQoNBdYYZTteTzstLtP/2HzKQE
         R2yadhEr14mQtZ5JEFlVYKv+EG35Ui7zfG8cg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=TV1o9feYxCdyKt0JuJiBgbZSXqeh07AaBQWI/pgyL08=;
        b=IAJiV/+y2iYMYWRrV2yqUYJcyt6efSIXOP2VqUrm8qtaKq9yQP8A+sucZfEsfgTHw0
         ArEYzGJh4Svd7yZDlKgEhNRfwuIgNhdRA/WTYnYx6wHFRZUx7IMUYPOy/Az7646T7SDZ
         LZinDfGt6/kWIGa4z4ucG2YMMqjgT6HdzSm8miA83P5I2Cukq7Zp/LsPbiVQV9D3zQCg
         0hKGino8co5RNwB7ghvwYL59hcoIiLZaC7B74o9xs54owKFjcKUAOv5UoG1CY98fYjx9
         Xx6P68DMcSda2kWckfxsPIHyvVL8Hz6oM5yyJpaWy74vliB5kJ6r43kw0XPRb7ldGU8u
         y7LQ==
X-Gm-Message-State: AOAM5304XmG+cUW82s5eFiAWK5Cm4YOQ0j5AoNkWeRILe/km6fZmYUfA
        bL9KMGwCvVSF4CtPSdkXJnhd9D0W116kk7a5qV3ZbA==
X-Google-Smtp-Source: ABdhPJwZSWtMrJXIW76T3DHRM8eiuaVPJzLzWN3WNj80zMzBEv1KTqiTUVdC20phzW29gNwZ7oWC/dChPOa9FfCP8GM=
X-Received: by 2002:a05:6870:558e:b0:e1:db7c:26aa with SMTP id
 n14-20020a056870558e00b000e1db7c26aamr3197762oao.63.1650673773969; Fri, 22
 Apr 2022 17:29:33 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 22 Apr 2022 17:29:33 -0700
MIME-Version: 1.0
In-Reply-To: <1650618666-15342-3-git-send-email-quic_sbillaka@quicinc.com>
References: <1650618666-15342-1-git-send-email-quic_sbillaka@quicinc.com> <1650618666-15342-3-git-send-email-quic_sbillaka@quicinc.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Fri, 22 Apr 2022 17:29:33 -0700
Message-ID: <CAE-0n52tKt3yywZFEKobet4t9xXA_GbTDcUqPPEj5A-KkDET3Q@mail.gmail.com>
Subject: Re: [PATCH v9 2/4] drm/msm/dp: Support only IRQ_HPD and REPLUG
 interrupts for eDP
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     robdclark@gmail.com, seanpaul@chromium.org,
        quic_kalyant@quicinc.com, quic_abhinavk@quicinc.com,
        dianders@chromium.org, quic_khsieh@quicinc.com,
        bjorn.andersson@linaro.org, sean@poorly.run, airlied@linux.ie,
        daniel@ffwll.ch, dmitry.baryshkov@linaro.org,
        quic_vproddut@quicinc.com, quic_aravindh@quicinc.com,
        steev@kali.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sankeerth Billakanti (2022-04-22 02:11:04)
> The panel-edp enables the eDP panel power during probe, get_modes
> and pre-enable. The eDP connect and disconnect interrupts for the eDP/DP
> controller are directly dependent on panel power. As eDP display can be
> assumed as always connected, the controller driver can skip the eDP
> connect and disconnect interrupts. Any disruption in the link status
> will be indicated via the IRQ_HPD interrupts.
>
> So, the eDP controller driver can just enable the IRQ_HPD and replug
> interrupts. The DP controller driver still needs to enable all the
> interrupts.
>
> Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>

The sprinkling of if conditions and manual driving of the DP plug/unplug
state machine is pretty convoluted. To make it better the driver needs
an overhaul. Anyway, it looks mostly fine to me except for this replug
interrupt question below. Otherwise

Reviewed-by: Stephen Boyd <swboyd@chromium.org>

>  int dp_catalog_ctrl_get_interrupt(struct dp_catalog *dp_catalog)
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index 055681a..dea4de9 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -1096,6 +1097,13 @@ static void dp_display_config_hpd(struct dp_display_private *dp)
>         dp_display_host_init(dp);
>         dp_catalog_ctrl_hpd_config(dp->catalog);
>
> +       /* Enable plug and unplug interrupts only for external DisplayPort */
> +       if (!dp->dp_display.is_edp)
> +               dp_catalog_hpd_config_intr(dp->catalog,
> +                               DP_DP_HPD_PLUG_INT_MASK |
> +                               DP_DP_HPD_UNPLUG_INT_MASK,
> +                               true);
> +

It seems like only the plug and unplug is enabled for DP here. Is replug
enabled for eDP when it shouldn't be?

>         /* Enable interrupt first time
>          * we are leaving dp clocks on during disconnect
>          * and never disable interrupt
