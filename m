Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0743F73AB66
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 23:16:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbjFVVQM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 17:16:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230138AbjFVVQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 17:16:11 -0400
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A04F31BD0
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 14:16:08 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687468567;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Tou6OBIwRCwHrBS1M1rC3ydLv/9U/sDpan7Bc3k1YZs=;
        b=WHeGUDhDudhdA6XXODki9YFTbwWRcgl8ecInnGeIqbQo+gaOXmAIismTsT0z4Tw2jNIBUn
        WFBQ80gjs03G1B3qiy6o776l6guix9bjq8nhjyPbnvg3TfUH9H3UutVLk+vFjf+2IsuG7x
        TVX3Q94+OEsxnRJLciKQy34YxbRy2BZ/7gbW8S7yF+wRJqafFeiQry/MJyQHckSWHJ8dBX
        e1QVb6ESWKmyn5WwOJDfQ8yegi8nk5Jjk+pfnbO3D3ldhfmZgQm7qjnnlujgcsjAZnI6CZ
        cbDwOH5A38ZCY1/7I/AvOWme520/EevVgQTyROZPd7jgL2r1gkaq5ejDJ87LEg==
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
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 0FB7840006;
        Thu, 22 Jun 2023 21:16:05 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Chris Packham <Chris.Packham@alliedtelesis.co.nz>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v3 05/17] dt-bindings: mtd: qcom: Fix a property position
Date:   Thu, 22 Jun 2023 23:16:04 +0200
Message-Id: <20230622211604.3581938-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-6-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'411a1215a07904cafbea683f4b2908f1310946a1'
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 2023-06-19 at 09:29:04 UTC, Miquel Raynal wrote:
> qcom,boot-partitions is a NAND chip property, not a NAND controller
> property. Move the description of the property into the NAND chip
> section and just enable the property in the if/else block.
> 
> Fixes: 5278cc93a97f ("dt-bindings: mtd: qcom_nandc: document qcom,boot-partitions binding")
> Cc: Manivannan Sadhasivam <mani@kernel.org>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
