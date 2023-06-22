Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D8A973AB5F
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 23:15:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230421AbjFVVPp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 17:15:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231348AbjFVVPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 17:15:40 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D54F1FE6
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 14:15:37 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687468536;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=shq6eIf1Igmp6UuUM0YmQ0o6buoOqSPsVoSLfWuQDE4=;
        b=YXXM+ISE3PG+CiOGmSWza2HcFjkiq7troiVe7r0rJGyRRBLrkudRQ5jcEp4SBCyShkfGEA
        XLufXbEGmsErI/N7towq/l0uH0qw/J1zboo+HCHqcOzPbXAsamGqFLHDG4GqstDXAictms
        OHu3yL6TWHgNEUmxv8F+pIPNasmualQ8ujtQviFExOpOwJRwSrVa9/0na+ffM2GSErKD51
        vIlD5F8IcFqvWcnfAm3TeEkSvutFnoo6oRSwkgSqjtGp66AWEqKuLnchdgyQCsWU4q0KHg
        7wvE3rUQjFpLlKZJfpVQyOIIh2U+qfgQXrQRPwchQ2aHkzNp+/HyG67BfMckDw==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id EF9C61BF208;
        Thu, 22 Jun 2023 21:15:34 +0000 (UTC)
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
        Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 12/17] dt-bindings: mtd: intel: Prevent NAND chip unevaluated properties
Date:   Thu, 22 Jun 2023 23:15:32 +0200
Message-Id: <20230622211532.3581748-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-13-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'1dcd314282957c3ed8e5faba1641b6382fe13b90'
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

On Mon, 2023-06-19 at 09:29:11 UTC, Miquel Raynal wrote:
> nand-ecc-mode is a generic property which may apply to any raw NAND
> chip, it does not need to be listed in each controller
> description. Instead, let's reference the raw NAND chip description file
> which contains the property. The description contained
> "additionalProperties: false" which is wrong as other properties such as
> partitions might very well be added in the final .dts, and anyway needs
> to be converted into "unexpectedProperties: false" to fit the property
> change new requirements.
> 
> Cc: Vadivel Murugan <vadivel.muruganx.ramuthevar@linux.intel.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
