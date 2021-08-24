Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E5413F5AD7
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 11:18:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235766AbhHXJTL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 05:19:11 -0400
Received: from lucky1.263xmail.com ([211.157.147.130]:60294 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235463AbhHXJTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 05:19:04 -0400
Received: from localhost (unknown [192.168.167.235])
        by lucky1.263xmail.com (Postfix) with ESMTP id 02BECD789D;
        Tue, 24 Aug 2021 17:18:19 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P32763T139760842565376S1629796684553502_;
        Tue, 24 Aug 2021 17:18:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <56ef41c46411f9c2e8d17b347da2027f>
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
Subject: [PATCH v2 10/15] ASoC: dt-bindings: rockchip: i2s: Document property for playback/capture
Date:   Tue, 24 Aug 2021 17:17:57 +0800
Message-Id: <1629796682-4170-5-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch documents property for playback-only and capture-only.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

Changes in v2: None

 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 9f9cc48..005b6e6 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -81,6 +81,16 @@ properties:
     description:
       Max playback channels, if not set, 8 channels default.
 
+  rockchip,capture-only:
+    type: boolean
+    description:
+      Specify that the controller has capture only capability.
+
+  rockchip,playback-only:
+    type: boolean
+    description:
+      Specify that the controller has playback only capability.
+
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-- 
2.7.4



