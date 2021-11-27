Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7167F45FF8B
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 16:10:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236195AbhK0PNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 Nov 2021 10:13:15 -0500
Received: from gloria.sntech.de ([185.11.138.130]:56242 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232302AbhK0PLP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 27 Nov 2021 10:11:15 -0500
Received: from [20.79.204.165] (helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1mqzIx-000681-5M; Sat, 27 Nov 2021 16:07:55 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 01/12] dt-bindings: display: rockchip: Add compatible for rk3568 HDMI
Date:   Sat, 27 Nov 2021 16:07:37 +0100
Message-ID: <2147171.aSpvfvgOub@phil>
In-Reply-To: <20211117143347.314294-2-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de> <20211117143347.314294-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Am Mittwoch, 17. November 2021, 15:33:36 CET schrieb Sascha Hauer:
> From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> 
> Define a new compatible for rk3568 HDMI.
> This version of HDMI hardware block needs two new clocks hclk_vio and hclk
> to provide phy reference clocks.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Link: https://lore.kernel.org/r/20210707120323.401785-2-benjamin.gaignard@collabora.com
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index da3b889ad8fcd..53fa42479d5b7 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -23,6 +23,7 @@ properties:
>        - rockchip,rk3288-dw-hdmi
>        - rockchip,rk3328-dw-hdmi
>        - rockchip,rk3399-dw-hdmi
> +      - rockchip,rk3568-dw-hdmi
>  
>    reg-io-width:
>      const: 4
> @@ -49,8 +50,11 @@ properties:
>            - vpll
>        - enum:
>            - grf
> +          - hclk_vio

I don't believe this clock should be here:
(1) the rk3568 dts node later in the series doesn't use it at all
(2) generally vio-clocks are part of the interconnect where the ip block
    connects to, so right now we just enable it as critical on all socs and
    if someone actually models the interconnect (where also the qos
    [quality of service configs] nodes would play into), it would need to
    be included there.


Heiko

> +          - vpll
> +      - enum:
> +          - hclk
>            - vpll
> -      - const: vpll
>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> 




