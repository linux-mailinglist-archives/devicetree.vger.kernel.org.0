Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04C16471E27
	for <lists+devicetree@lfdr.de>; Sun, 12 Dec 2021 23:09:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229662AbhLLWJa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Dec 2021 17:09:30 -0500
Received: from gloria.sntech.de ([185.11.138.130]:34730 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229584AbhLLWJa (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 12 Dec 2021 17:09:30 -0500
Received: from p508fc708.dip0.t-ipconnect.de ([80.143.199.8] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mwX24-0006Qe-S7; Sun, 12 Dec 2021 23:09:24 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 07/18] dt-bindings: display: rockchip: dw-hdmi: Allow "ref" as clock name
Date:   Sun, 12 Dec 2021 23:09:24 +0100
Message-ID: <3032544.f5MXlUzpl7@phil>
In-Reply-To: <20211208151230.3695378-8-s.hauer@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de> <20211208151230.3695378-8-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, 8. Dezember 2021, 16:12:19 CET schrieb Sascha Hauer:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock.  The clock
> name "vpll" is left for compatibility to old device trees.

Can't we just say that the binding only takes the "ref" name, but
the code still allows "vpll".

I think I remember Rob suggesting something similar in the past.

I don't think that we need to keep the binding(-validation)
compatible with old devicetrees, but the kernel itself should stay
compatible.


Heiko


> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 6e09dd2ee05ac..2ab6578033da2 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -48,10 +48,14 @@ properties:
>            - cec
>            - grf
>            - vpll
> +          - ref
>        - enum:
>            - grf
>            - vpll
> -      - const: vpll
> +          - ref
> +      - enum:
> +          - vpll
> +          - ref
>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> 




