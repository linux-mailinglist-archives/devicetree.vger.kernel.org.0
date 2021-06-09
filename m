Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D58013A1205
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238660AbhFILHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:07:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232165AbhFILHa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:07:30 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 535FBC06175F
        for <devicetree@vger.kernel.org>; Wed,  9 Jun 2021 04:05:21 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id bn21so31124106ljb.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VePCktjSiUwy7zF0X3i1kiD5uKEWitdsZcvT2ZeLJmk=;
        b=lCebyaKzT4o+/UcvZ1XICOmUN7/NHBX1soF6VpaCp/TCvgmk56jULiWBAvNk3i6Loj
         z5wJnqwqEEUANW+u3ygdh5BEaWLy9N8xhJu5CTPM9oqJnYdl30CwZZWEux+H+KOeGDDI
         ZwxIVZKMULaK7VsCRoihYTZ7UtCWnM65PGo6NHphuP4WS/bf4zw9cd5uz3z8exwr9+E+
         E0IPZfYfPD1onxv89/78rZD4LBFvbPBKfdvrtQUSz1tXKO9FIUkI8KHkdhFzDrpC0hZk
         00RJQFVtqyf2oOP2/m8/mM9pqWN6bbJzWLMo5fac27BiLh4WA2TgtZvcRfZEggy9XQoF
         IdAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VePCktjSiUwy7zF0X3i1kiD5uKEWitdsZcvT2ZeLJmk=;
        b=PP4eBngiYVqOzUD44rgZJApQq1cbfPVABSBVzqKJOpHG6XH9AWG2uRNyg//Lr3M7Ak
         VLc44UCFRMUcu9PbZS7Tws/jcHZ5+OnPNY1gDqyQsKrJB41XJfR2aHO491CGSanUMoeT
         UEQArR9pU7S+znrd552xrXrd2oJ7pZyYEKlYjFtG5wTE2MHqA2p2cnTK9lkA7QWmwrUO
         H3ZReeDzI0vkU9pYnBenTHyDs7Qw/qNTkeGzmlsSTf64VPimSyFEEFX93QwJh7VjdkaF
         0VDiF+czrZrFz4ktEfSaH1FJSs2beIIYr8clTRflie71L7GxJu1fpA+V+UJolrVsBxqG
         DIoA==
X-Gm-Message-State: AOAM532tWqq9VCVGPVNdkkWJhgOxGGq7EX2bSsQwpWfX4VsgtrmYeNcQ
        xtl+/+qT9ZMMAJaB/8JZqMSD9RMttH+ONRoztR2OeA==
X-Google-Smtp-Source: ABdhPJybvThxOzTqKAq2tM0a2YQzhSX2mOBRONdPJcNN5UbQix2w4ogjAjPGxmyqXPR5egn25taCVXJw2O2j5xJPZ+4=
X-Received: by 2002:a05:651c:4c6:: with SMTP id e6mr21901557lji.326.1623236719658;
 Wed, 09 Jun 2021 04:05:19 -0700 (PDT)
MIME-Version: 1.0
References: <20210607170555.4006050-1-dianders@chromium.org> <20210607100234.v9.2.Id3c048d22e72a9f90084a543b5b4e3f43bc9ab62@changeid>
In-Reply-To: <20210607100234.v9.2.Id3c048d22e72a9f90084a543b5b4e3f43bc9ab62@changeid>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 9 Jun 2021 13:05:08 +0200
Message-ID: <CACRpkdaitO6VJGfmKchj5hLz43WNA6BR-mn=bo4_EPEh6fyLiw@mail.gmail.com>
Subject: Re: [PATCH v9 02/11] dt-bindings: drm: Introduce the DP AUX bus
To:     Douglas Anderson <dianders@chromium.org>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Clark <robdclark@chromium.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Steev Klimaszewski <steev@kali.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Thierry Reding <treding@nvidia.com>,
        Lyude Paul <lyude@redhat.com>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Rob Herring <robh@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 7, 2021 at 7:06 PM Douglas Anderson <dianders@chromium.org> wrote:

> We want to be able to list an eDP panel as a child of an eDP
> controller node to represent the fact that the panel is connected to
> the controller's DP AUX bus. Though the panel and the controller are
> connected in several ways, the DP AUX bus is the primary control
> interface between the two and thus makes the most sense to model in
> device tree hierarchy.
>
> Listing a panel in this way makes it possible for the panel driver to
> easily get access to the DP AUX bus that it resides on, which can be
> useful to help in auto-detecting the panel and for turning on various
> bits.
>
> NOTE: historically eDP panels were _not_ listed under their controller
> but were listed at the top level of the device tree. This will still
> be supported for backward compatibility (and while DP controller
> drivers are adapted to support the new DT syntax) but should be
> considered deprecated since there is no downside to listing the panel
> under the controller.
>
> For now, the DP AUX bus bindings will only support an eDP panel
> underneath. It's possible it could be extended to allow having a DP
> connector under it in the future.
>
> NOTE: there is no "Example" in this bindings file. Yikes! This avoids
> duplicating the same example lots of places. See users of the aux bus
> (like ti-sn65dsi86) for examples.
>
> The idea for this bus's design was hashed out over IRC [1].
>
> [1] https://people.freedesktop.org/~cbrill/dri-log/?channel=dri-devel&date=2021-05-11
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>

I overall like this approach a lot:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
