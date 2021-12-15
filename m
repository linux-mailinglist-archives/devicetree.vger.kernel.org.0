Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8CB6A475936
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 13:59:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230238AbhLOM71 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 07:59:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229643AbhLOM71 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 07:59:27 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EF75C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 04:59:24 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id t5so74259572edd.0
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 04:59:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k1Ri1EgKSUNED5xNyfEYmfypIZWa4wkjxqIXFtu/kvY=;
        b=nFMJyaSnrQnuF+HwgdCT8f/VQSf9bHl2j2xdci/hzjDu4y2xn7CUhpc6GZSIQ3CLAq
         0BDQV2bnjIYkfegqc4X1GIr8qrAPL/5AwTbkNqQV2Bo7SgSur0qo5LeRW9K0p/KSihn1
         IltGHBrLkY+yWhfzBu6/wy1qpkb8oiYEI2/0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k1Ri1EgKSUNED5xNyfEYmfypIZWa4wkjxqIXFtu/kvY=;
        b=NrdkOuiikYsIjCH2ltBt+8QtiKgSJ2xik7LaZ6BJeN7cIcmqz7LFPBg8dEWD3tpPxq
         waCvypLTSs0T6ftmB3SiDFka3QFNuxpAP9h5RhF03PFzDIK699ea+5Gl76TzcWa8/0hV
         nECCXQIN5XnWq1LgMp4AlD1wYSMvvd1BoO8Lxr857q1J9aNSzoho+19tP7IqPbjj+hYp
         kA6CwzPHGJZfzbvgEa142laXw8TZkdW0bx2naDje7HvCLO9j163w4gbs8Mb0meuk/TFo
         rk413Mzl4d+m1SVayU9tppJ9znWkcclfFOH+D4FOVFNX1GpZ+a/i/By2tSErOEprKX9M
         hV0g==
X-Gm-Message-State: AOAM532VWZ/BzkvfQVYpWXP4fAixCVifL7NIi88K5e/8AXhXL+ZGxFQ0
        LiQRJ32tENmJlq37BBO6FccljDn7EuJZhDUybTYjNA==
X-Google-Smtp-Source: ABdhPJxSXVcTRiuSYB5mPGolhbjcGHak3RvsLdDPKEAACsRTZtSBDg231505itaHgPV8uEuVXjZXhCyuMpItoyGs89g=
X-Received: by 2002:aa7:cc82:: with SMTP id p2mr14243586edt.201.1639573162710;
 Wed, 15 Dec 2021 04:59:22 -0800 (PST)
MIME-Version: 1.0
References: <CGME20211215100518eucas1p1c3020dd07a9e27e1280d507fa709f09f@eucas1p1.samsung.com>
 <20211215100459.44196-1-jagan@amarulasolutions.com> <17cca00a-85a0-465f-201b-ac4c61b5ae0a@samsung.com>
In-Reply-To: <17cca00a-85a0-465f-201b-ac4c61b5ae0a@samsung.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 15 Dec 2021 18:29:11 +0530
Message-ID: <CAMty3ZCX7ziywip9ToU4XP_GqK2uVX=iH0wgeyzgazWSf=9Cgg@mail.gmail.com>
Subject: Re: [PATCH v2] drm: bridge: tc358764: Use drm panel_bridge API
To:     Marek Szyprowski <m.szyprowski@samsung.com>
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        devicetree@vger.kernel.org, linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Wed, Dec 15, 2021 at 5:30 PM Marek Szyprowski
<m.szyprowski@samsung.com> wrote:
>
> Hi Jagan,
>
> On 15.12.2021 11:04, Jagan Teki wrote:
> > Replace the manual panel handling code by a drm panel_bridge via
> > devm_drm_of_get_bridge().
> >
> > Adding panel_bridge handling,
> >
> > - Drops drm_connector and related operations as drm_bridge_attach
> >    creates connector during attachment.
> >
> > - Drops panel pointer and panel healpers.
> >
> > This simplifies the driver and allows all components in the display
> > pipeline to be treated as bridges.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> I just tested it on top of linux-next with "drm: of: Lookup if child
> node has panel or bridge" patch. Sadly it still doesn't work on
> Exynos5250-based Arndale board:
>
> OF: graph: no port node found in /soc/hdmi@14530000
> [drm] Exynos DRM: using 14400000.fimd device for DMA mapping operations
> exynos-drm exynos-drm: bound 14400000.fimd (ops fimd_component_ops)
> exynos-drm exynos-drm: bound 14450000.mixer (ops mixer_component_ops)
> OF: graph: no port node found in /soc/dsi@14500000
> exynos-drm exynos-drm: bound 14500000.dsi (ops exynos_dsi_component_ops)
> exynos-drm exynos-drm: bound 14530000.hdmi (ops hdmi_component_ops)
> exynos-drm exynos-drm: [drm] Cannot find any crtc or sizes
> exynos-drm exynos-drm: [drm] Cannot find any crtc or sizes
> [drm] Initialized exynos 1.1.0 20180330 for exynos-drm on minor 0
> panfrost 11800000.gpu: clock rate = 533000000
> panfrost 11800000.gpu: mali-t600 id 0x600 major 0x0 minor 0x0 status 0x1
> panfrost 11800000.gpu: features: 00000000,10206000, issues:
> 00000000,31b4dfff
> panfrost 11800000.gpu: Features: L2:0x07110206 Shader:0x00000000
> Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xf JS:0x7
> panfrost 11800000.gpu: shader_present=0xf l2_present=0x1
> [drm] Initialized panfrost 1.2.0 20180908 for 11800000.gpu on minor 1
> ------------[ cut here ]------------
> WARNING: CPU: 1 PID: 7 at drivers/gpu/drm/drm_atomic_state_helper.c:494
> drm_atomic_helper_connector_duplicate_state+0x60/0x68

Known problem, it require 1/6 from Bridge conversation series. We can
move this patch into conversion series next time or while merging.

Thanks,
Jagan.
