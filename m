Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B06172DEC7
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 12:11:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240028AbjFMKLK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 06:11:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234006AbjFMKLJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 06:11:09 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83E3C187
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 03:10:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1686651020;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=EQ8qG3I5WaG3P52JxI3Wd7lusGu6FrfknhfgsuNOgLo=;
        b=ByreEKN5TAIoLLSlsgd9a5BDKYIq+cGD1QJ7pqeUIWHouR2AmNferdWWLUFAUXwoDr/J7+
        pmLkTOQFJydtoOMqvofUwjHWhLMxRUY4SxDNxTktT8/PI9tBK8+7bRgrSSUmDh/Yg23Xy1
        FH4FfdqBj/Eqf93QfFGpWwD6BVxJJhk=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-616-_kmYlMdKM6WXOOHIB37nwA-1; Tue, 13 Jun 2023 06:10:19 -0400
X-MC-Unique: _kmYlMdKM6WXOOHIB37nwA-1
Received: by mail-ej1-f69.google.com with SMTP id a640c23a62f3a-94a341efd9aso632834966b.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 03:10:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686651018; x=1689243018;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EQ8qG3I5WaG3P52JxI3Wd7lusGu6FrfknhfgsuNOgLo=;
        b=gvmv1uw0pmq1Uu798xfhwGcxuC5/OIsbxC95pzYC9nO+Kb3MI85PVLj6ujSB+EzItA
         Oowop0ZMsdnjkTTKcGOpyJ3wlK8shrOYb+8jO7oLbL9nQsp3W1jScG/50xS0IEzlLI2a
         DvprHJgJalNuAEOZ8/IHtNwy4WjDfzMLk36TWeza9YdEWc3UCRlkswvk/FBeYXNPy9bb
         e1kAvq6gZXsFU/aPRqB7Nmo5yBj2pQ/mtG7gY0Q/g8LJETp1Qnh31LggRoZfbw+GGrTa
         2ZkENZpnPqoTj93aEAzd1E+A0Q9JcbWwbVXdWRH6+E8b+eaWzNKkgIiTwIhikHIPMzDN
         RqHw==
X-Gm-Message-State: AC+VfDwYz7k/31BbKS4LSulyCKkeJqqvQUvuSr5poNja0uXohd/OIFxQ
        gvDh5R5mBTiHWr4OqPjfp4fn28uHLP6TXXQ7jYG2IAzZyZ3vZsRawPetHuvnmV0lIumVE3ulXeU
        9uz7xHZIKyI5KPkZG/dApJA==
X-Received: by 2002:a17:907:9306:b0:974:1e85:6a69 with SMTP id bu6-20020a170907930600b009741e856a69mr12573588ejc.16.1686651018071;
        Tue, 13 Jun 2023 03:10:18 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4x+CLF7oh9OSNrlseseUZsRMaCbeVralIJHlINtpA+bhMhcdCKdtmrONK76OG4HPKF+L9oAg==
X-Received: by 2002:a17:907:9306:b0:974:1e85:6a69 with SMTP id bu6-20020a170907930600b009741e856a69mr12573565ejc.16.1686651017718;
        Tue, 13 Jun 2023 03:10:17 -0700 (PDT)
Received: from localhost (net-130-25-106-149.cust.vodafonedsl.it. [130.25.106.149])
        by smtp.gmail.com with ESMTPSA id y21-20020a170906471500b00974564fa7easm6492031ejq.5.2023.06.13.03.10.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jun 2023 03:10:17 -0700 (PDT)
Date:   Tue, 13 Jun 2023 12:10:15 +0200
From:   Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
To:     "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc:     Daniel Golle <daniel@makrotopia.org>, netdev@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Mark Lee <Mark-MC.Lee@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>,
        John Crispin <john@phrozen.org>, Felix Fietkau <nbd@nbd.name>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Eric Dumazet <edumazet@google.com>,
        "David S. Miller" <davem@davemloft.net>,
        Sam Shih <Sam.Shih@mediatek.com>
Subject: Re: [PATCH net-next 6/8] net: ethernet: mtk_eth_soc: convert caps in
 mtk_soc_data struct to u64
Message-ID: <ZIhAh2mzrYHOq2v1@lore-desk>
References: <ZIUX1AkjbSHdiMUc@makrotopia.org>
 <ZIcBQCqeMc424mv6@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="cszZz60J0MnGgC6u"
Content-Disposition: inline
In-Reply-To: <ZIcBQCqeMc424mv6@shell.armlinux.org.uk>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--cszZz60J0MnGgC6u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On Sun, Jun 11, 2023 at 01:39:48AM +0100, Daniel Golle wrote:
> > From: Lorenzo Bianconi <lorenzo@kernel.org>
> >=20
> > This is a preliminary patch to introduce support for MT7988 SoC.
> >=20
> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> > Signed-off-by: Daniel Golle <daniel@makrotopia.org>
>=20
> At some point, I'd really like to unpick this and see whether there's a
> better structure to it - so that mac_config() doesn't have to save the
> syscfg0 value, and restore it in mac_finish(). Given that syscfg0 is a
> shared register, are we sure the code that updates this register is safe
> from races caused by two MACs going through the config progress in two
> separate CPUs at the same time?

Agree, this seems a bit racy. However it does not seem related to this patc=
h.
I would say we can address it with a follow-up patch.

Regards,
Lorenzo

>=20
> Is there anything which prevents two or more MACs wanting to mess with
> the contents of the SYSCFG0_SGMII_MASK bits? It's difficult to tell with
> the current code.
>=20
> Thanks.
>=20
> --=20
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!
>=20

--cszZz60J0MnGgC6u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZIhAhwAKCRA6cBh0uS2t
rKWRAQD8bHaqtDus4I0VAesGyVWRDufLK3pPr+pM1DFTIDlkHQEA/9/+RWG7ZPoC
FpXYqhMD3z7v/+rNvWTD2rV8IbnfLg8=
=Cfik
-----END PGP SIGNATURE-----

--cszZz60J0MnGgC6u--

