Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A635C4EFA7E
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 21:43:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351687AbiDATo7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 15:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236441AbiDATo6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 15:44:58 -0400
Received: from mail-oa1-f45.google.com (mail-oa1-f45.google.com [209.85.160.45])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A38391D2047
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 12:43:08 -0700 (PDT)
Received: by mail-oa1-f45.google.com with SMTP id 586e51a60fabf-de3ca1efbaso3796789fac.9
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 12:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5EMvc8OMfcvWm0DkRik5060Bt4PsjTeEW6GxMTHgrYg=;
        b=TNwx04YRDaAKSAs7RC7QQPmGGeXLLo0JJXKpHgyR5iLls/dzdhgOHXh0a6lbebaKw4
         wvVQd+JFJMyz8ErM+Bqdzp+FrS3eLvdA3OOXIFOyPrQG8FeW3pF0OyUCN/AGi+jR1EUP
         0DlyDPzemgTd6KKWwbRC5wd3u/njbK1gRTtFfYQs6wfslEe6Z35qREkHlNNzAKWJRKt2
         50m1eodT8KW8m/2Z12nHeVJdbJ5hm+yYpUcTPVWOKnriRliRFZ4tT1qKwGmNym+DVnLu
         0yFRi9bUz9hVSr1/kpy3Dw4rCzZJK4hatTn5MByPlihgdYUwlmIL7h7w+U59iJX9x17o
         C/Jg==
X-Gm-Message-State: AOAM5321DOsoZGNdMrEyapqr/tJPKHBJuSJ4kaehyJV/nFGHDCZJKKC7
        DSPFG+A8fK7LbPo1TZIWHA==
X-Google-Smtp-Source: ABdhPJwDikib+rjr4bUJEsoOnQNnfd3LSECjy79yCaRP4ZlEotdYkoelCmbPcVNwW8RfvDW1bn5rcQ==
X-Received: by 2002:a05:6870:f624:b0:e1:c071:121b with SMTP id ek36-20020a056870f62400b000e1c071121bmr1630993oab.182.1648842187923;
        Fri, 01 Apr 2022 12:43:07 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x1-20020a4ae781000000b00320d5d238efsm1399126oov.3.2022.04.01.12.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 12:43:07 -0700 (PDT)
Received: (nullmailer pid 3465306 invoked by uid 1000);
        Fri, 01 Apr 2022 19:43:06 -0000
Date:   Fri, 1 Apr 2022 14:43:06 -0500
From:   Rob Herring <robh@kernel.org>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Marek Vasut <marex@denx.de>, Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Robert Foss <robert.foss@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [PATCH] dt-bindings: display: bridge: Drop requirement on input
 port for DSI devices
Message-ID: <YkdVynGv49eUDuaS@robh.at.kernel.org>
References: <20220323154823.839469-1-maxime@cerno.tech>
 <YkY+1IZtQ8oSi7wR@robh.at.kernel.org>
 <b3dcf3fe-63a0-fbef-a3c4-f42e8cd395fe@denx.de>
 <Ykc3wm5pqJIA1jCn@robh.at.kernel.org>
 <1fddec5f-5fb3-4ea0-a1e5-9d1b9e54de81@denx.de>
 <CAL_JsqLmin2qXdeNrvraAf=fGzttOAYxwFCUSbC5TeHYaN+LhQ@mail.gmail.com>
 <30ea889f-f65e-e887-e230-935d6207c919@denx.de>
 <CAL_JsqLHsZW0DJNDxKNApk1AKo=91JYnTNVvemF4iCkyYq88bQ@mail.gmail.com>
 <YkdI/BSp/lvKYRjO@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YkdI/BSp/lvKYRjO@pendragon.ideasonboard.com>
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

On Fri, Apr 01, 2022 at 09:48:28PM +0300, Laurent Pinchart wrote:
> On Fri, Apr 01, 2022 at 01:33:15PM -0500, Rob Herring wrote:
> > On Fri, Apr 1, 2022 at 1:25 PM Marek Vasut wrote:
> > > On 4/1/22 20:21, Rob Herring wrote:
> > > > On Fri, Apr 1, 2022 at 1:06 PM Marek Vasut wrote:
> > > >> On 4/1/22 19:34, Rob Herring wrote:
> > > >>> On Fri, Apr 01, 2022 at 03:22:19AM +0200, Marek Vasut wrote:
> > > >>>> On 4/1/22 01:52, Rob Herring wrote:
> > > >>>>> On Wed, 23 Mar 2022 16:48:23 +0100, Maxime Ripard wrote:
> > > >>>>>> MIPI-DSI devices, if they are controlled through the bus itself, have to
> > > >>>>>> be described as a child node of the controller they are attached to.
> > > >>>>>>
> > > >>>>>> Thus, there's no requirement on the controller having an OF-Graph output
> > > >>>>>> port to model the data stream: it's assumed that it would go from the
> > > >>>>>> parent to the child.
> > > >>>>>>
> > > >>>>>> However, some bridges controlled through the DSI bus still require an
> > > >>>>>> input OF-Graph port, thus requiring a controller with an OF-Graph output
> > > >>>>>> port. This prevents those bridges from being used with the controllers
> > > >>>>>> that do not have one without any particular reason to.
> > > >>>>>>
> > > >>>>>> Let's drop that requirement.
> > > >>>>>>
> > > >>>>>> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > > >>>>>> ---
> > > >>>>>>     .../devicetree/bindings/display/bridge/chipone,icn6211.yaml      | 1 -
> > > >>>>>>     .../devicetree/bindings/display/bridge/toshiba,tc358762.yaml     | 1 -
> > > >>>>>>     2 files changed, 2 deletions(-)
> > > >>>>>>
> > > >>>>>
> > > >>>>> I tend to agree with port@0 not being needed and really like
> > > >>>>> consistency.
> > > >>>>
> > > >>>> The consistent thing to do would be to always use port@0 and OF graph, no ?
> > > >>>
> > > >>> I guess it depends how wide our scope for consistency is. Just DSI bus
> > > >>> controlled bridges? DSI panels? All bridges and panels? Any panel
> > > >>> without a control interface has the same dilemma as those can be a child
> > > >>> of the display controller (or bridge) and not even use OF graph.
> > > >>
> > > >> I would likely opt for the OF graph in all cases, panels, bridges,
> > > >> controllers. Then it would be consistent.
> > > >>
> > > >>> All simple panels don't require 'port' either. That's presumably only
> > > >>> consistent because we made a single schema. I'd assume 'non-simple'
> > > >>> panels with their own schema are not consistent.
> > > >>
> > > >> Maybe we would start requiring that port even for simple panels ?
> > > >> The port is physically there on that panel after all.
> > > >
> > > > Fix this in all the dts files and then I'll agree. Though I think this
> > > > ship has already sailed. I'd like to someday get to platforms without
> > > > warnings and not just keep adding new warnings.
> > >
> > > I doubt we can fix existing DTs, but can we at least require it for new
> > > DTs ?
> > 
> > We don't have any way to do that currently and get to warning free for
> > all DTs. We'd need to be able to disable specific checks for specific
> > DTs. I've thought about it, but haven't come up with a way to do it.
> 
> I think Marek may have meant new bindings. While I do agree that
> inconsistencies in sources can cause new submissions to blindly copy
> mistakes, it shouldn't be a reason in itself to carry historical binding
> design mistakes in new bindings.

This patch and the whole thread is about consistency of existing 
bindings. 

The only way to get some consistency reliably (beyond depending on 
reviews which doesn't achieve it) is either have a meta-schema to check 
something or make it a common schema. If we have new and old bindings, 
then we'd need panel-simple-old.yaml and panel-simple-new.yaml. There's 
other options probably, but not without more work on the tools.

Rob
