Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15B8376E3A0
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 10:52:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233833AbjHCIwE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 04:52:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39410 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231143AbjHCIwD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 04:52:03 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFF80E7
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 01:52:01 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-99b4865ad55so18806466b.0
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 01:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1691052720; x=1691657520;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BGbNwddyJIbTWPXRqz0uovs8m1zlRfKLT7WMyoOKIRE=;
        b=a+wYsHDdsV1GNn/TSThCcwLN/2U8JnEHnckHwtKYcO4Mgf5k2o/fwUdi5F5Ubvvffk
         vbSnX+R2vrGAkckz8Yz1PkLrRo049vkcKKJSNKl1RhP787Mxvjg5xvo+nc2RolnykHKI
         Fv1RsK7mcFSYhzD5T/AKf27po9OpENY1aJ2Lg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691052720; x=1691657520;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BGbNwddyJIbTWPXRqz0uovs8m1zlRfKLT7WMyoOKIRE=;
        b=R5E5rsCW7LOsV64t1NaiDjQ2mMEKZbzbxUltVpJn2bp2w5jwqoidB3TvMWOe0jvsBa
         RigfZX3za3cnQKXxnUGgKr7UIO0pfWq8Jsr+sIg7edEU1LDFm8Uwh/Tr+M3h3QQUaF/E
         LkVsyv9PEs7Ls/W9ccTK+OYnmGAru942LC6At8pgsOBibsLd0GnbTg/AN1tOjkRVQJ5k
         MYGGA9T+SrdgowUU2BIHDqzjZu0rETbnL9F3vVbBgf1mIXUrPF6uRpJcBOS/Tu40VuAH
         nWZkS5aaJp4JL7wJmxOE6uv78tZapEmdCPGqGTrTQlP6W4w38rDwBl72xt7xP1hAlxsD
         MtMQ==
X-Gm-Message-State: AOJu0YwI/xPqvO1TmKAH3lXyIK6SkRAyjYf9Pvrfkrgs08t5uR+7jmPp
        WzGycyEKoQz6CDRmVlRanRHeig==
X-Google-Smtp-Source: APBJJlGhUvRqMl/XqMY8g+Tj3Qf8c9+kEncYsyJiiZ9/+yOA/Kk2tC7F6LOv3NhEZ2o1owcbaWLfZg==
X-Received: by 2002:a17:906:74cd:b0:99c:5711:da5 with SMTP id z13-20020a17090674cd00b0099c57110da5mr1942435ejl.5.1691052720294;
        Thu, 03 Aug 2023 01:52:00 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
        by smtp.gmail.com with ESMTPSA id u17-20020a1709060b1100b0099bcf563fe6sm10236759ejg.223.2023.08.03.01.51.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 01:51:59 -0700 (PDT)
Date:   Thu, 3 Aug 2023 10:51:57 +0200
From:   Daniel Vetter <daniel@ffwll.ch>
To:     Maxime Ripard <mripard@kernel.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sam Ravnborg <sam@ravnborg.org>,
        Sebastian Reichel <sre@kernel.org>,
        Gerald Loacker <gerald.loacker@wolfvision.net>,
        David Airlie <airlied@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 0/4] drm/panel: sitronix-st7789v: add support for partial
 mode
Message-ID: <ZMtqraOyGN9JvVj9@phenom.ffwll.local>
Mail-Followup-To: Maxime Ripard <mripard@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sam Ravnborg <sam@ravnborg.org>, Sebastian Reichel <sre@kernel.org>,
        Gerald Loacker <gerald.loacker@wolfvision.net>,
        David Airlie <airlied@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20230718-feature-lcd-panel-v1-0-e9a85d5374fd@wolfvision.net>
 <292c3e7d-82ea-2631-bd4b-ef747f56287c@linaro.org>
 <ekmwiy3iuvtqtb6hwjbba2ia3aemt3dxmx6dj3zh6ljfmuim4w@4jzhqdenxth4>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ekmwiy3iuvtqtb6hwjbba2ia3aemt3dxmx6dj3zh6ljfmuim4w@4jzhqdenxth4>
X-Operating-System: Linux phenom 6.3.0-2-amd64 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 03, 2023 at 10:48:57AM +0200, Maxime Ripard wrote:
> On Thu, Aug 03, 2023 at 10:11:22AM +0200, Neil Armstrong wrote:
> > Hi,
> > 
> > On 18/07/2023 17:31, Michael Riesch wrote:
> > > Hi all,
> > > 
> > > This series adds support for the partial display mode to the Sitronix
> > > ST7789V panel driver. This is useful for panels that are partially
> > > occluded by design, such as the Jasonic JT240MHQS-HWT-EK-E3. Support
> > > for this particular panel is added as well.
> > > 
> > > Note: This series is already based on
> > > https://lore.kernel.org/lkml/20230714013756.1546769-1-sre@kernel.org/
> > 
> > I understand Maxime's arguments, but by looking closely at the code,
> > this doesn't look like an hack at all and uses capabilities of the
> > panel controller to expose a smaller area without depending on any
> > changes or hacks on the display controller side which is coherent.
> > 
> > Following's Daniel's summary we cannot compare it to TV overscan
> > because overscan is only on *some* displays, we can still get 100%
> > of the picture from the signal.
> 
> Still disagree on the fact that it only affects some display. But it's
> not really relevant for that series.

See my 2nd point, from a quick grep aside from i915 hdmi support, no one
else sets all the required hdmi infoframes correctly. Which means on a
compliant hdmi tv, you _should_ get overscan. That's how that stuff is
speced.

Iirc you need to at least set both the VIC and the content type, maybe
even more stuff.

Unless all that stuff is set I'd say it's a kms driver bug if you get
overscan on a hdmi TV.

> I think I'll still like to have something clarified before we merge it:
> if userspace forces a mode, does it contain the margins or not? I don't
> have an opinion there, I just think it should be documented.

The mode comes with the margins, so if userspace does something really
funny then either it gets garbage (as in, part of it's crtc area isn't
visible, or maybe black bars on the screen), or the driver rejects it
(which I think is the case for panels, they only take their mode and
nothing else).

Cheers, Sima
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
