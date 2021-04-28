Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2226D36E033
	for <lists+devicetree@lfdr.de>; Wed, 28 Apr 2021 22:21:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240539AbhD1UWT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Apr 2021 16:22:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240515AbhD1UWS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Apr 2021 16:22:18 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C224C06138B
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 13:21:33 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id y10so12144029ilv.0
        for <devicetree@vger.kernel.org>; Wed, 28 Apr 2021 13:21:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=poorly.run; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3FlfJuCO/i0lHXz9Yi8JuX0LHEp/FCSt5EvXf/XQhbw=;
        b=Twe/v+kPHslIBdnujIpFoTmjqKiXz3Qw86igYBt6JKw9MRVlLASnJezyH+2HX0D5/y
         1S+ZoIf/DhA5jzqOmWyOdNWhi372TPnKzo2U1odOVbpIh9peetD1cWRUTXNOuHiur8RF
         CTAf8QNFFktBK+T6i7jMTFhiGslZ/9XyFimZ73V5HSutx9tH2bKP85o42syoYOj9MinU
         N7vUUXLASROmijnkzZEYDKhs1CIZcc88YyxWOpDVZ46m4dn3JJAqyEJPLohCA9ebVbju
         OYL1e2aCMN1Gi1lP9HTfavKkJuXnOqd3N6Tdd5CHP0iPUiI120LMpSdC1aXMgJjhs6dD
         oW4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3FlfJuCO/i0lHXz9Yi8JuX0LHEp/FCSt5EvXf/XQhbw=;
        b=XEaqVFUny211Hmya0pTgYLOWqqIEOFlwBvfhnLxlZoD1ZLZhv4SEocGSBFIftYPYc8
         ikm02ngbyg4Z5uetDcrk/QKirqhrwCkZ8yyOLla+9CEWpNnS0zeK9EyLjAjOQ3QpJhlw
         AyRhHmYINP3mSk1IRlyz9X8aoIWYghKrul4ig6xyuPTH3YbQS/T8brYUyW7v2sVcmUze
         xD2jKNUcneffz5DuxDN1mdzc3Nb44Se3zWv0ZLjD+W8QISRDHtPxbuHiUBzHFm8suE1G
         IJvmfdw09p2hG8Rkfe5YHScHQqCFLMrO+36rrpXBS8qFD86TQCMSi6vHqmui0OKrZG9X
         NWAw==
X-Gm-Message-State: AOAM533IhQqAZAWqiC4tyQRn2FaeOtcAd7rywV0hhjzyWkexSCIdYgi5
        CA3cMWpGEsS22z8WSSSps1xJKxKrMKwAaoZrbis01Q==
X-Google-Smtp-Source: ABdhPJxW0HbA94ewF7F3weEGbYhyR1USNUWGh56KyTn6uWBkUkN9dCEH3OgkE9YeiRwCBSERhbC4leLYiC4JNncqOlo=
X-Received: by 2002:a05:6e02:1d06:: with SMTP id i6mr24290849ila.165.1619641292908;
 Wed, 28 Apr 2021 13:21:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210428170416.1027484-1-hsinyi@chromium.org> <20210428170416.1027484-3-hsinyi@chromium.org>
In-Reply-To: <20210428170416.1027484-3-hsinyi@chromium.org>
From:   Sean Paul <sean@poorly.run>
Date:   Wed, 28 Apr 2021 16:20:56 -0400
Message-ID: <CAMavQK+RJATzOVfgRhpU5i3kGsYM2-y4whgZMTdwNnK=z63nYA@mail.gmail.com>
Subject: Re: [PATCH v5 3/4] drm/i915: init panel orientation property
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        LKML <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 28, 2021 at 1:04 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Creating the panel orientation property first since we separate the
> property creating and value setting.

This should probably be included in patch 1 so you don't regress i915
in between patches.

Sean

>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c  | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c  | 1 +
>  3 files changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 9282978060b0..162fb3cf0f5a 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1903,6 +1903,7 @@ static void icl_dsi_add_properties(struct intel_connector *connector)
>
>         connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>
> +       drm_connector_attach_scaling_mode_property(&connector->base);
>         drm_connector_set_panel_orientation_with_quirk(&connector->base,
>                                 intel_dsi_get_panel_orientation(connector),
>                                 connector->panel.fixed_mode->hdisplay,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a5231ac3443a..f1d664e5abb2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5263,6 +5263,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>         intel_panel_setup_backlight(connector, pipe);
>
>         if (fixed_mode) {
> +               drm_connector_init_panel_orientation_property(connector);
>                 drm_connector_set_panel_orientation_with_quirk(connector,
>                                 dev_priv->vbt.orientation,
>                                 fixed_mode->hdisplay, fixed_mode->vdisplay);
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 9bee99fe5495..853855482af1 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -1632,6 +1632,7 @@ static void vlv_dsi_add_properties(struct intel_connector *connector)
>
>                 connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
>
> +               drm_connector_init_panel_orientation_property(&connector->base);
>                 drm_connector_set_panel_orientation_with_quirk(
>                                 &connector->base,
>                                 intel_dsi_get_panel_orientation(connector),
> --
> 2.31.1.498.g6c1eba8ee3d-goog
>
