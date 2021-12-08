Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A92546CDB6
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 07:26:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239692AbhLHG3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 01:29:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239648AbhLHG3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 01:29:50 -0500
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE863C061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 22:26:16 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id x15so4883259edv.1
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 22:26:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JDOyr+F9YK+WldbZFLV08gsVPZC6GDloFu/EtSqXU8s=;
        b=gJ5KzNYh3GeuKAN/Li1gWkIkBM72iAQTEnS8YcttO5U7xeFcCryDGjycIYA3M5ET5B
         MQDrHXzEwYWUtvdsGK2mr30pKX+SKiZUiHlB+DU28/VScGvD1SYhela1XEwMlEjE11JV
         SNH1U90P0YqVQYcFJ2O7o8WQ/7myncG3QV4Lo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JDOyr+F9YK+WldbZFLV08gsVPZC6GDloFu/EtSqXU8s=;
        b=A7FINdbYhCpajYYIRk1lC/1fuwerwrQXtQOHHIWs7xX2sBAmClqjN+oPmMcnSg0A2V
         uXs+GCRJpKvG4pMrOWQMeLkws5mhzcBTbhU7+6EbhU6z4GY9XVl/xLbL2koaiSdfoIJd
         CSq+toJ6B+e3kq2IBUKx5xXwzuCUCCR7WfC7Mo2K2GaLjFXAPEKuNsk+i52q2ZHCN1a/
         WAyI22D8c+ist8YH6Fy+x7xE9YYd33/AGbb+rGWhdaHc7Mqn0VjEaBNzBg2AW5LSoduW
         Ajd09hjTHWsZGJdiTk28XWbTWGLC28dSgZJ7kOJKWxahWZRkPCyxvMigDhPVTDnK+1sR
         sDbw==
X-Gm-Message-State: AOAM530ijNzq4QyH81dXiLjokjBGGFDvXS8NHPsfbVVSdUdC1225pR+s
        EW2lRrDejUfNwm6/P9a3ZSE/Am43tzTpaG2u+hJlGg==
X-Google-Smtp-Source: ABdhPJyDJiW45X33EnCeIgOElIPrAA45rk8jwtzJh/1J7ctIB/q4SOcISVO8qCUn5LDbikO3e0xUrh6fYuIjAnIj4ZE=
X-Received: by 2002:a05:6402:1768:: with SMTP id da8mr16837011edb.252.1638944775240;
 Tue, 07 Dec 2021 22:26:15 -0800 (PST)
MIME-Version: 1.0
References: <20211207054747.461029-1-jagan@amarulasolutions.com>
 <20211207054747.461029-2-jagan@amarulasolutions.com> <CAL_JsqKj_ToLpoGR6XLgAu=+THit6jhdzAvxMiCCNmWg5zbQ0A@mail.gmail.com>
In-Reply-To: <CAL_JsqKj_ToLpoGR6XLgAu=+THit6jhdzAvxMiCCNmWg5zbQ0A@mail.gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Wed, 8 Dec 2021 11:56:04 +0530
Message-ID: <CAMty3ZCO3yYcZhggorPBhywBs8=KjE3Mrv7573TrPQyzfPPiaA@mail.gmail.com>
Subject: Re: [PATCH 1/2] of: Add helper to lookup non port child node
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Robert Foss <robert.foss@linaro.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 8, 2021 at 2:20 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Mon, Dec 6, 2021 at 11:49 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Add of_get_non_port_child() helper that can be used to lookup
> > non port child nodes.
> >
> > Some OF graphs don't require 'ports' to represent the next output
> > instead, it simply adds a child node on a given parent node. This
> > helper lookup that child node, however that child node is not a
> > 'port' on given parent as 'port' based nodes are looked up via
> > of_graph_get_remote_node().
> >
> > Example OF graph representation of DSI host, which doesn't
> > have 'ports'.
>
> This seems pretty specific to DSI and also can't handle there being
> more than 1 non-port node. That's allowed for DSI too, but I don't
> think I've ever seen a case. Anyways, I'd just move this to DRM rather
> than common DT code. One comment on the implementation that will
> shrink it.

I think it can be possible to OF graph even for non-DSI, however if
the end-node outputs to a panel or bridge. At the moment, I can one
use case on the non-DSI side is rcar du encoder.
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/drivers/gpu/drm/rcar-du/rcar_du_encoder.c#n68

I'm not sure this can be done existing of_graph_get_remote_node, but an example.

>
> >
> > dsi {
> >         #address-cells = <1>;
> >         #size-cells = <0>;
> >
> >         port {
> >                 dsi_in_tcon0: endpoint {
> >                         remote-endpoint = <tcon0_out_dsi>;
> >         };
> >
> >         panel@0 {
> >                 reg = <0>;
> >         };
> > };
> >
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/of/base.c  | 29 +++++++++++++++++++++++++++++
> >  include/linux/of.h |  6 ++++++
> >  2 files changed, 35 insertions(+)
> >
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index 61de453b885c..31bbf885b0f8 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -854,6 +854,35 @@ struct device_node *of_get_compatible_child(const struct device_node *parent,
> >  }
> >  EXPORT_SYMBOL(of_get_compatible_child);
> >
> > +/**
> > + * of_get_non_port_child - Find the non port child node for a given parent
> > + * @node:      parent node
> > + *
> > + * This function looks for child node which is not port child for given parent.
> > + *
> > + * Return: A node pointer if found, with refcount incremented, use
> > + * of_node_put() on it when done.
> > + * Returns NULL if node is not found.
> > + */
> > +struct device_node *of_get_non_port_child(const struct device_node *parent)
> > +{
> > +       struct device_node *child;
> > +
> > +       for_each_child_of_node(parent, child) {
>
> for_each_available_child_of_node

Look like this simplifies not required to use of_device_is_available,
I will use it in v2.

Thanks,
Jagan.
