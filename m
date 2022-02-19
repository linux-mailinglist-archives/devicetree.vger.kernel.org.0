Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73B2C4BC90C
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 16:25:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242446AbiBSPZu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 10:25:50 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:33848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233699AbiBSPZu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 10:25:50 -0500
Received: from mx2.smtp.larsendata.com (mx2.smtp.larsendata.com [91.221.196.228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0D381DED5B
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 07:25:29 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx2.smtp.larsendata.com (Halon) with ESMTPS
        id 35db18a9-9198-11ec-b2df-0050568cd888;
        Sat, 19 Feb 2022 15:25:46 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id 8100D194C5E;
        Sat, 19 Feb 2022 16:25:26 +0100 (CET)
Date:   Sat, 19 Feb 2022 16:25:22 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, thierry.reding@gmail.com, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
Message-ID: <YhEL4hgArpjFbcBx@ravnborg.org>
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-2-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220218151110.11316-2-noralf@tronnes.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Noralf,

On Fri, Feb 18, 2022 at 04:11:08PM +0100, Noralf Trønnes wrote:
> Add binding for MIPI DBI compatible SPI panels.
> 
> v4:
> - There should only be two compatible (Maxime)
> - s/panel-dbi-spi/panel-mipi-dbi-spi/in compatible
> 
> v3:
> - Move properties to Device Tree (Maxime)
> - Use contains for compatible (Maxime)
> - Add backlight property to example
> - Flesh out description
> 
> v2:
> - Fix path for panel-common.yaml
> - Use unevaluatedProperties
> - Drop properties which are in the allOf section
> - Drop model property (Rob)
> 
> Acked-by: Maxime Ripard <maxime@cerno.tech>
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  .../display/panel/panel-mipi-dbi-spi.yaml     | 125 ++++++++++++++++++
>  1 file changed, 125 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> new file mode 100644
> index 000000000000..748c09113168
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> @@ -0,0 +1,125 @@
> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPI DBI SPI Panel
> +
> +maintainers:
> +  - Noralf Trønnes <noralf@tronnes.org>
> +
> +description: |
> +  This binding is for display panels using a MIPI DBI compatible controller
> +  in SPI mode.
> +
> +  The MIPI Alliance Standard for Display Bus Interface defines the electrical
> +  and logical interfaces for display controllers historically used in mobile
> +  phones. The standard defines 4 display architecture types and this binding is
> +  for type 1 which has full frame memory. There are 3 interface types in the
> +  standard and type C is the serial interface.
> +
> +  The standard defines the following interface signals for type C:
> +  - Power:
> +    - Vdd: Power supply for display module
> +    - Vddi: Logic level supply for interface signals
> +    Combined into one in this binding called: power-supply
> +  - Interface:
> +    - CSx: Chip select
> +    - SCL: Serial clock
> +    - Dout: Serial out
> +    - Din: Serial in
> +    - SDA: Bidrectional in/out
> +    - D/CX: Data/command selection, high=data, low=command
> +      Called dc-gpios in this binding.
> +    - RESX: Reset when low
> +      Called reset-gpios in this binding.
> +
> +  The type C interface has 3 options:
> +
> +    - Option 1: 9-bit mode and D/CX as the 9th bit
> +      |              Command              |  the next command or following data  |
> +      |<0><D7><D6><D5><D4><D3><D2><D1><D0>|<D/CX><D7><D6><D5><D4><D3><D2><D1><D0>|
> +
> +    - Option 2: 16-bit mode and D/CX as a 9th bit
> +      |              Command or data                              |
> +      |<X><X><X><X><X><X><X><D/CX><D7><D6><D5><D4><D3><D2><D1><D0>|
> +
> +    - Option 3: 8-bit mode and D/CX as a separate interface line
> +      |        Command or data         |
> +      |<D7><D6><D5><D4><D3><D2><D1><D0>|
> +
> +  The panel resolution is specified using the panel-timing node properties
> +  hactive (width) and vactive (height). The other mandatory panel-timing
> +  properties should be set to zero except clock-frequency which can be
> +  optionally set to inform about the actual pixel clock frequency.
> +
> +  If the panel is wired to the controller at an offset specify this using
> +  hback-porch (x-offset) and vback-porch (y-offset).
Very informative description - well done.

> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - {} # Panel Specific Compatible
> +      - const: panel-mipi-dbi-spi
> +
> +  write-only:
> +    type: boolean
> +    description:
> +      Controller is not readable (ie. MISO is not wired up).
It would be easier to understand if this comment refers to one of the
pins on the display described above. So maybe something like
(ie. Din (MSIO on the SPI interface) is not wired up).

With the comment updated to include a reference to Din,
Acked-by: Sam Ravnborg <sam@ravnborg.org>
