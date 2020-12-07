Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EABAF2D19DD
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 20:42:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725799AbgLGTkD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 14:40:03 -0500
Received: from mail.pqgruber.com ([52.59.78.55]:35274 "EHLO mail.pqgruber.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725774AbgLGTkD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 7 Dec 2020 14:40:03 -0500
Received: from workstation.tuxnet (213-47-165-233.cable.dynamic.surfer.at [213.47.165.233])
        by mail.pqgruber.com (Postfix) with ESMTPSA id B91B6C89267;
        Mon,  7 Dec 2020 20:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pqgruber.com;
        s=mail; t=1607369961;
        bh=Xyh8Wni+Ue0ny3rZRboSXRdZfKHzl+fSzSIiwkbye9I=;
        h=From:To:Cc:Subject:Date:From;
        b=Sz26LaxZBUCjGSGi8IcKB4QnGOA8VUxuAr47vH+q6Oj6VwLSWyOooBfTNiM+WB3Fx
         lGnoYt3dbCOsm/EuDb7bWbjuPCObBafdeqvSQeJ3EQa/C4TwSDHQTenWHpkr9Pz7nB
         tyHe0AXjviJbfaiZeNdxMgaE2t/7Ik6grJNyh2ko=
From:   Clemens Gruber <clemens.gruber@pqgruber.com>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Clemens Gruber <clemens.gruber@pqgruber.com>
Subject: [PATCH v4 4/4] dt-bindings: pwm: pca9685: Add nxp,staggered-outputs property
Date:   Mon,  7 Dec 2020 20:39:15 +0100
Message-Id: <20201207193915.493354-1-clemens.gruber@pqgruber.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pca9685 driver supports a new nxp,staggered-outputs property for
reduced current surges and EMI. This adds documentation for the new DT
property.

Signed-off-by: Clemens Gruber <clemens.gruber@pqgruber.com>
---
Changes since v1:
- Added vendor prefix

 Documentation/devicetree/bindings/pwm/nxp,pca9685-pwm.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/nxp,pca9685-pwm.txt b/Documentation/devicetree/bindings/pwm/nxp,pca9685-pwm.txt
index f21b55c95738..fafe954369dc 100644
--- a/Documentation/devicetree/bindings/pwm/nxp,pca9685-pwm.txt
+++ b/Documentation/devicetree/bindings/pwm/nxp,pca9685-pwm.txt
@@ -12,6 +12,8 @@ Optional properties:
   - invert (bool): boolean to enable inverted logic
   - open-drain (bool): boolean to configure outputs with open-drain structure;
 		       if omitted use totem-pole structure
+  - nxp,staggered-outputs (bool): boolean to enable staggered output ON times to
+				  minimize current surges and EMI
 
 Example:
 
-- 
2.29.2

