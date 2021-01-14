Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 464162F6C4F
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:39:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725919AbhANUiZ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:38:25 -0500
Received: from mailoutvs6.siol.net ([185.57.226.197]:56592 "EHLO mail.siol.net"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1727444AbhANUiZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 Jan 2021 15:38:25 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Zimbra) with ESMTP id 6C27A5232CC;
        Thu, 14 Jan 2021 21:37:43 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id hNh9Aa9Np_DM; Thu, 14 Jan 2021 21:37:43 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Zimbra) with ESMTPS id 34D3752335F;
        Thu, 14 Jan 2021 21:37:43 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Zimbra) with ESMTPA id ED23E5232CC;
        Thu, 14 Jan 2021 21:37:42 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 10/19] ARM: dts: sun6i: primo81: Remove useless io-channel-cells
Date:   Thu, 14 Jan 2021 21:37:42 +0100
Message-ID: <4656076.WuUzR56adc@kista>
In-Reply-To: <20210114113538.1233933-10-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-10-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:29 CET je Maxime Ripard napisal(a):
> The mma8452 binding doesn't expect an io-channel-cells property, let's
> remove it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


