Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C47054984BE
	for <lists+devicetree@lfdr.de>; Mon, 24 Jan 2022 17:28:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243730AbiAXQ2s (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 11:28:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241118AbiAXQ2r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 11:28:47 -0500
Received: from smtp.domeneshop.no (smtp.domeneshop.no [IPv6:2a01:5b40:0:3005::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A5E5C06173B
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 08:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
        ; s=ds202112; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
        References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=ocvOHWJ3wrRvq5eM3CVrGXKd549B5HsiDIK7QpcqNfE=; b=h9F82F3iyazG6hR4ndsT9VosKT
        B8WhRO40/P1PC6fr2s9sJnTofV9risvC1ADDQvgMmG/CaE5MkDzCeKkAoGy0WkCi9j9ueKi2vmWTc
        jZ5odPnkEXX4l+Z+hoWEJuS94IP5swzMGz5oFZOP7wavmesKGxk9mhtY5/y5UBE9XK+URCcUIfsGQ
        gpZStu6wnC6ZNh+xDVYDTwUYkATqa9x1Fo3IiNN+iogvVdCRAN4jMvUUH2DB4gvudIx4Z68kl0wZx
        1uhFhMmMyArHwDBM108RBJt0fGbn/9T1hcYVK6jnRsv7u3SJpJJmTN+s9btUbbUy3OUnxckr1kh9p
        zZs9qoxQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:49175 helo=[192.168.10.61])
        by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <noralf@tronnes.org>)
        id 1nC2Cy-0005s7-Jc; Mon, 24 Jan 2022 17:28:44 +0100
Message-ID: <931fab73-3a91-fda0-4af3-b48a1ad3c742@tronnes.org>
Date:   Mon, 24 Jan 2022 17:28:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] dt-bindings: display: add bindings for MIPI DBI
 compatible SPI panels
To:     Rob Herring <robh+dt@kernel.org>, maxime@cerno.tech
Cc:     thierry.reding@gmail.com, sam@ravnborg.org,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20220123172520.48741-1-noralf@tronnes.org>
 <20220123172520.48741-2-noralf@tronnes.org>
 <CAL_JsqJU_WFeJDt5jqLN9BQN2j_TCf3+0hKvbNSYwmg-2DSF=Q@mail.gmail.com>
From:   =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
In-Reply-To: <CAL_JsqJU_WFeJDt5jqLN9BQN2j_TCf3+0hKvbNSYwmg-2DSF=Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



Den 24.01.2022 17.08, skrev Rob Herring:
> On Sun, Jan 23, 2022 at 11:25 AM Noralf Trønnes <noralf@tronnes.org> wrote:
>>
>> Add binding for MIPI DBI compatible SPI panels.
> 
> I'm sure we already have MIPI DBI panels. What's this for?
> 

It aims to use one driver to cover all MIPI DBI panels where the
controller setup is loaded from userspace in a firmware file. The cover
letter points to the discussion where Maxime proposed this:

https://lore.kernel.org/dri-devel/20211129093946.xhp22mvdut3m67sc@houat/

Noralf.

>>
>> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
>> ---
>>  .../display/panel/panel-mipi-dbi-spi.yaml     | 69 +++++++++++++++++++
>>  1 file changed, 69 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>> new file mode 100644
>> index 000000000000..d6c8accb045c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>> @@ -0,0 +1,69 @@
>> +# SPDX-License-Identifier: GPL-2.0-only
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dbi-spi.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: MIPI DBI SPI Panels Device Tree Bindings
>> +
>> +maintainers:
>> +  - Noralf Trønnes <noralf@tronnes.org>
>> +
>> +description:
>> +  This binding is for display panels using a MIPI DBI controller
>> +  in SPI mode.
>> +
>> +allOf:
>> +  - $ref: panel/panel-common.yaml#
>> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: panel-mipi-dbi-spi
> 
> Does the MIPI spec define how to power on a DBI panel with regulators,
> enable/reset lines, etc. and all the timing constraints between those?
> If not, then this compatible on its own is useless. It's fine as a
> fallback if it's presence means the panel uses only standard DBI
> commands and no vendor specific commands.
> 
>> +
>> +  model:
>> +    $ref: /schemas/types.yaml#/definitions/string
>> +    description: The name of the display panel.
>> +
>> +  write-only:
>> +    type: boolean
>> +    description:
>> +      Controller is not readable (ie. MISO is not wired up).
>> +
>> +  dc-gpios:
>> +    maxItems: 1
>> +    description: |
>> +      Controller data/command selection (D/CX) in 4-line SPI mode.
>> +      If not set, the controller is in 3-line SPI mode.
>> +
>> +  backlight: true
>> +  reg: true
>> +  reset-gpios: true
>> +
>> +required:
>> +  - compatible
>> +  - model
>> +  - reg
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/gpio/gpio.h>
>> +
>> +    spi {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            display@0{
>> +                    compatible = "panel-mipi-dbi-spi";
>> +                    model = "sainsmart18";
>> +                    reg = <0>;
>> +                    spi-max-frequency = <40000000>;
>> +                    dc-gpios = <&gpio 24 GPIO_ACTIVE_HIGH>;
>> +                    reset-gpios = <&gpio 25 GPIO_ACTIVE_HIGH>;
>> +                    write-only;
>> +            };
>> +    };
>> +
>> +...
>> --
>> 2.33.0
>>
