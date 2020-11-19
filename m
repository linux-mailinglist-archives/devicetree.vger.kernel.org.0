Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D8442B90D6
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 12:22:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726485AbgKSLTs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 06:19:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725783AbgKSLTs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 06:19:48 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B63DC0613CF
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 03:19:48 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id 10so6815202wml.2
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 03:19:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XrwDlcI2EzmOzDcn/Tzkd6EB0qAEn/y8FCnhZE0tp7A=;
        b=h9vN3VIw0MCNRMJkCfWq/ExEm1Nz8fBc0Cslh80JpH7dZRwI4EZYO44zX8zHU/QLc1
         1U/4xAGDtgOSFZD1jhSzfXHaIww1S9m0qmzcDW0fhX51qFAa4xrnDdYuLGX8kb3Jw+LO
         m14BW0jflaKCnDXcu7mQncPod6RITmxsXvQjHGdUHhn/gcTziYXbUxTJXONtiMYYwlXv
         EnEQjK7YaPWzN9mffvwmWsOnWbkVDHE/qJBKHm9uDjqNJhdCKD2uU0wIdhnV+1cul9No
         XB8g/AktYFJ7Ijv4JE85uDv0/00mj6I5UqIgPPWINYQBRFx1wfZprXqZPDy0p/iGoAAe
         mEMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XrwDlcI2EzmOzDcn/Tzkd6EB0qAEn/y8FCnhZE0tp7A=;
        b=nnpjU2NA7xCyGWw5LTVX7HRaNYba1BezexrOsKxlIyo+yB6FSDU1y5SzCXAwwuOFme
         q5pQBQRN0W+d2uDrFIV2mtDhK90cwGd5mKdRhWAnGqnOH04pmsbamUMQ2h9teQd9blKi
         m1VyKGN7S8GQhO0M9ssbr8EUTObeiuraYGZw6sm1vHPjIsQi66TwXrmxRroaZalCE6Xq
         xhF2loQN7q+P9n00JqL+LnuV3u72MsakmhOibQTXqXOgkGaSxhLiyS61Djciy+KxbZ2D
         SInJevNQCO16EQ26xOmDdVLg8ZjmPp9m6HTu0LtIF18FKlREG5gMXkcSpyg+QQ8XZCLF
         Mshg==
X-Gm-Message-State: AOAM530V6+EWfBpxyPiZCX9W9xtqFhO7/RheHYzRe59u3lHxtn6ldtwj
        2fKfwppMkP9LNjA1T+0WADNYsB+yLwJvRCzETcw9Kw==
X-Google-Smtp-Source: ABdhPJygVy+qc6Ssg9YPWF0Y82vzW2HMzIRsr4ZS6d4nrGxMVX2vzHjq7///sObBVLBaMKEpWK1h59qUYB8uVUpyyec=
X-Received: by 2002:a1c:9804:: with SMTP id a4mr3939825wme.158.1605784786747;
 Thu, 19 Nov 2020 03:19:46 -0800 (PST)
MIME-Version: 1.0
References: <20201029122522.1917579-1-maxime@cerno.tech>
In-Reply-To: <20201029122522.1917579-1-maxime@cerno.tech>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Thu, 19 Nov 2020 11:19:27 +0000
Message-ID: <CAPY8ntDdRkNBayrhJX+9Dvvbx8PsnMGTuGPxEPZ2-ULcZg2y=w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] drm/vc4: hdmi: Make sure our clock rate is within limits
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>, devicetree@vger.kernel.org,
        DRI Development <dri-devel@lists.freedesktop.org>,
        linux-rpi-kernel@lists.infradead.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Maxime

On Thu, 29 Oct 2020 at 12:25, Maxime Ripard <maxime@cerno.tech> wrote:
>
> The HDMI controller cannot go above a certain pixel rate limit depending on
> the generations, but that limit is only enforced in mode_valid at the
> moment, which means that we won't advertise modes that exceed that limit,
> but the userspace is still free to try to setup a mode that would.
>
> Implement atomic_check to make sure we check it in that scenario too.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> ---
>
> Changes from v1:
>   - Added that patch to resolve a conflict
> ---
>  drivers/gpu/drm/vc4/vc4_hdmi.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> index e8f99e290655..3d0338822cd2 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -760,6 +760,20 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
>  {
>  }
>
> +static int vc4_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
> +                                        struct drm_crtc_state *crtc_state,
> +                                        struct drm_connector_state *conn_state)
> +{
> +       struct drm_display_mode *mode = &crtc_state->adjusted_mode;
> +       struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
> +       unsigned long long pixel_rate = mode->clock * 1000;
> +
> +       if (pixel_rate > vc4_hdmi->variant->max_pixel_clock)
> +               return -EINVAL;
> +
> +       return 0;
> +}
> +
>  static enum drm_mode_status
>  vc4_hdmi_encoder_mode_valid(struct drm_encoder *encoder,
>                             const struct drm_display_mode *mode)
> @@ -773,6 +787,7 @@ vc4_hdmi_encoder_mode_valid(struct drm_encoder *encoder,
>  }
>
>  static const struct drm_encoder_helper_funcs vc4_hdmi_encoder_helper_funcs = {
> +       .atomic_check = vc4_hdmi_encoder_atomic_check,
>         .mode_valid = vc4_hdmi_encoder_mode_valid,
>         .disable = vc4_hdmi_encoder_disable,
>         .enable = vc4_hdmi_encoder_enable,
> --
> 2.26.2
>
