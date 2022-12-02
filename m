Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A700640B0C
	for <lists+devicetree@lfdr.de>; Fri,  2 Dec 2022 17:48:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233375AbiLBQse (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Dec 2022 11:48:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233860AbiLBQsd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Dec 2022 11:48:33 -0500
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E081D3E080
        for <devicetree@vger.kernel.org>; Fri,  2 Dec 2022 08:48:32 -0800 (PST)
Received: by mail-pf1-x436.google.com with SMTP id 124so5453035pfy.0
        for <devicetree@vger.kernel.org>; Fri, 02 Dec 2022 08:48:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VpCL2d3ounGZBt3k6mgRGj9QyacZoaCLu4k4bWG1Yac=;
        b=uQvm2c1tO51a/rQoZNRtiADI9dHao31nXC9Zx0NiYXLga7u/NWO73HTQLXgtIho58D
         lSAZRSMDXPuOw/nfovLgcuktW9WoDQ0gzcW6SOJj6coNTP26hTvrTRVPHfDC7HgksY5g
         Sz4E4AWTi+U+gRYLDqA4ZuVWi9I+OQxdhWtcM8GQW8Sk1iihMP7VW6twhgLAq9RzKB/R
         bihOTTnuLqENotY5mOUnhAaiv1hh0Go9leX8SCmTavqMcaMsTSH31fvXkbCOwP+xk05z
         cveak6F7RDRdk/hRZxiqmcx74h9WGPd45Jw9wnVzLuJK4/oBRc2kxESoye0uWuQn1iuJ
         3RYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VpCL2d3ounGZBt3k6mgRGj9QyacZoaCLu4k4bWG1Yac=;
        b=B/zN1oAudz20pPW+F7STo/8gglI7X9Fk5Qhix9Y2hjD7Ebne8bxxhPI85uswSIVEkU
         Y/k7vVFludMwOwcpnR0MF/7geTc1H6kvR7pnODMuHUv9n28TGy7f3+Fa+pUgFSRv8ah3
         RJyGyfUMxAPVxhehHV2PY45v70ygGryVO5+O8AhA08kW8DMc1xlD32olDKHIwgK7OOMb
         jyxpF6WWaSfaIEVYBILfCCI2we9t/MQ5qZ0dj5r1+YUZuh1FlNP3HVhJULbftRrS2l/f
         3aLrsR/2iM7FQauIDrcWUawx68ZvKiAImCo5YNuoS4rzo/7Eh8hEsGpW/H4cyVbz0XZN
         H8PA==
X-Gm-Message-State: ANoB5plU/i83maDNUX5WnOzhm3NUAbuW6wxJAdel5+98onDSQvk3/1+D
        MXiQ3xA2xpkEkOpyRHO8I61Hdf3ms0MkxLrRqyRP8A==
X-Google-Smtp-Source: AA0mqf7bcoXCz2VyG+4c+4abOMfZTrobZGtLxUSOA42mZfx9Lcj5Dwi46rPi9w1XHDcNCsXU6W0HzUK3LDwBx4YwCOw=
X-Received: by 2002:a62:b501:0:b0:563:771d:417f with SMTP id
 y1-20020a62b501000000b00563771d417fmr54371490pfe.45.1669999712341; Fri, 02
 Dec 2022 08:48:32 -0800 (PST)
MIME-Version: 1.0
References: <20221201003109.448693-1-tharvey@gateworks.com>
 <CAOMZO5Ba6Kmt-a7FMxj-gN5rEyMJJ=9CFRkS0vQkPf_-72rR2w@mail.gmail.com> <Y4n41iL6cG9FsndI@lunn.ch>
In-Reply-To: <Y4n41iL6cG9FsndI@lunn.ch>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Fri, 2 Dec 2022 08:48:21 -0800
Message-ID: <CAJ+vNU0kAoVFFmoFfiOhtErxqAkB3MmP3Q2dNCZP4xm_AaWhcA@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx6qdl-gw5904: add internal mdio nodes
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Vladimir Oltean <vladimir.oltean@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 2, 2022 at 5:08 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Thu, Dec 01, 2022 at 10:02:08PM -0300, Fabio Estevam wrote:
> > Hi Tim,
> >
> > [Adding Andrew]
>
> It is not wrong, but it should also mostly not be needed. The switch
> driver can link internal PHYs to ports.

Andrew,

I should have mentioned in the commit log that this does not change
behavior on Linux but is required for boot firmware. Specifically
U-Boot requires the internal PHY ports to be defined for its DSA
architecture and they share dt's as much as possible.

>
> > >                                 port@5 {
> > >                                         reg = <5>;
> > >                                         label = "cpu";
> > >                                         ethernet = <&fec>;
> > > +                                       phy-mode = "rgmii-id";
> > > +
> > > +                                       fixed-link {
> > > +                                               speed = <1000>;
> > > +                                               full-duplex;
> > > +                                       };
> > >                                 };
>
> This part is needed to make a warning go away. Does the SoC network interface
> have phy-mode = "rgmii"; ?

No, it looks like this:

&fec {
        pinctrl-names = "default";
        pinctrl-0 = <&pinctrl_enet>;
        phy-mode = "rgmii-id";
        status = "okay";

        fixed-link {
                speed = <1000>;
                full-duplex;
        };

        mdio {
                #address-cells = <1>;
                #size-cells = <0>;

                switch@0 {
                        compatible = "marvell,mv88e6085";
                        reg = <0>;
...

Is something here wrong?

Best Regards,

Tim
