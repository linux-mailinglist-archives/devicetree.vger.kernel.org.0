Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A5B02F5FA5
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 12:17:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726376AbhANLQZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 06:16:25 -0500
Received: from wout2-smtp.messagingengine.com ([64.147.123.25]:42163 "EHLO
        wout2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726224AbhANLQT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 06:16:19 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.west.internal (Postfix) with ESMTP id 7192815E4;
        Thu, 14 Jan 2021 06:15:07 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Thu, 14 Jan 2021 06:15:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:mime-version:content-type; s=
        fm1; bh=+qjVBTVcqESr17frInVaUnjuvpdAeSE71sgsp94x3jM=; b=RGe26ufZ
        z85nfTqd/s/xjeViteukAx/vQyylJiwnzpWKJeXO6FBXGmB6DWt02qKLt8B4V+IL
        oEfmkDfZav+ZJ2B7usGG2vCBtLkiypsBwfqXvGn/r9BUEg1D1Jkk3lyyqwCtm8/L
        vwiQF7ylFSvnLbRrGkL9lPmuNmnb3gWL8mMLYS+XHSnPyDFQwA0aumpvgymK1IkT
        tqv4su6QIj02fJmQl5lPDab7P4MhaJfZcHmwx2sDueO6IuRdvTPOxLolZ3HdVnEF
        fN4Cjl7Pou/94LXHp9tUz3YxnA3ZX/7O74rwAW3/flrJRnqdv0LwVOsnkkTL4b3K
        MKl/nmvm8z3DSg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:message-id
        :mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
        :x-me-sender:x-sasl-enc; s=fm1; bh=+qjVBTVcqESr17frInVaUnjuvpdAe
        SE71sgsp94x3jM=; b=G6ZL2H0V41e7p2TjwIXMitm32YLQE0/rjdZ7hl8oEgBpl
        37hJApTz1RWpIXk41ParUsWPlLq1+R68tWiCu4zi6REVsO2TrKUXvwIPh1IqvsFM
        vHQEHwv1MJjVv4AjjDspW062gnV5axZ45c/7Yqeuprc5/6fFUWjAin9x3o1D94fv
        Fsc6rImC8sAvASxHRDIwFy+HjuW03IFkH/fSwWBet+cBORExtP3mis+Es5tubT+3
        cCQ9z/LBH6zuWeGU6lpBfncGYkwc7ZxMxOAAk00kClMoZfECXWB/sNgoIyLJkB0X
        qw/IqVJSlbkvUDvy6ax7LowRhhkbOBHn8/2N/uwAA==
X-ME-Sender: <xms:uicAYCshZSzyOF88xqupV2ys9iJo3jZZv_y4v8B9DUxR1pZPPslvHQ>
    <xme:uicAYJcsohzEPD6p3h45PHWox2g7Xu2A2rSwMX-O5ykCSuoEq-MSyTFvcJxnCYcOm
    0w8je3qQ5AkgW3aVEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedukedrtdehgddvudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfggtggusehgtderredttd
    dvnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhho
    rdhtvggthheqnecuggftrfgrthhtvghrnhepgeehvddvffelveeiuefggfeiueduvdfhfe
    euhffgleejleeghfdvgedtveegleeknecukfhppeeltddrkeelrdeikedrjeeinecuvehl
    uhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvse
    gtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:uicAYHInxlr3gNvxQzHKGoe1OEJwHlhGj5CmdJfpDcE82C-UnYQGXg>
    <xmx:uicAYPYsDIiYVUGIvRzdvIqipK51BHGDX0KTD0-q8H2c7nMoEEWKeg>
    <xmx:uicAYKsVB2ZjUPys6zAvB7z8LUgx1Ychtq_lV2ruyiNUK4RMen06wg>
    <xmx:uycAYIUBKinS38TlD0qgvoorU7JaoA1dO3eA_UXbM7OsUhc3MgY3KA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 97B801080067;
        Thu, 14 Jan 2021 06:15:06 -0500 (EST)
Date:   Thu, 14 Jan 2021 12:15:04 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: led-gpios binding reporting a weird error
Message-ID: <20210114111504.2adz4a7tfm3edmul@gilmour>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="2gv4bq5rdbeye7gz"
Content-Disposition: inline
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--2gv4bq5rdbeye7gz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Rob,

I just encountered a weird error with the led-gpios bindings.

Indeed, if we run, on today's next and the current master of the
dt-schema tools:

DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml make -j18 dt_binding_check

we end up with:
  CHECK   Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml
/home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: leds: led-1:default-state:0: 'keep' is not of type 'array'
	From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
/home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-0:default-state:0: 'off' is not of type 'array'
	From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml
/home/max/Work/allwinner/build/arm64/Documentation/devicetree/bindings/leds/leds-gpio.example.dt.yaml: run-control: led-1:default-state:0: 'on' is not of type 'array'
	From schema: /home/max/Work/repos/linux/Documentation/devicetree/bindings/leds/leds-gpio.yaml

What's being especially weird is that linux,default-trigger has the
exact same definition than default-state in leds/common.yaml (aside from
the set of valid values), and just works fine.

Changing the name of default-state to something else also doesn't change
anything, so it doesn't look like this is some other schema interfering.
Do you have an idea?

Thanks!
Maxime

--2gv4bq5rdbeye7gz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYAAnuAAKCRDj7w1vZxhR
xZV2AP9HUOKvbAlduh/U3WrToU0UuxRQ8oDx8D/FsCgggReFxgD+MDi6BCOTajbm
HgPVGGH78THnIh5LC3yKHLLj2yuM6QE=
=xsNf
-----END PGP SIGNATURE-----

--2gv4bq5rdbeye7gz--
