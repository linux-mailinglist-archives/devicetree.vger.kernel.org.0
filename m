Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC992F6C3D
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:39:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729451AbhANUeC convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:34:02 -0500
Received: from mailoutvs34.siol.net ([185.57.226.225]:41780 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729446AbhANUeB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:34:01 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id ACDC45223A1;
        Thu, 14 Jan 2021 21:33:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id qR3iytWrXith; Thu, 14 Jan 2021 21:33:19 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 7518C52247F;
        Thu, 14 Jan 2021 21:33:19 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id 39F605223A1;
        Thu, 14 Jan 2021 21:33:19 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 06/19] ARM: dts: sunxi: Fix the LED node names
Date:   Thu, 14 Jan 2021 21:33:18 +0100
Message-ID: <7355594.LWBys3nDdC@kista>
In-Reply-To: <20210114113538.1233933-6-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-6-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:25 CET je Maxime Ripard napisal(a):
> According to the LED bindings, the LED node names are supposed to be led
> plus an optional suffix. Let's fix our users to use that new scheme.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


