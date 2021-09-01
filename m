Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5583A3FDE48
	for <lists+devicetree@lfdr.de>; Wed,  1 Sep 2021 17:13:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245047AbhIAPOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 11:14:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245735AbhIAPOL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 11:14:11 -0400
Received: from laurent.telenet-ops.be (laurent.telenet-ops.be [IPv6:2a02:1800:110:4::f00:19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19D5BC061575
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 08:13:13 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:7822:25bf:8b52:7a36])
        by laurent.telenet-ops.be with bizsmtp
        id ofDC2500G13ssow01fDCfS; Wed, 01 Sep 2021 17:13:12 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan.of.borg with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mLRvM-0019Lz-8O; Wed, 01 Sep 2021 17:13:12 +0200
Received: from geert by rox.of.borg with local (Exim 4.93)
        (envelope-from <geert@linux-m68k.org>)
        id 1mLRvL-00AQDL-Sn; Wed, 01 Sep 2021 17:13:11 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema 1/2] schemas: chosen: Generalize linux,elfcorehdr and linux,usable-memory-range
Date:   Wed,  1 Sep 2021 17:13:09 +0200
Message-Id: <20210901151310.2484003-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The properties "linux,elfcorehdr" and "linux,usable-memory-range" are no
longer limited to arm64.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 schemas/chosen.yaml | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/schemas/chosen.yaml b/schemas/chosen.yaml
index b93cd1dfd7d26bda..78b87cb1b2b7fb87 100644
--- a/schemas/chosen.yaml
+++ b/schemas/chosen.yaml
@@ -78,17 +78,17 @@ properties:
     $ref: types.yaml#/definitions/uint64-array
     maxItems: 2
     description:
-      This property (currently used only on arm64) holds the memory range,
-      the address and the size, of the elf core header which mainly describes
-      the panicked kernel\'s memory layout as PT_LOAD segments of elf format.
+      This property holds the memory range, the address and the size, of the
+      elf core header which mainly describes the panicked kernel\'s memory
+      layout as PT_LOAD segments of elf format.
 
   linux,usable-memory-range:
     $ref: types.yaml#/definitions/uint64-array
     maxItems: 2
     description: |
-      This property (arm64 only) holds a base address and size, describing a
-      limited region in which memory may be considered available for use by
-      the kernel. Memory outside of this range is not available for use.
+      This property holds a base address and size, describing a limited region
+      in which memory may be considered available for use by the kernel. Memory
+      outside of this range is not available for use.
 
       This property describes a limitation: memory within this range is only
       valid when also described through another mechanism that the kernel
-- 
2.25.1

