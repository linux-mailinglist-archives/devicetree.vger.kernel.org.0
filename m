Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39CEA3F596D
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 09:53:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234947AbhHXHxp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 03:53:45 -0400
Received: from lucky1.263xmail.com ([211.157.147.131]:39250 "EHLO
        lucky1.263xmail.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234705AbhHXHxo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 03:53:44 -0400
Received: from localhost (unknown [192.168.167.16])
        by lucky1.263xmail.com (Postfix) with ESMTP id 49256C2B31;
        Tue, 24 Aug 2021 15:52:59 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from localhost.localdomain (unknown [58.22.7.114])
        by smtp.263.net (postfix) whith ESMTP id P704T139881101649664S1629791566598648_;
        Tue, 24 Aug 2021 15:52:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <0251c0de1c471b486eada0e70c302daf>
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
Subject: [PATCH v1 4/7] ASoC: dt-bindings: rockchip: Add binding for rk3568 pdm
Date:   Tue, 24 Aug 2021 15:52:34 +0800
Message-Id: <1629791557-13614-4-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch documents for rk3568 pdm.

Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
---

 Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
index 60e8630..54d94438 100644
--- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
@@ -6,6 +6,7 @@ Required properties:
   - "rockchip,px30-pdm"
   - "rockchip,rk1808-pdm"
   - "rockchip,rk3308-pdm"
+  - "rockchip,rk3568-pdm"
   - "rockchip,rv1126-pdm"
 - reg: physical base address of the controller and length of memory mapped
   region.
-- 
2.7.4



