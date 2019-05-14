Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF2D1C569
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 10:53:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726449AbfENIxX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 04:53:23 -0400
Received: from andre.telenet-ops.be ([195.130.132.53]:37214 "EHLO
        andre.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725916AbfENIxX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 04:53:23 -0400
Received: from ramsan ([84.194.111.163])
        by andre.telenet-ops.be with bizsmtp
        id C8tJ2000i3XaVaC018tJqu; Tue, 14 May 2019 10:53:20 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hQTBW-0000EN-Kf; Tue, 14 May 2019 10:53:18 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hQTBW-0004fH-J4; Tue, 14 May 2019 10:53:18 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: arm-boards: Update pointer to ARM CPU bindings
Date:   Tue, 14 May 2019 10:53:16 +0200
Message-Id: <20190514085316.17883-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ARM CPU DT bindings were converted from plain text to YAML, but not
all referrers were updated.

Fixes: 672951cbd1b70a9e ("dt-bindings: arm: Convert cpu binding to json-schema")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/arm/arm-boards | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/arm-boards b/Documentation/devicetree/bindings/arm/arm-boards
index b6e810c2781a4ec8..ed51c1f4657c0b26 100644
--- a/Documentation/devicetree/bindings/arm/arm-boards
+++ b/Documentation/devicetree/bindings/arm/arm-boards
@@ -199,7 +199,7 @@ The description for the board must include:
      A detailed description of the bindings used for "psci" nodes is present
      in the psci.txt file.
    - a "cpus" node describing the available cores and their associated
-     "enable-method"s. For more details see cpus.txt file.
+     "enable-method"s. For more details see cpus.yaml file.
 
 Example:
 
-- 
2.17.1

