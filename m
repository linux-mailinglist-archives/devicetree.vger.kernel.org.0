Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 58ECB4EF904
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 19:35:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347779AbiDARgv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 13:36:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233152AbiDARgu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 13:36:50 -0400
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0926B13D06
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 10:35:01 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-d6e29fb3d7so3437684fac.7
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 10:35:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DQa17hCgTs2MBoKtP/4j182oJ3/hJiT7owQ4N3CG1VA=;
        b=f+Ko4Nl3SL+p8aMvKhnb8oeB5dYosjzzmyLQJwaaLPUf3p799K/TRSbRzgJIcD2SSv
         O2AnoTfTcyuK0gIB+TXLBjU5t5A6/XXNrnYiAXDBX5EpwKB66eyyj+XrGrKvVxcDxHzy
         QlG9W1RcvRbYDd0pb+pFZdzxdgaUw+aFpHa2yEcUtqX6MUmgcvQfN+FzRpSye7yrzKFG
         6sRIpNe88PzfsCIS71lq6oDU6bA7qi43LY5Nmx1zOn5MOMBQCpCVp6RkfxVmZ6/ySslI
         vZB0W404Wi4XTeVxiu7o0m4WaaM7dRkY9GVs51YjpzBEFIRvWw45dwDxoWZssRWZ981U
         sC3Q==
X-Gm-Message-State: AOAM531HyyLfQwCBEAol5kzh/wFTNf7fmryyVtFuZTfhMY/CZg1NC23f
        Z0jGNPBwT7um3T6jbPtZLw==
X-Google-Smtp-Source: ABdhPJwuP+KB4kqdKE8P1T1bpNpbaC0qFdGOvVLZwShbOxOH8cSo0l8Tnr3HKrGOSXUcqFw1gk/u5g==
X-Received: by 2002:a05:6870:fbab:b0:de:b33b:16b1 with SMTP id kv43-20020a056870fbab00b000deb33b16b1mr5525171oab.26.1648834500331;
        Fri, 01 Apr 2022 10:35:00 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c19-20020a9d7853000000b005cdbc0f02ccsm1386474otm.68.2022.04.01.10.34.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 10:34:59 -0700 (PDT)
Received: (nullmailer pid 3289912 invoked by uid 1000);
        Fri, 01 Apr 2022 17:34:58 -0000
Date:   Fri, 1 Apr 2022 12:34:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Robert Foss <robert.foss@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Message-ID: <Ykc3wm5pqJIA1jCn@robh.at.kernel.org>
References: <20220323154823.839469-1-maxime@cerno.tech>
 <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
 <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
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

On Fri, Apr 01, 2022 at 03:22:19AM +0200, Marek Vasut wrote:
> On 4/1/22 01:52, Rob Herring wrote:
> > On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> > > MIPI-DSI devices, if they are controlled through the bus itself, have to
> > > be described as a child node of the controller they are attached to.
> > > 
> > > Thus, there's no requirement on the controller having an OF-Graph output
> > > port to model the data stream: it's assumed that it would go from the
> > > parent to the child.
> > > 
> > > However, some bridges controlled through the DSI bus still require an
> > > input OF-Graph port, thus requiring a controller with an OF-Graph output
> > > port. This prevents those bridges from being used with the controllers
> > > that do not have one without any particular reason to.
> > > 
> > > Let's drop that requirement.
> > > 
> > > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > ---
> > >   .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
> > >   .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
> > >   2 files changed, 2 deletions(-)
> > > 
> > 
> > I tend to agree with port@0 not being needed and really like
> > consistency.
> 
> The consistent thing to do would be to always use port@0 and OF graph, no ?

I guess it depends how wide our scope for consistency is. Just DSI bus 
controlled bridges? DSI panels? All bridges and panels? Any panel 
without a control interface has the same dilemma as those can be a child 
of the display controller (or bridge) and not even use OF graph. 

All simple panels don't require 'port' either. That's presumably only 
consistent because we made a single schema. I'd assume 'non-simple' 
panels with their own schema are not consistent.

Rob
