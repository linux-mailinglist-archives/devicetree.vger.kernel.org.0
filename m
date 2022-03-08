Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6406D4D0E5D
	for <lists+devicetree@lfdr.de>; Tue,  8 Mar 2022 04:35:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244521AbiCHDf5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 22:35:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243538AbiCHDf4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 22:35:56 -0500
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE5A333342
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 19:35:00 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-2dc242a79beso177237587b3.8
        for <devicetree@vger.kernel.org>; Mon, 07 Mar 2022 19:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z8YcLICd5ozOotLHacoo6o3IiMpV2MGmEAAbrOhugvs=;
        b=E6bg8mbI/8B/nte9RAMX4UNf4tzDxc/13fNgc1359WYoXXBJhgU2AHy1Mt5dmk6ORV
         CZqWREQJdED5OsAd1DZ5/pahBNk2JABS9Dh5CDvx+PAQ8JdyJhk49uVPPEfmAN7yJXCJ
         c2j5jsDZP/cEoE98KPj9mxU6rGVBeWLoquYAV9n43PFXgnhSgCkJbC7W3YPSDcuIijDH
         n5NAn/WZzemkI56p7sfCBO8NUhxjIpU3oAIgcx+Cfc0TSYTGFA/z2gUua5zY3viHPNv/
         rGeXmQiR54M2xlSvwsF78wCgbiI7GqLOZe3cwDcI94mif1dFm24jA4du/mAtKFu6LnkV
         MDmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z8YcLICd5ozOotLHacoo6o3IiMpV2MGmEAAbrOhugvs=;
        b=tYI+uFmyWEgHfr4PTOEIvnpxGG2XBZX5lqnA4Sa5Pj3b7r10zU9f12zvj+3O3LVIFH
         in5/HVZjNVuT9onwP9+RX7tYQroqS+P21jyikTULpix9EWbdCnLC+lW+3YZ5jJHWx8OI
         DiVPJJYM4o+uFRulr0MuG29ho4k9jEHtFBxfPXgNl389meHewetvnuDIel7WjCUV+dSu
         6OmjmeXHFRYDZWAhcAq4Rz6WQ5BMJgjvRAw0ZIT6D4M+EvYx/awsBmO1y7jF/oULRzKC
         w5R6WK2Cg1JkFdCtoXAEIEvFvgxO0PIBfia3/JUbL2e9iOP4Aw2iFd39LztSQSrBTJii
         qYZQ==
X-Gm-Message-State: AOAM532RceoS4hG2DRY1k9U/hFfBAJyFlPJNyD2zoK+aISAdX8Qv1bat
        gvj31OVAWUZKHYQAljrRPX637mIvd6ytwqrUVPXSWA==
X-Google-Smtp-Source: ABdhPJzo2dG+eNHZZX2iQtBwAtX7u8Wf3lG3tlRUrepurBhu4QFhvCI+Dq6HKWsqieO1b+2teU4IBJik9JBgYFkNdXU=
X-Received: by 2002:a0d:f844:0:b0:2db:972c:56e0 with SMTP id
 i65-20020a0df844000000b002db972c56e0mr11333696ywf.126.1646710498872; Mon, 07
 Mar 2022 19:34:58 -0800 (PST)
MIME-Version: 1.0
References: <20220302211100.65264-1-paul.kocialkowski@bootlin.com>
 <20220302211100.65264-2-paul.kocialkowski@bootlin.com> <YiaTfsMDs7RGob2N@robh.at.kernel.org>
In-Reply-To: <YiaTfsMDs7RGob2N@robh.at.kernel.org>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 7 Mar 2022 19:34:22 -0800
Message-ID: <CAGETcx9u9RO_5nSp+=qgwDGY=jL_Q1hAcj+RfVN=q-H_8iuT4w@mail.gmail.com>
Subject: Re: [PATCH RFC v3 1/8] of: Mark interconnects property supplier as optional
To:     Rob Herring <robh@kernel.org>
Cc:     Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 7, 2022 at 3:21 PM Rob Herring <robh@kernel.org> wrote:
>
> +Saravana
>
> On Wed, Mar 02, 2022 at 10:10:53PM +0100, Paul Kocialkowski wrote:
> > In order to set their correct DMA address offset, some devices rely on
> > the device-tree interconnects property which identifies an
> > interconnect node that provides a dma-ranges property that can be used
> > to set said offset.
> >
> > Since that logic is all handled by the generic openfirmware and driver
> > code, the device-tree description could be enough to properly set
> > the offset.
> >
> > However the interconnects property is currently not marked as
> > optional, which implies that a driver for the corresponding node
> > must be loaded as a requirement. When no such driver exists, this
> > results in an endless EPROBE_DEFER which gets propagated to the
> > calling driver. This ends up in the driver never loading.
> >
> > Marking the interconnects property as optional makes it possible
> > to load the driver in that situation, since the EPROBE_DEFER return
> > code will no longer be propagated to the driver.
> >
> > There might however be undesirable consequences with this change,
> > which I do not fully grasp at this point.

Temporary NACK till I get a bit more time to take a closer look. I
really don't like the idea of making interconnects optional. IOMMUs
and DMAs were exceptions. Also, we kinda discuss similar issues in
LPC. We had some consensus on how to handle these and I noted them all
down with a lot of details -- let me go take a look at those notes
again and see if I can send a more generic patch.

Paul,

Can you point to the DTS (not DTSI) file that corresponds to this?
Also, if it's a builtin kernel, I'd recommend setting
deferred_probe_timeout=1 and that should take care of it too.

-Saravana

> >
> > Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> > ---
> >  drivers/of/property.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index 8e90071de6ed..ef7c56b510e8 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1365,7 +1365,7 @@ static struct device_node *parse_interrupts(struct device_node *np,
> >
> >  static const struct supplier_bindings of_supplier_bindings[] = {
> >       { .parse_prop = parse_clocks, },
> > -     { .parse_prop = parse_interconnects, },
> > +     { .parse_prop = parse_interconnects, .optional = true,},
> >       { .parse_prop = parse_iommus, .optional = true, },
> >       { .parse_prop = parse_iommu_maps, .optional = true, },
> >       { .parse_prop = parse_mboxes, },
> > --
> > 2.35.1
> >
> >
