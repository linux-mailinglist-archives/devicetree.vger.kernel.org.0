Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D27D127F343
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 22:19:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730457AbgI3UTW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 16:19:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730458AbgI3UTT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 16:19:19 -0400
Received: from hillosipuli.retiisi.eu (hillosipuli.retiisi.org.uk [IPv6:2a01:4f9:c010:4572::81:2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C139C0613D2
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 13:19:19 -0700 (PDT)
Received: from lanttu.localdomain (lanttu-e.localdomain [192.168.1.64])
        by hillosipuli.retiisi.eu (Postfix) with ESMTP id 3E890634C89;
        Wed, 30 Sep 2020 23:19:01 +0300 (EEST)
From:   Sakari Ailus <sakari.ailus@linux.intel.com>
To:     linux-media@vger.kernel.org
Cc:     devicetree@vger.kernel.org
Subject: [RESEND PATCH 020/100] dt-bindings: Add vendor prefix for MIPI Alliance
Date:   Wed, 30 Sep 2020 23:19:08 +0300
Message-Id: <20200930201914.31377-2-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200930201914.31377-1-sakari.ailus@linux.intel.com>
References: <20200930201914.31377-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a vendor prefix for MIPI Alliance, Inc.

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 63996ab03521..f16b53909e6e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -663,6 +663,8 @@ patternProperties:
     description: Miniand Tech
   "^minix,.*":
     description: MINIX Technology Ltd.
+  "^mipi,.*":
+    description: MIPI Alliance, Inc.
   "^miramems,.*":
     description: MiraMEMS Sensing Technology Co., Ltd.
   "^mitsubishi,.*":
-- 
2.27.0

