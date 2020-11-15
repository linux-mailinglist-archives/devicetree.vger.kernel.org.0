Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2EC42B31A1
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 01:32:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726290AbgKOAcR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 19:32:17 -0500
Received: from mail.kernel.org ([198.145.29.99]:39686 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726265AbgKOAcQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 19:32:16 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 287C024073;
        Sun, 15 Nov 2020 00:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605400336;
        bh=lIDDelckMiOhq4qksoYw3+aNgtVOvpzOaLhepE/B8vo=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=zwwZAPviXv4sTqRunGcFTeLN7pRaXK5EzZPspqfPlmAPKjSysVCGB0kELwE+IoC1j
         fDQn0gam0PVRCDI5ariIqEfXch+vfj2u/prjr+Qslaxec/KxQ8PLGojkkvPPosc+GX
         C0xUjnHFyksTAYoIEdl1kMfI6URXMZEHhmvoeb/Y=
Date:   Sun, 15 Nov 2020 01:32:11 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201115013211.255ab597@kernel.org>
In-Reply-To: <fa1d5fce-ecc8-6d52-b202-3560a7688ec5@suse.de>
References: <20201114183217.1352-1-kabel@kernel.org>
        <20201114183217.1352-5-kabel@kernel.org>
        <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
        <20201114235754.16c5e4c0@kernel.org>
        <fa1d5fce-ecc8-6d52-b202-3560a7688ec5@suse.de>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 15 Nov 2020 00:16:48 +0100
Andreas F=C3=A4rber <afaerber@suse.de> wrote:

> I do understand the idea. My point was that you added a 4-line comment
> about status property further above, but no comments about phy-handle
> nor managed properties down here.
>=20
> It might also be a good idea to explain in a comment why they are
> mutually exclusive (mod-def0, multiplexer).
>=20
> Have you done any debugging as to why we can't just leave the sfp node
> enabled?

Current phylink code will, in such situation, try to connect both phy
and sfp. It will try to configure settings from both, depending on when
last interrupt came from PHY and when SFP module state changed. It will
break.

Also if there is another PHY in the SFP module, it won't be able to get
connected.

It is simpler to leave sfp node disabled and get full support for this
configuration into kernel first.

> Does it toggle mod-def0-gpios on probe even if no SFP is
> physically present on i2c? Maybe it can be simplified over in sfp code?

mod-deg0-gpio is not toggled by kernel. It is an input gpio. Its state
determines whether sfp module is present.
