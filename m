Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D947E4EF9C2
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:21:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350034AbiDASXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:23:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350180AbiDASXf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:23:35 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B808C6A04C
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:21:42 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 6B1BCB8259C
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 18:21:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 102CFC34117
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 18:21:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648837300;
        bh=3rjbE6AG5US/5TOLdT4ZkyW51vstyIfglwN5iEgVtXo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=s7vMqNkfmj4C/MJM+Q0/oWqhzBnwhEuQS1Y31wB7nhaYdTkKMHDW9fKpyHQFZ6iBO
         If/QCvrtU9pL4HNSJhCMMKBiiyi7dcpeNIsmJmnDLenPjor0opRp9unvnEq92XSptw
         5WBN1oCCbeYW/qZ/OkSsoLnQ1G6QYRnoilQ2btMfVBk+BEKxBmNkBqQhSgULMIa5Uv
         afab156PU7qzYbjBjf6DDopXHs4HWyFleNTpPbKZYcskD8zJpmxqbrY5C1bp8w/dps
         detUj9NJ4HJj03QkGmSIlSECJs0+jAiDr/WCrgqLmd8e+kLeCvx1dmcTMvGrQLCKMa
         eGEDBGm6x+PgQ==
Received: by mail-il1-f181.google.com with SMTP id e18so2560496ilr.2
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 11:21:39 -0700 (PDT)
X-Gm-Message-State: AOAM531cBoPpndKZ9gzoVg2myflCoaV5KALfdEDDmXgnRffBBb1+wKl6
        F3XA7yJkLNMFVkGV8zoBasTWvZbgMifI45PDLg==
X-Google-Smtp-Source: ABdhPJw63D9ovn35K26hTCe3lJdn9e5YQa25V5PPkuy9VHIWJcx/jUUw3CkasbiaOBgYYBLol4f4JE72rl3V/MjU+xU=
X-Received: by 2002:a05:6e02:2183:b0:2c7:fe42:7b07 with SMTP id
 j3-20020a056e02218300b002c7fe427b07mr475473ila.302.1648837299132; Fri, 01 Apr
 2022 11:21:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220323154823.839469-1-maxime@cerno.tech> <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
 <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de> <Ykc3wm5pqJIA1jCn@robh.at.kernel.org>
 <1fddec5f-5fb3-4ea0-a1e5-9d1b9e54de81@denx.de>
In-Reply-To: <1fddec5f-5fb3-4ea0-a1e5-9d1b9e54de81@denx.de>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 1 Apr 2022 13:21:27 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLmin2qXdeNrvraAf=fGzttOAYxwFCUSbC5TeHYaN+LhQ@mail.gmail.com>
Message-ID: <CAL_JsqLmin2qXdeNrvraAf=fGzttOAYxwFCUSbC5TeHYaN+LhQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
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
        dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 1, 2022 at 1:06 PM Marek Vasut <marex@denx.de> wrote:
>
> On 4/1/22 19:34, Rob Herring wrote:
> > On Fri, Apr 01, 2022 at 03:22:19AM +0200, Marek Vasut wrote:
> >> On 4/1/22 01:52, Rob Herring wrote:
> >>> On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> >>>> MIPI-DSI devices, if they are controlled through the bus itself, have to
> >>>> be described as a child node of the controller they are attached to.
> >>>>
> >>>> Thus, there's no requirement on the controller having an OF-Graph output
> >>>> port to model the data stream: it's assumed that it would go from the
> >>>> parent to the child.
> >>>>
> >>>> However, some bridges controlled through the DSI bus still require an
> >>>> input OF-Graph port, thus requiring a controller with an OF-Graph output
> >>>> port. This prevents those bridges from being used with the controllers
> >>>> that do not have one without any particular reason to.
> >>>>
> >>>> Let's drop that requirement.
> >>>>
> >>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >>>> ---
> >>>>    .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
> >>>>    .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
> >>>>    2 files changed, 2 deletions(-)
> >>>>
> >>>
> >>> I tend to agree with port@0 not being needed and really like
> >>> consistency.
> >>
> >> The consistent thing to do would be to always use port@0 and OF graph, no ?
> >
> > I guess it depends how wide our scope for consistency is. Just DSI bus
> > controlled bridges? DSI panels? All bridges and panels? Any panel
> > without a control interface has the same dilemma as those can be a child
> > of the display controller (or bridge) and not even use OF graph.
>
> I would likely opt for the OF graph in all cases, panels, bridges,
> controllers. Then it would be consistent.
>
> > All simple panels don't require 'port' either. That's presumably only
> > consistent because we made a single schema. I'd assume 'non-simple'
> > panels with their own schema are not consistent.
>
> Maybe we would start requiring that port even for simple panels ?
> The port is physically there on that panel after all.

Fix this in all the dts files and then I'll agree. Though I think this
ship has already sailed. I'd like to someday get to platforms without
warnings and not just keep adding new warnings.

Rob
