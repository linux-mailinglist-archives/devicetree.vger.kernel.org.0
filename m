Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 797982D4B1E
	for <lists+devicetree@lfdr.de>; Wed,  9 Dec 2020 20:58:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729516AbgLIT6H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Dec 2020 14:58:07 -0500
Received: from bin-mail-out-05.binero.net ([195.74.38.228]:19577 "EHLO
        bin-mail-out-05.binero.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727901AbgLIT6H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Dec 2020 14:58:07 -0500
X-Halon-ID: b813def2-3a58-11eb-a542-005056917a89
Authorized-sender: niklas.soderlund@fsdn.se
Received: from bismarck.berto.se (p4fca2458.dip0.t-ipconnect.de [79.202.36.88])
        by bin-vsp-out-01.atm.binero.net (Halon) with ESMTPA
        id b813def2-3a58-11eb-a542-005056917a89;
        Wed, 09 Dec 2020 20:57:25 +0100 (CET)
From:   =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Cc:     linux-renesas-soc@vger.kernel.org,
        =?UTF-8?q?Niklas=20S=C3=B6derlund?= 
        <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] dt-bindings: timer: renesas,cmt: Document R8A77961
Date:   Wed,  9 Dec 2020 20:57:01 +0100
Message-Id: <20201209195701.805254-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing bindings for M3-W+.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 Documentation/devicetree/bindings/timer/renesas,cmt.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
index 428db3a21bb9c384..d16b5a243ed48eef 100644
--- a/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,cmt.yaml
@@ -74,6 +74,7 @@ properties:
               - renesas,r8a774e1-cmt0     # 32-bit CMT0 on RZ/G2H
               - renesas,r8a7795-cmt0      # 32-bit CMT0 on R-Car H3
               - renesas,r8a7796-cmt0      # 32-bit CMT0 on R-Car M3-W
+              - renesas,r8a77961-cmt0     # 32-bit CMT0 on R-Car M3-W+
               - renesas,r8a77965-cmt0     # 32-bit CMT0 on R-Car M3-N
               - renesas,r8a77970-cmt0     # 32-bit CMT0 on R-Car V3M
               - renesas,r8a77980-cmt0     # 32-bit CMT0 on R-Car V3H
@@ -89,6 +90,7 @@ properties:
               - renesas,r8a774e1-cmt1     # 48-bit CMT on RZ/G2H
               - renesas,r8a7795-cmt1      # 48-bit CMT on R-Car H3
               - renesas,r8a7796-cmt1      # 48-bit CMT on R-Car M3-W
+              - renesas,r8a77961-cmt1     # 48-bit CMT on R-Car M3-W+
               - renesas,r8a77965-cmt1     # 48-bit CMT on R-Car M3-N
               - renesas,r8a77970-cmt1     # 48-bit CMT on R-Car V3M
               - renesas,r8a77980-cmt1     # 48-bit CMT on R-Car V3H
-- 
2.29.2

