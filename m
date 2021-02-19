Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5A2AB31F685
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 10:26:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbhBSJZm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 04:25:42 -0500
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:49703 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229527AbhBSJZk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 19 Feb 2021 04:25:40 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 904D75C00E1;
        Fri, 19 Feb 2021 04:24:53 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 19 Feb 2021 04:24:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=aQ7ze2337a1g2JWE7GfEddhp/O5
        spOkkBNaYrg+ZaGE=; b=vP1XrBhte8TMMwseHRcNxwbfi/ARVKQ8j79PNTk72Zy
        QBUgb0r+TM0OU0vgCRO64UUhji8dEP7I/TR1hqgJOE0dDeQ4+b935KPX39Nh1e6T
        sUxE/UwsdEAqwcGqQzM8gTTj7rY/z3m1nVFuNCpeYiQRf7CponGG63hVXJGgQDzl
        lA6bWXdZq2PF5FtNhlq259yANaqo01xv2krk3hOKU0uyR6WVSL0Ahj6HQMgxp5wT
        pelkLHmI3kjim7rAbBQgI1XoEllyJ3bkwgX290G5oR+QLkjOkTZcQ14p1o2Rbv+z
        d5f9uEHQ4D+HiYHIuUE/kNKzEXxYXNhxMNsLCZYFSIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=aQ7ze2
        337a1g2JWE7GfEddhp/O5spOkkBNaYrg+ZaGE=; b=VzxkanQiz19TdaocSI2EbY
        x7f1IxFySTVo0XLEFFd7AvKp7N2nSwE+08VUlb75xkfobVRC4NT+t9uqvT75dD4r
        Y0il9j4x7+/gtVew22k8vIRSTF3vznNyTCLIWylmr6SGI1a2rDS4qI4HpwwonujM
        92Z0GmJwIIpEnXhhV0c0aNA43cpxw8LSiTGobwjk5H8HXZsR6zPVaJNri0yhJAev
        FnotLoiLHC7qpVeSVZGjdqM25aQrfuwXMpGEIZhdtoMlDLxlzqCyiKcuJqxGWEAO
        PQm9IScrZyEiAo5kh2XALYYhTIvyLgERWpEIKJfSTRj5Y0MlZchDa2KeeUSPy2BQ
        ==
X-ME-Sender: <xms:5IMvYNE0Ngsvug4XpRdf12Xe1n1SFzcD26RKKtNohce8TwmCC6VCoQ>
    <xme:5IMvYCVfKrAGurZjGBeUyWPKCxwyHWSFk-YuOrNbgUI-LrbrbXCEZDiAaF3a5aOL7
    s6uRKokjZq5QdwPWUI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrjeeigddtvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
    nhhordhtvggthheqnecuggftrfgrthhtvghrnhepleekgeehhfdutdeljefgleejffehff
    fgieejhffgueefhfdtveetgeehieehgedunecukfhppeeltddrkeelrdeikedrjeeinecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimh
    gvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:5IMvYPIYAtcpkkTBw0rJr1M6RG94nRgAR6o3IeWl9yUjiz4jz81FvQ>
    <xmx:5IMvYDF3SY6EZ2bnthxZTXnZILOQctdR7q3KEvoPFY6hkmtGW21zgw>
    <xmx:5IMvYDWKzTFCBnqIeXSMvP4H24vVpuwfgYKTSBQof_y3YxhyUHFz_A>
    <xmx:5YMvYEeiChYJljXWuh1kAOGH0cR763yV1eB-chdWEAPfo5AoXb_YUg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 9124024005D;
        Fri, 19 Feb 2021 04:24:52 -0500 (EST)
Date:   Fri, 19 Feb 2021 10:24:50 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: led-gpios binding reporting a weird error
Message-ID: <20210219092450.vmfqucvwbq2aq3fc@gilmour>
References: <20210114111504.2adz4a7tfm3edmul@gilmour>
 <20210201095235.bfj7an4m47kom45n@gilmour>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="tx5qsm54is6a6gby"
Content-Disposition: inline
In-Reply-To: <20210201095235.bfj7an4m47kom45n@gilmour>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--tx5qsm54is6a6gby
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 01, 2021 at 10:52:35AM +0100, Maxime Ripard wrote:
> On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> > Hi Rob,
> >=20
> > I just encountered a weird error with the led-gpios bindings.
> >=20
> > Indeed, if we run, on today's next and the current master of the
> > dt-schema tools:
> >=20
> > DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/leds/leds-gpio.yaml=
 make -j18 dt_binding_check
> >=20
> > we end up with:
> >   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.example.dt.y=
aml
> > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/=
leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep' is not =
of type 'array'
> > 	From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindi=
ngs/leds/leds-gpio.yaml
> > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/=
leds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0: 'off' i=
s not of type 'array'
> > 	From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindi=
ngs/leds/leds-gpio.yaml
> > /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/=
leds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0: 'on' is=
 not of type 'array'
> > 	From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindi=
ngs/leds/leds-gpio.yaml
> >=20
> > What's being especially weird is that linux,default-trigger has the
> > exact same definition than default-state in leds/common.yaml (aside from
> > the set of valid values), and just works fine.
> >=20
> > Changing the name of default-state to something else also doesn't change
> > anything, so it doesn't look like this is some other schema interfering.
> > Do you have an idea?
>=20
> Ping? This error is still there on today's -next

and it looks like it's still there with yesterday's too

Maxime

--tx5qsm54is6a6gby
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYC+D4gAKCRDj7w1vZxhR
xd2mAQCN2QUUHrKZ+OahMtFS74vt7VCi+xv4AoIWmqdynQVqhQEAkaid67BGVI7X
q/IZRu9beMK34dS77ZxCpOjafa+zeQQ=
=IHQT
-----END PGP SIGNATURE-----

--tx5qsm54is6a6gby--
