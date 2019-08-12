Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CE2158A596
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 20:22:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbfHLSW3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 14:22:29 -0400
Received: from h1.radempa.de ([176.9.142.194]:46734 "EHLO mail.cosmopool.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726185AbfHLSW2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 12 Aug 2019 14:22:28 -0400
Received: from localhost (localhost [127.0.0.1])
        by mail.cosmopool.net (Postfix) with ESMTP id 28F2D9015B3;
        Mon, 12 Aug 2019 20:22:26 +0200 (CEST)
Received: from mail.cosmopool.net ([127.0.0.1])
        by localhost (mail.b.radempa.de [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id 4hjgN7k4gbJC; Mon, 12 Aug 2019 20:22:25 +0200 (CEST)
Received: from stardust.g4.wien.funkfeuer.at (77.117.157.197.wireless.dyn.drei.com [77.117.157.197])
        by mail.cosmopool.net (Postfix) with ESMTPSA id E3A73900A78;
        Mon, 12 Aug 2019 20:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=ccbib.org; s=201902;
        t=1565634145; bh=YrhzTzt/Mu0KjVU/f+O9Ej/nusykzxNs4OSCY7R9K/0=;
        h=From:To:cc:Subject:In-reply-to:References:Date:From;
        b=CazKyEzkkG473S618bt/N9eryEZp7G8i2ZqbSJq2gsvjyTjU7aMngrwE6FOWmJjSp
         /V6ePVxXrIInoQNrfUTOwFgPBmOYFh6++1h+wJVcH/Gijy4nLfsWjXw+m3Cnl/yJBI
         6g441hrQ466GBbDSbPLZsODDq+j1XtEUFoxvlPNY=
Received: from lambda by stardust.g4.wien.funkfeuer.at with local (Exim 4.89)
        (envelope-from <harald@ccbib.org>)
        id 1hxExZ-0000O7-46; Mon, 12 Aug 2019 20:22:21 +0200
From:   Harald Geyer <harald@ccbib.org>
To:     Vasily Khoruzhick <anarsoul@gmail.com>
cc:     Maxime Ripard <maxime.ripard@bootlin.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        arm-linux <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        "Jared D . McNeill" <jmcneill@netbsd.org>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: Drop PMU node
In-reply-to: <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
References: <89402d22-d432-9551-e787-c8ede16dbe5f@arm.com> <CA+E=qVfh7mirJhRsDTeuAVgG55ia936uFSFVKR0N5Pn4GCF1UA@mail.gmail.com> <E1hv5vZ-0000jN-M8@stardust.g4.wien.funkfeuer.at> <CA+E=qVdHOtebR6xjpwTY_Whp0cHLtv82YULmxLPSEzdLN9TnVg@mail.gmail.com> <36e60078-7dd5-9c07-ffa1-6092d8c70fa8@arm.com> <CA+E=qVeAR4AFN99ZVy8EZLW6p_8ucTewOdMis37wnpV3DObaGg@mail.gmail.com> <20190807115614.phm7sbyae6yajkug@flea> <CA+E=qVdh3MHMsEC9XKe5-7O8fGTHFh76WLOgVf+PZPv7c4JE9w@mail.gmail.com> <20190808162628.pthvy3tgf3naj76s@flea> <CA+E=qVeiWoRGn05HpMzx_5yidit4GM18tBrziW5MBo00f_-PKQ@mail.gmail.com> <20190812080420.saelmqb36vkelxn4@flea> <CA+E=qVchsqOF_hVD-qBuKwi7PTMYtUR-LE2dD_mpptFJcWE_yw@mail.gmail.com>
Comments: In-reply-to Vasily Khoruzhick <anarsoul@gmail.com>
   message dated "Mon, 12 Aug 2019 11:01:51 -0700."
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <1493.1565634140.1@stardust.g4.wien.funkfeuer.at>
Content-Transfer-Encoding: 8bit
Date:   Mon, 12 Aug 2019 20:22:20 +0200
Message-Id: <E1hxExZ-0000O7-46@stardust.g4.wien.funkfeuer.at>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Vasily Khoruzhick writes:
> OK, so what should we do? 'perf top'/'perf record' work fine if PMU
> node is dropped, but they don't work if PMU node is present (even with
> interrupts dropped).

Really? Even if you tell it to only listen to software events? (Which
is the only thing you get without a PMU anyway, I believe.)

> I'd prefer to have 'perf top' and 'perf record'
> working instead of 'perf stat'

I think, if a broken PMU confuses 'perf top' beyond usability, it
should be fixed.

Harald

-- 
Nationalratswahl: Ich trete als unabhängiger Experte für Klimaschutz
und freie Software an! Ich will mit Vorzugsstimmen ins Parlament kommen,
weil wenn ich es nicht mache, kümmert sich womöglich niemand darum.
https://haraldgeyer.at
