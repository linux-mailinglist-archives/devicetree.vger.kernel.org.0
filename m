Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4003C2F6BDA
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:13:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728310AbhANULC convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:11:02 -0500
Received: from mailoutvs38.siol.net ([185.57.226.229]:60353 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1728120AbhANULC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:11:02 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id 5ACEA522A5C;
        Thu, 14 Jan 2021 21:10:20 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id eDYNAv0Jva_x; Thu, 14 Jan 2021 21:10:20 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 1EA4A522A5F;
        Thu, 14 Jan 2021 21:10:20 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id 9327F522A5C;
        Thu, 14 Jan 2021 21:10:19 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [PATCH 02/19] dt-bindings: iio: adc: Add AXP803 compatible
Date:   Thu, 14 Jan 2021 21:10:19 +0100
Message-ID: <1680514.8mbZiZ75fi@kista>
In-Reply-To: <20210114113538.1233933-2-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:21 CET je Maxime Ripard napisal(a):
> The AXP803 compatible was introduced recently with a fallback to the
> AXP813, but it was never documented.
> 
> Cc: Jonathan Cameron <jic23@kernel.org>
> Cc: Lars-Peter Clausen <lars@metafoo.de>
> Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


