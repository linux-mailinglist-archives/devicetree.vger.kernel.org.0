Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9A9B2837C7
	for <lists+devicetree@lfdr.de>; Mon,  5 Oct 2020 16:29:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726214AbgJEO3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Oct 2020 10:29:12 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:45007 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726160AbgJEO3M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Oct 2020 10:29:12 -0400
Received: by mail-lf1-f68.google.com with SMTP id 197so11098879lfo.11
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 07:29:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+cUizdRPiHQFsQCTd28Hqd94oO6FKlvvb3/hP2cIQhw=;
        b=rrs8nmODGxhrUCvuqNQffzKn2A1/b2AHPnsGKQGjY1bxVhXl+ADMA8IdqmUOy6Wk0u
         gimROh39MBZ7y9l7p/pMeuXvQDgnlaY0rx6sgHzsQY+IIgBM77tyAekw8W87Rbbmei6/
         PfPdh/zWBJC+SrF9H3KkTUPnLsm0wUuN33KGataOd22PAqbcsToLqDWnsgwyGAYqdqQk
         e0pZN4rsMlRQ0Sr60TSitQyuvqhgX0ghMizhmxgHGMN+VBt+qtXAOzU2xJiCVG9EN3nD
         DARYi4CVD+ShDglz2zJtDhtzfZ18OLIlzDKARAEmz+InPheaIdogfLzm0ZRBrLfgdfj5
         CU2Q==
X-Gm-Message-State: AOAM532ICyW4u1gCphnLJPkSOtSvvW+e61YDbUbU7wPXwV8Jn4NmpejE
        ACkKhxtND//0e7OVg7GTU3ff+XvDH1h9jg==
X-Google-Smtp-Source: ABdhPJyUVw+rkdayd36il7SskjDoDlLsPuakuDnGVGR9+Ew9Fy8/pPutJjfcBvOIAPRmb/3qiH6tsg==
X-Received: by 2002:ac2:5a11:: with SMTP id q17mr5341923lfn.254.1601908149922;
        Mon, 05 Oct 2020 07:29:09 -0700 (PDT)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com. [209.85.167.45])
        by smtp.gmail.com with ESMTPSA id u26sm777370lfu.13.2020.10.05.07.29.09
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2020 07:29:09 -0700 (PDT)
Received: by mail-lf1-f45.google.com with SMTP id a9so1743627lfc.7
        for <devicetree@vger.kernel.org>; Mon, 05 Oct 2020 07:29:09 -0700 (PDT)
X-Received: by 2002:a19:c6c8:: with SMTP id w191mr5165802lff.348.1601908148968;
 Mon, 05 Oct 2020 07:29:08 -0700 (PDT)
MIME-Version: 1.0
References: <cover.7029eefe5c5350920f91d4cd4cbc061466752f3c.1596101672.git-series.maxime@cerno.tech>
 <1df5a7bcafa091e008edb439ee9de4262ae4d5d1.1596101672.git-series.maxime@cerno.tech>
 <CAGb2v64dsqavVYL4UvjWw=DzpbE-Egwso1Ma8xH3qYgS2Te9zg@mail.gmail.com> <20201005141817.rsj7d6wwnsgdrydo@gilmour.lan>
In-Reply-To: <20201005141817.rsj7d6wwnsgdrydo@gilmour.lan>
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Mon, 5 Oct 2020 22:28:58 +0800
X-Gmail-Original-Message-ID: <CAGb2v67Tkk7FtZT8E-5V_X+f=W1FGAfp454KknUdTrYPMP08NA@mail.gmail.com>
Message-ID: <CAGb2v67Tkk7FtZT8E-5V_X+f=W1FGAfp454KknUdTrYPMP08NA@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] drm/sun4i: tcon: Refactor the LVDS and panel probing
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        devicetree <devicetree@vger.kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 5, 2020 at 10:19 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> Hi Chen-Yu,
>
> Sorry for the delay
>
> On Sat, Aug 29, 2020 at 02:43:53PM +0800, Chen-Yu Tsai wrote:
> > > +static int sun4i_tcon_register_panel(struct drm_device *drm,
> > > +                                    struct sun4i_tcon *tcon)
> > > +{
> > > +       struct device_node *companion;
> > > +       struct device_node *remote;
> > > +       struct device *dev = tcon->dev;
> > > +       bool has_lvds_alt;
> > > +       bool has_lvds_rst;
> > > +       int ret;
> > > +
> > > +       /*
> > > +        * If we have an LVDS panel connected to the TCON, we should
> > > +        * just probe the LVDS connector. Otherwise, let's just register
> > > +        * an RGB panel.
> > > +        */
> > > +       remote = of_graph_get_remote_node(dev->of_node, 1, 0);
> > > +       if (!tcon->quirks->supports_lvds ||
> > > +           !of_device_is_compatible(remote, "panel-lvds"))
> > > +               return sun4i_rgb_init(drm, tcon);
> >
> > Slightly related: IIRC there are a few LVDS panels supported in panel-simple
> > so they don't use the panel-lvds compatible. Any idea how to deal with those?
>
> I agree that this is an issue, I'm not entirely sure how to fix it. The
> proper fix would be to have multiple output ports, one for each output
> type, but given how our current binding looks like I'm not sure how we
> could retro-fit that without some horror-looking code.
>
> Maybe we can add a property on the endpoint?

I guess that works. :)

Since the LCD and LVDS outputs use the same pins, it's not like we really would
have multiple output ports.

ChenYu
