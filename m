Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4623F2FC2B1
	for <lists+devicetree@lfdr.de>; Tue, 19 Jan 2021 22:50:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389002AbhASVpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Jan 2021 16:45:51 -0500
Received: from relay7-d.mail.gandi.net ([217.70.183.200]:49127 "EHLO
        relay7-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728707AbhASVoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Jan 2021 16:44:24 -0500
X-Originating-IP: 86.202.109.140
Received: from localhost (lfbn-lyo-1-13-140.w86-202.abo.wanadoo.fr [86.202.109.140])
        (Authenticated sender: alexandre.belloni@bootlin.com)
        by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 0A3B120005;
        Tue, 19 Jan 2021 21:43:37 +0000 (UTC)
Date:   Tue, 19 Jan 2021 22:43:37 +0100
From:   Alexandre Belloni <alexandre.belloni@bootlin.com>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 03/19] dt-bindings: rtc: sun6i-a31-rtc: Loosen the
 requirements on the clocks
Message-ID: <20210119214337.GT3666@piout.net>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-3-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210114113538.1233933-3-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/01/2021 12:35:22+0100, Maxime Ripard wrote:
> The commit ec98a87509f4 ("rtc: sun6i: Make external 32k oscillator
> optional") loosened the requirement of the clocks property, making it
> optional. However, the binding still required it to be present.
> 
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Fixes: ec98a87509f4 ("rtc: sun6i: Make external 32k oscillator optional")
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  .../devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml         | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
> index 37c2a601c3fa..b1b0ee769b71 100644
> --- a/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
> +++ b/Documentation/devicetree/bindings/rtc/allwinner,sun6i-a31-rtc.yaml
> @@ -128,7 +128,6 @@ required:
>    - compatible
>    - reg
>    - interrupts
> -  - clocks
>    - clock-output-names
>  
>  additionalProperties: false
> -- 
> 2.29.2
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
