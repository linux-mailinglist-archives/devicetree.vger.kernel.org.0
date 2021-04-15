Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 363253603EA
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 10:08:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230090AbhDOIJD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 04:09:03 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:35879 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231326AbhDOIJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 15 Apr 2021 04:09:02 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id BB42B5C0154;
        Thu, 15 Apr 2021 04:08:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 15 Apr 2021 04:08:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm2; bh=9S9hqEIhNP1w4EXb199EfGfBgNN
        /jD60qSEpPVXY8k0=; b=H/hSt5XjNodjwCgpzBmNxZiAmnh8kO/sIpIUXEozARL
        2L9tpxo5s+3kRB6x1DpQ3EKOBFgGk1OrcdhUONjMR5XEHPiEPnw+DkE5kXfTDCOW
        QaHraTIFPOyxBgn/WJlWnoKzf8nORIorxhjtj1HLe1GQaFo6d/+n6ejEDuCOvDIC
        Zi+FA4fqMDmMPah5Gg+djlKWZYHlSDdQxcCM75eog009BrehzyexJ40olQJ7fIxE
        pyjiD9tlarUPSvrL/e0fPuFqN4/u1WsnaCFoO5J49nQCaG9sgdo4qDEdo5JVCW+e
        Nc4v686DgaHRC3aPk8dpazQjLEvRbpzER+m6Ip0zY2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=9S9hqE
        IhNP1w4EXb199EfGfBgNN/jD60qSEpPVXY8k0=; b=UcmRaWE6dcQ21syVfhTIVf
        Q5jjZ6yMEF63NtEpm43xwHrgaHTHpD64+mfs7Aa3lZup+rHyQpOA3wMA9X42p+2c
        XbK2SbnKmwZKOMaF/YBB7O7qF4ZAMi5sExxuCoz5edZRiHHVeFEzgTVLY0c+a4GR
        hT2yWD8kcYRcVSP6gCFoo0qsDgvq10ZZ8TF7F+y7BkLdIUGINIkCw0XHp36gWa0V
        iSi4+Zljbi5L38VoyZdvjD+2b/HanGhPveXZ3DHXk3mRg6YsQzB7MXLp08PCOMRm
        2hDmDMC8bVK8h2e9TTsI0DJ/zuhSt+VNc6lCo0yBaQwKK8019DHru/nmxv+V6ItA
        ==
X-ME-Sender: <xms:hvR3YFF8_3NRMD-OjY8-POEayDvg95o54h-cg5dFE-uskYBOLbQtpw>
    <xme:hvR3YKXQGg68gA_5aK1Rx2x0pfXQiDcghr4LtyR44tbi4AjfoKYfsp4Bb4kEni7eO
    Oq0X-HcHNI-1Zrs_vM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudelfecutefuodetggdotefrodftvfcurf
    hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpeffhffvuffkfhggtggujgesghdtreertddtudenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
    hnpeduvdduhfekkeehgffftefflefgffdtheffudffgeevteffheeuiedvvdejvdfgveen
    ucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrh
    grmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:hvR3YHJsW35iEGChzZe1DxwwfqtVe7jTl-iMdvxySbalF5zcSUOYbg>
    <xmx:hvR3YLEEVwogjz96AnTWGJNBqzQyV7gxmOZv44V_S1PuaKW4kBuszA>
    <xmx:hvR3YLXJs6L9owwqUIG63v-t6qkgNdVHL9r5Qp7xbguZpOZunNKvIQ>
    <xmx:h_R3YBcnx2ahXTrAi0zU8wrRgBYKTEWMKAdtBdvlKHCtq-HBUt3ZBQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 1AA5C24005A;
        Thu, 15 Apr 2021 04:08:38 -0400 (EDT)
Date:   Thu, 15 Apr 2021 10:08:35 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Ivan Uvarov <i.uvarov@cognitivepilot.com>
Cc:     devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH v4 0/5] add devicetree for Forlinx FETA40i-C & OKA40i-C
Message-ID: <20210415080835.qieyynhxcwtx6vyj@gilmour>
References: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="a5h2ot27vu5nyqmf"
Content-Disposition: inline
In-Reply-To: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--a5h2ot27vu5nyqmf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 07, 2021 at 02:14:23PM +0300, Ivan Uvarov wrote:
> This patch series adds devicetree support for the Forlinx FETA40i-C SoM
> and OKA40i-C carrier board/devboard.
>=20
> The FETA40i-C is an "industrial/automotive" SoM by Forlinx.
>=20
> SoM specs:
> - SoC: R40 or A40i
> - PMIC: AXP221S
> - RAM: 1GiB/2GiB DDR3 (dual-rank)
> - eMMC: 8GB,
> - Mates with carrier board via four 80-pin connectors (AXK6F80337YG).
>=20
> OKA40i-C is a carrier board by the same manufacturer for this SoM,
> whose main purpose is as a development board with a variety of
> peripherals:
>=20
> - Power: DC5V barrel or USB OTG or 4.2V Lipo battery
> - Video out: HDMI, TV out, LVDS
> - WiFi+Bluetooth: RL-UM02WBS-8723BU-V1.2 (802.11 b/g/n, BT V2.1/3.0/4.0)
> - Ethernet: 10/100Mbps
> - Storage: =B5SD, fullsize SD, eMMC (on SoM), SATA
> - USB: 3 x USB2.0 Host (2 via hub, 1 native), 1 x USB2.0 OTG (micro-B)
> - UART: RS232, RS485, 4 3.3v uarts (of which 2 have RTS/CTS)
> - Other I/O: SPI x2, TWI, SDIO header, GPIO header, JTAG header
> - Mini PCIe slot with sim holder for WLAN modem
> - Smart card holder
> - RTC (RX8010SJ)
> - Two user LEDs
> - Three user buttons (via KeyADC).
>=20
> Of the board features listed above, support for the following has *NOT*
> been tested:
> - TV out & LVDS
> - SATA
> - Smart cards
> - KeyADC buttons (no support)
>=20
> The series consists of five patches, with dependencies as follows:
>=20
> * Patch 4 depends on patch 3;
> * Patch 5 depends on patches 2&4.
>=20
> The rest are independent, however patch 2 may refuse to apply
> without patch 1.
>=20
> Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

Applied, thanks

Maxime

--a5h2ot27vu5nyqmf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCYHf0gwAKCRDj7w1vZxhR
xUpNAPwMT8YvV0i9xuPKCu7RFPap0qHeuura6wpSnB36OBxxeQEA966ljFhW76n4
7TwlKGBsQ5z3Rlo2TEtXtBQ6FZFWdwg=
=5jMp
-----END PGP SIGNATURE-----

--a5h2ot27vu5nyqmf--
