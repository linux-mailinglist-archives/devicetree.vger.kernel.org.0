Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8082D3F8167
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 06:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231168AbhHZEDf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 00:03:35 -0400
Received: from lucky1.263xmail.com ([211.157.147.131]:54986 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231187AbhHZEDf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 00:03:35 -0400
Received: from localhost (unknown [192.168.167.70])
        by lucky1.263xmail.com (Postfix) with ESMTP id 11346C298F;
        Thu, 26 Aug 2021 12:02:47 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P22778T140142501164800S1629950564011175_;
        Thu, 26 Aug 2021 12:02:46 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <fe8e0adf6e5e9d8c7eeb11273a010617>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: broonie@kernel.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From:   Sugar Zhang <sugar.zhang@rock-chips.com>
To:     broonie@kernel.org, heiko@sntech.de
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: [PATCH v3 07/14] ASoC: dt-bindings: rockchip: Document reset property for i2s
Date:   Thu, 26 Aug 2021 12:02:35 +0800
Message-Id: <1629950562-14281-2-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch documents reset property for i2s.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 245895b..9f9cc48 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -61,6 +61,14 @@ properties:
   power-domains:
     maxItems: 1
 
+  reset-names:
+    items:
+      - const: reset-m
+      - const: reset-h
+
+  resets:
+    maxItems: 2
+
   rockchip,capture-channels:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 2
-- 
2.7.4



