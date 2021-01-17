Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 738532F925C
	for <lists+devicetree@lfdr.de>; Sun, 17 Jan 2021 13:42:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727480AbhAQMmL convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Sun, 17 Jan 2021 07:42:11 -0500
Received: from mail.kernel.org ([198.145.29.99]:43292 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726209AbhAQMmI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 17 Jan 2021 07:42:08 -0500
Received: from archlinux (cpc108967-cmbg20-2-0-cust86.5-4.cable.virginm.net [81.101.6.87])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 393A92074F;
        Sun, 17 Jan 2021 12:41:27 +0000 (UTC)
Date:   Sun, 17 Jan 2021 12:41:24 +0000
From:   Jonathan Cameron <jic23@kernel.org>
To:     Jernej =?UTF-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>,
        Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Subject: Re: [PATCH 02/19] dt-bindings: iio: adc: Add AXP803 compatible
Message-ID: <20210117124124.50559a90@archlinux>
In-Reply-To: <1680514.8mbZiZ75fi@kista>
References: <20210114113538.1233933-1-maxime@cerno.tech>
        <20210114113538.1233933-2-maxime@cerno.tech>
        <1680514.8mbZiZ75fi@kista>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jan 2021 21:10:19 +0100
Jernej Škrabec <jernej.skrabec@siol.net> wrote:

> Dne četrtek, 14. januar 2021 ob 12:35:21 CET je Maxime Ripard napisal(a):
> > The AXP803 compatible was introduced recently with a fallback to the
> > AXP813, but it was never documented.
> > 
> > Cc: Jonathan Cameron <jic23@kernel.org>
> > Cc: Lars-Peter Clausen <lars@metafoo.de>
> > Cc: Peter Meerwald-Stadler <pmeerw@pmeerw.net>
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>  
> 
> Acked-by: Jernej Skrabec <jernej.skrabec@siol.net>
Please make sure to cc linux-iio@vger.kernel.org on patches
like this.  If nothing else I read that a lot more often than
I catch up with patches that escaped all my filters!

This looks fine and I'm happy for it go with the rest of the series.

Acked-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

If preferred I can pick it up directly.

> 
> Best regards,
> Jernej
> 
> 

