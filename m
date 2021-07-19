Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E7783CD604
	for <lists+devicetree@lfdr.de>; Mon, 19 Jul 2021 15:47:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240155AbhGSNG7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jul 2021 09:06:59 -0400
Received: from mail-io1-f51.google.com ([209.85.166.51]:37668 "EHLO
        mail-io1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240470AbhGSNG5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jul 2021 09:06:57 -0400
Received: by mail-io1-f51.google.com with SMTP id r18so8865938iot.4
        for <devicetree@vger.kernel.org>; Mon, 19 Jul 2021 06:47:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=OrbIsW7SF8UnZfaWxyuMiZ8eP4fxZr0jqTA/qyawg2E=;
        b=iSP4dALzpv+RTbZSdopRNcZMP9O4+1AJdyamzPegkGqWo6R81VzVzL1lpYv8ufysOU
         vQQRDDGALwF/L+oey9Lm1uMX3QFlg4iq/AycDv+7pgM1SipnQ7Ri43pmMqLrVDgYTXcV
         gEZCvYJRHlRKsPNPuSx0ASi6tOt1GN3yFWUEYaLl8pfeNXC2u/Djz9wsPlai2tk6bhnB
         QjWIjJeBlWI1ksIdD7ood1cyFzFje3mGV2d/dM3C4zX+eMZrHaSUaJE+/BGzmb6CP6v1
         bzHzN56vQWgasOh5GoGizF/eKwPDK2TYanOyQrfc8/frCO/vI3FMuAzQgvNnomUisU/3
         I71g==
X-Gm-Message-State: AOAM5318YLBKx2qdMYW2DxVWN+YXcR8xxyQp7ym040tKSm/C5pr7rRkb
        6vi1sdtY6YwuGAwi5v325w==
X-Google-Smtp-Source: ABdhPJxTQrszuXc8QJDvMM3YECtPnq/XPvbtLJKiSIKOkhxXYv/Bl2uqlRZCh0Bn8A9610z8hM0Hyw==
X-Received: by 2002:a02:8521:: with SMTP id g30mr21907160jai.113.1626702451765;
        Mon, 19 Jul 2021 06:47:31 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id x1sm10308397ioa.54.2021.07.19.06.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jul 2021 06:47:31 -0700 (PDT)
Received: (nullmailer pid 1811195 invoked by uid 1000);
        Mon, 19 Jul 2021 13:47:28 -0000
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, kernel@pengutronix.de,
        Peng Fan <peng.fan@nxp.com>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        Adam Ford <aford173@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>, patchwork-lst@pengutronix.de,
        Marek Vasut <marex@denx.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20210716232916.3572966-8-l.stach@pengutronix.de>
References: <20210716232916.3572966-1-l.stach@pengutronix.de> <20210716232916.3572966-8-l.stach@pengutronix.de>
Subject: Re: [PATCH 07/17] dt-bindings: soc: add binding for i.MX8MM VPU blk-ctrl
Date:   Mon, 19 Jul 2021 07:47:28 -0600
Message-Id: <1626702448.394195.1811194.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 17 Jul 2021 01:29:06 +0200, Lucas Stach wrote:
> This adds the DT binding for the i.MX8MM VPU blk-ctrl.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml      | 79 +++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: properties:compatible: [{'const': 'fsl,imx8mm-vpu-blk-ctrl'}, {'const': 'syscon'}] is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: properties:clock-names:items: 'anyOf' conditional failed, one must be fixed:
	['g1', 'g2', 'h1'] is not of type 'object', 'boolean'
	'g1' is not of type 'object', 'boolean'
	'g2' is not of type 'object', 'boolean'
	'h1' is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: properties:power-domain-names:items: 'anyOf' conditional failed, one must be fixed:
	['bus', 'g1', 'g1', 'h1'] is not of type 'object', 'boolean'
	'bus' is not of type 'object', 'boolean'
	'g1' is not of type 'object', 'boolean'
	'h1' is not of type 'object', 'boolean'
	from schema $id: http://json-schema.org/draft-07/schema#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: $id: 'http://devicetree.org/schemas/soc/imx/fsl,imx8mm-vpu-blk-ctrl#' does not match 'http://devicetree.org/schemas/.*\\.yaml#'
	from schema $id: http://devicetree.org/meta-schemas/base.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: properties:power-domain-names:minItems: False schema does not allow 4
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: properties:power-domain-names:maxItems: False schema does not allow 4
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: properties:clock-names:minItems: False schema does not allow 3
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: properties:clock-names:maxItems: False schema does not allow 3
	hint: "minItems/maxItems" equal to the "items" list length are not necessary
	from schema $id: http://devicetree.org/meta-schemas/items.yaml#
./Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: $id: relative path/filename doesn't match actual path or filename
	expected: http://devicetree.org/schemas/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml#
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml: ignoring, error in schema: properties: compatible
warning: no schema found in file: ./Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.yaml
Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.example.dts:20:51: error: missing terminating > character
   20 |         #include <dt-bindings/power/imx8mm-power.h
      |                                                   ^
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/soc/imx/fsl,imx8mm-vpu-blk-ctrl.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1418: dt_binding_check] Error 2
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1506314

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

