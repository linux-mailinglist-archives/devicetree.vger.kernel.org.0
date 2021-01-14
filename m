Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7DA62F6C5D
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:43:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726123AbhANUkd convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:40:33 -0500
Received: from mailoutvs35.siol.net ([185.57.226.226]:55292 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726067AbhANUkd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:40:33 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id 16BB1523013;
        Thu, 14 Jan 2021 21:39:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id Lb7o_dRfW_OK; Thu, 14 Jan 2021 21:39:50 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id D21C9523056;
        Thu, 14 Jan 2021 21:39:50 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id 93BCB523013;
        Thu, 14 Jan 2021 21:39:50 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 12/19] ARM: dts: sun8i-s3: impetus: Fix the USB PHY ID detect GPIO properties
Date:   Thu, 14 Jan 2021 21:39:50 +0100
Message-ID: <1804646.4Ahh8bmjMf@kista>
In-Reply-To: <20210114113538.1233933-12-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-12-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:31 CET je Maxime Ripard napisal(a):
> While the USB PHY Device Tree mandates that the name of the ID detect pin
> should be usb0_id_det-gpios, a significant number of device tree use
> usb0_id_det-gpio instead.
> 
> This was functional because the GPIO framework falls back to the gpio
> suffix that is legacy, but we should fix this.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


