Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C72EA5A539
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2019 21:37:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726956AbfF1Th3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jun 2019 15:37:29 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:40565 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726497AbfF1Th3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jun 2019 15:37:29 -0400
Received: by mail-io1-f66.google.com with SMTP id n5so14902930ioc.7
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2019 12:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rOnt24OKyg8IYLadN6LWQaA2kEEaOS+arIfbwjhJNR4=;
        b=mrPwaMJSME/T5LZzKa4WM600nicbMkBbiMi3qcyttidiopggQ1VoxuUiboPbB3yrjW
         rDEo67tadLuzUjrKqdvnHUD+SNa0C5WhHn45iOpiodNPzR1nQy1Lsv0y079uZYaMKOuV
         SXJW8UykwePEWdBsOVbeeEr8ZpDt1xHtQqqwjgBfYZjBHu8tVDqDKzYv07qzIZFrQOP9
         IXozt7ALnh2Ba2j2kt2xjIbIg2arbMtD7E3L8nx/rLYV3PvpXR+bX/ciNVRwFrKOTH2S
         uXaKNPCkO/mI2ecHtXNyraHAxRGCHcrmTXiiyW4imDF2P3GEeS7Zp+A43FMMlucBuLam
         H01w==
X-Gm-Message-State: APjAAAWZeFz12XSDgwfDIteYH64iywixe33liLFkPDTHxkW1SjyI4DvO
        iYXr3zH19NaCt8DVreLfrvyR69U=
X-Google-Smtp-Source: APXvYqxtxWXQqs4yhNzHBeBOuvHhYb9tx5z9qryUXj1LZrI9tRYnL6j8xUuN4/7v7qTG4as0xfM0hw==
X-Received: by 2002:a02:cd83:: with SMTP id l3mr10927291jap.66.1561750647827;
        Fri, 28 Jun 2019 12:37:27 -0700 (PDT)
Received: from localhost.localdomain ([64.188.179.243])
        by smtp.googlemail.com with ESMTPSA id q15sm3160061ioi.15.2019.06.28.12.37.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 28 Jun 2019 12:37:27 -0700 (PDT)
From:   Rob Herring <robh@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     David Woodhouse <dwmw2@infradead.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Marek Vasut <marek.vasut@gmail.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Chen-Yu Tsai <wens@csie.org>, linux-mtd@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: mtd: sunxi-nand: Drop 'maxItems' from child 'reg' property
Date:   Fri, 28 Jun 2019 13:35:25 -0600
Message-Id: <20190628193525.7785-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mixing 'maxItems' and scalar properties doesn't make much sense, so drop
'maxItems' as a single item is implied.

Cc: David Woodhouse <dwmw2@infradead.org>
Cc: Brian Norris <computersforpeace@gmail.com>
Cc: Marek Vasut <marek.vasut@gmail.com>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Richard Weinberger <richard@nod.at>
Cc: Vignesh Raghavendra <vigneshr@ti.com>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>
Cc: Chen-Yu Tsai <wens@csie.org>
Cc: linux-mtd@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
I'll take this in the DT tree if that's okay.

Rob

 .../devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml        | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
index fbd4da3684fc..e5a411518be1 100644
--- a/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
+++ b/Documentation/devicetree/bindings/mtd/allwinner,sun4i-a10-nand.yaml
@@ -57,7 +57,6 @@ patternProperties:
   "^nand@[a-f0-9]+$":
     properties:
       reg:
-        maxItems: 1
         minimum: 0
         maximum: 7
 
-- 
2.20.1

