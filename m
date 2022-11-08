Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3434B62117F
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 13:54:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233807AbiKHMyP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 07:54:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234131AbiKHMyO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 07:54:14 -0500
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C06038A8
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 04:54:13 -0800 (PST)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-13b23e29e36so16100367fac.8
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 04:54:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jFL9LPgz2CCJ+zu4rDS954DCEcKvBJPWbunAFem47Gk=;
        b=H1wMaDisvmyd+wtgSmmyV3Y07a++9kYMyWoP0FP+v/zqVgKp0u/v4ot3A7MA5dKgb0
         rB6dRssWXt8PoZjcoxcM1QnEpirDcTRFK7O0COYztW2YHTAASZHh2L7RI3ez75Ph5VRo
         IfdhC8EThqkDCbRsTEfhlbm0gLFDFqLPBMkFbPjZ6BfTcB3r6zma6jdz5jcQOryuU1ED
         o04Q7u5YuPkwm6Msc1iTjs4dk3rv/e9cJlwaELXr5xWytwCO1iNou1JYQKdOnv4mNpEU
         zJzxl+mMsF12vnzc5rPNo6yrI4vt/HSUCcHvmK726Tc8FnxAuHClYoUX9A60fJJOPD97
         XbAw==
X-Gm-Message-State: ACrzQf0Q/Oxljucuk1OMnx9GXlVNEIPtujrRnxw5ejcGfwqC0xfEUGzL
        ztjdJLXP/wtiOpF//OYZpp14BkhWgg==
X-Google-Smtp-Source: AMsMyM42z+qrYi7U7nku0lQukOrxWtiW2SlfU5+PwAyMNYmm1ZrIQEcvE/w0H07shfws7jbzmxeb9A==
X-Received: by 2002:a05:6870:f6a3:b0:13c:db72:bb60 with SMTP id el35-20020a056870f6a300b0013cdb72bb60mr29625302oab.167.1667912052547;
        Tue, 08 Nov 2022 04:54:12 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i4-20020aca3b04000000b00353fe4fb4casm3387792oia.48.2022.11.08.04.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 04:54:12 -0800 (PST)
Received: (nullmailer pid 3254920 invoked by uid 1000);
        Tue, 08 Nov 2022 12:54:14 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Nicholas Roth <nicholas@rothemail.net>
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org
In-Reply-To: <20221108033813.16502-2-nicholas@rothemail.net>
References: <20221108033813.16502-1-nicholas@rothemail.net>
 <20221108033813.16502-2-nicholas@rothemail.net>
Message-Id: <166791192485.3252530.2242777453866732728.robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: media: Add Omnivision ov8858 binding
Date:   Tue, 08 Nov 2022 06:54:14 -0600
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 07 Nov 2022 21:38:13 -0600, Nicholas Roth wrote:
> Add a device tree binding for the Omnivision OV8858 image sensor.
> The OV8858 is an 8 megapixel image sensor which provides images in RAW
> format over MIPI CSI-2 data bus and is controlled through an
> I2C-compatibile SCCB bus.
> 
> Tested on PinePhone Pro with libcamera cam and qcam.
> 
> Signed-off-by: Nicholas Roth <nicholas@rothemail.net>
> ---
>  .../bindings/i2c/ovti,ov8858-i2c.yaml         | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: properties:compatible: 'ovti,ov8858' is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: 'maintainers' is a required property
	hint: Metaschema for devicetree binding documentation
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
./Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/i2c/ovti,ov8858-i2c.yaml#
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.yaml: ignoring, error in schema: properties: compatible
Error: Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.example.dts:27.37-38 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:406: Documentation/devicetree/bindings/i2c/ovti,ov8858-i2c.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1492: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

