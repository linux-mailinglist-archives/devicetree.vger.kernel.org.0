Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5ED65261D
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 19:19:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229757AbiLTSTx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 13:19:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229536AbiLTSTw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 13:19:52 -0500
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0437CE07
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:19:50 -0800 (PST)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-1433ef3b61fso16339079fac.10
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 10:19:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yvYSUhN9Lgqqo8NRRxAwZN/kbVSJbYqRGacsJ+ZY83o=;
        b=eq2TowSMxRPlCjeIdKEq2ypfcW4Noi9TH9I0ku1VXL4/XmQIyk4cLyKTfQ6QX7qg18
         E50mF/SSCyBV1idaQ+me0b2bcZ2mLOOUup0wmZTAWf4/BoGkvQqAnZ7Uoe8WyTfS7Qrd
         2ctOcpmYgUHbahuF2wguA63V15wAAJWDjrwc/VeMcUt73wbEG1AgtsetWALzL0mOdnKB
         WCllSyQjXcS4eFA/I1o+nkBYhtdz28eniw1RJkAabypPVRQObCc41ihWqt7l0RwBgt9g
         SmjvwQoUUyDChfSIc50Ktp8itSoLkZQFUL+2eRs+nqGup2pveDLKSfpQanp3FX7L1bUI
         y9YQ==
X-Gm-Message-State: ANoB5pnJ353Od4bz0NN+ZTs7XzVgo2D61uTuNj2PsKqhVJpnk6lBcJTz
        IdPxn2A3st3w2i0SnF0UJAoWP6Rz2Q==
X-Google-Smtp-Source: AA0mqf4DhOxwDe9Kor6K8GQK2yyyxze1bgPG9xFLll91lFoFwbbg5+AyBLIX7Xq27noEvso5Iwxv5w==
X-Received: by 2002:a05:6870:ed45:b0:144:a626:218b with SMTP id ex5-20020a056870ed4500b00144a626218bmr22778212oab.56.1671560390074;
        Tue, 20 Dec 2022 10:19:50 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d20-20020a056871041400b0013c8ae74a14sm6257284oag.42.2022.12.20.10.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Dec 2022 10:19:49 -0800 (PST)
Received: (nullmailer pid 858419 invoked by uid 1000);
        Tue, 20 Dec 2022 18:19:48 -0000
Date:   Tue, 20 Dec 2022 12:19:48 -0600
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] drm/imx/lcdc: Implement DRM driver for imx21
Message-ID: <20221220181948.GA828243-robh@kernel.org>
References: <20221216175006.456831-1-u.kleine-koenig@pengutronix.de>
 <20221216235758.GA88372-robh@kernel.org>
 <20221217183806.bvo5vypm6axycdte@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221217183806.bvo5vypm6axycdte@pengutronix.de>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 17, 2022 at 07:38:06PM +0100, Uwe Kleine-König wrote:
> On Fri, Dec 16, 2022 at 05:57:58PM -0600, Rob Herring wrote:
> > On Fri, Dec 16, 2022 at 06:50:04PM +0100, Uwe Kleine-König wrote:
> > > Hello,
> > > 
> > > Changes since v2:
> > > 
> > >  - added allOf as Krzysztof requested
> > >  - reworked driver based on Philipp's comments
> > >    (improved error handling, different selects, moved driver to a subdirectory,
> > >    header sorting, drm_err instead of DRM_ERROR, inlined
> > >    imx_lcdc_check_mode_change, make use of dev_err_probe())
> > >  
> > > Krzysztof also pointed out that we're now having two compatibles for a
> > > single hardware. Admittedly this is unusual, but this is the chance that
> > > the (bad) compatible identifier imx21-fb gets deprecated. The hardware
> > > is called LCDC and only the linux (framebuffer) driver is called imxfb.
> > 
> > The problem is you can't have firmware (with the DTB) that supports 
> > both. Well, you can if you want to have some firmware setting that 
> > selects which one. Otherwise, it's really an OS problem to decide what 
> > to use. 
> 
> I don't understand what you intend to say here. The same applies if the
> compatible is the same for both binding alternatives, isn't it? 

Only if you have both nodes in the DT and both enabled. But 2 enabled 
nodes at the same address is also a dtc warning, so I was assuming you 
didn't do that.

> Do you consider a firmware problem better or an OS problem?

The OS created the problem, so they get to keep it. But a PC BIOS is 
full of OS compatibility switches, so...

In the end, it's the platforms' decision really. I just want what the 
implications of having 2 compatibles are to be understood.

Rob
