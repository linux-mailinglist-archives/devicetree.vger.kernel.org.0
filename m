Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B93EF642F8D
	for <lists+devicetree@lfdr.de>; Mon,  5 Dec 2022 19:02:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiLESCJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Dec 2022 13:02:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231755AbiLESBw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Dec 2022 13:01:52 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 243BE1B7B6
        for <devicetree@vger.kernel.org>; Mon,  5 Dec 2022 10:01:48 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id q15so10949562pja.0
        for <devicetree@vger.kernel.org>; Mon, 05 Dec 2022 10:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cdakVwIH2qEMG6ouc1uCW6UuBCDdUN/ThzZoNQVFobY=;
        b=rq/uq9EaHmn1xIgNusX9BNWdPkCDDpZjKZCJUVeQPcCwFNWl+LkH+3nbbCW+OfvqV8
         GO0W+om4KD3p6kte7RYKnGo0zs8HMSbkh4VVy0TJZlD2pC2YGx7175VBWCNLcKKxvBUh
         +/w5Q6K7rTMlBA+kgBprPSgfSlDobjze3mzgis5oNX1cV5Syrp1VKneJcj3D0uwXUJr+
         JcDO5Qztck7ESpwtXTsXq9OgZ9g7LaAwvKRZzJODL3xaWswwoNN5ast5+4QK9O0/EoJ6
         NEtKShRGo8jAtksn7vGGEg2rUmgqAIaOYs518aXmj9BfMD0nOFLN36i0l4tBYJL3H1Md
         SiYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cdakVwIH2qEMG6ouc1uCW6UuBCDdUN/ThzZoNQVFobY=;
        b=446BCTxK2srJJkM1BcxklhynkJ7U7R4h1PLO8JviYv2Q4+muJ9PjV/gSP+UWFzRWPJ
         SlXb1ijUl8zjPhCGQER8GYovwD6H2H/gZmvwpKjgTzDLBWZ8eLCcPZxw4xE7OuRor4yv
         ktYNdVfXQrFGKYJC3heFm+Bce623WjgXnywEvtMkOid4kxU+VFLHLjyr4EY1BmpFI38Y
         nXj9EPhe7VtdCzUTAk7BsbMwUvw5LtVECGRzhfoG0FT6S/e1BNCWbjzONsnAZsthffR/
         lCiC8RTMlRy6lppRJA8t/Te8JGgY3msW6ySyPlhys5ps4ijoT4UhTsX/5WWvpaUyxtV+
         52Kg==
X-Gm-Message-State: ANoB5plNNmOEBAKhKowOECGpsUx7+RIx8z7L4JcR81mAUJ0PQ4LE5LwV
        b8IfvkuOtohutCerfhFab8Pd5T0+KNaCBSwB+oF1mw==
X-Google-Smtp-Source: AA0mqf5PHx3namgvOla/pbcB9sVA+cD/nu9Re2WaeahOZ5Oiv0nfjt78xjFkOy0sYt9xne1bWaonfRuy0P5GCAbVJG8=
X-Received: by 2002:a17:902:ccd1:b0:189:2370:7f6a with SMTP id
 z17-20020a170902ccd100b0018923707f6amr72328358ple.158.1670263307542; Mon, 05
 Dec 2022 10:01:47 -0800 (PST)
MIME-Version: 1.0
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com>
 <Y4n41iL6cG9FsndI@lunn.ch> <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
 <Y4o2TFGH6DK3tRcH@lunn.ch> <CAJ+vNU1NDggHF4Wn_kg120uPZ=LPCQf2fZ+x6ii6tEMf7DzxFQ@mail.gmail.com>
 <20221205171045.m5ayo3loh32cdgwo@skbuf>
In-Reply-To: <20221205171045.m5ayo3loh32cdgwo@skbuf>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 5 Dec 2022 10:01:35 -0800
Message-ID: <CAJ+vNU123JTbk_t5Eto4M-Wrj6o1fo=8z8qdqf98_rDO=w2yOA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
To:     Vladimir Oltean <vladimir.oltean@nxp.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 5, 2022 at 9:10 AM Vladimir Oltean <vladimir.oltean@nxp.com> wrote:
>
> Hi Tim,
>
> On Fri, Dec 02, 2022 at 02:29:20PM -0800, Tim Harvey wrote:
> > When I add the phy-mode/phy-handle props with this patch I get the
> > following failure:
> > mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): validation of internal with support 00000000,00000000,000062ff and advertisement 00000000,00000000,000062ff failed: -EINVAL
> > mv88e6085 2188000.ethernet-1:00 lan4 (uninitialized): failed to connect to PHY: -EINVAL
> >
> > I've run into this message before and had a hard time understanding
> > the issue from the message - it seems to indicate the phy status
> > matches advertisement but that its an invalid mode?
>
> Does this patch help?
>
> From 6bd79d9b9994fcb7762301fe297f963c272d9210 Mon Sep 17 00:00:00 2001
> From: Vladimir Oltean <vladimir.oltean@nxp.com>
> Date: Mon, 5 Dec 2022 19:05:24 +0200
> Subject: [PATCH] net: dsa: mv88e6xxx: accept phy-mode = "internal" for
>  internal PHY ports
>
> The ethernet-controller dt-schema, mostly evolved by Linux, has the
> "internal" PHY mode for connections between a MAC and internal PHY.
>
> U-Boot may provide device tree blobs where this phy-mode is specified,
> so make the Linux driver accept them.
>
> Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>  drivers/net/dsa/mv88e6xxx/chip.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/net/dsa/mv88e6xxx/chip.c b/drivers/net/dsa/mv88e6xxx/chip.c
> index ccfa4751d3b7..ba4fff8690aa 100644
> --- a/drivers/net/dsa/mv88e6xxx/chip.c
> +++ b/drivers/net/dsa/mv88e6xxx/chip.c
> @@ -833,10 +833,13 @@ static void mv88e6xxx_get_caps(struct dsa_switch *ds, int port,
>
>         chip->info->ops->phylink_get_caps(chip, port, config);
>
> -       /* Internal ports need GMII for PHYLIB */
> -       if (mv88e6xxx_phy_is_internal(ds, port))
> +       if (mv88e6xxx_phy_is_internal(ds, port)) {
> +               __set_bit(PHY_INTERFACE_MODE_INTERNAL,
> +                         config->supported_interfaces);
> +               /* Internal ports with no phy-mode need GMII for PHYLIB */
>                 __set_bit(PHY_INTERFACE_MODE_GMII,
>                           config->supported_interfaces);
> +       }
>  }
>
>  static void mv88e6xxx_mac_config(struct dsa_switch *ds, int port,
> --
> 2.34.1
>

Vladimir,

Yes, this patch resolves the issue. Enabling CONFIG_MARVELL_PHY
without this patch still shows the issue.

Thanks - please cc me on that and I'll respond (unless you want me to send it).

I'll submit a v2 of my dt patch with fec phy-mode = 'rgmii' after this
patch lands.

Best Regards,

Tim
