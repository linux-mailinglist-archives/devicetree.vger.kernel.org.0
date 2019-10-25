Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C039EE4B72
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2019 14:45:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727890AbfJYMpc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Oct 2019 08:45:32 -0400
Received: from laurent.telenet-ops.be ([195.130.137.89]:58304 "EHLO
        laurent.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407310AbfJYMpc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Oct 2019 08:45:32 -0400
Received: from ramsan ([84.195.182.253])
        by laurent.telenet-ops.be with bizsmtp
        id HolW2100M5USYZQ01olWbQ; Fri, 25 Oct 2019 14:45:30 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1iNyyA-0004Y4-Jx; Fri, 25 Oct 2019 14:45:30 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1iNyyA-0004eI-Hm; Fri, 25 Oct 2019 14:45:30 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh@kernel.org>,
        Stephen Boyd <stephen.boyd@linaro.org>
Cc:     devicetree-spec@vger.kernel.org, devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH devicetree-specification] Nexus: Fix double "one"
Date:   Fri, 25 Oct 2019 14:45:29 +0200
Message-Id: <20191025124529.17829-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first "one" should be "on".

Fixes: 32c96cd64dd24e34 ("Document nexus nodes/specifier remapping")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 source/devicetree-basics.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/source/devicetree-basics.rst b/source/devicetree-basics.rst
index b91b048ff685bf22..65fed30bcda7b440 100644
--- a/source/devicetree-basics.rst
+++ b/source/devicetree-basics.rst
@@ -1407,7 +1407,7 @@ Specifier Mapping Example
 The following shows the representation of a fragment of a devicetree with
 two GPIO controllers and a sample specifier map for describing the
 GPIO routing of a few gpios on both of the controllers through a connector
-on a board to a device. The expansion device node is one one side of the
+on a board to a device. The expansion device node is on one side of the
 connector node and the SoC with the two GPIO controllers is on the other
 side of the connector.
 
-- 
2.17.1

