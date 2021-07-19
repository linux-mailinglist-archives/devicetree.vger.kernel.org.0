Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CB543CD603
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 15:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240509AbhGSNG7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 09:06:59 -0400
Received: from mail-io1-f52.google.com ([209.85.166.52]:35377 "EHLO
        mail-io1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240155AbhGSNG4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 09:06:56 -0400
Received: by mail-io1-f52.google.com with SMTP id d9so19943384ioo.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:47:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=pgPZo7jBGVkZMH4aV5136mZlbnU7I2aNv16J5+JKFFg=;
        b=OPWo5vYJcbCkX/0ViFc+xVhYvzcNoKmhK7lHYFqGKJT//zUD6OM8ilC3lkKTwkGgmH
         HbdLVRagP7ZKUMfe77zt53QmDq4hTS0fWa+fdSGkncOcuMJAjRr87XCM0yqh7lUkN1nz
         mxKd2LmBwcvllvNcf6KPMkb5KHg+Fil2pPuBZJaSJTdYfkJ3Acr2gY0tDvez+5lLMweU
         b3xTdlGz2duXnVWViNyau2HN4uppqTAJE/r0X+glHSBNdTWx0IjXEUVkYpMxq7Xu0AoP
         jB8GdXQ5rltFj4JgYia+RQMVC3h6SrriyBe6VtR6PJBAvOQC5gsrIjZUMix0zFsijskO
         MHPA==
X-Gm-Message-State: AOAM530KR5N0LixamnIfzTkDORZN5WhWoDqDx13pTX+QeXzbOGfFjfc+
        VlLC4r9k4qEpRN5ZXNRZYA==
X-Google-Smtp-Source: ABdhPJzu7MAB+JsIO7mdi7RqPpk6KzUSG7bnSY2JsbMwpHVPQ0xof6mngSlJKnSzCdR7NLUsUvjJDQ==
X-Received: by 2002:a02:7a50:: with SMTP id z16mr21462551jad.139.1626702455317;
        Mon, 19 Jul 2021 06:47:35 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id 15sm10124708ilt.66.2021.07.19.06.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 06:47:34 -0700 (PDT)
Received: (nullmailer pid 1811198 invoked by uid 1000);
        Mon, 19 Jul 2021 13:47:28 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Adam Ford <aford173@gmail.com>, Peng Fan <peng.fan@nxp.com>,
        kernel@pengutronix.de, Marek Vasut <marex@denx.de>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        patchwork-lst@pengutronix.de, devicetree@vger.kernel.org,
        NXP Linux Team <linux-imx@nxp.com>
In-Reply-To: <20210716232916.3572966-11-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de> <20210716232916.3572966-11-l.stach@pengutronix.de>
Subject: Re: [PATCH 10/17] dt-bindings: soc: add binding for i.MX8MM DISP blk-ctrl
Date:   Mon, 19 Jul 2021 07:47:28 -0600
Message-Id: <1626702448.408574.1811197.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 17 Jul 2021 01:29:09 +0200, Lucas Stach wrote:
> This adds the DT binding for the i.MX8MM VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml     | 97 +++++++++++++++++++
>  1 file changed, 97 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: properties:compatible: [{'const': 'fsl,imx8mm-disp-blk-ctrl'}, {'const': 'syscon'}] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: properties:clock-names:items: 'anyOf' conditional failed, one must be fixed:
	['csi-bridge-axi', 'csi-bridge-apb', 'csi-bridge-core', 'lcdif-axi', 'lcdif-apb', 'lcdif-pix', 'dsi-pclk', 'dsi-ref', 'csi-aclk', 'csi-pclk'] is not of type 'object', 'boolean'
	'csi-bridge-axi' is not of type 'object', 'boolean'
	'csi-bridge-apb' is not of type 'object', 'boolean'
	'csi-bridge-core' is not of type 'object', 'boolean'
	'lcdif-axi' is not of type 'object', 'boolean'
	'lcdif-apb' is not of type 'object', 'boolean'
	'lcdif-pix' is not of type 'object', 'boolean'
	'dsi-pclk' is not of type 'object', 'boolean'
	'dsi-ref' is not of type 'object', 'boolean'
	'csi-aclk' is not of type 'object', 'boolean'
	'csi-pclk' is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: properties:power-domain-names:items: 'anyOf' conditional failed, one must be fixed:
	['bus', 'csi-bridge', 'lcdif', 'mipi-dsi', 'mipi-csi'] is not of type 'object', 'boolean'
	'bus' is not of type 'object', 'boolean'
	'csi-bridge' is not of type 'object', 'boolean'
	'lcdif' is not of type 'object', 'boolean'
	'mipi-dsi' is not of type 'object', 'boolean'
	'mipi-csi' is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: $id: 'http://devicetree.org/schemas/soc/imx/fsl,imx8mm-disp-blk-ctrl#' does not match 'http://devicetree.org/schemas/.*\\.yaml#'
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: properties:power-domain-names:minItems: False schema does not allow 5
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: properties:power-domain-names:maxItems: False schema does not allow 5
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: properties:clock-names:minItems: False schema does not allow 10
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: properties:clock-names:maxItems: False schema does not allow 10
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
./Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml: ignoring, error in schema: properties: clock-names: items
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml
Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.example.dts:20:51: error: missing terminating > character
   20 |         #include <dt-bindings/power/imx8mm-power.h
      |                                                   ^
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-disp-blk-ctrl.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1418: dt_binding_check] Error 2
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1506316

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

