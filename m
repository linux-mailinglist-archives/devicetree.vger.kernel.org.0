Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 274EC50A3FB
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 17:24:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1390040AbiDUP0t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 11:26:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1390035AbiDUP0s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 11:26:48 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17EA342EC7
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 08:23:59 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id ks6so10816708ejb.1
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 08:23:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rWHrkI/plHQsKHEeS5/0Rby949Lxiklh2NSSrLYMtUM=;
        b=ZhforE7iVW5RAp7ovyVF911uWEZSiPFqpwhnpmO8NbXTjh/OEabvdgvFeeGy86Iyjx
         ARnVvz6IBOS3JkLh8eCwYpnKjgfkxZmH6+UQBzOY/Gzk7bdYAcEzGeXpg+Nknw4p+8FC
         aqR5gA0GKGWQLbDBgz4ayC70r7I+L74SaskP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rWHrkI/plHQsKHEeS5/0Rby949Lxiklh2NSSrLYMtUM=;
        b=50GOXPy2m8tWS+u4rd7ItlagDe5o9vo70kXhullaB/u+yYQPRkWOdCECax0Cp4OX5+
         03akYk/wpWlw5ezrwNk7BSYtb6cFpXhOO4RmyWmZo9vA6sKnF5vaoj6lIhlif9SCJ7Jw
         UqL9K4hlg9h/cy0Sr2bqN71UHmgP93K/dZgbHNV3wfDUhSJLB0Rvl44HmyZYLgGgJGji
         21DofBFJkVoZoMNuWDjrhZL78nF/kRhcXRDR2BJ4SaSgDm1A9amyfo+dOZByCCwuTJZb
         QH8sTu9tXXB2/QZ+cFtzSi+mh9wFByxExMvQcO0Bj95spuNj/TSIUt9KeG2igbk+hvEm
         t5vg==
X-Gm-Message-State: AOAM5307zOmZU1XO2MLk/0THHRFmAF5yq3O7ICRsuhz3xYs0xvi7S0nl
        /V4JQSa+aZ8V9ZyD1vUbtHt9Lt+z1Z5qBPhz
X-Google-Smtp-Source: ABdhPJwpu3PGvfrjJV7Ct8TwNDaJLb+DDR5DK3nmFif9Afm8ydquXingm+UX2vDJIvMF9E1wl7P0GA==
X-Received: by 2002:a17:907:7242:b0:6e7:f185:18e2 with SMTP id ds2-20020a170907724200b006e7f18518e2mr17764ejc.577.1650554637325;
        Thu, 21 Apr 2022 08:23:57 -0700 (PDT)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com. [209.85.221.43])
        by smtp.gmail.com with ESMTPSA id lb4-20020a170907784400b006e0d13f65e5sm7897621ejc.167.2022.04.21.08.23.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 08:23:55 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id h25so1158055wrc.13
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 08:23:55 -0700 (PDT)
X-Received: by 2002:a05:6000:1105:b0:20a:80b4:bcaf with SMTP id
 z5-20020a056000110500b0020a80b4bcafmr166285wrw.679.1650554634333; Thu, 21 Apr
 2022 08:23:54 -0700 (PDT)
MIME-Version: 1.0
References: <1650551811-24319-1-git-send-email-quic_sbillaka@quicinc.com> <1650551811-24319-3-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1650551811-24319-3-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 21 Apr 2022 08:23:41 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UVmUG0t-8wFXT-NT1-naojeJ_gcd8eEVr96AnMos0m4A@mail.gmail.com>
Message-ID: <CAD=FV=UVmUG0t-8wFXT-NT1-naojeJ_gcd8eEVr96AnMos0m4A@mail.gmail.com>
Subject: Re: [PATCH v8 2/4] drm/msm/dp: Support only IRQ_HPD and REPLUG
 interrupts for eDP
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 21, 2022 at 7:37 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
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
> ---
> Changes in v8:
>   - add comment explaining the interrupt status return
>
> Changes in v7:
>   - reordered the patch in the series
>   - modified the return statement for isr
>   - connector check modified to just check for eDP
>
>  drivers/gpu/drm/msm/dp/dp_catalog.c | 18 ++++++++++++------
>  drivers/gpu/drm/msm/dp/dp_display.c | 22 +++++++++++++++++++++-
>  2 files changed, 33 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/msm/dp/dp_catalog.c b/drivers/gpu/drm/msm/dp/dp_catalog.c
> index fac815f..3a298e9 100644
> --- a/drivers/gpu/drm/msm/dp/dp_catalog.c
> +++ b/drivers/gpu/drm/msm/dp/dp_catalog.c
> @@ -569,10 +569,6 @@ void dp_catalog_ctrl_hpd_config(struct dp_catalog *dp_catalog)
>
>         u32 reftimer = dp_read_aux(catalog, REG_DP_DP_HPD_REFTIMER);
>
> -       /* enable HPD plug and unplug interrupts */
> -       dp_catalog_hpd_config_intr(dp_catalog,
> -               DP_DP_HPD_PLUG_INT_MASK | DP_DP_HPD_UNPLUG_INT_MASK, true);
> -
>         /* Configure REFTIMER and enable it */
>         reftimer |= DP_DP_HPD_REFTIMER_ENABLE;
>         dp_write_aux(catalog, REG_DP_DP_HPD_REFTIMER, reftimer);
> @@ -599,13 +595,23 @@ u32 dp_catalog_hpd_get_intr_status(struct dp_catalog *dp_catalog)
>  {
>         struct dp_catalog_private *catalog = container_of(dp_catalog,
>                                 struct dp_catalog_private, dp_catalog);
> -       int isr = 0;
> +       int isr, mask;
>
>         isr = dp_read_aux(catalog, REG_DP_DP_HPD_INT_STATUS);
>         dp_write_aux(catalog, REG_DP_DP_HPD_INT_ACK,
>                                  (isr & DP_DP_HPD_INT_MASK));
> +       mask = dp_read_aux(catalog, REG_DP_DP_HPD_INT_MASK);
>
> -       return isr;
> +       /*
> +        * REG_DP_DP_HPD_INT_STATUS reports the status of all interrupts
> +        * irrespective of their masked status. The HW interrupt will not be
> +        * generated if an interrupt is masked. However, the interrupt status
> +        * bit in the register will still be set. The eDP controller driver
> +        * masks the plug and unplug interrupts unlike DP controller which
> +        * unmasks all the interrupts. So, do not report the status of the
> +        * masked interrupts.
> +        */
> +       return isr & (mask | ~DP_DP_HPD_INT_MASK);

What's still missing in your comments is why you aren't just doing
"return isr & mask;". In other words, why is the API for HPD bits
different from the API for non-HPD bits? What code out there wants to
know about non-HPD interrupts even if they are masked?

Actually, thinking about this more, my preference would be this:

a) Rename the existing function to dp_catalog_hpd_get_intr_status_raw()

b) Create a new function called dp_catalog_hpd_get_intr_status() whose
implementation is:

  return dp_catalog_hpd_get_intr_status_raw() & mask;

Then any callers who care about the raw status can be changed to call
dp_catalog_hpd_get_intr_status_raw(). If no callers need
dp_catalog_hpd_get_intr_status_raw() then you don't actually need to
create this function.

If you make that change then all of a sudden the API isn't weird/wonky
and you can just get rid of the comment I asked you to add.


-Doug
