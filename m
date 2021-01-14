Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C2DB2F6BED
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 21:17:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727012AbhANUPi convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 14 Jan 2021 15:15:38 -0500
Received: from mailoutvs33.siol.net ([185.57.226.224]:44668 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726177AbhANUPi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 15:15:38 -0500
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id 40485522615;
        Thu, 14 Jan 2021 21:14:56 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id keRp8ss1Cf2Q; Thu, 14 Jan 2021 21:14:56 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 0B915521703;
        Thu, 14 Jan 2021 21:14:56 +0100 (CET)
Received: from kista.localnet (cpe-86-58-58-53.static.triera.net [86.58.58.53])
        (Authenticated sender: jernej.skrabec@siol.net)
        by mail.siol.net (Postfix) with ESMTPA id 96D39522615;
        Thu, 14 Jan 2021 21:14:55 +0100 (CET)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
        linux-arm-kernel@lists.infradead.org,
        Alistair Francis <alistair@alistair23.me>,
        Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH 05/19] dt-bindings: bluetooth: realtek: Switch to unevaluatedProperties
Date:   Thu, 14 Jan 2021 21:14:55 +0100
Message-ID: <2145679.ApqWD0maIU@kista>
In-Reply-To: <20210114113538.1233933-5-maxime@cerno.tech>
References: <20210114113538.1233933-1-maxime@cerno.tech> <20210114113538.1233933-5-maxime@cerno.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne četrtek, 14. januar 2021 ob 12:35:24 CET je Maxime Ripard napisal(a):
> additionalProperties prevent any property not explicitly defined in the
> binding to be used. Yet, some serial properties like max-speed are valid
> and validated through the serial/serial.yaml binding.
> 
> Let's change additionalProperties to unevaluatedProperties to avoid
> spurious warnings.
> 
> Cc: Alistair Francis <alistair@alistair23.me>
> Cc: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>

Best regards,
Jernej


