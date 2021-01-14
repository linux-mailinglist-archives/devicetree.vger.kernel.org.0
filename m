Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 259F52F6C48
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:39:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730217AbhANUfQ convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:35:16 -0500
Received: from mailoutvs35.siol.net ([185.57.226.226]:52840 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1729869AbhANUfP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:35:15 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id D66B9523013;
        Thu, 14 Jan 2021 21:34:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id bG1A3hqJWql7; Thu, 14 Jan 2021 21:34:33 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 9BC7E523062;
        Thu, 14 Jan 2021 21:34:33 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id 5595B523061;
        Thu, 14 Jan 2021 21:34:33 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 08/19] ARM: dts: sunxi: Fix CPU thermal zone node name
Date:   Thu, 14 Jan 2021 21:34:33 +0100
Message-ID: <2903082.XrW9WeSBsD@kista>
In-Reply-To: <20210114113538.1233933-8-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-8-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:27 CET je Maxime Ripard napisal(a):
> The CPU thermal zone is called on most of the older DTSI cpu_thermal.
> However, the underscore is an invalid character for a node name and the
> thermal zone binding explicitly requires that zones are called
> *-thermal. Let's fix it.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


