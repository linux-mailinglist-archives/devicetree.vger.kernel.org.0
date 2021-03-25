Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 58EEA3493CC
	for <lists+devicetree@lfdr.de>; Thu, 25 Mar 2021 15:12:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230140AbhCYOMW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Mar 2021 10:12:22 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:51917 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231271AbhCYOMQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Mar 2021 10:12:16 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 879D05C00DE;
        Thu, 25 Mar 2021 10:12:15 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 25 Mar 2021 10:12:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=ves1r/nQmgxtQKc3+3YCO54CxOB
        ALjxaiKSuGacq514=; b=K2g6mM4fs9OXl38Qo29CdS6HJtFVkwpY7TiLnZBJ/xF
        COlq8Apuv4rQ/9EzsdIEEvLAeZyeZYHYyCeeYS+Qn3li6gAnwJqPh9nfn3gaqn4R
        P8hNsfe05bJ0b8QsITa3UYrynFo9495P4HdSfhvmiYEyljEOY093U2y2UN1ozAmt
        A3CMSCmzk87dGW1A4cOtqHc2WjKagxWt+80PC99TgNrVVCiP3U/kSv3GUiGiNTyz
        88xETyHETV9m9BwwRVRxXF50+gOGFPs3vnrRYS/8QMEKviREV66BcHwcMXNVsQ7f
        Pvgbtb9nT1umKZiXobFpIuDOfn5a+1O9YFbJAJxe2sg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ves1r/
        nQmgxtQKc3+3YCO54CxOBALjxaiKSuGacq514=; b=SJDp8Z3kjuLXv6EFgHx1qW
        n9MS731fFyFDGd02SFfj1zpndhziOlpaLJQo48flrEhrOfs4ytE96FKCv//dEZTF
        r0car0nk6Xi5jLaok7LUPkCCk6+MSiFlW1vl+k9n/FvHOFM02n5RJqA0MBGKWprQ
        JOqVFATMhyQE8pn/8FV8lqhq40ENK1RkH77KA0m+KrMdE/DtXflPW3yuZmZXgPL5
        RbmXy0P4Xj2Jv0rJVbFUB0K9610dd2/P00iG+j6+DL+pdsgAfcxcXUqUNhNmIp49
        dEYrB3fatGeCVh/xfVuYdhgKqA8kt3nM+tGokWEKwYK+tlHhfO2X9LkDC67s7DOw
        ==
X-ME-Sender: <xms:PppcYEbCHRW4ymRdRB1eteg_IzXWcSJ6XKcpDoArG4J8rG8448RQNw>
    <xme:PppcYPa3tM4oTJEbCCV6S2oKjrbaFUkSyePGgqtp1xLIV7rOxcLfs0v0ebV0gA1wV
    hug1fx4Ndv_LgtUbZg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudehtddgiedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepleekgeehhfdutdeljefgleejffehfffgieejhffgueefhfdtveetgeehieeh
    gedunecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:PppcYO-vYULEpA3nA3fyojhMZB4vbThe-7HaQZSLPtIZjPVPzPlk4A>
    <xmx:PppcYOoO4L5RkZDMaPZ6EVCNafw0mWU5NMGPmkVeu7alE67JuDFnJw>
    <xmx:PppcYPpZyHoYQq0K0hEqiYce3KyWqDS4HE-40isI-xvzlmXxsF9Hsg>
    <xmx:P5pcYABsyAHU8t8ZU8ALPdTpuxIg6pRqxWfdwKbcJO-hEwSPdrRPkQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id C527324006A;
        Thu, 25 Mar 2021 10:12:13 -0400 (EDT)
Date:   Thu, 25 Mar 2021 15:12:11 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Ivan Uvarov <i.uvarov@cognitivepilot.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v2 1/4] ARM: dts: sun8i: r40: add /omit-if-no-ref/ to
 pinmux nodes for UARTs 0&3
Message-ID: <20210325141211.5bfemlmn5dkurlym@gilmour>
References: <20210322105538.3475183-1-i.uvarov@cognitivepilot.com>
 <20210322105538.3475183-2-i.uvarov@cognitivepilot.com>
 <20210322161804.0395de61@slackpad.fritz.box>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="usds6ccterplbkj5"
Content-Disposition: inline
In-Reply-To: <20210322161804.0395de61@slackpad.fritz.box>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--usds6ccterplbkj5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 22, 2021 at 04:18:04PM +0000, Andre Przywara wrote:
> On Mon, 22 Mar 2021 13:55:35 +0300
> Ivan Uvarov <i.uvarov@cognitivepilot.com> wrote:
>=20
> Hi,
>=20
> > This patch adds the /omit-if-no-ref/ keyword to the pio nodes for
> > UART0 and UART3 pins of the R40 SoC, which would reduce the fdt size on
> > boards which do not use these UARTs.
>=20
> But what boards are those? It seems like all boards use uart3-pg and
> the two existing boards use UART0.
>=20
> I think the idea is to use omit-if-no-ref on some rarely used nodes, so
> if there is only a single user, for instance. Your next patch is a good
> example.

There's no real cost associated to it though, so it's just easier to
flag all the nodes and let the compiler figure out if it should evict
them or not.

Maxime

--usds6ccterplbkj5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYFyaOwAKCRDj7w1vZxhR
xZAdAQDYI5KK8H77Wo1gjzVzWhBN5eEoabG/SZI/TcgP9deWVwEA8EZKEgcvMc3K
F+uf36DcIFDXKKyqCmx7oN7JkL46Nww=
=Lha4
-----END PGP SIGNATURE-----

--usds6ccterplbkj5--
