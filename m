Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 504123F816F
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 06:03:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231187AbhHZEEH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 00:04:07 -0400
Received: from lucky1.263xmail.com ([211.157.147.134]:51644 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229891AbhHZEEG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 00:04:06 -0400
Received: from localhost (unknown [192.168.167.235])
        by lucky1.263xmail.com (Postfix) with ESMTP id 6F8C7CFCFB;
        Thu, 26 Aug 2021 12:03:18 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P32763T139760853055232S1629950596113927_;
        Thu, 26 Aug 2021 12:03:18 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a43c9b1542bb633791a964ed3d21f9cf>
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
Subject: [PATCH v3 14/14] ASoC: dt-bindings: rockchip: i2s: Document property TRCM
Date:   Thu, 26 Aug 2021 12:03:14 +0800
Message-Id: <1629950594-14345-4-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch documents property 'rockchip,trcm-sync-tx-only/rx-only'
which is used to specify the lrck.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes in v3: None
Changes in v2:
- split property trcm into single 'trcm-sync-tx-only' and
  'trcm-sync-rx-only' suggested by Nicolas.
- drop change-id

 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 5ea16b8..a2f8244 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -91,6 +91,14 @@ properties:
       Required property for controllers which support multi channel
       playback/capture.
 
+  rockchip,trcm-sync-tx-only:
+    type: boolean
+    description: Use TX LRCK for both TX and RX.
+
+  rockchip,trcm-sync-rx-only:
+    type: boolean
+    description: Use RX LRCK for both TX and RX.
+
   "#sound-dai-cells":
     const: 0
 
-- 
2.7.4



