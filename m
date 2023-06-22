Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34AD273AB60
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 23:15:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbjFVVPq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 17:15:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbjFVVPn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 17:15:43 -0400
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::222])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE0A3195
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 14:15:42 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687468541;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=qBwpb6O8gOJO9lxqmqmkmvdblU9YRJxWJ6zueaHRnTY=;
        b=C1P0NHB6cLpXmU/dApzPdkHDgPhcMZFb2v2Z7rdkGar/4Zi3exoBNOqc4d6EgwvQLy21Tb
        G5/Fe1bRbtl5QQqY5ZVL3ukiwZnyXDP2KcA9O1gHMwGKs+Eh7Biduhgp4hiO0F2nMBSzzS
        RG3VXT1UK19CP3kYMqYVau/F//RcOqDuYA6/ryyHmcgko1bN/k5EHOK/voSqkXhdmkRIPz
        ESIGYxP3F4YuQ/QaBmOvLA28F9y2ClumcGxEy4sOebpibaBcCawJLJoaNHxQYJTYk5F40W
        kPlCpMKuCSbJHsitIcUxZiC5uA0m19KBkOOfanRnAaWgnejrPXEBHh1nsPT8zA==
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
Received: by mail.gandi.net (Postfix) with ESMTPSA id C961240004;
        Thu, 22 Jun 2023 21:15:39 +0000 (UTC)
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
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 11/17] dt-bindings: mtd: denali: Prevent NAND chip unevaluated properties
Date:   Thu, 22 Jun 2023 23:15:38 +0200
Message-Id: <20230622211538.3581778-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-12-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'129a70a17cfc4140fd4f1dd6e1f5e767248c8c74'
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

On Mon, 2023-06-19 at 09:29:10 UTC, Miquel Raynal wrote:
> Ensure all raw NAND chip properties are valid by referencing the
> relevant schema and set unevaluatedProperties to false in the NAND chip
> section to avoid spurious additions of random properties.
> 
> Doing this in one location also saves us from dupplicating the
> description of the NAND chip object.
> 
> Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
