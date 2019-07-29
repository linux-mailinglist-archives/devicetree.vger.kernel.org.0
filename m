Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2226178705
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 10:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726656AbfG2IK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Jul 2019 04:10:58 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:43269 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725988AbfG2IK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Jul 2019 04:10:58 -0400
Received: by mail-io1-f66.google.com with SMTP id k20so118015297ios.10
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2019 01:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wjKq502Q6gpU5SYg3+dww58wMDXhtnro3JqbcrzLP2w=;
        b=1Jstc9leeeKshq3NbZz/yusLxyfkfomaJn0FAfZR6jxixg6Z6FMAZ1ta8edPsrcWIZ
         zi2W69hsHCA/+Yn+DaHVKmOdWG3PVN2sFS0VY5OcBB+ipaMGJ84QJxi48oafAfb/tKQW
         qPxeA6DbcKPOV9s+FqRrthGcV6cXQWZ4VZJORyoUHframmgQMBIWTjbT4EthCs2nYm68
         caefLzCagBVLnZxGawHve/bJo6HvSSKoXck9RAbwq9qBRhIlDZ2Pqp3d4G8xtT3jmUn+
         hooWC4C5fit0CVYdw8lu1EVJZdV93iZMXT/TEojZb+Z9MUMK3aTJpNVfKbzJ9PLyJTpy
         tIGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wjKq502Q6gpU5SYg3+dww58wMDXhtnro3JqbcrzLP2w=;
        b=NdVQqgHflpzDBLx/D6szruMBt5VYWdJxpFSgyeXjXdpih8c82EIQKm6CLL+zBzJQ+C
         VyYOLLNuE6qvmkvBATpKVX59fzPkliJPh0O9TETi4kt4uJQhBuIw6odmigYZIMuk63+O
         az93vMiNkxsFmGnPbVPRrpMENlMT2QAqEWUgoPhldz+Qy09bC+9nRpFqnT0201UUs/6o
         Xb8fJTbB+dmHIrNLhXmx5uME2cXq9BXYwgAQmDyAxjh7soZrVBHg0V0JyY8OzaeNrTTt
         InJ+0HJn8+cYywTEohF9+/JkpNMyafHp7siFho4YHO0tKJtYyamAlmcLTl8Htl6JzSRa
         H/gg==
X-Gm-Message-State: APjAAAV9bdpmQCBUbgm4eoTKeVnYi8RFz/7E1qivEVF5I9n6brJCnw8B
        OqezLzY3XEuM4VKtUD3VOsu9SqPv7o9ztHhYtEU=
X-Google-Smtp-Source: APXvYqwRfziyu/V/N3q5aBGPX30RA3KOMMtCOAIa53mGZVv1aRujwKB8GJ35GVqciWl6j0Q38JittJNRxsZXkx0XVQ0=
X-Received: by 2002:a5d:860e:: with SMTP id f14mr34569962iol.242.1564387857145;
 Mon, 29 Jul 2019 01:10:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190627095104.22529-1-miquel.raynal@bootlin.com> <20190627095104.22529-2-miquel.raynal@bootlin.com>
In-Reply-To: <20190627095104.22529-2-miquel.raynal@bootlin.com>
From:   Grzegorz Jaszczyk <jaz@semihalf.com>
Date:   Mon, 29 Jul 2019 10:10:46 +0200
Message-ID: <CAH76GKO9Z3Z7YcNSHgCkvHjrKpRs22=U8GcsL2AfN8RCTXsKuw@mail.gmail.com>
Subject: Re: [PATCH v2 01/19] phy: mvebu-cp110-comphy: Add clocks support
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Gregory Clement <gregory.clement@bootlin.com>,
        Jason Cooper <jason@lakedaemon.net>,
        Andrew Lunn <andrew@lunn.ch>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Miquel

czw., 27 cze 2019 o 11:51 Miquel Raynal <miquel.raynal@bootlin.com> napisa=
=C5=82(a):
> +static int mvebu_comphy_init_clks(struct mvebu_comphy_priv *priv)
> +{
> +       int ret;
> +
> +       priv->mg_domain_clk =3D devm_clk_get(priv->dev, "mg_clk");
> +       if (IS_ERR(priv->mg_domain_clk))
> +               return PTR_ERR(priv->mg_domain_clk);
> +
> +       ret =3D clk_prepare_enable(priv->mg_domain_clk);
> +       if (ret < 0)
> +               return ret;
> +
> +       priv->mg_core_clk =3D devm_clk_get(priv->dev, "mg_core_clk");
> +       if (IS_ERR(priv->mg_core_clk)) {
> +               ret =3D PTR_ERR(priv->mg_core_clk);
> +               goto dis_mg_domain_clk;
> +       }
> +
> +       ret =3D clk_prepare_enable(priv->mg_core_clk);
> +       if (ret < 0)
> +               goto dis_mg_domain_clk;
> +
> +       priv->axi_clk =3D devm_clk_get(priv->dev, "axi_clk");
> +       if (IS_ERR(priv->axi_clk)) {
> +               ret =3D PTR_ERR(priv->axi_clk);
> +               goto dis_mg_core_clk;
> +       }
> +
> +       ret =3D clk_prepare_enable(priv->axi_clk);
> +       if (ret < 0)
> +               goto dis_mg_core_clk;
> +
> +       return 0;
> +
> +dis_mg_core_clk:
> +       clk_disable_unprepare(priv->mg_core_clk);
> +
> +dis_mg_domain_clk:
> +       clk_disable_unprepare(priv->mg_domain_clk);
> +
> +       priv->mg_domain_clk =3D NULL;
> +       priv->mg_core_clk =3D NULL;
> +       priv->axi_clk =3D NULL;
> +
> +       return ret;
> +};
> +
> +static void mvebu_comphy_disable_unprepare_clks(struct mvebu_comphy_priv=
 *priv)
> +{
> +       if (priv->axi_clk)
> +               clk_disable_unprepare(priv->axi_clk);
> +
> +       if (priv->mg_core_clk)
> +               clk_disable_unprepare(priv->mg_core_clk);
> +
> +       if (priv->mg_domain_clk)
> +               clk_disable_unprepare(priv->mg_domain_clk);
> +}
> +
>  static int mvebu_comphy_probe(struct platform_device *pdev)
>  {
>         struct mvebu_comphy_priv *priv;
>         struct phy_provider *provider;
>         struct device_node *child;
>         struct resource *res;
> +       int ret;
>
>         priv =3D devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
>         if (!priv)
> @@ -607,10 +671,17 @@ static int mvebu_comphy_probe(struct platform_devic=
e *pdev)
>         if (IS_ERR(priv->base))
>                 return PTR_ERR(priv->base);
>
> +       /*
> +        * Ignore error if clocks have not been initialized properly for =
DT
> +        * compatibility reasons.
> +        */
> +       ret =3D mvebu_comphy_init_clks(priv);
> +       if (ret)
> +               dev_warn(&pdev->dev, "cannot initialize clocks\n");
> +

Please request probe retry when clocks are not ready, e.g.:
-       if (ret)
+       if (ret) {
+               if (ret =3D=3D -EPROBE_DEFER)
+                       return ret;
                 dev_warn(&pdev->dev, "cannot initialize clocks\n");
+       }

After that you can put:
Tested-by: Grzegorz Jaszczyk <jaz@semihalf.com>

regards,
Grzegorz
