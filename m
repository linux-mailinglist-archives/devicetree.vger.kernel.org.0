Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 661293CA024
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 15:54:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbhGON5H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 09:57:07 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:43700 "EHLO
        mail-io1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbhGON5H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 09:57:07 -0400
Received: by mail-io1-f45.google.com with SMTP id k16so6512219ios.10
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 06:54:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=8TZaHSQy+rMOCuQrVlH7uFkpLIo5UAztZbZ+q0uruDg=;
        b=LkJJFSsjpO61Jp14byPTaRWT+ibOEPctOMLz0F8e/LVf2rtUfMj4DQbkfIKsR9qvnQ
         aUyZ90KznaEswAQ9eQxCMAMBpAlsMw37ukhh4fQ4qW5+/toDZIbFRHScvq6rLVvuf4Pa
         UI10TJI5HGf2xYHchoKcDPOKPlsBJDYLaSMbpgLinaO17s6+RoMhxRSCAKxwkXG1Jv4f
         h5TWOKHWRinQY9fwkfyRqJShIppCW67Q2xjPA2rPedcAdW+wq5VGENBkF0sHt3GewcDe
         YgUpb2g/rL73FKGDWsL5G3RyeEJn6qEVCa7mF/EhQqQUYHVMsuDqu9NPTkMXtoA0FO2x
         wQ6A==
X-Gm-Message-State: AOAM532rvBVfmrILMcvGbAowEwVnnYcBqO8sQVt72aEqfwj9uPCtqVdg
        7lOAdhcbnsoICOC3hG35Hg==
X-Google-Smtp-Source: ABdhPJxhpqPdOv9Ynml0riATf5RK2oM/+xJ1gQ82nyiGmAX3VXFVnDJca9dH0C5O1kdFOeqrzpIcbQ==
X-Received: by 2002:a02:3505:: with SMTP id k5mr4131416jaa.123.1626357252998;
        Thu, 15 Jul 2021 06:54:12 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n14sm2908372ili.22.2021.07.15.06.54.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jul 2021 06:54:12 -0700 (PDT)
Received: (nullmailer pid 968556 invoked by uid 1000);
        Thu, 15 Jul 2021 13:54:10 -0000
From:   Rob Herring <robh@kernel.org>
To:     Dong Aisheng <aisheng.dong@nxp.com>
Cc:     kernel@pengutronix.de, devicetree@vger.kernel.org,
        robh+dt@kernel.org, shawnguo@kernel.org, dongas86@gmail.com,
        linux-imx@nxp.com, linux-arm-kernel@lists.infradead.org
In-Reply-To: <20210715082536.1882077-7-aisheng.dong@nxp.com>
References: <20210715082536.1882077-1-aisheng.dong@nxp.com> <20210715082536.1882077-7-aisheng.dong@nxp.com>
Subject: Re: [PATCH 6/7] dt-bindings: soc: imx: add missing iomuxc gpr binding
Date:   Thu, 15 Jul 2021 07:54:10 -0600
Message-Id: <1626357250.406964.968555.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 15 Jul 2021 16:25:35 +0800, Dong Aisheng wrote:
> The General Purpose Registers IOMUXC_GPR are used to select operating
> modes for general features in the SoC, usually not related to the IOMUX
> itself.
> 
> This binding doc is generated based on the exist usage in dts
> in order to fix dt schema check failures.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
>  .../devicetree/bindings/soc/imx/fsl,gpr.yaml  | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/syscon.example.dt.yaml: iomuxc-gpr@20e0000: compatible: 'oneOf' conditional failed, one must be fixed:
	['fsl,imx6q-iomuxc-gpr', 'syscon'] is too short
	'fsl,imx53-iomuxc-gpr' was expected
	'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx6sl-iomuxc-gpr', 'fsl,imx6sll-iomuxc-gpr', 'fsl,imx6sx-iomuxc-gpr', 'fsl,imx6ul-iomuxc-gpr', 'fsl,imx7d-iomuxc-gpr']
	'fsl,imx7d-iomuxc-gpr' was expected
	'fsl,imx8mq-iomuxc-gpr' was expected
	'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx8mm-iomuxc-gpr', 'fsl,imx8mn-iomuxc-gpr', 'fsl,imx8mp-iomuxc-gpr']
	'fsl,imx6q-iomuxc-gpr' was expected
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
\ndoc reference errors (make refcheckdocs):
Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
MAINTAINERS: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt

See https://patchwork.ozlabs.org/patch/1505583

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

