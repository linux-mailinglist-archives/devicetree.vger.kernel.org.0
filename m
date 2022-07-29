Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76585585102
	for <lists+devicetree@lfdr.de>; Fri, 29 Jul 2022 15:38:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236353AbiG2Nii (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Jul 2022 09:38:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235451AbiG2Nih (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Jul 2022 09:38:37 -0400
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C848467C80
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 06:38:34 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id o2so3612962iof.8
        for <devicetree@vger.kernel.org>; Fri, 29 Jul 2022 06:38:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=IVEhYZW7pVuVNX7N8DIrmuV9luqyf17twFjiGQBjaSI=;
        b=YMuh/5TgIeKx+2rZWSONT3IZywRGnYBPgirbX+Ni9Q6bncLrzn2WPPnFHKAgZLH50p
         bNVJzJ57M0ACFq2GuJ5pgElZaOWL8iH8uAXnW/mbREd02Mk9J19CoMbYjif41QBfSrPY
         MFWJhRP6ATM3E6v2nBuTO1iRGeMZ/VJqxb9rip2A16tGKfd7s0dXjeg2HA732r5MJUoB
         uKtcx605vUX1ri2dnorZ/tkyXSAQe80dAF6xUWGqmM0XobmIzAuc8LMA+RIgSgS5JgZR
         tBTarDu17lri5Cdmq77jLIsba+OWOsTtYoWs8zo6eYY7lsjCmGic0jJRo0KS2nBbPxWg
         Ihiw==
X-Gm-Message-State: AJIora8MXUioDhEdXkA+HN25xma89kdwhv3DmIlqQPIOW1m7L/iaIJzO
        gpJb1c7HZ/eoZ1kKidXAMQ==
X-Google-Smtp-Source: AGRyM1s/kppGnaM8HYOtHmwqEE1QPpJwVG7cKuy6k01IF42KCve7/7DB+xbtvTEgnc2xIp8MMD93aw==
X-Received: by 2002:a02:3f11:0:b0:33f:5d4c:179e with SMTP id d17-20020a023f11000000b0033f5d4c179emr1477525jaa.23.1659101914025;
        Fri, 29 Jul 2022 06:38:34 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id f15-20020a02848f000000b0033f3435955dsm1621909jai.102.2022.07.29.06.38.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Jul 2022 06:38:33 -0700 (PDT)
Received: (nullmailer pid 3271160 invoked by uid 1000);
        Fri, 29 Jul 2022 13:38:31 -0000
From:   Rob Herring <robh@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>
Cc:     tiwai@suse.com, David Yang <yangxiaohua@everest-semi.com>,
        pierre-louis.bossart@linux.intel.com,
        Zhu Ning <zhuning@everest-semi.com>, broonie@kernel.org,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20220729090857.579785-2-zhuning0077@gmail.com>
References: <20220729090857.579785-1-zhuning0077@gmail.com> <20220729090857.579785-2-zhuning0077@gmail.com>
Subject: Re: [PATCH v4 2/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Date:   Fri, 29 Jul 2022 07:38:31 -0600
Message-Id: <1659101911.665574.3271159.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 29 Jul 2022 17:08:57 +0800, Zhu Ning wrote:
> Add device tree binding documentation for Everest ES8326
> 
> Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
> Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
> ----
> v4 add properity for reg58 and reg59
> ---
>  .../bindings/sound/everest,es8326.yaml        | 116 ++++++++++++++++++
>  1 file changed, 116 insertions(+)
>  create mode 100755 Documentation/devicetree/bindings/sound/everest,es8326.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/everest,es8326.yaml:76:4: [warning] wrong indentation: expected 4 but found 3 (indentation)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: properties:$ref: '/schemas/types.yaml#/definitions/uint8' is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: properties:maximum: 127 is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: properties:default: 69 is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: properties:minimum: 0 is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: properties:everest,interrupt-clk: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: properties:everest,interrupt-clk: 'oneOf' conditional failed, one must be fixed:
		'enum' is a required property
		'const' is a required property
		hint: A vendor string property with exact values has an implicit type
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: properties:everest,interrupt-clk: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.yaml: ignoring, error in schema: properties: default
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.example.dtb: codec@19: everest,mic1-src: b'"' is not of type 'object', 'array', 'boolean', 'null'
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/dt-core.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.example.dtb: codec@19: everest,mic2-src: b'D' is not of type 'object', 'array', 'boolean', 'null'
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/dt-core.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.example.dtb: codec@19: everest,jack-pol: b'\x0e' is not of type 'object', 'array', 'boolean', 'null'
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/dt-core.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.example.dtb: codec@19: everest,interrupt-src: b'\x08' is not of type 'object', 'array', 'boolean', 'null'
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/dt-core.yaml
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/everest,es8326.example.dtb: codec@19: everest,interrupt-clk: b'E' is not of type 'object', 'array', 'boolean', 'null'
	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/dt-core.yaml
Documentation/devicetree/bindings/sound/everest,es8326.example.dtb:0:0: /example-0/i2c/codec@19: failed to match any schema with compatible: ['everest,es8326']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

