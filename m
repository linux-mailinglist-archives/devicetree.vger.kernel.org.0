Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C25FC2B2EA5
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:53:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726588AbgKNQwr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:52:47 -0500
Received: from mail.kernel.org ([198.145.29.99]:59688 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726522AbgKNQwq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:52:46 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 016B1207DE;
        Sat, 14 Nov 2020 16:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605372766;
        bh=b+6Cu0W6tIA9zJDJZAUArhvrAqmpYDn2Y6xJlS+jgd0=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=w4wO5EeF0c3RC/lOGjp26gBZqqUy0p6qc+pn25GgkV3oB972NXdnSKlTlynA3b5pC
         douDHmy0FjsYuZMyRv4djeibF3w8BgsrQ9NzOBkF9E6XsfHuZVR8xF+HPdwl7KiBml
         KgAimgKSKK1xEM+3KREMqm+f3rhM+Awbj1zCzfg4=
Date:   Sat, 14 Nov 2020 17:52:38 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114175238.7738e082@kernel.org>
In-Reply-To: <20201114163439.GB1480543@lunn.ch>
References: <20201114160409.19670-1-kabel@kernel.org>
        <20201114160409.19670-4-kabel@kernel.org>
        <20201114163439.GB1480543@lunn.ch>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 17:34:39 +0100
Andrew Lunn <andrew@lunn.ch> wrote:

> On Sat, Nov 14, 2020 at 05:04:06PM +0100, Marek Beh=C3=BAn wrote:
> > Describe ethernet-phy interrupt for Turris Omnia so that the PHY does
> > not need to be polled. We also need to describe the PCA9538 as an
> > interrupt controller.
> >=20
> > Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>
> > Fixes: 26ca8b52d6e1 ("ARM: dts: add support for Turris Omnia") =20
>=20
> I'm not sure the fixes is justified. This is an optimisation, not a
> fix.

I considered this as a fix in the sense that it should have been there
from the beginning... Although the driver works, the devicetree does not
describe the device correctly without it.

>=20
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>=20
>     Andrew

