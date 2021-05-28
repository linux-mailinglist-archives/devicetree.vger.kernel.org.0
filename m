Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3E6C39457E
	for <lists+devicetree@lfdr.de>; Fri, 28 May 2021 17:56:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235398AbhE1P63 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 May 2021 11:58:29 -0400
Received: from gloria.sntech.de ([185.11.138.130]:43824 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234882AbhE1P62 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 28 May 2021 11:58:28 -0400
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1lmeqq-0005yC-LT; Fri, 28 May 2021 17:56:44 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Cc:     Ezequiel Garcia <ezequiel@collabora.com>,
        Kever Yang <kever.yang@rock-chips.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip,rk-timer.txt to YAML
Date:   Fri, 28 May 2021 17:56:43 +0200
Message-ID: <15819722.JCcGWNJJiE@diego>
In-Reply-To: <20210506111136.3941-4-ezequiel@collabora.com>
References: <20210506111136.3941-1-ezequiel@collabora.com> <20210506111136.3941-4-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Daniel,

Am Donnerstag, 6. Mai 2021, 13:11:36 CEST schrieb Ezequiel Garcia:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

can you apply this patch to the timer-tree?

Thanks
Heiko

> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> deleted file mode 100644
> index d65fdce7c7f0..000000000000
> --- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> +++ /dev/null
> @@ -1,27 +0,0 @@
> -Rockchip rk timer
> -
> -Required properties:
> -- compatible: should be:
> -  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
> -  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
> -  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
> -  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
> -  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
> -  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
> -  "rockchip,rk3288-timer": for Rockchip RK3288
> -  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
> -  "rockchip,rk3399-timer": for Rockchip RK3399
> -- reg: base address of the timer register starting with TIMERS CONTROL register
> -- interrupts: should contain the interrupts for Timer0
> -- clocks : must contain an entry for each entry in clock-names
> -- clock-names : must include the following entries:
> -  "timer", "pclk"
> -
> -Example:
> -	timer: timer@ff810000 {
> -		compatible = "rockchip,rk3288-timer";
> -		reg = <0xff810000 0x20>;
> -		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> -		clocks = <&xin24m>, <&cru PCLK_TIMER>;
> -		clock-names = "timer", "pclk";
> -	};
> diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> new file mode 100644
> index 000000000000..e26ecb5893ae
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Rockchip Timer Device Tree Bindings
> +
> +maintainers:
> +  - Daniel Lezcano <daniel.lezcano@linaro.org>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,rk3288-timer
> +      - const: rockchip,rk3399-timer
> +      - items:
> +          - enum:
> +              - rockchip,rv1108-timer
> +              - rockchip,rk3036-timer
> +              - rockchip,rk3066-timer
> +              - rockchip,rk3188-timer
> +              - rockchip,rk3228-timer
> +              - rockchip,rk3229-timer
> +              - rockchip,rk3288-timer
> +              - rockchip,rk3368-timer
> +              - rockchip,px30-timer
> +          - const: rockchip,rk3288-timer
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 2
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: pclk
> +      - const: timer
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/rk3288-cru.h>
> +
> +    timer: timer@ff810000 {
> +        compatible = "rockchip,rk3288-timer";
> +        reg = <0xff810000 0x20>;
> +        interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> +        clocks = <&cru PCLK_TIMER>, <&xin24m>;
> +        clock-names = "pclk", "timer";
> +    };
> 




