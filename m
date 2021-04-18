Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC823637E6
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 23:46:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231361AbhDRVq6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 17:46:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbhDRVq6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 17:46:58 -0400
Received: from mout-p-202.mailbox.org (mout-p-202.mailbox.org [IPv6:2001:67c:2050::465:202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B08FAC06174A
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 14:46:29 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-202.mailbox.org (Postfix) with ESMTPS id 4FNk6W4JDvzQjxP;
        Sun, 18 Apr 2021 23:46:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1618782385;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=BSbzocSJtqcRqnD11Rk162GVrrcMEkMuItGwLungsBg=;
        b=AXsxauBtoib6ldGrT0Ek4ra/si98FcirSHTRgF2mlWSmlrHGm0kp9fNTtK9pSFCDFv8w6W
        YBC6L9hKLJAXReZHZyp7cTstNs7hsSAUnoATiM136HidTy7GYMJuZPkc/rdA/BXhV75WOu
        5JzO2h2wtxs1wJK4hP/NIOU4QEmVw3OXTIZVIhzuT7ilIc7FZduPha95KPfhQlBDc54tgd
        0OL4GPrnEW+EdHG85Muys2+dVKgGQ+TxJ9tFRVRrIIQqGcJ+yhjpmdTiiVnnI0ad5hYgdN
        1FLHS/E8aZYvriuvOSDxugqbZsZwNsVGU7oeEQaB4OSLbTBeGLn5pe1e83XpSg==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172]) (amavisd-new, port 10030)
        with ESMTP id i_vWG_u9kSIV; Sun, 18 Apr 2021 23:46:24 +0200 (CEST)
From:   Hauke Mehrtens <hauke@hauke-m.de>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com,
        Hauke Mehrtens <hauke@hauke-m.de>
Subject: [PATCH v2 1/3] dt-bindings: mtd: brcm,trx: Add brcm,trx-magic
Date:   Sun, 18 Apr 2021 23:46:14 +0200
Message-Id: <20210418214616.239574-2-hauke@hauke-m.de>
In-Reply-To: <20210418214616.239574-1-hauke@hauke-m.de>
References: <20210418214616.239574-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: ***
X-Rspamd-Score: 3.12 / 15.00 / 15.00
X-Rspamd-Queue-Id: 95C3B17FA
X-Rspamd-UID: 2c6a5e
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the description of an additional property which allows to
specify a custom partition parser magic to detect a trx partition.
Buffalo has multiple device which are using the trx format, but with
different magic values.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../devicetree/bindings/mtd/partitions/brcm,trx.txt          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
index b677147ca4e1..c2175d3c82ec 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
+++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
@@ -28,6 +28,11 @@ detected by a software parsing TRX header.
 Required properties:
 - compatible : (required) must be "brcm,trx"
 
+Optional properties:
+
+- brcm,trx-magic: TRX magic, if it is different from the default magic
+		  0x30524448 as a u32.
+
 Example:
 
 flash@0 {
-- 
2.30.2

