Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DCBC30A4B0
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 10:54:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232923AbhBAJx0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 04:53:26 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:50553 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229558AbhBAJxZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 04:53:25 -0500
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 1BB5E588;
        Mon,  1 Feb 2021 04:52:39 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 01 Feb 2021 04:52:39 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=fXhOiv2BQHRHn06FCJn5bL3uvYx
        Jow1G9kvvqleSq8I=; b=GfLvBJQ78haPC9Gs4MQCawnJO8nIW6p0+1IExn0YSqB
        3xM+N37QiIXuHozqpGFrev7WqCtoTZLJjfACFGhI7IMwEiXHssJyzGvI+5IhDFt7
        MlB/7aJq0f7EnQGMHqn0xOnn3HlqJRwLpqKnZVFirOl9IhRLZvEr1vkZhiJ0MFzL
        wDzGLb8YQdSief/d2BnA8iSb4zTiCu9PnlMBD4KBy8NRSAMDdhoJ6Tb6jMXRxm3x
        fQvXYijzAhtZrOeurPAMU+skSjoLss169RxBrIpqS+m5mqlzk5n9WwIbd9YyFpvX
        QZhEoTP263HkrGG6gf9FyLiK0O5Abp6Z/rWwvnjOn4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=fXhOiv
        2BQHRHn06FCJn5bL3uvYxJow1G9kvvqleSq8I=; b=cTr3T315NeUjWnydS/7AHI
        4aUhYXCyN+CtkesGRL29Cj5Bt4Id2JBEXTVYhUtIaq2NXSNkgOx3iVMBLfV8936/
        2i7rW4zBaRQwe0IfLKiGz7GIoPw5JabK+3xwuZCIowy4b9XZhP/ZwNsGUnr1G7ZW
        ObN85ThiE0ejMq/47NRd0519ke/lyRAwxS7lxTjl7lkKYuMrh0mR1h3cDJROgiBt
        DO7nnlY4CfR82BcMRFuSZFTTRyrzpvLq31p8YdZwl6kMR/oz6k/NpnoUeQsFvUqT
        2VMcJY+I9bwLMYVmubhf19ANqGCpupkg2UoT6YNQ1g8l54whyySzDtxi/ccRSrHw
        ==
X-ME-Sender: <xms:Zc8XYDl0TOOt754EpcaQHUSKvHtMKwzXpBA4a9H0WF6Dul29pKsf4A>
    <xme:Zc8XYG3OelJdIjMi-w7tIrzQDhH39p3AwRoIn7ZsOkLKOp2dlN_P57fMhCDGGtg02
    E6moaiivnUz0T91b3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrfeekgddtkecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehgtderre
    dttddvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
    nhhordhtvggthheqnecuggftrfgrthhtvghrnhepleekgeehhfdutdeljefgleejffehff
    fgieejhffgueefhfdtveetgeehieehgedunecukfhppeeltddrkeelrdeikedrjeeinecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimh
    gvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Zc8XYJoqnD1F4-QPQjSMukbvnwWT4UhTkk3dtmiSPFar34FbOyFFdg>
    <xmx:Zc8XYLnrn6CXZHpGNnzj2ajLbUBbXA9p-7N7Ny7iECT_HYHysIpHZg>
    <xmx:Zc8XYB1YrwrHiOQ4ZoSBvpSwUnDJ9RdEqg4zxTC50xF_FQ_Vq6UPZQ>
    <xmx:Zs8XYO9AJuaKOCv2yzLXQIXb5qYuhPGbOpH8bWGVlbFSwK8xatp-7A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id A11F924005D;
        Mon,  1 Feb 2021 04:52:37 -0500 (EST)
Date:   Mon, 1 Feb 2021 10:52:35 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: led-gpios binding reporting a weird error
Message-ID: <20210201095235.bfj7an4m47kom45n@gilmour>
References: <20210114111504.2adz4a7tfm3edmul@gilmour>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="7oownh5eetbdonxa"
Content-Disposition: inline
In-Reply-To: <20210114111504.2adz4a7tfm3edmul@gilmour>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--7oownh5eetbdonxa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 14, 2021 at 12:15:04PM +0100, Maxime Ripard wrote:
> Hi Rob,
>=20
> I just encountered a weird error with the led-gpios bindings.
>=20
> Indeed, if we run, on today's next and the current master of the
> dt-schema tools:
>=20
> DT_SCHEMA_FILES=3DDocumentation/devicetree/bindings/leds/leds-gpio.yaml m=
ake -j18 dt_binding_check
>=20
> we end up with:
>   CHECK   Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml
> /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/le=
ds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep' is not of=
 type 'array'
> 	From schema: /home/max/Work/repos/linux/Documentation/devicetree/binding=
s/leds/leds-gpio.yaml
> /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/le=
ds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0: 'off' is =
not of type 'array'
> 	From schema: /home/max/Work/repos/linux/Documentation/devicetree/binding=
s/leds/leds-gpio.yaml
> /home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/le=
ds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0: 'on' is n=
ot of type 'array'
> 	From schema: /home/max/Work/repos/linux/Documentation/devicetree/binding=
s/leds/leds-gpio.yaml
>=20
> What's being especially weird is that linux,default-trigger has the
> exact same definition than default-state in leds/common.yaml (aside from
> the set of valid values), and just works fine.
>=20
> Changing the name of default-state to something else also doesn't change
> anything, so it doesn't look like this is some other schema interfering.
> Do you have an idea?

Ping? This error is still there on today's -next

Maxime

--7oownh5eetbdonxa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYBfPYwAKCRDj7w1vZxhR
xWQbAPwOldFxjCTmzn36FjFLedDo4txXOv9ggCtx4H5fJuRuPAD+IEJDUpBygWXP
xVeKFUdRb+WyxTQq7NfA42+3GvILCQU=
=/zrX
-----END PGP SIGNATURE-----

--7oownh5eetbdonxa--
