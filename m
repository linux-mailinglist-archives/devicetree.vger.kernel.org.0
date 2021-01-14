Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39ADA2F6BCC
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:09:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729069AbhANUH5 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:07:57 -0500
Received: from mailoutvs46.siol.net ([185.57.226.237]:41240 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1730272AbhANUH5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:07:57 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id D61CA522FF8;
        Thu, 14 Jan 2021 21:07:14 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id e5qW0plDVvl7; Thu, 14 Jan 2021 21:07:14 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 9F24752304A;
        Thu, 14 Jan 2021 21:07:14 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id CDBED522FF8;
        Thu, 14 Jan 2021 21:07:13 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/19] dt-bindings: sunxi: Fix the pinecube compatible
Date:   Thu, 14 Jan 2021 21:07:13 +0100
Message-ID: <6010905.bFa4XbYqaC@kista>
In-Reply-To: <20210114113538.1233933-1-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:20 CET je Maxime Ripard napisal(a):
> Commit 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property
> to other S3 boards") changed the pinecube compatible to make it similar
> to the other S3 boards we have, but failed to update the bindings
> documentation.
> 
> Fixes: 6ab48105aae7 ("ARM: dts: s3: pinecube: align compatible property to 
other S3 boards")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej



