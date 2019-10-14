Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 58ED8D6B9F
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2019 00:19:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731779AbfJNWTU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 18:19:20 -0400
Received: from foss.arm.com ([217.140.110.172]:53492 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731771AbfJNWTU (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Oct 2019 18:19:20 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CB67628;
        Mon, 14 Oct 2019 15:19:19 -0700 (PDT)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id BE31F3F68E;
        Mon, 14 Oct 2019 15:19:18 -0700 (PDT)
From:   Robin Murphy <robin.murphy@arm.com>
To:     heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/3] dt-bindings: ARM: rockchip: Add Beelink A1
Date:   Mon, 14 Oct 2019 23:19:04 +0100
Message-Id: <82324d17b770fa8ea189fa708490d2c8c0c9290e.1571090991.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a binding for the RK3328-based Beelink A1 TV box.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c82c5e57d44c..f27f7805f57e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -40,6 +40,11 @@ properties:
           - const: asus,rk3288-tinker-s
           - const: rockchip,rk3288
 
+      - description: Beelink A1
+        items:
+          - const: azw,beelink-a1
+          - const: rockchip,rk3328
+
       - description: bq Curie 2 tablet
         items:
           - const: mundoreader,bq-curie2
-- 
2.17.1

