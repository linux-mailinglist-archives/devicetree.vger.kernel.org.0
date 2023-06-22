Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94B5C73AB58
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 23:15:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230425AbjFVVPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 17:15:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230397AbjFVVPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 17:15:10 -0400
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A528719AB
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 14:15:09 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1687468508;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=94gitttN9rQF7Ija26fdThSBLjBY3CodgQnT8Xorylg=;
        b=Dtw7wAYNiUwxZxJ7xmQsTEOdz9SJ8s9MeFJwWnHfH0OnSMse3CiLLh8naxSpZZNMDEucr1
        dEDujFPPALm9OgXShz+zzgCnQdUNg/ccOXVTrAtu5oUlM+0N5yGeYU5/F6gmexUEoYXoRK
        /Te0WBTsv4uuRaCmjpeYzkofH0x2EWHOKBcQDBU6FdUgXkMBgINDwdrnJr32SX5vySpaSo
        SKsSZwkrqwGdKN2NkSHQAPyf3uE33/gz5ItZzNrLKLelum9HL07ElgeHO9tPjmbvkTaEgH
        FV5TzZ6G5TMjUvzF5aMCmJ+pR9bbhtn9Yzyv4rR/QR1sDK2ydMBokfccxUdbAw==
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
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E0EB21BF207;
        Thu, 22 Jun 2023 21:15:03 +0000 (UTC)
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
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Xiangsheng Hou <xiangsheng.hou@mediatek.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 16/17] dt-bindings: mtd: mediatek: Prevent NAND chip unevaluated properties
Date:   Thu, 22 Jun 2023 23:14:59 +0200
Message-Id: <20230622211500.3581569-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230619092916.3028470-17-miquel.raynal@bootlin.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: b'2beb46f04bd7a857f4994dd1085a49254d6c6602'
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

On Mon, 2023-06-19 at 09:29:15 UTC, Miquel Raynal wrote:
> nand-on-flash-bbt is a generic property which may apply to any raw NAND
> chip, it does not need to be listed in each controller
> description. The raw NAND chip description file which contains the
> property is already referenced, so no need to mention the property here
> again.
> 
> Cc: Matthias Brugger <matthias.bgg@gmail.com>
> Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> Cc: Xiangsheng Hou <xiangsheng.hou@mediatek.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Rob Herring <robh@kernel.org>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next.

Miquel
