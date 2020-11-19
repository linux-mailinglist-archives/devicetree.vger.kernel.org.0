Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 05A722B90C3
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 12:15:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726731AbgKSLPK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 06:15:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726637AbgKSLPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 06:15:10 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 008C3C0613CF
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 03:15:09 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id d142so6794451wmd.4
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 03:15:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=i3bywqJGibmImGFVBloG/PxKQsxxZW+1/hxQlrjgQ2M=;
        b=kViebYGf415PllV0Y/kR3BerhJPS88hs4oIKDLMMJ6Oz6BBVcMhrU7MDfg6pBweuys
         HP/ktZl2lvoeUezzxzoZU0W7CYSur36juWPWN1SwExFOpyvq0nIOUywJxzwmjQuJUo5F
         EH93U+Nty5EKwSh9whoYh1ADy22TIFt9mJNecTs2EudW+PBgoY35ajE10b+iKH8A0GzA
         I07QUvMNJASyDEoFAwQHjCelRT9zFJodOryXa+FVVX1iI9MXReG1L0rxzhaHc6elvHcB
         GVRklaiVtGrs3gAWXwVnI8gcnloDTwy89I/iJE8zxoP8I0Nvy06FNNmvkpuynMPSKSfk
         1twg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=i3bywqJGibmImGFVBloG/PxKQsxxZW+1/hxQlrjgQ2M=;
        b=U9OUNZvGCxB5cbR1w+6LCGnW3qLce7B3cMcz0oKRc/znfShZi91FjCDnNP4o+c+4uF
         TV8ocYwOewgi5/+5QAxDNu3s2vpVwgygX5ctc/D4ZoE6uy7wX3MFbaSBXoBoGhPUWytv
         nCwqHmiMFiAXHa21BvKWVaoEMfYwTeQ5yXdE+T6IFHxj81rTSXhdPZuVVjySUZYHXr5Z
         o9QHeG2o4k9j4mQG/MDWY5aBe/4hG6R0RUBqkyaowmtKDuEXyMz2N71F61hy+o5V5rId
         cAPgk9yAvppt1d30vBNYPjN5Y19HThVwh7lBg/5T2GxZ3FfJLCLo5h32PiEaBx03xMlV
         2bNQ==
X-Gm-Message-State: AOAM533dxBAJ1tBv24wYPTS9wNPsVtU/PkPxCtMpKjWK/ek2YDmvgwM+
        gXdCGQ8Rm2V8pZrzEKPSs+1yQS0sWGHvvN1LGLE72Q==
X-Google-Smtp-Source: ABdhPJyB/azykQfBEc+CLIkkFCj/BRoWSVMQ5O1khMgFJBoR5x2SDgk0oIVd5froSHQYd588aMJNZk1cdHfNfEihuQs=
X-Received: by 2002:a1c:810c:: with SMTP id c12mr3772722wmd.96.1605784508683;
 Thu, 19 Nov 2020 03:15:08 -0800 (PST)
MIME-Version: 1.0
References: <20201029122522.1917579-1-maxime@cerno.tech> <20201029122522.1917579-2-maxime@cerno.tech>
In-Reply-To: <20201029122522.1917579-2-maxime@cerno.tech>
From:   Dave Stevenson <dave.stevenson@raspberrypi.com>
Date:   Thu, 19 Nov 2020 11:14:50 +0000
Message-ID: <CAPY8ntCBGBv-FkOD1qR4-xOsKSB+G1Qcy5rcebRmkVWiwpRUzw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/vc4: hdmi: Block odd horizontal timings
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

Thanks for the rewording :-)

On Thu, 29 Oct 2020 at 12:25, Maxime Ripard <maxime@cerno.tech> wrote:
>
> The FIFO between the pixelvalve and the HDMI controller runs at 2 pixels
> per clock cycle, and cannot deal with odd timings.
>
> Let's reject any mode with such timings.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> ---
>
> Changes from v1:
>   - s/broken/unsupported/
> ---
>  drivers/gpu/drm/vc4/vc4_hdmi.c | 12 ++++++++++++
>  drivers/gpu/drm/vc4/vc4_hdmi.h |  3 +++
>  2 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> index 3d0338822cd2..506c12454086 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -768,6 +768,11 @@ static int vc4_hdmi_encoder_atomic_check(struct drm_encoder *encoder,
>         struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
>         unsigned long long pixel_rate = mode->clock * 1000;
>
> +       if (vc4_hdmi->variant->unsupported_odd_h_timings &&
> +           ((mode->hdisplay % 2) || (mode->hsync_start % 2) ||
> +            (mode->hsync_end % 2) || (mode->htotal % 2)))
> +               return -EINVAL;
> +
>         if (pixel_rate > vc4_hdmi->variant->max_pixel_clock)
>                 return -EINVAL;
>
> @@ -780,6 +785,11 @@ vc4_hdmi_encoder_mode_valid(struct drm_encoder *encoder,
>  {
>         struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
>
> +       if (vc4_hdmi->variant->unsupported_odd_h_timings &&
> +           ((mode->hdisplay % 2) || (mode->hsync_start % 2) ||
> +            (mode->hsync_end % 2) || (mode->htotal % 2)))
> +               return MODE_H_ILLEGAL;
> +
>         if ((mode->clock * 1000) > vc4_hdmi->variant->max_pixel_clock)
>                 return MODE_CLOCK_HIGH;
>
> @@ -1830,6 +1840,7 @@ static const struct vc4_hdmi_variant bcm2711_hdmi0_variant = {
>                 PHY_LANE_2,
>                 PHY_LANE_CK,
>         },
> +       .unsupported_odd_h_timings      = true,
>
>         .init_resources         = vc5_hdmi_init_resources,
>         .csc_setup              = vc5_hdmi_csc_setup,
> @@ -1855,6 +1866,7 @@ static const struct vc4_hdmi_variant bcm2711_hdmi1_variant = {
>                 PHY_LANE_CK,
>                 PHY_LANE_2,
>         },
> +       .unsupported_odd_h_timings      = true,
>
>         .init_resources         = vc5_hdmi_init_resources,
>         .csc_setup              = vc5_hdmi_csc_setup,
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
> index 63c6f8bddf1d..6815e93b1a48 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.h
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
> @@ -62,6 +62,9 @@ struct vc4_hdmi_variant {
>          */
>         enum vc4_hdmi_phy_channel phy_lane_mapping[4];
>
> +       /* The BCM2711 cannot deal with odd horizontal pixel timings */
> +       bool unsupported_odd_h_timings;
> +
>         /* Callback to get the resources (memory region, interrupts,
>          * clocks, etc) for that variant.
>          */
> --
> 2.26.2
>
