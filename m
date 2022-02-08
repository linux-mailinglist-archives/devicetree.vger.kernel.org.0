Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01A3A4AD8BE
	for <lists+devicetree@lfdr.de>; Tue,  8 Feb 2022 14:16:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238269AbiBHNPk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Feb 2022 08:15:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350255AbiBHMQv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Feb 2022 07:16:51 -0500
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 306E6C03FECE
        for <devicetree@vger.kernel.org>; Tue,  8 Feb 2022 04:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=ZnDmcVC1x6gxo65bslhH2FYYzBNk0AndwKAobiaEeoc=; b=Mf8HDwqAg5ONQUFC8Q2LGg0lQ/
        Ct5qNBfU6aHf9zsq8adhmDXt0F03FZiQZUiRjD+oNKgThJbsG9nst+9gELORAYXoMR4VRFtSAfddu
        ApH9FTIMWq0Y7258BNHdzh0xBV0QCbsd1WrUfp2bFMk37j4nTF138sQ+EMWpwJ5ruwXrsyDYMSM9t
        7b5KBeVz7Qh26T537VH7JZ8GRQLZ9guwcsqeaV5NomAEx4kDXcgmhX7RncqUNT3l6zQ6JUrRq5tGa
        B1BoJSZ4sry3xse+QUgcKwCw2o0ID5PQOx5vwv1CLeAJUlr0Izp1GbFSRuxuER9urz62/l1xRLd6s
        aauE7sVA==;
Received: from [2a01:799:95e:a400:cca0:57ac:c55d:a485] (port=59343)
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nHPQN-0000KZ-0w; Tue, 08 Feb 2022 13:16:47 +0100
Message-ID: <bebbd98c-ccba-b233-0299-45f58efee10b@tronnes.org>
Date:   Tue, 8 Feb 2022 13:16:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
To:     Rob Herring <robh@kernel.org>, Maxime Ripard <maxime@cerno.tech>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20220125175700.37408-1-noralf@tronnes.org>
 <20220125175700.37408-2-noralf@tronnes.org>
 <20220127093722.hsed3ny3gzk55o7w@houat> <YgGpWo80TvfTknhx@robh.at.kernel.org>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <YgGpWo80TvfTknhx@robh.at.kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 08.02.2022 00.20, skrev Rob Herring:
> On Thu, Jan 27, 2022 at 10:37:22AM +0100, Maxime Ripard wrote:
>> Hi,
>>
>> On Tue, Jan 25, 2022 at 06:56:58PM +0100, Noralf Trønnes wrote:
>>> Add binding for MIPI DBI compatible SPI panels.
>>>
>>> v2:
>>> - Fix path for panel-common.yaml
>>> - Use unevaluatedProperties
>>> - Drop properties which are in the allOf section
>>> - Drop model property (Rob)
>>>
>>> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
>>> ---
>>>  .../display/panel/panel-mipi-dbi-spi.yaml     | 59 +++++++++++++++++++
>>>  1 file changed, 59 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>>> new file mode 100644
>>> index 000000000000..b7cbeea0f8aa
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>>> @@ -0,0 +1,59 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: MIPI DBI SPI Panels Device Tree Bindings
>>> +
>>> +maintainers:
>>> +  - Noralf Trønnes <noralf@tronnes.org>
>>> +
>>> +description:
>>> +  This binding is for display panels using a MIPI DBI controller
>>> +  in SPI mode.
>>> +
>>> +allOf:
>>> +  - $ref: panel-common.yaml#
>>> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: panel-mipi-dbi-spi
>>
>> You need contains here, otherwise it will error out if you have two compatibles.
> 
> Shouldn't it always have 2?
> 
> Either way, this has to be split up between a common, shareable schema 
> and specific, complete schema(s). Like this:
> 
> - A schema for everything common (that allows additional properties)
> 
> - A schema for 'panel-mipi-dbi-spi' referencing the common schema plus 
>   'unevaluatedProperties: false'
> 
> - Schemas for panels with their own additional properties (regulators, 
>   GPIOs, etc.)
> 
> LVDS was restructured like this IIRC.
> 

The whole point of this exercise is to avoid the need for controller
specific bindings. This binding will cover all specifics about these
controllers except for one thing and that is the controller
configuration. Each controller has its own configuration commands. These
commands will be loaded as a firmware file based on the compatible and
applied by the driver.

So this binding, the panel-common and spi-peripheral-props covers
everything except for the controller configuration.

Here's a copy of the DBI spec: https://www.docin.com/p-219732497.html

This is my current version of the binding:

# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
%YAML 1.2
---
$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
$schema: http://devicetree.org/meta-schemas/core.yaml#

title: MIPI DBI SPI Panel

maintainers:
  - Noralf Trønnes <noralf@tronnes.org>

description: |
  This binding is for display panels using a MIPI DBI compatible controller
  in SPI mode.

  The MIPI Alliance Standard for Display Bus Interface defines the
electrical
  and logical interfaces for display controllers historically used in mobile
  phones. The standard defines 4 display architecture types and this
binding is
  for type 1 which has full frame memory. There are 3 interface types in the
  standard and type C is the serial interface.

  The standard defines the following interface signals for type C:
  - Power:
    - Vdd: Power supply for display module
    - Vddi: Logic level supply for interface signals
    Combined into one in this binding called: power-supply
  - Interface:
    - CSx: Chip select
    - SCL: Serial clock
    - Dout: Serial out
    - Din: Serial in
    - SDA: Bidrectional in/out
    - D/CX: Data/command selection, high=data, low=command
      Called dc-gpios in this binding.
    - RESX: Reset when low
      Called reset-gpios in this binding.

  The type C interface has 3 options:

    - Option 1: 9-bit mode and D/CX as the 9th bit
      |              Command              |  the next command or
following data  |

|<0><D7><D6><D5><D4><D3><D2><D1><D0>|<D/CX><D7><D6><D5><D4><D3><D2><D1><D0>|

    - Option 2: 16-bit mode and D/CX as a 9th bit
      |              Command or data                              |
      |<X><X><X><X><X><X><X><D/CX><D7><D6><D5><D4><D3><D2><D1><D0>|

    - Option 3: 8-bit mode and D/CX as a separate interface line
      |        Command or data         |
      |<D7><D6><D5><D4><D3><D2><D1><D0>|

  The panel resolution is specified using the panel-timing node properties
  hactive (width) and vactive (height). The other mandatory panel-timing
  properties should be set to zero except clock-frequency which can be
  optionally set to inform about the actual pixel clock frequency.

  If the panel is wired to the controller at an offset specify this using
  hback-porch (x-offset) and vback-porch (y-offset).

allOf:
  - $ref: panel-common.yaml#
  - $ref: /schemas/spi/spi-peripheral-props.yaml#

properties:
  compatible:
    contains:
      const: panel-dbi-spi

  write-only:
    type: boolean
    description:
      Controller is not readable (ie. MISO is not wired up).

  dc-gpios:
    maxItems: 1
    description: |
      Controller data/command selection (D/CX) in 4-line SPI mode.
      If not set, the controller is in 3-line SPI mode.

required:
  - compatible
  - reg
  - panel-timing

unevaluatedProperties: false

examples:
  - |
    #include <dt-bindings/gpio/gpio.h>

    spi {
            #address-cells = <1>;
            #size-cells = <0>;

            display@0{
                    compatible = "sainsmart18", "panel-dbi-spi";
                    reg = <0>;
                    spi-max-frequency = <40000000>;

                    dc-gpios = <&gpio 24 GPIO_ACTIVE_HIGH>;
                    reset-gpios = <&gpio 25 GPIO_ACTIVE_HIGH>;
                    write-only;

                    backlight = <&backlight>;

                    width-mm = <35>;
                    height-mm = <28>;

                    panel-timing {
                        hactive = <160>;
                        vactive = <128>;
                        hback-porch = <0>;
                        vback-porch = <0>;

                        clock-frequency = <0>;
                        hfront-porch = <0>;
                        hsync-len = <0>;
                        vfront-porch = <0>;
                        vsync-len = <0>;
                    };
            };
    };

...


>>> +  write-only:
>>> +    type: boolean
>>> +    description:
>>> +      Controller is not readable (ie. MISO is not wired up).
>>> +
>>> +  dc-gpios:
>>> +    maxItems: 1
>>> +    description: |
>>> +      Controller data/command selection (D/CX) in 4-line SPI mode.
>>> +      If not set, the controller is in 3-line SPI mode.
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +
>>> +unevaluatedProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    #include <dt-bindings/gpio/gpio.h>
>>> +
>>> +    spi {
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>> +
>>> +            display@0{
>>> +                    compatible = "panel-mipi-dbi-spi";
>>
>> We should have two compatibles in the example too
>>
>> Maxime
> 
> 
