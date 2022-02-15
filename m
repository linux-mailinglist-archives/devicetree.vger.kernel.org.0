Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E9B654B6CF8
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 14:05:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238103AbiBONFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 08:05:51 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:41490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238073AbiBONFr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 08:05:47 -0500
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFE17A1BC2
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 05:05:34 -0800 (PST)
Received: by mail-io1-xd2a.google.com with SMTP id i62so23714471ioa.1
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 05:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PaZVevCVWnJLVjvrHlW/dnI5NADyeCbLBAp7MlyZJEs=;
        b=TDZSGSZDOR6tESGKMffWCPAQg0pmlp4Qd/GfZoTuMP4o9VEdBnDeiiE6GGqWBPQsgN
         qd+VnUyyPezL+pBRqSdBPDVYO2zc+Rl12fctv8JMQmtfQHTIFV1VisAraOidRtzcv7az
         h+RdY2hixZ3rguGFXADmEsNVOk97TpExpsPCM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PaZVevCVWnJLVjvrHlW/dnI5NADyeCbLBAp7MlyZJEs=;
        b=tWtpYDJp0WLx9OIRniaQyBSf5TgIl6LTMUIolOWhh7InZgEci9cGzs/4Zdanmd4Q9G
         2lrvo66hWVxSp0HG2zk3/NHh+eK7cvZHu0ZY0s1IJIzQ1NefXcMPJXcil0xMGxNkX8i/
         Mj2Nd49G6CSr8yXPRbu5Fte9TA2IwwHJ9th2qj9dvgL3HmHf2m0jOOZQQiPVeJZnq0pr
         FSN3JUCl/7ljggJhr0j6evg0mzTF51YaSHxGdcpwDe5JzdhBwumMK2IzQfLv2dmhzQnu
         b72IpM87pDrpPXksIiqf45+nwz6iPJziiCGWNBRyEsUpF3E7v+JAoprGLwbvIsPApL8R
         /4ww==
X-Gm-Message-State: AOAM530/nOhp/GRQ2KfTIfuezzbEtilQbB3AEAaFoC6P62lMVTH3/N08
        FUy57xkGYsPJRd/10FwHC8yGMoN8VZxScjJZOSvPCw==
X-Google-Smtp-Source: ABdhPJxtJIM9RHnfQcz4LMCrnzRwoEV55yIyUKbwloRDyJHYmE4ariqr/kbm/w8QO90RNrUQBhZreEm0Z7T5jqeF5Iw=
X-Received: by 2002:a05:6638:3785:: with SMTP id w5mr2736567jal.210.1644930334003;
 Tue, 15 Feb 2022 05:05:34 -0800 (PST)
MIME-Version: 1.0
References: <20220208084234.1684930-1-hsinyi@chromium.org> <CACvgo53u01BK_D0ZssV+gCepjxSz23Nr5Dy1qXeaAoJuu6VCFQ@mail.gmail.com>
In-Reply-To: <CACvgo53u01BK_D0ZssV+gCepjxSz23Nr5Dy1qXeaAoJuu6VCFQ@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Tue, 15 Feb 2022 21:05:08 +0800
Message-ID: <CAJMQK-gvhsk3U7QK9B-28kJ4fKbO8UB01i-_rMMe_GT2pM74gg@mail.gmail.com>
Subject: Re: [Intel-gfx] [PATCH v8 1/3] gpu: drm: separate panel orientation
 property creating and value setting
To:     Emil Velikov <emil.l.velikov@gmail.com>
Cc:     ML dri-devel <dri-devel@lists.freedesktop.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
        Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Simon Ser <contact@emersion.fr>,
        "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alex Deucher <alexander.deucher@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mediatek@lists.infradead.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Harry Wentland <harry.wentland@amd.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 15, 2022 at 8:04 PM Emil Velikov <emil.l.velikov@gmail.com> wrote:
>
> Greetings everyone,
>
> Padron for joining in so late o/
>
> On Tue, 8 Feb 2022 at 08:42, Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > drm_dev_register() sets connector->registration_state to
> > DRM_CONNECTOR_REGISTERED and dev->registered to true. If
> > drm_connector_set_panel_orientation() is first called after
> > drm_dev_register(), it will fail several checks and results in following
> > warning.
> >
> > Add a function to create panel orientation property and set default value
> > to UNKNOWN, so drivers can call this function to init the property earlier
> > , and let the panel set the real value later.
> >
>
> The warning illustrates a genuine race condition, where userspace will
> read the old/invalid property value/state. So this patch masks away
> the WARNING without addressing the actual issue.
> Instead can we fix the respective drivers, so that no properties are
> created after drm_dev_register()?
>
1. How about the proposal in previous version:
v7 https://patchwork.kernel.org/project/linux-mediatek/patch/20220208073714.1540390-1-hsinyi@chromium.org/
we separate property creation
(drm_connector_init_panel_orientation_property) and value setting
(drm_connector_set_panel_orientation). This is also similar to some of
other optional properties are created, eg. vrr_capable.

And drm drivers have to make sure that if they want to use this
property, they have to create it before drm_dev_register(). For
example, in the 2nd patch, mtk_drm sets the property before calling
drm_dev_register().

2. I'm not sure how to handle the case that if user space tries to
read the property before the proper value is set. Currently drm
creates this property and the panels[1] will set the correct value
parsed from DT. If userspace calls before the panel sets the correct
value, it will get unknown (similar to the illustration you mentioned
below). Do you think that the drm should be responsible for parsing
the value if the panel provides it? In this way it's guaranteed that
the value is set when the property is created.

[1] https://elixir.bootlin.com/linux/latest/A/ident/drm_connector_set_panel_orientation

> Longer version:
> As we look into drm_dev_register() it's in charge of creating the
> dev/sysfs nodes (et al). Note that connectors cannot disappear at
> runtime.
> For panel orientation, we are creating an immutable connector
> properly, meaning that as soon as drm_dev_register() is called we must
> ensure that the property is available (if applicable) and set to the
> correct value.
>
> For illustration, consider the following scenario:
>  - DRM modules are loaded late - are not built-in and not part of
> initrd (or there's no initrd)
>  - kernel boots
>  - plymouth/similar user-space component kicks in before the
> driver/module is loaded
>  - module gets loaded, drm_dev_register() kicks in populating /dev/dri/card0
>  - plymouth opens the dev node and reads DRM_MODE_PANEL_ORIENTATION_UNKNOWN
>  - module updates the orientation property
>
> Thanks
> Emil
