Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B049F27AA2B
	for <lists+devicetree@lfdr.de>; Mon, 28 Sep 2020 11:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726651AbgI1JCX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 05:02:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726583AbgI1JCW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 05:02:22 -0400
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com [IPv6:2607:f8b0:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7FEAC0613CE
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 02:02:22 -0700 (PDT)
Received: by mail-ot1-x344.google.com with SMTP id 60so205035otw.3
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 02:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JTLdvESzKL3sin7nSAfmPRYlBKMWaQyO8M8qi1wB0vA=;
        b=P3WC+B+zbq6ccamhC8om9venVo4Ki4C0Jv56FZRlnkvjwh4JDCiZMfhtCBE2RVCFiY
         w8pwMUnH+ZhNY6o/sZ0pZavPl4aHNuk5yuWGmi6VD1Kn9ldnqlEbrjWgSrj66MTZ8Fiq
         Ke2bvKok1z5NI1SjBMmp5i1+K2WniOLRrQfsw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JTLdvESzKL3sin7nSAfmPRYlBKMWaQyO8M8qi1wB0vA=;
        b=oen9ZQmncwK4t/fDjeF+StRrJlLjj7YtrOwrbU0HEgQ6QWjDdl+8QXRhUgkZKPkmzY
         2Y7SQ53b6+/COgq57Jc6+TGFlDgSf/xnCuAuUOK0EctnD2zBJkCSN/BpOD0ocr2LjIK8
         wJkQr8ifM5YOavoc7Pji8S5aMWdLw0sUzi6ih73rIHsHG1PaOZJ1xTOcqWaX9EZC/hcz
         eWT5j33y14Z14ykvXnr+brcsvQty47EuFaEicGxIbz4wtdpeTEeGXF3HSA14Ka2P++ed
         PyQkdgiUS1IFojqw5GmIrjvSnpkqyFhB/WLlvqKtieQN6hzaUQMMFzcnjwVJelbznkwD
         HQDQ==
X-Gm-Message-State: AOAM5333feovDfR+O2VGIPnKyFjpVIh2VaJ8HLloQQAuAxjR7eFo7lDn
        dP+KVyhHFKspx8ujrVI7QpzHw3j44UbLhA3L5nDZoX446iC18A==
X-Google-Smtp-Source: ABdhPJyU9867B8TXTjJniqPLDSpiY941W+DcOl0jwbG9DyQbz/8S6Go5xRxLVGl+hpcEAvncUjfrOTKeB+JK4nZSMxo=
X-Received: by 2002:a05:6830:14d9:: with SMTP id t25mr309022otq.188.1601283742161;
 Mon, 28 Sep 2020 02:02:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200925130744.575725-1-maxime@cerno.tech>
In-Reply-To: <20200925130744.575725-1-maxime@cerno.tech>
From:   Daniel Vetter <daniel@ffwll.ch>
Date:   Mon, 28 Sep 2020 11:02:11 +0200
Message-ID: <CAKMK7uG8=depCjWACjFxSph6o4rrPu1Ng28F7om_CYaiMj_HQQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/vc4: hdmi: Disable Wifi Frequencies
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Eric Anholt <eric@anholt.net>,
        devicetree <devicetree@vger.kernel.org>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        Phil Elwell <phil@raspberrypi.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 28, 2020 at 9:06 AM Maxime Ripard <maxime@cerno.tech> wrote:
>
> There's cross-talk on the RPi4 between the 2.4GHz channels used by the WiFi
> chip and some resolutions, most notably 1440p at 60Hz.
>
> In such a case, we can either reject entirely the mode, or lower slightly
> the pixel frequency to remove the overlap. Let's go for the latter.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/display/brcm,bcm2711-hdmi.yaml        |  6 ++++++
>  drivers/gpu/drm/vc4/vc4_hdmi.c                     | 14 +++++++++++++-
>  drivers/gpu/drm/vc4/vc4_hdmi.h                     |  8 ++++++++
>  3 files changed, 27 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> index 03a76729d26c..63e7fe999c0a 100644
> --- a/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/brcm,bcm2711-hdmi.yaml
> @@ -76,6 +76,12 @@ properties:
>    resets:
>      maxItems: 1
>
> +  raspberrypi,disable-wifi-frequencies:
> +    type: boolean
> +    description: >
> +      Should the pixel frequencies in the WiFi frequencies range be
> +      avoided?
> +
>  required:
>    - compatible
>    - reg
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> index acfb4e235214..74da7c00ecd0 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -877,13 +877,22 @@ static int vc4_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
>         struct vc4_hdmi_connector_state *vc4_state = conn_state_to_vc4_hdmi_conn_state(conn_state);
>         struct drm_display_mode *mode = &crtc_state->adjusted_mode;
>         struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
> -       unsigned long long pixel_rate = mode->clock * 1000;
> +       unsigned long long pixel_rate;
>
>         if (vc4_hdmi->variant->broken_odd_h_timings &&
>             ((mode->hdisplay % 2) || (mode->hsync_start % 2) ||
>              (mode->hsync_end % 2) || (mode->htotal % 2)))
>                 return -EINVAL;
>
> +       /*
> +        * The 1440p@60 pixel rate is in the same range than the WiFi
> +        * channels. Slightly lower the frequency to bring it out of the
> +        * WiFi range.
> +        */
> +       if (vc4_hdmi->disable_wifi_frequencies && mode->clock == 241500)
> +               mode->clock = 238560;

Don't you want to map for a (narrow) range of frequencies here? Just
for that infamous 60p vs 59.99p thing and similar. And I think that
would still be in that band you want to avoid.
-Daniel

> +
> +       pixel_rate = mode->clock * 1000;
>         if (mode->flags & DRM_MODE_FLAG_DBLCLK)
>                 pixel_rate *= 2;
>
> @@ -1837,6 +1846,9 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
>                 vc4_hdmi->hpd_active_low = hpd_gpio_flags & OF_GPIO_ACTIVE_LOW;
>         }
>
> +       vc4_hdmi->disable_wifi_frequencies =
> +               of_property_read_bool(dev->of_node, "raspberrypi,disable-wifi-frequencies");
> +
>         pm_runtime_enable(dev);
>
>         drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
> index 40e51ece8efe..6618ee758890 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.h
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
> @@ -143,6 +143,14 @@ struct vc4_hdmi {
>         int hpd_gpio;
>         bool hpd_active_low;
>
> +       /*
> +        * On some systems (like the RPi4), some modes are in the same
> +        * frequency range than the WiFi channels (1440p@60Hz for
> +        * example). Should we take evasive actions because that system
> +        * has a wifi adapter.
> +        */
> +       bool disable_wifi_frequencies;
> +
>         struct cec_adapter *cec_adap;
>         struct cec_msg cec_rx_msg;
>         bool cec_tx_ok;
> --
> 2.26.2
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
