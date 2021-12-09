Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C80B46F232
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 18:38:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239321AbhLIRlf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Dec 2021 12:41:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239086AbhLIRle (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Dec 2021 12:41:34 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FF42C061746
        for <devicetree@vger.kernel.org>; Thu,  9 Dec 2021 09:38:01 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id r25so21456123edq.7
        for <devicetree@vger.kernel.org>; Thu, 09 Dec 2021 09:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AQBlBcjP6KU5uEntMJe5O4a6k8Z/3VB3sqbxnkmyvcM=;
        b=AVXspGxsqbNkb9qLtrf/m8PsipZVTU/koLOnnlhmcUutzHApS+tJzgYLZC9aHwIdXs
         Gj2YL9nNbf4RnWb8qOfzLvvXHs8RbusLsXOZ12l/MOUfnaqdN90wchs/GyR+GfCzc+xO
         veEbVr5mVTM6LENi+W2DzQA5bRunZNpJ5waB4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AQBlBcjP6KU5uEntMJe5O4a6k8Z/3VB3sqbxnkmyvcM=;
        b=g+wNNwVOzgzgAf2lWL68MF3V3jERDuxp/tMubF0rFFXv/Mdl7bxO5WsiANHLlcpdUo
         PaLINfyXhk++4nqvHo8Wbs76ABX1l5j8R1hah/b+cTD+7iQ3ZqgXFX0CpnZhlYHd5294
         4zp/gVlQlmRbqxpiooFMROeXEM1TAJPHEJ+ofa9AhxnkaLqIZt2Xu4SEkrs3VSy++rnW
         mCPBZ4VYNhBPNUwjNTpfRbqxiQU2WODe00D4UIK5GajIUai8Byx9wxMpXFtD+c/bFNo5
         XifAX85GGvluL3RAgkoUivsiHdyDnBjc36Y85ogf+RhDdU88lDSVOGnafeWgA52U0NCV
         5cqA==
X-Gm-Message-State: AOAM530lCu65UI1grvWGWpBtv0roNmhCYdwoe6/wmI1pfrqL3E8jZBoZ
        Ej9Jb13yzkoDvaZFBBqCOg3YYDIU+wCEk3YPkoPwsA==
X-Google-Smtp-Source: ABdhPJxeJtYCKaIxva4XOy/kJpcEADFymC/qRVkliAiJo2JxIeWtVodZlP1/RhK6lfHsM5oRz49mCcXXCAFetiCLDWQ=
X-Received: by 2002:a05:6402:2552:: with SMTP id l18mr30512010edb.368.1639071318398;
 Thu, 09 Dec 2021 09:35:18 -0800 (PST)
MIME-Version: 1.0
References: <20211207054747.461029-1-jagan@amarulasolutions.com>
 <20211207054747.461029-2-jagan@amarulasolutions.com> <CAL_JsqKj_ToLpoGR6XLgAu=+THit6jhdzAvxMiCCNmWg5zbQ0A@mail.gmail.com>
 <CAMty3ZCO3yYcZhggorPBhywBs8=KjE3Mrv7573TrPQyzfPPiaA@mail.gmail.com>
In-Reply-To: <CAMty3ZCO3yYcZhggorPBhywBs8=KjE3Mrv7573TrPQyzfPPiaA@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 9 Dec 2021 23:05:07 +0530
Message-ID: <CAMty3ZAjfF7wVD-zHM-465Q3T-aCOmcXUKJsL93+SBq+fuKwjA@mail.gmail.com>
Subject: Re: [PATCH 1/2] of: Add helper to lookup non port child node
To:     Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob and Laurent,

On Wed, Dec 8, 2021 at 11:56 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
>
> On Wed, Dec 8, 2021 at 2:20 AM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Mon, Dec 6, 2021 at 11:49 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > Add of_get_non_port_child() helper that can be used to lookup
> > > non port child nodes.
> > >
> > > Some OF graphs don't require 'ports' to represent the next output
> > > instead, it simply adds a child node on a given parent node. This
> > > helper lookup that child node, however that child node is not a
> > > 'port' on given parent as 'port' based nodes are looked up via
> > > of_graph_get_remote_node().
> > >
> > > Example OF graph representation of DSI host, which doesn't
> > > have 'ports'.
> >
> > This seems pretty specific to DSI and also can't handle there being
> > more than 1 non-port node. That's allowed for DSI too, but I don't
> > think I've ever seen a case. Anyways, I'd just move this to DRM rather
> > than common DT code. One comment on the implementation that will
> > shrink it.
>
> I think it can be possible to OF graph even for non-DSI, however if
> the end-node outputs to a panel or bridge. At the moment, I can one
> use case on the non-DSI side is rcar du encoder.
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/gpu/drm/rcar-du/rcar_du_encoder.c#n68

Do you see any point to make this helper in of/base based on above
rcar_du_encoder usage? if not i can directly use this functionality in
panel_or_bridge finding code itself.

Please let me know.

Thanks,
Jagan.
