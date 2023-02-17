Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50C5D69A878
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 10:43:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbjBQJnm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 04:43:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229649AbjBQJnl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 04:43:41 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E168BDBE4
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 01:43:23 -0800 (PST)
Received: from pecola.lan (unknown [159.196.93.152])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 9066220037;
        Fri, 17 Feb 2023 17:43:04 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676626988;
        bh=3WtRqJGFMITvrlCUQgLrV4f+rApo5IuH2N6gPvlbS1M=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=OI3ZJ9JFE0R6pSl1bT+uP1aHPsV9Uzv8X3QnjKMXYzvKmQLqWnAms35FBztp6VVz7
         fhBmHT5/+Wd+G6rFD3BXnW7lw8XKj8Yu75hb32/Gxs7Ky6Cyr5/BSMxPBCU1W3Tz5l
         emMIeUPcX7MkYZJYTEIaUW3YaS3yRhDIEJXQ9VMX/w0OoOQD7P6cJg0zH+oRTC0rN7
         fLGffTXr//EnMOHIEACD0wKubRnan/Nq7FXpfyu36QPRKPFmsg+/BfZF6IS2n5gwX1
         hbSWvuNKzRQiQxUC55xCcKjUZ7E98mWyUk38isv0cworgkN/buAUkFOGNDROchcybB
         DODh60tV85p8w==
Message-ID: <578ac18169e21c13445d29d3c99de04e9fc6888e.camel@codeconstruct.com.au>
Subject: Re: [PATCH 2/4] i3c: dw: Add platform operations
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     Ben Dooks <ben.dooks@sifive.com>, linux-i3c@lists.infradead.org
Cc:     Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Vitor Soares <ivitro@gmail.com>, linux-aspeed@lists.ozlabs.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Date:   Fri, 17 Feb 2023 17:43:04 +0800
In-Reply-To: <9b374250-3afc-6277-d1c6-0dac1c682bca@sifive.com>
References: <cover.1676532146.git.jk@codeconstruct.com.au>
         <eb90bc9ee9f72efc2012abce3e4e50186552e194.1676532146.git.jk@codeconstruct.com.au>
         <9b374250-3afc-6277-d1c6-0dac1c682bca@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Ben,

Thanks for taking a look at the patch. My responses inline (just
re-ordered, simple stuff first)

> > =C2=A0 struct dw_i3c_i2c_dev_data {
> > @@ -612,6 +623,12 @@ static int dw_i3c_master_bus_init(struct i3c_maste=
r_controller *m)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 thld_ctrl;
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
> > =C2=A0=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (master->platform_ops && =
master->platform_ops->init) {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0ret =3D master->platform_ops->init(master);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0if (ret)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return=
 ret;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
>=20
> I'd rather have a "default" set of ops than have all this checking for
> NULL pointers all over the place.

Yep, that's a better structure, changed for v2.

> > @@ -1181,6 +1205,18 @@ static int dw_i3c_probe(struct platform_device *=
pdev)
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0master->maxdevs =3D ret=
 >> 16;
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0master->free_pos =3D GE=
NMASK(master->maxdevs - 1, 0);
> > =C2=A0=20
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* match any platform-specif=
ic ops */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0match =3D of_match_node(dw_i=
3c_master_of_match, pdev->dev.of_node);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (match && match->data)
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0master->platform_ops =3D match->data;
>=20
> I'm sure there's a of_device_get_match_data() which would have
> both removed hte need to move the match table around and the
> call to of_match_node().

That's the one I was looking for! Thanks for the pointer, I have updated
in v2.

> > @@ -241,6 +241,17 @@ struct dw_i3c_master {
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0char version[5];
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0char type[5];
> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 addrs[MAX_DEVS];
> > +
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* platform-specific data */
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct dw_i3c_platform=
_ops *platform_ops;
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0union {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} pdata;
> > +
> > +};
> > +
> > +struct dw_i3c_platform_ops {
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*probe)(struct dw_i3c_m=
aster *i3c, struct platform_device *pdev);
> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*init)(struct dw_i3c_ma=
ster *i3c);
> > =C2=A0 };
>=20
> Given the comment below having this and the main probe defined in a=20
> header so users can just call in and we don't have to change the
> main code here every time someone comes up with their own
> special way of handing this?

I'm not sure I 100% understand the intention here - is it that we'd
split the platform-specific code into entirely new drivers, and have
those call into dw_i3c_probe() (presumably doing a bit of custom init
either before or after that call)?

If so: I think the platform support should stay fairly minimal, so I'm
not sure that warrants a new driver for each instance. In the ast2600
case it's just a couple of extra reg writes in the i3c init path. I'd be
reluctant to split that out completely at this stage - but if this does
grow, we can certainly reconsider.

Also, I'd like to allow for the case where the platform-specific parts
may access the fields of struct dw_i3c_master; with this approach we
don't need to expose that struct outside of the single driver.

Cheers,


Jeremy
