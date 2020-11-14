Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D4EF12B3166
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 00:31:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726334AbgKNXaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 18:30:21 -0500
Received: from mail.kernel.org ([198.145.29.99]:59894 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726125AbgKNXaV (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 18:30:21 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 450FA24137;
        Sat, 14 Nov 2020 23:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605396620;
        bh=VQtojdZ0+MghrCQH/v7vU4/SB2FsZYUiRSlzTIylNVY=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=QYngAW/x8sdSQHw3fTSxAFog9YM+q9PcE7mri9v3TUIhKtClo+53POFPGmPm6iTrV
         kTMqDLpKGvLenQhZfIPwpaZbeH14+9rI7Sv4nIC5Y4GZrKLV7JqdAuD61AVNAR+WsD
         7C2uUB5NlBpJrWfhRGpJktzi96q3RcXrBASznYek=
Date:   Sun, 15 Nov 2020 00:30:15 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>
Cc:     arm@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        Uwe =?UTF-8?B?S2xlaW5l?= =?UTF-8?B?LUvDtm5pZw==?= 
        <uwe@kleine-koenig.org>, Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH mvebu-dt v2 6/6] ARM: dts: turris-omnia: update
 ethernet-phy node and handle name
Message-ID: <20201115003015.03ec06d5@kernel.org>
In-Reply-To: <46bf04e0-febb-f9f2-454c-770b08a9d560@suse.de>
References: <20201114183217.1352-1-kabel@kernel.org>
        <20201114183217.1352-7-kabel@kernel.org>
        <46bf04e0-febb-f9f2-454c-770b08a9d560@suse.de>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 23:04:41 +0100
Andreas F=C3=A4rber <afaerber@suse.de> wrote:

Hi Andreas,

> > -	phy1: phy@1 {
> > +	phy1: ethernet-phy@1 { =20
>=20
> This one I had noticed in the DT binding and verified that mainline
> U-Boot does not rely on it. So ACK for this.
>=20
> >  		status =3D "okay"; =20
>=20
> Unrelated: This property is theoretically superfluous, as unlike eth2
> this node is new and doesn't overwrite a pre-existing property.

Yes, status =3D "okay" is not needed if there isn't status =3D "disabled"
before (somewhere in include files). Maybe I will send a patch removing
all unneeded status=3D"okay" properties in the future.

> I believe in my testing overriding with status =3D "disabled" was not
> enough to get the SFP to work, I needed to comment out the referencing
> phy(-handle) property.

Yes, as I wrote in reply to your question in patch 4/6, U-Boot needs to:
- remove phy-handle property
- add managed =3D in-band-status property
- enable sfp node

>=20
> > -		compatible =3D "ethernet-phy-id0141.0DD1", "ethernet-phy-ieee802.3-c=
22";
> > +		compatible =3D "ethernet-phy-ieee802.3-c22"; =20
>=20
> Does it do any harm to leave it in though?

No, but lets remove it anyway :)

Marek
