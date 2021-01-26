Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 593C2304723
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 19:54:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729895AbhAZRMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 12:12:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390984AbhAZQ2o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 11:28:44 -0500
Received: from xavier.telenet-ops.be (xavier.telenet-ops.be [IPv6:2a02:1800:120:4::f00:14])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D99D3C061756
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 08:28:01 -0800 (PST)
Received: from ramsan.of.borg ([84.195.186.194])
        by xavier.telenet-ops.be with bizsmtp
        id MUTz2400Y4C55Sk01UTzMS; Tue, 26 Jan 2021 17:27:59 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l4RCB-000wY4-AV; Tue, 26 Jan 2021 17:27:59 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1l4RCA-0086nI-S7; Tue, 26 Jan 2021 17:27:58 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema 1/2] schemas: property-units: Add percentage
Date:   Tue, 26 Jan 2021 17:27:55 +0100
Message-Id: <20210126162756.1932692-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210126162756.1932692-1-geert+renesas@glider.be>
References: <20210126162756.1932692-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add percentages to the list of recognized units.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 schemas/property-units.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/schemas/property-units.yaml b/schemas/property-units.yaml
index 20e6f6ebf06b8d93..655e9eec615319e1 100644
--- a/schemas/property-units.yaml
+++ b/schemas/property-units.yaml
@@ -26,6 +26,11 @@ patternProperties:
   "-bits$":
     $ref: "types.yaml#/definitions/uint32-array"
     description: Number of bits
+
+  "-percent$":
+    $ref: "types.yaml#/definitions/uint32-array"
+    description: percentage
+
   # Time/Frequency
   "-mhz$":
     $ref: "types.yaml#/definitions/uint32-array"
-- 
2.25.1

