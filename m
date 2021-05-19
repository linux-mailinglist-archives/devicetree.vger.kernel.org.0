Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7089B38986F
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 23:12:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbhESVN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 17:13:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229507AbhESVN6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 17:13:58 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45F42C06175F
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 14:12:38 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id v18so7561711qvx.10
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 14:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rrV0j7YUVvQ9ro0u0QUGjNvrEZGZrHvU5ryrt5YfeRs=;
        b=U1IFwZKjSALWLmQnkWT+FZ6THaCzRnuvs9LNdLOH1gdUwrJcSljJp2mdbv0j0f67Hp
         GGdvJkHB5QAc8gaH+BnQ61h+VgY4bkBdafPs/9u0BfMU7hzI8Ot6rMCdrAdfNeTZVI21
         wip7kua1Tq13mnLBds/XBerje9kPZExpHBe5o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rrV0j7YUVvQ9ro0u0QUGjNvrEZGZrHvU5ryrt5YfeRs=;
        b=uaPk8iyrlxEhHX44TXUvtuRAeoZDbgjejo5cU0bGc1XAwv4L4crHTjl50XDZ1+QsyH
         wNsEZy1FmamvgOawqUnyrwHO3mjLNbfGLxiFOWR/PrkRrYPBMOLl1JEj3iLooVBNntXK
         8m5prpymlZl/3kWApCv3XOb9tNbGiiFL/QiBF2g5lCG96PGTi92oYmt4IOVstKTTmKU+
         ne0shbOT7JgGDYsnxrUWlW+RgkOgh3S1olRy0MB/FlVhyeVlLdulNBJQQuB2d9UsvXeq
         0jbRn44ZA92thnhHf6bzpPgFyLq1eDEuBRarSifQ4lDNvuBNvnij2TRkCEaVNNUJRdVx
         zLdg==
X-Gm-Message-State: AOAM532tH+xLd5QPTP5DBap85EjKemB5VlbWK6ZdDGmGl6arbFSS6GPW
        KH/4QkdauUyavAlxUw/CzQ7U5ZUt94JMpA==
X-Google-Smtp-Source: ABdhPJw2eNmWDTTYscleVxdP93CZOpfV0XAQz4bmh1MB+a1rkWm76caPVV/l6nCv6Uby9WMPgB1C3w==
X-Received: by 2002:a0c:e905:: with SMTP id a5mr1871323qvo.58.1621458757177;
        Wed, 19 May 2021 14:12:37 -0700 (PDT)
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com. [209.85.219.169])
        by smtp.gmail.com with ESMTPSA id x9sm513077qto.33.2021.05.19.14.12.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 14:12:37 -0700 (PDT)
Received: by mail-yb1-f169.google.com with SMTP id r8so19922859ybb.9
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 14:12:37 -0700 (PDT)
X-Received: by 2002:a25:734e:: with SMTP id o75mr2168098ybc.405.1621458376733;
 Wed, 19 May 2021 14:06:16 -0700 (PDT)
MIME-Version: 1.0
References: <20210517200907.1459182-1-dianders@chromium.org>
 <20210517130450.v7.3.I98bf729846c37c4c143f6ab88b1e299280e2fe26@changeid> <20210519200156.GA3535665@robh.at.kernel.org>
In-Reply-To: <20210519200156.GA3535665@robh.at.kernel.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 19 May 2021 14:06:04 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XNaB8fVvwwHPgo8wPmG3EmJ68u_3o8qpPXn4YobNokAA@mail.gmail.com>
Message-ID: <CAD=FV=XNaB8fVvwwHPgo8wPmG3EmJ68u_3o8qpPXn4YobNokAA@mail.gmail.com>
Subject: Re: [PATCH v7 03/10] dt-bindings: drm/bridge: ti-sn65dsi86: Add
 aux-bus child
To:     Rob Herring <robh@kernel.org>
Cc:     Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Sam Ravnborg <sam@ravnborg.org>,
        Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
        Lyude Paul <lyude@redhat.com>,
        Thierry Reding <treding@nvidia.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Linus W <linus.walleij@linaro.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Rob Clark <robdclark@chromium.org>,
        Steev Klimaszewski <steev@kali.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 19, 2021 at 1:02 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, May 17, 2021 at 01:09:00PM -0700, Douglas Anderson wrote:
> > We want to be able to list an eDP panel as a child of a ti-sn65dsi86
> > node to represent the fact that the panel is connected to the bridge's
> > DP AUX bus. Though the panel and the bridge chip are connected in
> > several ways, the DP AUX bus is the primary control interface between
> > the two and thus makes the most sense to model in device tree
> > hierarchy.
> >
> > Listing a panel in this way makes it possible for the panel driver to
> > easily get access to the DP AUX bus that it resides on, which can be
> > useful to help in auto-detecting the panel and for turning on various
> > bits.
> >
> > NOTE: it's still possible to continue using the bridge chip and point
> > to a panel that _isn't_ listed as a child of the bridge chip (since
> > it's worked that way previously), but that should be deprecated since
> > there is no downside to listing the panel under the bridge chip.
> >
> > The idea for this bus's design was hashed out over IRC [1].
> >
> > [1] https://people.freedesktop.org/~cbrill/dri-log/?channel=dri-devel&date=2021-05-11
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > Possibly we might want something fancier that could be included by
> > other eDP controller bindings. If we want to do this, I'd love to be
> > pointed at a good example to follow.
> >
> > Changes in v7:
> > - ti-sn65dsi86: Add aux-bus child patch new for v7.
> >
> >  .../bindings/display/bridge/ti,sn65dsi86.yaml | 22 ++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> > index 26932d2e86ab..51f5a29e216c 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
> > @@ -70,6 +70,11 @@ properties:
> >      const: 1
> >      description: See ../../pwm/pwm.yaml for description of the cell formats.
> >
> > +  aux-bus:
>
> As this is a node:
>
> type: object
>
> > +    description:
> > +      It is recommended that you place your panel under the aux-bus node
> > +      here to represent the control hierarchy.
> > +
> >    ports:
> >      $ref: /schemas/graph.yaml#/properties/ports
> >
> > @@ -201,11 +206,26 @@ examples:
> >
> >            port@1 {
> >              reg = <1>;
> > -            endpoint {
> > +            sn65dsi86_out: endpoint {
> >                remote-endpoint = <&panel_in_edp>;
> >              };
> >            };
> >          };
> > +
> > +        aux-bus {
> > +          panel {
>
> We should perhaps have a separate aux-bus schema.

Yeah. Before spending lots of time digging into how to do this I
wanted to see if anyone was going to give me a big-old NAK on the
whole approach. ;-)

I guess I'd make a file called "dp-aux-bus.yaml" (maybe right under
bindings/display?) and then I'd include it like this:

aux-bus:
  $ref: "../dp-aux-bus.yaml#"


> Something should
> define the child node is 'panel' and nothing else.

At the moment the code also requires that the node name is 'aux-bus'.
Any objections to that?


> Though perhaps
> connectors are valid too?

They might be. We could always add it later?
