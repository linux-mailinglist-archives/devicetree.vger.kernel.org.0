Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE46236EE89
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 19:03:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236036AbhD2REe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 13:04:34 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:37310 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233302AbhD2REe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 13:04:34 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: ezequiel)
        with ESMTPSA id C33D81F43502
Message-ID: <7ecf337931cbd16432311d24397ae4506fc7fd1f.camel@collabora.com>
Subject: Re: [PATCH 2/2] dt-bindings: timer: convert rockchip,rk-timer.txt
 to YAML
From:   Ezequiel Garcia <ezequiel@collabora.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Heiko Stuebner <heiko@sntech.de>,
        Kever Yang <kever.yang@rock-chips.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        kernel@collabora.com
Date:   Thu, 29 Apr 2021 14:03:39 -0300
In-Reply-To: <20210429162542.GA1372880@robh.at.kernel.org>
References: <20210424191946.69978-1-ezequiel@collabora.com>
         <20210424191946.69978-2-ezequiel@collabora.com>
         <20210429162542.GA1372880@robh.at.kernel.org>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 2021-04-29 at 11:25 -0500, Rob Herring wrote:
> On Sat, Apr 24, 2021 at 04:19:46PM -0300, Ezequiel Garcia wrote:
> > Convert Rockchip Timer dt-bindings to YAML.
> > 
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> >  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
> >  .../bindings/timer/rockchip,rk-timer.yaml     | 67 +++++++++++++++++++
> >  2 files changed, 67 insertions(+), 27 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> >  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > deleted file mode 100644
> > index d65fdce7c7f0..000000000000
> > --- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
> > +++ /dev/null
> > @@ -1,27 +0,0 @@
> > -Rockchip rk timer
> > -
> > -Required properties:
> > -- compatible: should be:
> > -  "rockchip,rv1108-timer", "rockchip,rk3288-timer": for Rockchip RV1108
> > -  "rockchip,rk3036-timer", "rockchip,rk3288-timer": for Rockchip RK3036
> > -  "rockchip,rk3066-timer", "rockchip,rk3288-timer": for Rockchip RK3066
> > -  "rockchip,rk3188-timer", "rockchip,rk3288-timer": for Rockchip RK3188
> > -  "rockchip,rk3228-timer", "rockchip,rk3288-timer": for Rockchip RK3228
> > -  "rockchip,rk3229-timer", "rockchip,rk3288-timer": for Rockchip RK3229
> > -  "rockchip,rk3288-timer": for Rockchip RK3288
> > -  "rockchip,rk3368-timer", "rockchip,rk3288-timer": for Rockchip RK3368
> > -  "rockchip,rk3399-timer": for Rockchip RK3399
> > -- reg: base address of the timer register starting with TIMERS CONTROL register
> > -- interrupts: should contain the interrupts for Timer0
> > -- clocks : must contain an entry for each entry in clock-names
> > -- clock-names : must include the following entries:
> > -  "timer", "pclk"
> > -
> > -Example:
> > -       timer: timer@ff810000 {
> > -               compatible = "rockchip,rk3288-timer";
> > -               reg = <0xff810000 0x20>;
> > -               interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> > -               clocks = <&xin24m>, <&cru PCLK_TIMER>;
> > -               clock-names = "timer", "pclk";
> > -       };
> > diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > new file mode 100644
> > index 000000000000..f1bc3ac7abc8
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/timer/rockchip,rk-timer.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Timer Device Tree Bindings
> > +
> > +maintainers:
> > +  - Daniel Lezcano <daniel.lezcano@linaro.org>
> 
> This should be someone that knows the h/w and cares about Rockchip.
> 

Daniel wrote the driver, so I figured he'd care :)
If not, perhaps Heiko (if he agrees)?

> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: rockchip,rk3288-timer
> > +      - const: rockchip,rk3399-timer
> > +      - items:
> > +          - enum:
> > +            - rockchip,rv1108-timer
> > +            - rockchip,rk3036-timer
> > +            - rockchip,rk3066-timer
> > +            - rockchip,rk3188-timer
> > +            - rockchip,rk3228-timer
> > +            - rockchip,rk3229-timer
> > +            - rockchip,rk3288-timer
> > +            - rockchip,rk3368-timer
> > +            - rockchip,px30-timer
> > +          - const: rockchip,rk3288-timer
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 2
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    items:
> > +      enum:
> > +        - timer
> > +        - pclk
> 
> We can't define the order here? We should fix dts files if they are 
> inconsistent.
> 

The driver requests the clocks by name, and unfortunately DTS
rely on that. We can change all the DTSI, but wouldn't that
be too much trouble for something that is currently working fine?

Why is the order important?

> > +    minItems: 2
> > +    maxItems: 2
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/clock/rk3288-cru.h>
> > +
> > +    timer: timer@ff810000 {
> > +        compatible = "rockchip,rk3288-timer";
> > +        reg = <0xff810000 0x20>;
> > +        interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks = <&xin24m>, <&cru PCLK_TIMER>;
> > +        clock-names = "timer", "pclk";
> > +    };
> > -- 
> > 2.30.0
> > 


