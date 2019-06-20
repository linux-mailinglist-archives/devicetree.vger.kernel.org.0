Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 50B514D517
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 19:25:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732564AbfFTRZn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 13:25:43 -0400
Received: from mail-io1-f68.google.com ([209.85.166.68]:38922 "EHLO
        mail-io1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732563AbfFTRZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jun 2019 13:25:43 -0400
Received: by mail-io1-f68.google.com with SMTP id r185so5883453iod.6
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 10:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Uk7ZIBjV+VR8aLMJpfzpl5Ntma1pb1M7AjThVeR3/Lw=;
        b=lWHV/5eR2B3caBjxG4cP62L0BKX5+DFDOH9t5g8sI8uHgZiTX0lOT4X20fvXwSA5qJ
         A0pTf8M+e704lkfjlV26jPd6UAbvzhWdnGUrRTxvTt7qE6SNvM81e9y/2s2bRBYmnLmv
         /MFyEQsgp7eEwb/7xoLdGWppVk3xmWQpsCjdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Uk7ZIBjV+VR8aLMJpfzpl5Ntma1pb1M7AjThVeR3/Lw=;
        b=MSxWrfMfl61NTkd9oE7vhOc3YW+uIh7ND1nXmEVOZ2opLg8P+uqdd4+VbRyETg1gpJ
         lrjFeLvTo8IjiUMotIUgfBFDiv9yuT2OnYVJLgLs/lLMuYJMfc9hOjTjnUL3CqOX4xgk
         Z8d1eEfZC6Rv6Skvrrhg9ghsx8MqIBMFpxqzv+jEzJSl4qT3DRAGPXE5A8Lo9N87LXXK
         ederM5Npks71fIrf885Lcj8b+4tPXX8qiySxtHM5SVcbs2IQcIn1wT3OXnLT89/aUgat
         Vi/2ItLi5H25w6sA3tfUHAzu30EntzUO+159Paz9JWeDrR+nuArU9h9jeoOZRM8f+Mzv
         sZjQ==
X-Gm-Message-State: APjAAAXT0vFsOuVdgIarSm9ETmeuVUyvdIfpaFtXybFQ3OtyV9OCeWoF
        rW83zWaLmTGUEbyoK0qQiE6Zk1m3jck=
X-Google-Smtp-Source: APXvYqzaQP362F/+kESGWUkMy3wb5hJxlks5OMCS7NFFaF1bGIh8x12h5sw5EcIYu4eU4vWfdReHVQ==
X-Received: by 2002:a5d:964d:: with SMTP id d13mr948994ios.224.1561051542543;
        Thu, 20 Jun 2019 10:25:42 -0700 (PDT)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com. [209.85.166.45])
        by smtp.gmail.com with ESMTPSA id z17sm417271iol.73.2019.06.20.10.25.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jun 2019 10:25:41 -0700 (PDT)
Received: by mail-io1-f45.google.com with SMTP id s7so827240iob.11
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 10:25:41 -0700 (PDT)
X-Received: by 2002:a5d:96d8:: with SMTP id r24mr31877702iol.269.1561051541200;
 Thu, 20 Jun 2019 10:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190618213406.7667-1-ezequiel@collabora.com> <20190618213406.7667-3-ezequiel@collabora.com>
In-Reply-To: <20190618213406.7667-3-ezequiel@collabora.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 Jun 2019 10:25:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XoKNA4aW2LT7g8K2t+ABwgt=QJGAyiet1-Gyz3CgWmvg@mail.gmail.com>
Message-ID: <CAD=FV=XoKNA4aW2LT7g8K2t+ABwgt=QJGAyiet1-Gyz3CgWmvg@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm/rockchip: Add optional support for CRTC gamma LUT
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
        Sandy Huang <hjc@rock-chips.com>, kernel@collabora.com,
        Sean Paul <seanpaul@chromium.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Jacopo Mondi <jacopo@jmondi.org>,
        Ilia Mirkin <imirkin@alum.mit.edu>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Jun 18, 2019 at 2:43 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> +static void vop_crtc_gamma_set(struct vop *vop, struct drm_crtc *crtc,
> +                              struct drm_crtc_state *old_state)
> +{
> +       int idle, ret, i;
> +
> +       spin_lock(&vop->reg_lock);
> +       VOP_REG_SET(vop, common, dsp_lut_en, 0);
> +       vop_cfg_done(vop);
> +       spin_unlock(&vop->reg_lock);
> +
> +       ret = readx_poll_timeout(vop_dsp_lut_is_enable, vop,
> +                          idle, !idle, 5, 30 * 1000);
> +       if (ret)

Worth an error message?


> @@ -1205,6 +1294,7 @@ static void vop_crtc_atomic_flush(struct drm_crtc *crtc,
>
>  static const struct drm_crtc_helper_funcs vop_crtc_helper_funcs = {
>         .mode_fixup = vop_crtc_mode_fixup,
> +       .atomic_check = vop_crtc_atomic_check,

At first I was worried that there was a bug here since in the context
of dw_hdmi (an encoder) adding ".atomic_check" caused ".mode_fixup" to
stop getting called as per mode_fixup() in
"drivers/gpu/drm/drm_atomic_helper.c".

...but it seems like it's OK for CRTCs, so I think we're fine.


> @@ -1323,6 +1413,7 @@ static const struct drm_crtc_funcs vop_crtc_funcs = {
>         .disable_vblank = vop_crtc_disable_vblank,
>         .set_crc_source = vop_crtc_set_crc_source,
>         .verify_crc_source = vop_crtc_verify_crc_source,
> +       .gamma_set = drm_atomic_helper_legacy_gamma_set,

Are there any issues in adding this ".gamma_set" property even though
we may or may not actually have the ability to set the gamma
(depending on whether or not the LUT register range was provided in
the device tree)?  I am a DRM noob but
drm_atomic_helper_legacy_gamma_set() is not a trivial little function
and now we'll be running it in some cases where we don't actually have
gamma.

I also notice that there's at least one bit of code that seems to
check if ".gamma_set" is NULL.  ...and if it is, it'll return -ENOSYS
right away.  Do we still properly return -ENOSYS on devices that don't
have the register range?

It seems like the absolute safest would be to have two copies of this
struct: one used for VOPs that have the range and one for VOPs that
don't.

...but possibly I'm just paranoid and as I've said I'm a clueless
noob.  If someone says it's fine to always provide the .gamma_set
property that's fine too.


>  static void vop_fb_unref_worker(struct drm_flip_work *work, void *val)
> @@ -1480,6 +1571,10 @@ static int vop_create_crtc(struct vop *vop)
>                 goto err_cleanup_planes;
>
>         drm_crtc_helper_add(crtc, &vop_crtc_helper_funcs);
> +       if (vop_data->lut_size) {
> +               drm_mode_crtc_set_gamma_size(crtc, vop_data->lut_size);
> +               drm_crtc_enable_color_mgmt(crtc, 0, false, vop_data->lut_size);

Should we only do the above calls if we successfully mapped the resources?


> @@ -1776,6 +1871,17 @@ static int vop_bind(struct device *dev, struct device *master, void *data)
>         if (IS_ERR(vop->regs))
>                 return PTR_ERR(vop->regs);
>
> +       res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "lut");

As per comments in the bindings, shouldn't use the name "lut" but
should just pick resource #1.
