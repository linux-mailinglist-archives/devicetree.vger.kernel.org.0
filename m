Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D7E4408AE8
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 14:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239974AbhIMMUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 08:20:18 -0400
Received: from mail-oo1-f42.google.com ([209.85.161.42]:41799 "EHLO
        mail-oo1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239941AbhIMMUF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Sep 2021 08:20:05 -0400
Received: by mail-oo1-f42.google.com with SMTP id b5-20020a4ac285000000b0029038344c3dso3307407ooq.8
        for <devicetree@vger.kernel.org>; Mon, 13 Sep 2021 05:18:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=bugLB47+bgjh8v8+QK5frTd0NffoWq49bJO7kM44vYc=;
        b=ArUoGMDSLJmi3hr+TfXY14gReLY8dfcmn7ChL4cWCDJiyNJEs75rVSjfmMjd+cNK2+
         558f0fDVK5pT++bvGBDAfI3bVJkj/7prOGGtIq8T/kuylVyKfqosKGB/JRqr9w4rvWZz
         CE4/Hmc8ljsex1/oxF8+Cnz5NQ+5b0qdO721XM4c8V5e5eMyQaxV3XS/2+0MIyxl2MAb
         /9J6xaJ6RFmDGLklCBso2ufVnUqet1kpgs4meV9EabcAUSW6SBmKNBHUGaE7XoiML3jA
         waT1+Tm53kM/aJyzFYZ0ovKykz7Mn2MIgZqEHpifIbRfEpvMYqdVM47Sg3sGoIIJUxLZ
         ypbw==
X-Gm-Message-State: AOAM5339arD+ST57LrVXZEaav5MD0dDL5MQFGl/f5wxyIerquYIfizaN
        jIttrmRXurAEdWmkmPKYZA==
X-Google-Smtp-Source: ABdhPJwt0IFdigIJfxeCTtwNeM7X3ErMU+2u8b0W1BgO/3uSEqQH3pWXKI6bH07SKMAfznY2eaixBg==
X-Received: by 2002:a4a:1506:: with SMTP id 6mr8762820oon.93.1631535529229;
        Mon, 13 Sep 2021 05:18:49 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q26sm1806775otf.39.2021.09.13.05.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Sep 2021 05:18:48 -0700 (PDT)
Received: (nullmailer pid 444717 invoked by uid 1000);
        Mon, 13 Sep 2021 12:18:43 -0000
From:   Rob Herring <robh@kernel.org>
To:     David Rhodes <drhodes@opensource.cirrus.com>
Cc:     ckeepax@opensource.cirrus.com,
        pierre-louis.bossart@linux.intel.com, david.rhodes@cirrus.com,
        brian.austin@cirrus.com, devicetree@vger.kernel.org,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        broonie@kernel.org
In-Reply-To: <20210911004546.2139657-3-drhodes@opensource.cirrus.com>
References: <20210911004546.2139657-1-drhodes@opensource.cirrus.com> <20210911004546.2139657-3-drhodes@opensource.cirrus.com>
Subject: Re: [PATCH v7 2/2] ASoC: cs35l41: Add bindings for CS35L41
Date:   Mon, 13 Sep 2021 07:18:43 -0500
Message-Id: <1631535523.185638.444716.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 10 Sep 2021 19:45:46 -0500, David Rhodes wrote:
> Devicetree binding documentation for CS35L41 driver
> 
> CS35L41 is a 11-V Boosted Mono Class D Amplifier with
> DSP Speaker Protection and Equalization
> 
> Signed-off-by: David Rhodes <drhodes@opensource.cirrus.com>
> ---
>  .../devicetree/bindings/sound/cs35l41.yaml    | 151 ++++++++++++++++++
>  1 file changed, 151 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sound/cs35l41.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/sound/cs35l41.yaml:151:9: [error] no new line character at the end of file (new-line-at-end-of-file)

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/cs35l41.yaml: 'additionalProperties' is a required property
	hint: A schema without a "$ref" to another schema must define all properties and use "additionalProperties"
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/cs35l41.yaml: ignoring, error in schema: 
warning: no schema found in file: ./Documentation/devicetree/bindings/sound/cs35l41.yaml
Documentation/devicetree/bindings/sound/cs35l41.example.dts:21.11-21: Warning (reg_format): /example-0/cs35l41@2:reg: property has invalid length (4 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml: example-0: cs35l41@2:reg:0: [2] is too short
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml
Documentation/devicetree/bindings/sound/cs35l41.example.dt.yaml:0:0: /example-0/cs35l41@2: failed to match any schema with compatible: ['cirrus,cs35l41']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1526664

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

