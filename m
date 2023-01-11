Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3B0D665BA5
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 13:42:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbjAKMmR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 07:42:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231561AbjAKMmQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 07:42:16 -0500
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 684A4FD
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 04:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1673440933; x=1704976933;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=FeXSfRPGd8xhCAtzipIIL/gUED63SxlprpqjkBJE7SE=;
  b=PrxIRBn2rENYHwiysCQ+0MdILLw40e9Upij3yLcQ/F5c2bex2n9StKwG
   wjkp2nn3PVPtPnjBaYKXgpTZ8fYpAl8rKAGW4PEBHtt0GssJgq/AE8t7M
   hHYAQ0x3gh0Ix//9fLnogWI2Oa3W/6kT0em6m2hdZws7oAPQDW2DZb3/M
   h6/zNjC8MN1jTql2Z/ZASlkS+HG0DUa6r+cgUZxK/ylOXnZRc/xkfGjce
   639pWjilmBHhVVe97LHYNWDDa7r3ocHUTgULSZTJf6bGrKBsgH2JmmJWX
   sLqHisqgNe1Ki6z9Hb7RXWkxsa6xEW8qLYRquyB8uw5QTJoaieVlWPO/S
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; 
   d="scan'208";a="207309527"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 11 Jan 2023 05:42:12 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 05:42:11 -0700
Received: from wendy.microchip.com (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2507.16 via Frontend
 Transport; Wed, 11 Jan 2023 05:42:10 -0700
From:   Conor Dooley <conor.dooley@microchip.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>
CC:     Daire McNamara <daire.mcnamara@microchip.com>,
        <devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/3] dt-bindings: riscv: microchip: document the Aldec TySoM
Date:   Wed, 11 Jan 2023 12:41:06 +0000
Message-ID: <20230111124106.2417152-3-conor.dooley@microchip.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230111124106.2417152-1-conor.dooley@microchip.com>
References: <20230111124106.2417152-1-conor.dooley@microchip.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TySOM-M-MPFS250 is a compact SoC prototyping board featuring
a Microchip PolarFire SoC MPFS250T-FCG1152.
Document rev2 of this board.

Link: https://www.aldec.com/en/products/emulation/tysom_boards/polarfire_microchip/tysom_m_mpfs250
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v2:
- added rev2 to the compatible. I kept the ack as you can tell Krzysztof
---
 Documentation/devicetree/bindings/riscv/microchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/riscv/microchip.yaml b/Documentation/devicetree/bindings/riscv/microchip.yaml
index 714d0fcab399..4a29c890619a 100644
--- a/Documentation/devicetree/bindings/riscv/microchip.yaml
+++ b/Documentation/devicetree/bindings/riscv/microchip.yaml
@@ -27,6 +27,7 @@ properties:
 
       - items:
           - enum:
+              - aldec,tysom-m-mpfs250t-rev2
               - aries,m100pfsevp
               - microchip,mpfs-sev-kit
               - sundance,polarberry
-- 
2.39.0

