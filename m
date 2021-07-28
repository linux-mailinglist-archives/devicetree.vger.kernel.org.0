Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E89053D92B8
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 18:08:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237849AbhG1QHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 12:07:46 -0400
Received: from mail.bonc.com.cn ([39.155.134.159]:59297 "EHLO bonc.com.cn"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S237314AbhG1QD2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Jul 2021 12:03:28 -0400
X-Greylist: delayed 384 seconds by postgrey-1.27 at vger.kernel.org; Wed, 28 Jul 2021 12:03:28 EDT
Received: from localhost.localdomain.localdomain (unknown [223.70.140.94])
        by coremail (Coremail) with SMTP id AQAAfwCnRmTpfQFhLjwiAA--.10309S2;
        Wed, 28 Jul 2021 23:55:34 +0800 (CST)
From:   Baisheng Gao <gaobaisheng@bonc.com.cn>
To:     robh+dt@kernel.org, kuba@kernel.org, davem@davemloft.net
Cc:     devicetree@vger.kernel.org
Subject: [PATCH] Documentation: fix incorrect macro referencing in mscc-phy-vsc8531.txt
Date:   Thu, 29 Jul 2021 00:01:26 +0800
Message-Id: <1627488086-200263-1-git-send-email-gaobaisheng@bonc.com.cn>
X-Mailer: git-send-email 1.8.3.1
X-CM-TRANSID: AQAAfwCnRmTpfQFhLjwiAA--.10309S2
X-Coremail-Antispam: 1UD129KBjvdXoWrtFykWF4kAFyDKw4kGFyxAFb_yoWkuFcEkF
        naqF18Jr9rGr1Fga1jvrsrZF4Yvr4jy3s7u3sFqFyIv3yrA398CFyDJwnxZr1xCFWUuF4x
        Zry8uF17u3ZrKjkaLaAFLSUrUUUUbb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
        9fnUUIcSsGvfJTRUUUb7kYjsxI4VWxJwAYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I
        6I8E6xAIw20EY4v20xvaj40_Wr0E3s1l1IIY67AEw4v_Jr0_Jr4l8cAvFVAK0II2c7xJM2
        8CjxkF64kEwVA0rcxSw2x7M28EF7xvwVC0I7IYx2IY67AKxVWUJVWUCwA2z4x0Y4vE2Ix0
        cI8IcVCY1x0267AKxVWUJVW8JwA2z4x0Y4vEx4A2jsIE14v26rxl6s0DM28EF7xvwVC2z2
        80aVCY1x0267AKxVW0oVCq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAK
        zVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUJVWUGwAv7VC2z280aVAFwI0_Gr0_Cr1lOx
        8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcxkI7VAKI48JM4x0Y48IcxkI7VAKI48G6xCjnVAK
        z4kxMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI
        0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCI42IY
        6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxVWUJVW8JwCI42IY6x
        AIw20EY4v20xvaj40_Wr1j6rW3Jr1lIxAIcVC2z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280
        aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjxUIoqcUUUUU
X-CM-SenderInfo: xjdrutplvkv0nj6e003fof0zgofq/
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Modify LINK_1000_ACTIVITY and LINK_100_ACTIVITY to VSC8531_LINK_1000_ACTIVITY
and VSC8531_LINK_100_ACTIVITY respectively in the example of ethernet-phy node
according to include/dt-bindings/net/mscc-phy-vsc8531.h.

Signed-off-by: Baisheng Gao <gaobaisheng@bonc.com.cn>
---
 Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
index 87a27d7..0a3647f 100644
--- a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
+++ b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
@@ -67,7 +67,7 @@ Example:
                 compatible = "ethernet-phy-id0007.0570";
                 vsc8531,vddmac		= <3300>;
                 vsc8531,edge-slowdown	= <7>;
-                vsc8531,led-0-mode	= <LINK_1000_ACTIVITY>;
-                vsc8531,led-1-mode	= <LINK_100_ACTIVITY>;
+                vsc8531,led-0-mode	= <VSC8531_LINK_1000_ACTIVITY>;
+                vsc8531,led-1-mode	= <VSC8531_LINK_100_ACTIVITY>;
 		load-save-gpios		= <&gpio 10 GPIO_ACTIVE_HIGH>;
         };
-- 
1.8.3.1


