Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C17A74DC364
	for <lists+devicetree@lfdr.de>; Thu, 17 Mar 2022 10:54:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231937AbiCQJ4A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Mar 2022 05:56:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230225AbiCQJz7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Mar 2022 05:55:59 -0400
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 895561DA8CA
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 02:54:43 -0700 (PDT)
Received: by mail-oi1-x22a.google.com with SMTP id j83so5062251oih.6
        for <devicetree@vger.kernel.org>; Thu, 17 Mar 2022 02:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8HX1lBnW6aQFDl7BQWxl1uhe8Eh6tZ4iOVBmtw43WMk=;
        b=ei3v5pLnZhsdvftGMiUCeOrT9LWC2SmaI5yPa5lLPqpj736Y9AhHgEWLQzGzDY6/cF
         /zheSIj8Adt3NQR7WeBjA9NnvOPb2OVyj4xCA6aXyI/IFRl/nKI/+9q7MHvZICBQ5Fdt
         3LgxCwMWyPHnG2jEyg20Oj0QdLG2/nuiRQcBwNGx3AOT5GR6UAmXcNlbpsVlsOAeNsNu
         /enilhHlK/imJanzJQOWtPiP2n0plLZTlK/cXexYoQYgcyjmYXQLtUV9fSfklAwk6qKr
         Bwb7U4Okeazfrt/uSuNk7GNOG4pvSY2Li3n2izs4szl8/Yp3B0hRZvB7BBCabxy0w6+M
         BfZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8HX1lBnW6aQFDl7BQWxl1uhe8Eh6tZ4iOVBmtw43WMk=;
        b=XQ1e4DlLrRcbj+RIKMakniIBA/cGJHJKTdh91Yhpjzb7M1wtq3uKK4awWIte/Q1c3L
         gWu9L8/W0d7vZY3EUck4dGU4NRy/0pRTYV0EwP3QJhk33A8i+vM3MQbTgH7UV6MfSiP/
         b27K438sZSiAONZ1rh7fXBKYJ84Ir8C1Ev/GqdXEALetvjAukRVhPL7n2XK9jJlsYE1V
         cyhnSFhwJLdAQ97PhWY90ETV/RO2WZWvW6DHos+h4FdlJVtzUPGinOpcZBUmcr+GQPiT
         zWO/jsebNVB3QiCQvdNGht1TLR0QsLgTorTsP8xZClT1IgVEivDrTE5kxOEgObjyHNl+
         6lcw==
X-Gm-Message-State: AOAM530B6GdLeyXHk305W+ETVnT1HH/aiMCYlZyuhz5Irz5SDvbWT+3d
        hZVy0vZgYclt6Nm8cy9iPfNRwTCmj014EMnpD7ND6A==
X-Google-Smtp-Source: ABdhPJxzGiSYqEc+hXp/hxPQPdb25+xXq1rxoQWQ3mw76eAjMZmJeCj1kAC8z35ZzncsiS8iVaNEhv4HLASa6E7WbUI=
X-Received: by 2002:a05:6808:1b25:b0:2da:32ff:ab73 with SMTP id
 bx37-20020a0568081b2500b002da32ffab73mr1517347oib.285.1647510882851; Thu, 17
 Mar 2022 02:54:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220317091926.86765-1-andy.chiu@sifive.com> <20220317091926.86765-2-andy.chiu@sifive.com>
In-Reply-To: <20220317091926.86765-2-andy.chiu@sifive.com>
From:   Andy Chiu <andy.chiu@sifive.com>
Date:   Thu, 17 Mar 2022 17:52:44 +0800
Message-ID: <CABgGipUVMBW8yZum60MUKsni-kNQf-P0HW7-2NVT9mR=c2dNRA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] net: axiemac: use a phandle to reference pcs_phy
To:     davem@davemloft.net, kuba@kernel.org, michal.simek@xilinx.com,
        linux@armlinux.org.uk, Robert Hancock <robert.hancock@calian.com>,
        andrew@lunn.ch, netdev@vger.kernel.org, devicetree@vger.kernel.org,
        radhey.shyam.pandey@xilinx.com
Cc:     Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

loop in: radhey.shyam.pandey@xilinx.com

I am sending this out since I forgot to CC the maintainer of the
driver, again...

Sorry for being noisy here.

Regards,
Andy


On Thu, Mar 17, 2022 at 5:21 PM Andy Chiu <andy.chiu@sifive.com> wrote:
>
> In some SGMII use cases where both an external PHY and the internal
> PCS/PMA PHY need to be configured, we should explicitly use a phandle
> "pcs-phy" to get the reference to the PCS/PMA PHY. Otherwise, the driver
> would use "phy-handle" in the DT as the reference to both external and
> the internal PCS/PMA PHY.
>
> In other cases where the core is connected to a SFP cage, we could
> fallback, pointing phy-handle to the intenal PCS/PMA PHY, and let the
> driver connect to the SFP module, if exist, via phylink.
>
> Fixes: 1a02556086fc (net: axienet: Properly handle PCS/PMA PHY for 1000BaseX mode)
> Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
> Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
> ---
>  drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> index 6fd5157f0a6d..17de81cc0ca5 100644
> --- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> +++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
> @@ -2078,7 +2078,13 @@ static int axienet_probe(struct platform_device *pdev)
>                         ret = -EINVAL;
>                         goto cleanup_mdio;
>                 }
> -               lp->pcs_phy = of_mdio_find_device(lp->phy_node);
> +               np = of_parse_phandle(pdev->dev.of_node, "pcs-handle", 0);
> +               if (np) {
> +                       lp->pcs_phy = of_mdio_find_device(np);
> +                       of_node_put(np);
> +               } else {
> +                       lp->pcs_phy = of_mdio_find_device(lp->phy_node);
> +               }
>                 if (!lp->pcs_phy) {
>                         ret = -EPROBE_DEFER;
>                         goto cleanup_mdio;
> --
> 2.34.1
>
