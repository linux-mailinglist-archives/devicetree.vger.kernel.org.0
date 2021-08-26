Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 361123F816D
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 06:03:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229838AbhHZEEG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 00:04:06 -0400
Received: from lucky1.263xmail.com ([211.157.147.134]:51622 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbhHZEEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 00:04:05 -0400
Received: from localhost (unknown [192.168.167.235])
        by lucky1.263xmail.com (Postfix) with ESMTP id DFD40CFCC9;
        Thu, 26 Aug 2021 12:03:16 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P32763T139760853055232S1629950596113927_;
        Thu, 26 Aug 2021 12:03:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b91674cd3eccff5bace9ca0b87a4b509>
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
Subject: [PATCH v3 11/14] ASoC: dt-bindings: rockchip: Add compatible strings for more SoCs
Date:   Thu, 26 Aug 2021 12:03:11 +0800
Message-Id: <1629950594-14345-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629950441-14118-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds compatible strings for more SoCs.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
Acked-by: Rob Herring <robh@kernel.org>
---

Changes in v3: None
Changes in v2: None

 Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
index 9f9cc48..5ea16b8 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
@@ -20,7 +20,9 @@ properties:
       - items:
           - enum:
               - rockchip,px30-i2s
+              - rockchip,rk1808-i2s
               - rockchip,rk3036-i2s
+              - rockchip,rk3128-i2s
               - rockchip,rk3188-i2s
               - rockchip,rk3228-i2s
               - rockchip,rk3288-i2s
@@ -29,6 +31,7 @@ properties:
               - rockchip,rk3366-i2s
               - rockchip,rk3368-i2s
               - rockchip,rk3399-i2s
+              - rockchip,rv1126-i2s
           - const: rockchip,rk3066-i2s
 
   reg:
-- 
2.7.4



