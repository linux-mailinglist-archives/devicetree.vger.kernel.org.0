Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0A1A389A61
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 02:18:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229681AbhETATd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 20:19:33 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:37762 "EHLO
        mail-ot1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229525AbhETATd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 20:19:33 -0400
Received: by mail-ot1-f50.google.com with SMTP id v19-20020a0568301413b0290304f00e3d88so13366089otp.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 17:18:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=rfubOJno7rnZfcmxfaq9FuY544FZq7RPYg4byIShu/0=;
        b=aEnUKgPGod92v0HVlPFPs8qYfQ6xRXFrSK7RRCCuRMIHaZYD90R5Ssd7YhZKCgfrXi
         FiKPKLFchM4R+sgGUlMbUHpsvVrTA2LP4ry8HvNsMxGZvb5s4y89DIGD2EaDatTjzvoX
         hR+pd3I9THwr+KFhubBhKi96d787aZN6NM3kFTVml1x1Appurf3U1/32mGfwtbZnpZah
         bxbNIkAvDSGCnyKBggIvktm5C+XxNZB6rApSmZlwHIjAB3bDRxPFkbxTz8ZKTU5o60Rp
         ycp5d5khsYQOSyzIc76Vhs7jeS0ZTmilTZf59eDsY5Z7bcimKD/DWoi1kz6O//m8zfUB
         eUYg==
X-Gm-Message-State: AOAM532mChqw2mHIoJp4NgsZynAcNBnkCvIzcr8WxiL6+lLUXycXwOhi
        kq6zSzC9UZPmMw+Ep2nCwQ==
X-Google-Smtp-Source: ABdhPJxu55tlzcQrYvvI4bjUSD6P1xiUDlsnE6S5OnHx79RcXdAUwKLhS+8UaUzMldWkvNVqWYzmSw==
X-Received: by 2002:a9d:269:: with SMTP id 96mr1764305otb.222.1621469892748;
        Wed, 19 May 2021 17:18:12 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id d19sm213284oop.26.2021.05.19.17.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 17:18:12 -0700 (PDT)
Received: (nullmailer pid 3946397 invoked by uid 1000);
        Thu, 20 May 2021 00:18:10 -0000
From:   Rob Herring <robh@kernel.org>
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        linux-mtd@lists.infradead.org,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        Michal Simek <monstr@monstr.eu>,
        Richard Weinberger <richard@nod.at>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        devicetree@vger.kernel.org,
        Helmut Grohne <helmut.grohne@intenta.de>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>
In-Reply-To: <20210519182636.1110080-19-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com> <20210519182636.1110080-19-miquel.raynal@bootlin.com>
Subject: Re: [PATCH v20 18/19] dt-bindings: mtd: pl353-nand: Describe this hardware controller
Date:   Wed, 19 May 2021 19:18:10 -0500
Message-Id: <1621469890.766281.3946396.nullmailer@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 May 2021 20:26:35 +0200, Miquel Raynal wrote:
> Add a yaml description of this NAND controller which is described as a
> subnode of the SMC bus.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/mtd/arm,pl353-nand-r2p1.yaml     | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.yaml:25:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.example.dts:21.11-33: Warning (reg_format): /example-0/nand-controller@0,0:reg: property has invalid length (12 bytes) (#address-cells == 1, #size-cells == 1)
Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.example.dt.yaml: Warning (pci_device_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.example.dt.yaml: Warning (pci_device_bus_num): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.example.dt.yaml: Warning (simple_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.example.dt.yaml: Warning (i2c_bus_reg): Failed prerequisite 'reg_format'
Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.example.dt.yaml: Warning (spi_bus_reg): Failed prerequisite 'reg_format'
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mtd/arm,pl353-nand-r2p1.example.dt.yaml: example-0: nand-controller@0,0:reg:0: [0, 0, 16777216] is too long
	From schema: /usr/local/lib/python3.8/dist-packages/dtschema/schemas/reg.yaml

See https://patchwork.ozlabs.org/patch/1481118

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

