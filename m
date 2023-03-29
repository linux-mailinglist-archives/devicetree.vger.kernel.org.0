Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26C6F6CECDA
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 17:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbjC2P0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 11:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbjC2P0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 11:26:45 -0400
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40FD62D41
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 08:26:42 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id p15so19770018ybl.9
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 08:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1680103601;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jV2lyvl8ub+2VPRjeHlb+sHmzhDe5z+36U7u39h187Y=;
        b=koSCDXLrsYInsfC1e0e5FcEjzTsnis9tfFB1SzdjyHQMOpeNNAOVeSjuT0ne4OK/TV
         qMcGvU5Gyrtt+ebsaKD9jX74i1kdtld413I9Dr3TcitiHoDN/lRfAMYjFubAAx9LKkhK
         PcTCqvadVbXLItVKNU2nu7tyQRa+LNpEB+5d4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680103601;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jV2lyvl8ub+2VPRjeHlb+sHmzhDe5z+36U7u39h187Y=;
        b=Q3qNx/J6C5AWQCTIG4D53vlyqzydpC9xbizTn8EUr9G6rzQUZEWJTY/+MErQpR7o7t
         q2PO04X0luspHE4p1E27Lp/u/wgl/5xw2G889inVRpvyspWvtl8nEsm3D1BnTLVTJba1
         UggjvTF8QYtXtR5VLFRTIgwwySZ+IJv7i213F5NX1BhgtcgcEtr7tiGPk7Nso/y7wi4u
         QiqanXINa/U+bOx4Ev7Q4wX2GLgC9NKZPTNOkfLtcH2MNjZZrqqejGfnty94uf7bXaOK
         F3o2GiaX4iWgrLpWzGnJWnV5C15tAmoc8yr20g/7zRl59bwYwVB4/mwmHMuw3J8jQwDj
         Q6Cw==
X-Gm-Message-State: AAQBX9c7E2L8bkn44JexlQDXcM+vGQBi4fTUDJWNbRT/FMPdS9n4Sglc
        ZAe3K/SWAmdgFJRayu6nCEx2oubUfajx4WoSZU6G3A==
X-Google-Smtp-Source: AKy350YMi/rjLaY2uUQ+82h4Hy78c0V90uLZLhiQBJOJ1GZntnfQTG+thdjlp3NT14dkSuRr6AAWA3nZWRje990ICFg=
X-Received: by 2002:a05:6902:1204:b0:b3b:fb47:8534 with SMTP id
 s4-20020a056902120400b00b3bfb478534mr10616056ybu.5.1680103601331; Wed, 29 Mar
 2023 08:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230329131615.1328366-1-jagan@amarulasolutions.com>
 <20230329131615.1328366-3-jagan@amarulasolutions.com> <20230329150337.ua6qz7rvupk6vizl@penduick>
In-Reply-To: <20230329150337.ua6qz7rvupk6vizl@penduick>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 29 Mar 2023 20:56:29 +0530
Message-ID: <CAMty3ZAEb+ws_9jbdSM1ngfk=N7tePw_pEcALDAMNwzoNvbW3g@mail.gmail.com>
Subject: Re: [PATCH v7 02/12] drm: bridge: panel: Implement
 drmm_of_dsi_get_bridge helper
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 29, 2023 at 8:33=E2=80=AFPM Maxime Ripard <maxime@cerno.tech> w=
rote:
>
> On Wed, Mar 29, 2023 at 06:46:08PM +0530, Jagan Teki wrote:
> > Implement a DRM-managed action helper that returns the next DSI bridge
> > in the chain.
> >
> > Unlike general bridge return helper drmm_of_get_bridge, this helper
> > uses the dsi specific panel_or_bridge helper to find the next DSI
> > device in the pipeline.
> >
> > Helper lookup a given downstream DSI device that has been added via
> > child or OF-graph port or ports node.
> >
> > Upstream DSI looks for downstream devices using drm pointer, port and
> > endpoint number. Downstream devices added via child node don't affect
> > the port and endpoint number arguments.
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
>
> If you intend to use it with the sun4i driver, then don't. The sun4i
> driver is barely using drm-managed resources, so chances are all its
> resources will be freed by the time this action will run.

Any idea how to check all resources will be freed before this
DRM-managed action helper runs? I did test the panel insertion and
removal at runtime and I can see that the action helper
(drmm_drm_panel_bridge_release) is triggered at removal time.

Here is the log for it.
# insmod panel-bananapi-s070wv20-icn6211.ko
[   11.411894] sun4i-drm display-engine: bound
1e00000.display-frontend (ops 0xc0951eb4)
[   11.420253] sun4i-drm display-engine: bound 1e60000.display-backend
(ops 0xc0951620)
[   11.428128] sun4i-drm display-engine: bound 1e70000.drc (ops 0xc0951150)
[   11.435574] sun4i-drm display-engine: No panel or bridge found...
RGB output disabled
[   11.443484] sun4i-drm display-engine: bound 1c0c000.lcd-controller
(ops 0xc094fdb0)
[   11.451264] sun4i-drm display-engine: bound 1ca0000.dsi (ops 0xc0952f04)
[   11.462479] [drm] Initialized sun4i-drm 1.0.0 20150629 for
display-engine on minor 1
[   11.963246] Console: switching to colour frame buffer device 100x30
[   12.046329] sun4i-drm display-engine: [drm] fb0: sun4i-drmdrmfb
frame buffer device
[   12.082641] sun6i-mipi-dsi 1ca0000.dsi: Attached device s070wv20-ct16-ic=
n62
# rmmod panel-bananapi-s070wv20-icn6211.ko
[   16.306388] Console: switching to colour dummy device 80x30
[   16.466963] drmm_drm_panel_bridge_release: In

Thanks,
Jagan.
