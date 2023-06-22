Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D57C573AB69
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 23:16:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231191AbjFVVQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 17:16:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230460AbjFVVQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 17:16:26 -0400
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CA4410F4
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 14:16:24 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687468582;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=McJighaOCHb5rxDyKbDgKD22+j9SQIwBSAnPQLzMicg=;
        b=f86jO6fOe5wlIw2g5AUB4B+K+VuH3Qos8+3KKfm5ZQxr7+aCIQ6i1dvp/10EPCLYZlW1xe
        xMnGzWqvNvVhmzyusZESlzIwG75TbMrhc+OCLpUnIkWFb07fTuaTZDlftn5PFh6m+IEH6X
        eeToMdkob+bdjg6XcdMh6cGzUJg5GlA/yScUzOyS6zJWcC+dp7PyexzWj0XCRxTHMJGlxX
        mjHLiywkd+paTNCt11Z9UBCUu+9JRsVpSprHqTtMEQ9PdvvxGFVAIUqYbqkrHLzdcrOJqY
        GZHNxbQLbTSC3+C9Dtq9x+fdIzmSTFz31hDflTXrw9d6VuWOR6KVoV9t+TkPIw==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id 91F5F60003;
        Thu, 22 Jun 2023 21:16:19 +0000 (UTC)
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
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 02/17] dt-bindings: mtd: Create a file for raw NAND chip properties
Date:   Thu, 22 Jun 2023 23:16:17 +0200
Message-Id: <20230622211618.3582389-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-3-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'46721a1c9f829fe934eb1ec03e19b9e2896b995a'
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

On Mon, 2023-06-19 at 09:29:01 UTC, Miquel Raynal wrote:
> In an effort to constrain as much as we can the existing binding, we
> want to add "unevaluatedProperties: false" in all the NAND chip
> descriptions part of NAND controller bindings. But in order to do that
> properly, we also need to reference a file which contains all the
> "allowed" properties. Right now this file is nand-chip.yaml but in
> practice raw NAND controllers may use additional properties in their
> NAND chip children node. These properties are listed under
> nand-controller.yaml, which makes the "unevaluatedProperties" checks
> fail while the description are valid. We need to move these NAND chip
> related properties into another file, because we do not want to pollute
> nand-chip.yaml which is also referenced by eg. SPI-NAND devices.
> 
> Let's create a raw-nand-chip.yaml file to reference all the properties a
> raw NAND chip description can contain. The chain of inheritance becomes:
>   nand-controller.yaml <- raw-nand-chip.yaml
>   raw-nand-chip.yaml   <- nand-chip.yaml
>   spi-nand.yaml        <- nand-chip.yaml
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
