Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37E3A40C504
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 14:17:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232471AbhIOMSR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 08:18:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232399AbhIOMSR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 08:18:17 -0400
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28A66C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 05:16:57 -0700 (PDT)
Received: from ramsan.of.borg ([84.195.186.194])
        by michel.telenet-ops.be with bizsmtp
        id uCGq2500E4C55Sk06CGqVE; Wed, 15 Sep 2021 14:16:54 +0200
Received: from geert (helo=localhost)
        by ramsan.of.borg with local-esmtp (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mQTm8-004dtW-F5; Wed, 15 Sep 2021 14:12:28 +0200
Date:   Wed, 15 Sep 2021 14:12:28 +0200 (CEST)
From:   Geert Uytterhoeven <geert@linux-m68k.org>
X-X-Sender: geert@ramsan.of.borg
To:     Mark Brown <broonie@kernel.org>
cc:     derek.fang@realtek.com, lgirdwood@gmail.com,
        oder_chiou@realtek.com, jack.yu@realtek.com,
        alsa-devel@alsa-project.org, lars@metafoo.de,
        albertchen@realtek.com, shumingf@realtek.com,
        albertwang@realtek.com, flove@realtek.com,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ASoC: rt5682s: Add driver for ALC5682I-VS codec
In-Reply-To: <163152996584.45703.10295940257693172145.b4-ty@kernel.org>
Message-ID: <alpine.DEB.2.22.394.2109151408390.1106350@ramsan.of.borg>
References: <20210831130258.19286-1-derek.fang@realtek.com> <163152996584.45703.10295940257693172145.b4-ty@kernel.org>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CC devicetree

On Mon, 13 Sep 2021, Mark Brown wrote:
> On Tue, 31 Aug 2021 21:02:57 +0800, derek.fang@realtek.com wrote:
>> From: Derek Fang <derek.fang@realtek.com>
>>
>> This is an initial codec driver for Realtek ALC5682I-VS codec.
>>
>>
>
> Applied to
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
>
> Thanks!
>
> [1/2] ASoC: rt5682s: Add driver for ALC5682I-VS codec
>      commit: bdd229ab26be9aa3306d01787e1467db92df6603
> [2/2] ASoC: dt-bindings: rt5682s: add bindings for rt5682s
>      commit: 50159fdb144b73984873bf2eeb9ff45d10a67f3a

This is now commit 50159fdb144b7398 ("ASoC: dt-bindings: rt5682s: add
bindings for rt5682s") in broonie/sound#for-next, breaking "make
dt_binding_check":

Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: 'example' is not one of ['$id', '$schema', 'title', 'description', 'examples', 'required', 'allOf', 'anyOf', 'oneOf', 'definitions', '$defs', 'additionalProperties', 'dependencies', 'patternProperties', 'properties', 'if', 'then', 'else', 'unevaluatedProperties', 'deprecated', 'maintainers', 'select']
         from schema $id: http://devicetree.org/meta-schemas/base.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:clock-names:items: {'const': 'mclk'} is not of type 'array'
         from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:clock-output-names:items: 'oneOf' conditional failed, one must be fixed:
         [{'description': 'Name given for DAI word clock output.'}, {'description': 'Name given for DAI bit clock output.'}] is not of type 'object'
         Additional properties are not allowed ('description' was unexpected)
         from schema $id: http://devicetree.org/meta-schemas/string-array.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,dmic1-data-pin: 'description' is a required property
         hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
         from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,dmic1-data-pin: 'oneOf' conditional failed, one must be fixed:
         'type' is a required property
                 hint: A vendor boolean property can use "type: boolean"
         Additional properties are not allowed ('enum' was unexpected)
                 hint: A vendor boolean property can use "type: boolean"
         Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,dmic1-data-pin: 'oneOf' conditional failed, one must be fixed:
                 '$ref' is a required property
                 'allOf' is a required property
                 hint: A vendor property needs a $ref to types.yaml
                 from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
         0 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         1 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         2 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
         from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,dmic1-clk-pin: 'description' is a required property
         hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
         from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,dmic1-clk-pin: 'oneOf' conditional failed, one must be fixed:
         'type' is a required property
                 hint: A vendor boolean property can use "type: boolean"
         Additional properties are not allowed ('enum' was unexpected)
                 hint: A vendor boolean property can use "type: boolean"
         Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,dmic1-clk-pin: 'oneOf' conditional failed, one must be fixed:
                 '$ref' is a required property
                 'allOf' is a required property
                 hint: A vendor property needs a $ref to types.yaml
                 from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
         0 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         1 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         2 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
         from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,jd-src: 'description' is a required property
         hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
         from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,jd-src: 'oneOf' conditional failed, one must be fixed:
         'type' is a required property
                 hint: A vendor boolean property can use "type: boolean"
         Additional properties are not allowed ('enum' was unexpected)
                 hint: A vendor boolean property can use "type: boolean"
         Documentation/devicetree/bindings/sound/realtek,rt5682s.yaml: properties:realtek,jd-src: 'oneOf' conditional failed, one must be fixed:
                 '$ref' is a required property
                 'allOf' is a required property
                 hint: A vendor property needs a $ref to types.yaml
                 from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
         0 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         1 is not of type 'string'
                 hint: A vendor string property with exact values has an implicit type
         hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
         from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#

Gr{oetje,eeting}s,

 						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
 							    -- Linus Torvalds
