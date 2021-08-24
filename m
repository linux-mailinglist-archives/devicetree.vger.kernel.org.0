Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10B843F5974
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 09:54:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234874AbhHXHzI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 03:55:08 -0400
Received: from lucky1.263xmail.com ([211.157.147.133]:46480 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234734AbhHXHzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 03:55:07 -0400
Received: from localhost (unknown [192.168.167.70])
        by lucky1.263xmail.com (Postfix) with ESMTP id CAE29D654F;
        Tue, 24 Aug 2021 15:54:20 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P22778T140142459205376S1629791658930605_;
        Tue, 24 Aug 2021 15:54:20 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <28c30aa4d5dcf3f0e4306d245def5c55>
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
Subject: [PATCH v1 6/7] ASoC: dt-bindings: rockchip: pdm: Document property 'rockchip,path-map'
Date:   Tue, 24 Aug 2021 15:54:15 +0800
Message-Id: <1629791656-13698-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is an optional property to describe data path mapping.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
index 54d94438..b2d7e47 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
@@ -24,6 +24,22 @@ Required properties:
 	     pinctrl-names. See ../pinctrl/pinctrl-bindings.txt
 	     for details of the property values.
 
+Optional properties:
+- rockchip,path-map: This is a variable length array, that shows the mapping
+  of SDIx to PATHx. By default, they are one-to-one mapping as follows:
+
+   path0 <-- sdi0
+   path1 <-- sdi1
+   path2 <-- sdi2
+   path3 <-- sdi3
+
+  e.g. "rockchip,path-map = <3 2 1 0>" means the mapping as follows:
+
+   path0 <-- sdi3
+   path1 <-- sdi2
+   path2 <-- sdi1
+   path3 <-- sdi0
+
 Example for rk3328 PDM controller:
 
 pdm: pdm@ff040000 {
-- 
2.7.4



