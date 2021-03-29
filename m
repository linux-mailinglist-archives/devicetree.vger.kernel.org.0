Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BFA534D353
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 17:09:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229711AbhC2PIc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 11:08:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbhC2PI0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 11:08:26 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57EC7C061574
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 08:08:26 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id a1so16351326ljp.2
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 08:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PDDmFmsHZgwdbTfVjpjnsy2iBOi2U6nao1mVmmYBSic=;
        b=NknxoUeYE+8xYhdPNOy4TCHwUS7oxr8ZVQfzM27GSP4VpPbF7/6IVGywf8ZvgLaHTo
         Mgm/UKLTFfhxbUWGeOcuNQX4L6kGmGP51YwiUFR0hD8Pbqo08sFuQDrJhTmd1S3JNYue
         EfVct2+dHyokXqR4qu49Z9Eu/YQ9luAi87+beCEJantV8kRrroyCyPpNPJU1B8QD/Caj
         1A3uTzvMVr/a4Yg7S/B0jo6vWs1gblfIYRsNHRkqNZNQrB8OxwhtvWCh0jr34HpurzJ/
         WYUrv5v9v+8NeUM/vsFTa7KNR3pV3iI89YUCuI1vQkpQd+L/szys8vREFjg5xDn2cwnA
         V2yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PDDmFmsHZgwdbTfVjpjnsy2iBOi2U6nao1mVmmYBSic=;
        b=DQjr86iIrV6gj8bFow0slTX8ApY+StpxQmVsj10eerRvASBP7SiLW8nbRmJKn9g7RD
         zPk+84yTzPBRWO4Nl0OSSiqEgkGPInUw4aNaWd5vGjntP2hM8vkrJNeENgXPzKtz29H+
         2/SPsa2aNBBymTi0fRt5l9CScFuT/26SbXLUy3vviKoOiK8MnWAxbW02tyXuY7YM6eWB
         /gIDnUt2/hWJPgXt9Kxp1g0cKZceVWxQ2dLUEP9dwwQPk7xJuC3qcerXOxR6cjgOPMHx
         53g2NIhSinsF9fTvjo0yDVuBaZTWjqYd0OyED0BJfMP2a1tHZM03PMJDK/GWoju0R1q/
         cXvw==
X-Gm-Message-State: AOAM532gH4ihhNtfMQxuYGCIV+Li/ZHe2+snHFFIZDvxPMKAa4MKWakb
        R4M0uJkEypqFr1Bkhzt1MKs=
X-Google-Smtp-Source: ABdhPJyzv+4TA8ltw+KgeNf2jfYPXfh2rNdpNFCj/iUr6AuE7N4cB3x+gwlwCt91EN/hXRPh9jYjJQ==
X-Received: by 2002:a2e:8591:: with SMTP id b17mr17952575lji.230.1617030504907;
        Mon, 29 Mar 2021 08:08:24 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id d4sm1865477lfs.45.2021.03.29.08.08.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Mar 2021 08:08:24 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ansuel Smith <ansuelsmth@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH RFC] dt-bindings: mtd: allow NVMEM cells in BCM4908 partitions
Date:   Mon, 29 Mar 2021 17:07:23 +0200
Message-Id: <20210329150723.26584-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Every MTD partition can be NVMEM provider now. It's not handled by the
shared partition.yaml so add proper "compatible" to the BCM4908.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Ideally I'd like to have:
1. partition.yaml allowing "nvmem-cells" by using nvmem-cells.yaml
2. brcm,bcm4908-partitions.yaml using partition.yaml and extending the
   compatible list by "brcm,bcm4908-firmware"

I don't know if such a solution is possible to implement using YAML?

Proposed solution (RFC) isn't a really clean one:
1. It duplicates "nvmem-cells" which is already in the nvmem-cells.yaml
2. Generic "nvmem-cells" should be part of the partition.yaml

Rob? Help? :)
---
 .../bindings/mtd/partitions/brcm,bcm4908-partitions.yaml      | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml
index 7b113e5e3421..28aa3bdd1103 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.yaml
@@ -32,7 +32,9 @@ patternProperties:
     $ref: "partition.yaml#"
     properties:
       compatible:
-        const: brcm,bcm4908-firmware
+        enum:
+          - brcm,bcm4908-firmware
+          - nvmem-cells
     unevaluatedProperties: false
 
 required:
-- 
2.26.2

