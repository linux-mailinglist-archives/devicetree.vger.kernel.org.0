Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F42B4F1916
	for <lists+devicetree@lfdr.de>; Mon,  4 Apr 2022 18:01:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1378815AbiDDQDP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Apr 2022 12:03:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378831AbiDDQC6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Apr 2022 12:02:58 -0400
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE0DA245A5
        for <devicetree@vger.kernel.org>; Mon,  4 Apr 2022 09:01:02 -0700 (PDT)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-df02f7e2c9so11156616fac.10
        for <devicetree@vger.kernel.org>; Mon, 04 Apr 2022 09:01:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=In5a/h4LjF5DkhmvQ6XqBzMYlDlycGFoe94+GhEprOk=;
        b=d/z5EnePb8eRXWloW6ow91n484t26yGSLWrwUBpEyAQm1dF0W+88MUeLWr1UKTDhQv
         MdDh6xAqcFnBSsf5hxh8A1po+FKushD/TWAmyzTadKJ6eO9Sdc3KyKx7SUZjzzLHXVVl
         jlhTa7Uc7r49EsFaGkVpewPWgHFfAIEC086IPBUSJUjQi5Ieip8TZKMwn7IBi1/JdZc/
         S3cTMY8wiagJ6EG75PQaHKSeEbFZy1ZMK5btOFMyRzoYIMBP0rFfXePEuabLLaM7MOlx
         Wql9GblTDVKBYf9f9kZQzxwmRvec9dPpDpECcS4JlV2uTD6Rl+9ywpHV9y3poC6SDBOU
         TF7g==
X-Gm-Message-State: AOAM532I8pB5wfl89gAy9MaYlbCwS1c8s0AUp/5ccrNG0vQi+/BX2Ktt
        NEww9AHsEy3xNP8gT8TQ20C51n4h1w==
X-Google-Smtp-Source: ABdhPJzLlngGRDK82Z/wQKGO1S8eEHE0KD2iiRawkQWiu4y3HOSYqt42l8QOgQ/7NQ17IiDJaFwp0w==
X-Received: by 2002:a05:6870:b39a:b0:da:b3f:2b6c with SMTP id w26-20020a056870b39a00b000da0b3f2b6cmr11130435oap.267.1649088062027;
        Mon, 04 Apr 2022 09:01:02 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id os4-20020a0568707d0400b000e1e6ddcddbsm2220829oab.4.2022.04.04.09.01.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Apr 2022 09:01:01 -0700 (PDT)
Received: (nullmailer pid 1422687 invoked by uid 1000);
        Mon, 04 Apr 2022 16:01:00 -0000
Date:   Mon, 4 Apr 2022 11:01:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, robert.foss@linaro.org,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [RFC][PATCH 2/3] drm/modes: Make width-mm/height-mm mandatory in
 of_get_drm_panel_display_mode()
Message-ID: <YksWPK6ukLGAUTUo@robh.at.kernel.org>
References: <20220401163755.302548-1-marex@denx.de>
 <20220401163755.302548-2-marex@denx.de>
 <YkdImJRIRkaqeGDl@pendragon.ideasonboard.com>
 <efaa195a-bbdc-ca24-eccc-271995dfd27f@denx.de>
 <YkfAtkOtaWksnrlH@pendragon.ideasonboard.com>
 <a8b45b0a-b458-f9dd-c983-6ef4ec175432@denx.de>
 <d16332a6-63cc-8fa6-91f2-59064ce333f1@tronnes.org>
 <d230da1b-2649-2f8d-680b-015e9044540e@denx.de>
 <35a66df7-5619-cb10-620e-008adb64f2d7@tronnes.org>
 <92a5854f-0dc0-8bb9-0607-549d52822af1@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <92a5854f-0dc0-8bb9-0607-549d52822af1@denx.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 02, 2022 at 07:55:59PM +0200, Marek Vasut wrote:
> On 4/2/22 19:08, Noralf Trønnes wrote:
> > 
> > 
> > Den 02.04.2022 18.39, skrev Marek Vasut:
> > > On 4/2/22 09:45, Noralf Trønnes wrote:
> > > > 
> > > > 
> > > > Den 02.04.2022 06.28, skrev Marek Vasut:
> > > > > On 4/2/22 05:19, Laurent Pinchart wrote:
> > > > > > On Fri, Apr 01, 2022 at 10:36:24PM +0200, Marek Vasut wrote:
> > > > > > > On 4/1/22 20:46, Laurent Pinchart wrote:
> > > > > > > > On Fri, Apr 01, 2022 at 06:37:54PM +0200, Marek Vasut wrote:
> > > > > > > > > Make the width-mm/height-mm panel properties mandatory in
> > > > > > > > > of_get_drm_panel_display_mode(), print error message and
> > > > > > > > > return -ve in case these DT properties are not present.
> > > > > > > > > This is needed to correctly report panel dimensions.
> > > > > > > > 
> > > > > > > > Can we guarantee this won't cause a regression ?
> > > > > > > 
> > > > > > > For the upstream DTs, I think we can.
> > > > > > > For downstream DTs, we cannot know.
> > > > > > 
> > > > > > Are there users of this function whose DT bindings don't require the
> > > > > > width-mm and height-mm properties ?
> > > > > 
> > > > > There is literally one user of this function upstream:
> > > > > drivers/gpu/drm/tiny/panel-mipi-dbi.c
> > > > 
> > > > Yes, the function was added for that driver since it was so generic in
> > > > nature. What about adding an argument to of_get_drm_panel_display_mode()
> > > > that tells if the properties are mandatory or not?
> > > 
> > > Sure, we can do that, but maybe the question here is even bigger than
> > > this series.
> > > 
> > > Should every panel set mandatory width_mm/height_mm so e.g. the user
> > > space can infer DPI from it and set up scaling accordingly, or should
> > > width_mm/height_mm be optional ?
> > > 
> > > I think width_mm/height_mm should be mandatory for all panels.
> > > 
> > > Thoughts ?
> > 
> > If this had come up during the review of the driver I would have no
> > problem making it mandatory. It makes sense for DPI. Maybe it's possible
> > to get around the ABI break by getting in a change through -fixes before
> > 5.18 is released? I'm fine with that.
> 
> Well that's awesome, the dbi-spi.yaml didn't land in any kernel release yet,
> so we still have a chance to fix it ? Rob ?

Yes, it can be fixed. And the binding, not the kernel, is the place to 
enforce it being mandatory IMO.

Rob
