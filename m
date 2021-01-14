Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5B3352F6C8F
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:51:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727072AbhANUtn convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:49:43 -0500
Received: from mailoutvs48.siol.net ([185.57.226.239]:45591 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726262AbhANUtm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:49:42 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id CA68A5229AB;
        Thu, 14 Jan 2021 21:49:00 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id ZCY4oddRuNsr; Thu, 14 Jan 2021 21:49:00 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 98D8D5229B1;
        Thu, 14 Jan 2021 21:49:00 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id 5C11E5229AB;
        Thu, 14 Jan 2021 21:49:00 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 19/19] arm64: dts: allwinner: pine-h64: Fix typos in BT GPIOs
Date:   Thu, 14 Jan 2021 21:49:00 +0100
Message-ID: <12111204.vrAMtkpiFC@kista>
In-Reply-To: <20210114113538.1233933-19-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-19-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:38 CET je Maxime Ripard napisal(a):
> The commit 53441b8ef7de ("arm64: dts: allwinner: h6: PineH64 model B:
> Add bluetooth") introduced the Bluetooth chip for the PineH64 model B,
> but the GPIOs property didn't conform to the binding of the bluetooth
> chip. Let's fix this.
> 
> Fixes: 53441b8ef7de ("arm64: dts: allwinner: h6: PineH64 model B: Add 
bluetooth")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Sorry for that.

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


