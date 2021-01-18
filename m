Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9D882F9FF3
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 13:38:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391651AbhARMhb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 07:37:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404058AbhARMhH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 07:37:07 -0500
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3ED5CC0613ED
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 04:35:44 -0800 (PST)
Received: from ramsan.of.borg ([84.195.186.194])
        by laurent.telenet-ops.be with bizsmtp
        id JCbi2400C4C55Sk01Cbibb; Mon, 18 Jan 2021 13:35:42 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l1Tkz-004aJe-S6; Mon, 18 Jan 2021 13:35:41 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l1Tkz-002MtK-AN; Mon, 18 Jan 2021 13:35:41 +0100
From:   Geert Uytterhoeven <geert@linux-m68k.org>
To:     Robin van der Gracht <robin@protonic.nl>,
        Rob Herring <robh+dt@kernel.org>,
        Miguel Ojeda Sandonis <miguel.ojeda.sandonis@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH 2/3] dt-bindings: auxdisplay: ht16k33: Fix default-brightness-level range
Date:   Mon, 18 Jan 2021 13:35:37 +0100
Message-Id: <20210118123538.564597-3-geert@linux-m68k.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210118123538.564597-1-geert@linux-m68k.org>
References: <20210118123538.564597-1-geert@linux-m68k.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

V4 changed the range from 0..15 to 1..16 in the driver, to match the
dimming set hardware register, but forgot to update the DT binding
documentation.

Signed-off-by: Geert Uytterhoeven <geert@linux-m68k.org>
---
v3: https://lore.kernel.org/linux-devicetree/1455788642-4289-1-git-send-email-robin@protonic.nl/
v4: https://lore.kernel.org/linux-devicetree/ae23cf26135a586440419aaa764f3a70de913c4a.1458140954.git.robin@protonic.nl/
---
 Documentation/devicetree/bindings/display/ht16k33.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/ht16k33.txt b/Documentation/devicetree/bindings/display/ht16k33.txt
index 3d602f5b9eb6bb74..ec43776970164921 100644
--- a/Documentation/devicetree/bindings/display/ht16k33.txt
+++ b/Documentation/devicetree/bindings/display/ht16k33.txt
@@ -8,7 +8,7 @@ Required properties:
 
 Optional properties:
 - linux,no-autorepeat:	Disable keyrepeat.
-- default-brightness-level: Initial brightness level [0-15] (default: 15).
+- default-brightness-level: Initial brightness level [1-16] (default: 16).
 
 - Keypad
  Supply the 'interrupts' property to enable the keyscan feature.
-- 
2.25.1

