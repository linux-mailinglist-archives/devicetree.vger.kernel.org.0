Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C044B729E76
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 17:27:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238515AbjFIP15 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 11:27:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239932AbjFIP1z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 11:27:55 -0400
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [217.70.183.195])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4459D2D70
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 08:27:51 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686324470;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=/+7IAwP96oZESKh99Ayico9fsf/vk2Nmi+qqamobINk=;
        b=EEdwhi0UZb0AG50ITx4a/Gob4DIa5pesN3xxggvxBYDPNcFZPrbxyroIKUWFvsp/egMLqJ
        xBk4KGkQJfBJqV+GJ4y7hxZ9QpFIJJkuuxQavbxBoMUV4NOQPWCe9LFWKruWlEo36E2Ujy
        Ct3NzkBghBJclhG6rA/u3ffFpjYKGhTBPfn+mImnHND1dkET06B3vuFdYmIVIW3SldWRd0
        8yS9vsdr/kbBZ9vVK7ndKCjLKTeU0fonic+AxLMQEcgXZVNP/nlIV4zL86eiGAZh22WhV/
        7J9HsP1E/zHSvszyV38OND2YmsclocwwzuK9YjLMBYv3eUVrYj4rQOc0uxIE9w==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 4E73A60002;
        Fri,  9 Jun 2023 15:27:48 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Pratyush Yadav <ptyadav@amazon.de>, Dhruva Gole <d-gole@ti.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?utf-8?b?UmFm?= =?utf-8?b?YcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] dt-bindings: mtd: partitions: Include TP-Link SafeLoader in allowed list
Date:   Fri,  9 Jun 2023 17:27:47 +0200
Message-Id: <20230609152747.1188598-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230602215629.2568-1-zajec5@gmail.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'7c74557f59e8880f079121e3cf8d5875f3e7e99d'
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 2023-06-02 at 21:56:29 UTC, =?utf-8?b?UmFmYcWCIE1pxYJlY2tp?= wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> It's supposed to be there and it's needed for proper validation of DTS
> files.
> 
> This fixes following errors for Northstar based TP-Link routers:
> 
> arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: 'oneOf' conditional failed, one must be fixed:
>         'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: 'pinctrl-[0-9]+'
>         '#address-cells' is a required property
>         '#size-cells' is a required property
>         'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition@[0-9a-f]+$', 'pinctrl-[0-9]+'
>         'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition-[0-9a-z]+$', 'pinctrl-[0-9]+'
>         'fis-index-block' is a required property
>         arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions:compatible: 'oneOf' conditional failed, one must be fixed:
>                 ['tplink,safeloader-partitions'] is too short
>                 'fixed-partitions' was expected
>                 'sercomm,sc-partitions' was expected
>         'arm,arm-firmware-suite' was expected
>         'brcm,bcm4908-partitions' was expected
>         'brcm,bcm947xx-cfe-partitions' was expected
>         'linksys,ns-partitions' was expected
>         'qcom,smem-part' was expected
>         'redboot-fis' was expected
>         From schema: Documentation/devicetree/bindings/mtd/mtd.yaml
> arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: Unevaluated properties are not allowed ('partitions-table-offset' was unexpected)
>         From schema: Documentation/devicetree/bindings/mtd/mtd.yaml
> arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: 'oneOf' conditional failed, one must be fixed:
>         'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: 'pinctrl-[0-9]+'
>         '#address-cells' is a required property
>         '#size-cells' is a required property
>         'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition@[0-9a-f]+$', 'pinctrl-[0-9]+'
>         'partition-file-system', 'partition-os-image', 'partitions-table-offset' do not match any of the regexes: '^partition-[0-9a-z]+$', 'pinctrl-[0-9]+'
>         'fis-index-block' is a required property
>         arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions:compatible: 'oneOf' conditional failed, one must be fixed:
>                 ['tplink,safeloader-partitions'] is too short
>                 'fixed-partitions' was expected
>                 'sercomm,sc-partitions' was expected
>         'arm,arm-firmware-suite' was expected
>         'brcm,bcm4908-partitions' was expected
>         'brcm,bcm947xx-cfe-partitions' was expected
>         'linksys,ns-partitions' was expected
>         'qcom,smem-part' was expected
>         'redboot-fis' was expected
>         From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: partitions: Unevaluated properties are not allowed ('partitions-table-offset' was unexpected)
>         From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> arch/arm/boot/dts/bcm47081-tplink-archer-c5-v2.dtb: flash@0: Unevaluated properties are not allowed ('partitions' was unexpected)
>         From schema: Documentation/devicetree/bindings/mtd/jedec,spi-nor.yaml
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git mtd/next, thanks.

Miquel
