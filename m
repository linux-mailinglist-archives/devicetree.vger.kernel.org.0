Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF79A2F6C7A
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:49:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727421AbhANUqp convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:46:45 -0500
Received: from mailoutvs33.siol.net ([185.57.226.224]:46580 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1727364AbhANUqo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:46:44 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id 17A94522A52;
        Thu, 14 Jan 2021 21:46:03 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id 3i3OG3Ak3D1o; Thu, 14 Jan 2021 21:46:02 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id CCC4F522A51;
        Thu, 14 Jan 2021 21:46:02 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id 7330E522A45;
        Thu, 14 Jan 2021 21:46:02 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 18/19] arm64: dts: allwinner: pinetab: Fix the panel compatible
Date:   Thu, 14 Jan 2021 21:46:02 +0100
Message-ID: <4823325.bD6DkHUA9K@kista>
In-Reply-To: <20210114113538.1233933-18-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-18-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:37 CET je Maxime Ripard napisal(a):
> The commit 7fa40ca7ef61 ("arm64: allwinner: dts: a64: add DT for Early
> Adopter's PineTab") introduced an ili9881-based panel device node but
> didn't conform to the binding. Fix this.
> 
> Fixes: 7fa40ca7ef61 ("arm64: allwinner: dts: a64: add DT for Early Adopter's 
PineTab")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


