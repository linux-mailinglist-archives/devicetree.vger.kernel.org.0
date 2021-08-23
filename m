Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C86173F491F
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 12:56:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234848AbhHWK4T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 06:56:19 -0400
Received: from lucky1.263xmail.com ([211.157.147.135]:50296 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234155AbhHWK4T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 06:56:19 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id DCD88B3093;
        Mon, 23 Aug 2021 18:55:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881101649664S1629716134945191_;
        Mon, 23 Aug 2021 18:55:36 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <bc868ea177add38df43f5a8a82a6c213>
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
Subject: [PATCH 15/15] ASoC: dt-bindings: rockchip: i2s: Document property 'clk-trcm'
Date:   Mon, 23 Aug 2021 18:55:32 +0800
Message-Id: <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch documents property 'rockchip,clk-trcm' which is used
to specify the lrck.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Change-Id: I648142c57c568bbed209f2b9188b1f539a3285b2
---
 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 11e911a..8d9dfed 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -72,6 +72,15 @@ properties:
   resets:
     maxItems: 2
 
+  rockchip,clk-trcm:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description:
+      tx and rx lrck/bclk common use.
+      0: both tx_lrck/bclk and rx_lrck/bclk are used
+      1: only tx_lrck/bclk is used
+      2: only rx_lrck/bclk is used
+
   rockchip,capture-channels:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 2
-- 
2.7.4



