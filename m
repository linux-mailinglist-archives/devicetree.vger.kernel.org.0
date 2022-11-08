Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D9CFF620C3F
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 10:31:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233417AbiKHJbL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 04:31:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233264AbiKHJbK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 04:31:10 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE78712620
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 01:31:09 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id l8so20179183ljh.13
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 01:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ftbevrgtih63VaCsliryG3KSGXdgekb5SUTzoftgRy8=;
        b=K0ReUNEtSMEujlwjW/cq6kOWPxMWv88ZPD/lememy7+WkqQ5PYSv37AtqLYtiI32Pe
         j6MNxHKLdLz3YK1n6Dwl4xXgNs4KMPzJNbZkvIu0r7r9wmeTPky+VPXJEqxyYQcWkPbH
         61s79UMBCtgxuMb2DjRKr3eUI6CDBJIMB6w+ELcNjUJliJaxtxfsY9xcLftsTff4d9Bg
         OvcphL9UTobvRIynSq0zyQ/b3folaM2kF/Vyo2Lh/ywu/HiXcrgGde2Y/J7yB4ViL4UM
         UMcCSEglkn//0tIN35NUFrbP89xPHuuXJKjmQtiSQaxnqav3Hzv0YrOoDZNFpjGft82u
         hUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ftbevrgtih63VaCsliryG3KSGXdgekb5SUTzoftgRy8=;
        b=1Q3PfPIpBG5p+1kRFYozvN9dfLvj06Z0kRv1bmE/IiN3O0Fck/F4bVCx9kxQ9VV6sv
         Snw3sZ7cUS+c4JViaL7xtbNMwVidsLGRNDMFQ3m9pYJgUsCixiNQtCe92MYex4iNRRbd
         RzkLTeYXgrRkBzsLK9aKKrPuqmeHGFiUkZ0DpMjfhzgroc2qlOTp+a7YM43vu9vmft3b
         7pp+2kq4zEuLb4P14JkhP3dFarpkc24oM5FkWdnK/z9WJpxW3IVfSb1cg7nWlISyR97w
         4Mt8QCKgzZrWf22QDp18Dl+sytT9DE1ujJMi86kD+vamzW1oNLB+BpDXj1o4usXESv3Z
         nohQ==
X-Gm-Message-State: ACrzQf0hHVmafS0RZKHnhpZJJrRsZlWAU/GHWpJndI9eeSrcMHGkbszo
        9uvMzLbicx4BypOtNmwoxlO0qiRG1UE=
X-Google-Smtp-Source: AMsMyM5GSzFDSGW+7ZDlfd7Q4hqT/SORFzaWiOMga5/UO3X85bIb4VgHLJAQ0UWp18TW7yMRzpt5sQ==
X-Received: by 2002:a2e:8884:0:b0:277:693c:83b with SMTP id k4-20020a2e8884000000b00277693c083bmr12074951lji.68.1667899867880;
        Tue, 08 Nov 2022 01:31:07 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id bf20-20020a2eaa14000000b0027708921b43sm1617772ljb.68.2022.11.08.01.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 01:31:07 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH mtd/next] dt-bindings: mtd: partitions: allow SafeLoader dynamic subpartitions
Date:   Tue,  8 Nov 2022 10:31:02 +0100
Message-Id: <20221108093102.8360-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

TP-Link SafeLoader partitioning means flash contains multiple partitions
defined in the on-flash table. Some of those partitions may have a
special meaning and may require describing additionally. Allow that.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../mtd/partitions/tplink,safeloader-partitions.yaml      | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/tplink,safeloader-partitions.yaml b/Documentation/devicetree/bindings/mtd/partitions/tplink,safeloader-partitions.yaml
index 63e596aa0ca3..a24bbaac3a90 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/tplink,safeloader-partitions.yaml
+++ b/Documentation/devicetree/bindings/mtd/partitions/tplink,safeloader-partitions.yaml
@@ -36,6 +36,10 @@ properties:
     description: Flash offset of partitions table
     $ref: /schemas/types.yaml#/definitions/uint32
 
+patternProperties:
+  "^partition-.*$":
+    $ref: partition.yaml#
+
 required:
   - partitions-table-offset
 
@@ -46,4 +50,8 @@ examples:
     partitions {
         compatible = "tplink,safeloader-partitions";
         partitions-table-offset = <0x100000>;
+
+        partition-file-system {
+                linux,rootfs;
+        };
     };
-- 
2.34.1

