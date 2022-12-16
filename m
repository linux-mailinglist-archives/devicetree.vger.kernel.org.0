Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5268E64EDC9
	for <lists+devicetree@lfdr.de>; Fri, 16 Dec 2022 16:23:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231388AbiLPPXB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 10:23:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231330AbiLPPWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 10:22:53 -0500
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90C04528BE
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 07:22:52 -0800 (PST)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-142b72a728fso3620872fac.9
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 07:22:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mr9mjNRg1f3zRnPfwi8yunZyg/uKLZqF+EGAaF1ghi8=;
        b=DEzd4jTg48sQMLj8cuhwoVRp8CFjGFXiq88Fdpg+9zQvxbT7vkQcmMfPQ6kGoDuMrM
         7QF5zuWFQLyVmvQAvf448XbbNUHlXadJgJf1QKtiA6qXT23dKwi2AVirtq5b0RsRnymu
         LooDj4UIk/xzNVyocXcxBLlT/QB/+ZRlgez3yyuHzq00eFehOBNSZadv6ielWbJ5Rgor
         R1W3MTOynX1p6w52yZoo75VGVL0fg2hRZ9xkLTfQAKj2FW4uytapTaR7N0qI3fS/UKFQ
         gxNGZUrOXrqbKrXwVUKW0x57xVJ/0ojPdJvdDixXPe/E194WsJNYebA5SD9CXQmD+J1V
         RkFA==
X-Gm-Message-State: ANoB5pl36ONPGWkL6H9r8PEtNyOfEII6yTHvt1U7E0+wUXvszINeV0Q+
        UrlLDtL6y0S/NSrPN6BQHA==
X-Google-Smtp-Source: AA0mqf6uNQbQ6Ppw5kvCxjDZJ4V3Yji0M426FWoeFCOSndhGuS0KFsFa0iCaRjkrZjpKCGrPtlcA2Q==
X-Received: by 2002:a05:6871:4683:b0:142:3b1d:96d1 with SMTP id ni3-20020a056871468300b001423b1d96d1mr16816503oab.28.1671204171722;
        Fri, 16 Dec 2022 07:22:51 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 14-20020aca100e000000b0035b4b6d1bbfsm807250oiq.28.2022.12.16.07.22.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 07:22:51 -0800 (PST)
Received: (nullmailer pid 2776272 invoked by uid 1000);
        Fri, 16 Dec 2022 15:22:50 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Tony Lindgren <tony@atomide.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <Y5xcE5Qoyf5Zg6fV@atomide.com>
References: <Y5xcE5Qoyf5Zg6fV@atomide.com>
Message-Id: <167120412788.2775435.8636155497083101478.robh@kernel.org>
Subject: Re: dt binding check error with hash and comma
Date:   Fri, 16 Dec 2022 09:22:50 -0600
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 16 Dec 2022 13:52:51 +0200, Tony Lindgren wrote:
> Hi Krzysztof & Rob,
> 
> I'm getting a dt binding check error with a pinctrl-single yaml patch for
> property '#pinctrl-single,gpio-range-cells'. It seems to be caused by having
> both a hash and comma in the property:
> 
>   DTEX    Documentation/devicetree/bindings/pinctrl/pinctrl-single.example.dts
>   LINT    Documentation/devicetree/bindings
>   CHKDT   Documentation/devicetree/bindings/processed-schema.json
> Traceback (most recent call last):
>   File "/usr/bin/dt-doc-validate", line 63, in <module>
>     ret |= check_doc(f)
>            ^^^^^^^^^^^^
>   File "/usr/bin/dt-doc-validate", line 32, in check_doc
>     print(dtschema.format_error(filename, error, verbose=args.verbose), file=sys.stderr)
>           ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/lib/python3.11/site-packages/dtschema/lib.py", line 1350, in format_error
>     msg += '\n' + format_error(filename, suberror, prefix=prefix+"\t", nodename=nodename, verbose=verbose)
>                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>   File "/usr/lib/python3.11/site-packages/dtschema/lib.py", line 1326, in format_error
>     if error.linecol[0] >= 0:
>        ^^^^^^^^^^^^^
> AttributeError: 'ValidationError' object has no attribute 'linecol'
>   SCHEMA  Documentation/devicetree/bindings/processed-schema.json
>   DTC_CHK Documentation/devicetree/bindings/pinctrl/pinctrl-single.example.dtb
> 
> Any ideas why this is happening?
> 
> This is with dt-doc-validate 2022.11 and:
> 
> $ make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml
> 
> With the WIP patch below.
> 
> Regards,
> 
> Tony
> 
> 8< -------------------------

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml: properties:#pinctrl-single,gpio-range-cells: 'oneOf' conditional failed, one must be fixed:
	'type' is a required property
		hint: A vendor boolean property can use "type: boolean"
	Additional properties are not allowed ('const' was unexpected)
		hint: A vendor boolean property can use "type: boolean"
	/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/pinctrl/pinctrl-single.yaml: properties:#pinctrl-single,gpio-range-cells: 'oneOf' conditional failed, one must be fixed:
		'$ref' is a required property
		'allOf' is a required property
		hint: A vendor property needs a $ref to types.yaml
		from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#
	3 is not of type 'string'
		hint: A vendor string property with exact values has an implicit type
	hint: Vendor specific properties must have a type and description unless they have a defined, common suffix.
	from schema $id: http://devicetree.org/meta-schemas/vendor-props.yaml#

doc reference errors (make refcheckdocs):
Documentation/devicetree/bindings/arm/omap/ctrl.txt: Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt
Documentation/devicetree/bindings/pinctrl/ti,omap-pinctrl.txt: Documentation/devicetree/bindings/pinctrl/pinctrl-single.txt

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/Y5xcE5Qoyf5Zg6fV@atomide.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

