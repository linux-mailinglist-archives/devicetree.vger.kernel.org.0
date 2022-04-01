Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C58B64EF9E8
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:33:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343596AbiDASfW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:35:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351062AbiDASfW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:35:22 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC161B53AC
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:33:30 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7CA9BB825B0
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 18:33:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42C96C34118
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 18:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648838008;
        bh=bDlCd+GBQ+mqOJchbFEIUDC4io4eBTFi4lSCULak7Kc=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=JbnKCQCjCFYpbmw7uzAcevCRmxDAly9ACyc0IKYkbCzFHNeiujm7c92aZbVjaWXND
         J91rlDwqEB7Qo78LaTRf6oKwwNAaNY4R9M3n7C5SwMGa1MO8g8dTF/WJ1X0AvHObl8
         Mt35LmxRcNsopH0OOf1yQosDpAcVnEB5aG0DGggsXNK5iv6LVeBvhzkxVyE89AGwVL
         WrmDaoBWeup7fZ9q7aGMOctglgjMX60q9WWhHD1nXV4tk9hOl9eMh8xV4xxrgg/oKe
         ShLtjlnNQcrQ9GYusVBwaN3r3L/lq9IEakA2lFuxXlLFeGWLIWI6O4r4fgnRMjKOzo
         RFq8Syf+S21jw==
Received: by mail-io1-f47.google.com with SMTP id z6so4258966iot.0
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 11:33:28 -0700 (PDT)
X-Gm-Message-State: AOAM531cv579fPFATEwFbK1ybLieTLSJYr2UrdxnGu0CGT8vcdtbWG7D
        E4c1SFlRy06xZc0zKLjCmtxvn9z7caVkZiPXGA==
X-Google-Smtp-Source: ABdhPJwrG0ux9MKLAl032Ro0HBQskvW4qfvM90GI0L1thJTPaa+8ocOgKj5NyIHBLj1HTAAHi/XXNJPUvoXwbgJoa7M=
X-Received: by 2002:a05:6638:3052:b0:317:79e1:8b7f with SMTP id
 u18-20020a056638305200b0031779e18b7fmr6237380jak.239.1648838007308; Fri, 01
 Apr 2022 11:33:27 -0700 (PDT)
MIME-Version: 1.0
References: <20220323154823.839469-1-maxime@cerno.tech> <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
 <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de> <Ykc3wm5pqJIA1jCn@robh.at.kernel.org>
 <1fddec5f-5fb3-4ea0-a1e5-9d1b9e54de81@denx.de> <CAL_JsqLmin2qXdeNrvraAf=fGzttOAYxwFCUSbC5TeHYaN+LhQ@mail.gmail.com>
 <30ea889f-f65e-e887-e230-935d6207c919@denx.de>
In-Reply-To: <30ea889f-f65e-e887-e230-935d6207c919@denx.de>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 1 Apr 2022 13:33:15 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLHsZW0DJNDxKNApk1AKo=91JYnTNVvemF4iCkyYq88bQ@mail.gmail.com>
Message-ID: <CAL_JsqLHsZW0DJNDxKNApk1AKo=91JYnTNVvemF4iCkyYq88bQ@mail.gmail.com>
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

On Fri, Apr 1, 2022 at 1:25 PM Marek Vasut <marex@denx.de> wrote:
>
> On 4/1/22 20:21, Rob Herring wrote:
> > On Fri, Apr 1, 2022 at 1:06 PM Marek Vasut <marex@denx.de> wrote:
> >>
> >> On 4/1/22 19:34, Rob Herring wrote:
> >>> On Fri, Apr 01, 2022 at 03:22:19AM +0200, Marek Vasut wrote:
> >>>> On 4/1/22 01:52, Rob Herring wrote:
> >>>>> On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> >>>>>> MIPI-DSI devices, if they are controlled through the bus itself, have to
> >>>>>> be described as a child node of the controller they are attached to.
> >>>>>>
> >>>>>> Thus, there's no requirement on the controller having an OF-Graph output
> >>>>>> port to model the data stream: it's assumed that it would go from the
> >>>>>> parent to the child.
> >>>>>>
> >>>>>> However, some bridges controlled through the DSI bus still require an
> >>>>>> input OF-Graph port, thus requiring a controller with an OF-Graph output
> >>>>>> port. This prevents those bridges from being used with the controllers
> >>>>>> that do not have one without any particular reason to.
> >>>>>>
> >>>>>> Let's drop that requirement.
> >>>>>>
> >>>>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> >>>>>> ---
> >>>>>>     .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
> >>>>>>     .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
> >>>>>>     2 files changed, 2 deletions(-)
> >>>>>>
> >>>>>
> >>>>> I tend to agree with port@0 not being needed and really like
> >>>>> consistency.
> >>>>
> >>>> The consistent thing to do would be to always use port@0 and OF graph, no ?
> >>>
> >>> I guess it depends how wide our scope for consistency is. Just DSI bus
> >>> controlled bridges? DSI panels? All bridges and panels? Any panel
> >>> without a control interface has the same dilemma as those can be a child
> >>> of the display controller (or bridge) and not even use OF graph.
> >>
> >> I would likely opt for the OF graph in all cases, panels, bridges,
> >> controllers. Then it would be consistent.
> >>
> >>> All simple panels don't require 'port' either. That's presumably only
> >>> consistent because we made a single schema. I'd assume 'non-simple'
> >>> panels with their own schema are not consistent.
> >>
> >> Maybe we would start requiring that port even for simple panels ?
> >> The port is physically there on that panel after all.
> >
> > Fix this in all the dts files and then I'll agree. Though I think this
> > ship has already sailed. I'd like to someday get to platforms without
> > warnings and not just keep adding new warnings.
>
> I doubt we can fix existing DTs, but can we at least require it for new
> DTs ?

We don't have any way to do that currently and get to warning free for
all DTs. We'd need to be able to disable specific checks for specific
DTs. I've thought about it, but haven't come up with a way to do it.

Rob
