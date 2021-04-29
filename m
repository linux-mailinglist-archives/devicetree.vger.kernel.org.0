Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF50036EE17
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 18:25:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233132AbhD2Q0c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 12:26:32 -0400
Received: from mail-oo1-f42.google.com ([209.85.161.42]:41707 "EHLO
        mail-oo1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232724AbhD2Q0b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 12:26:31 -0400
Received: by mail-oo1-f42.google.com with SMTP id u48-20020a4a97330000b02901fa060b8066so99848ooi.8
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 09:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UXnoFKwuMiPzvvK01lRtolly0aZXNow6zBk2bpS1MGg=;
        b=oiFtHRcvUanksX9HPALGu4zfM0iCpFHLjsx5KHdtR2TxaJtzELPNiHLubJ0zJY8Mta
         fe72k11alaTP7gwxXL94+eZBO0h/Nlz/XMsknqt7qTogkTjY10LK4g7hHZ3uUzF3Ege5
         x6Ovt6OKEWq8Rx64hSuiBAuihaa30RmTYtYph9so5fBVy39My1M8TMC1QK7OrMeEjwJB
         b2jDCreVvp3hwLbkDHC7oNmWQ39XL2a8D/kj/TFT44Drofk/fjBxobPZ5w7kiqaZt4sD
         72XNslCf5boZyBEX937CFa/KXyZrJ9Bh8loI1OkzOPr6TiLld5IS8aDBcPIGy8Iut8Mh
         Me+g==
X-Gm-Message-State: AOAM530B8IXne47pQrs4XO4r4Saw3/nF2JbUJDPI/MFX5kBsrMQUF/BT
        uxsKrRiJZe1AArta4zbUYyiyCUVc5g==
X-Google-Smtp-Source: ABdhPJy/SwOW3kA4MZSXV5430F6E+2Y4h2VL5FNijyTPzx1U3UMp925R3nTW0bafrR0xvJOjTuv9wQ==
X-Received: by 2002:a4a:8d81:: with SMTP id i1mr625383ook.55.1619713543630;
        Thu, 29 Apr 2021 09:25:43 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l11sm48226ooq.44.2021.04.29.09.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 09:25:43 -0700 (PDT)
Received: (nullmailer pid 1375643 invoked by uid 1000);
        Thu, 29 Apr 2021 16:25:42 -0000
Date:   Thu, 29 Apr 2021 11:25:42 -0500
From:   Rob Herring <robh@kernel.org>
To:     Ezequiel Garcia <ezequiel@collabora.com>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        kernel@collabora.com
Subject: Re: [PATCH 2/2] dt-bindings: timer: convert rockchip,rk-timer.txt to
 YAML
Message-ID: <20210429162542.GA1372880@robh.at.kernel.org>
References: <20210424191946.69978-1-ezequiel@collabora.com>
 <20210424191946.69978-2-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210424191946.69978-2-ezequiel@collabora.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Apr 24, 2021 at 04:19:46PM -0300, Ezequiel Garcia wrote:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
>  2 files changed, 67 insertions(+), 27 deletions(-)
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
> index 000000000000..f1bc3ac7abc8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> @@ -0,0 +1,67 @@
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

This should be someone that knows the h/w and cares about Rockchip.

> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: rockchip,rk3288-timer
> +      - const: rockchip,rk3399-timer
> +      - items:
> +          - enum:
> +            - rockchip,rv1108-timer
> +            - rockchip,rk3036-timer
> +            - rockchip,rk3066-timer
> +            - rockchip,rk3188-timer
> +            - rockchip,rk3228-timer
> +            - rockchip,rk3229-timer
> +            - rockchip,rk3288-timer
> +            - rockchip,rk3368-timer
> +            - rockchip,px30-timer
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
> +      enum:
> +        - timer
> +        - pclk

We can't define the order here? We should fix dts files if they are 
inconsistent.

> +    minItems: 2
> +    maxItems: 2
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
> +        clocks = <&xin24m>, <&cru PCLK_TIMER>;
> +        clock-names = "timer", "pclk";
> +    };
> -- 
> 2.30.0
> 
