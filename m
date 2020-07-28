Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D474A2313A9
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 22:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728400AbgG1UMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 16:12:53 -0400
Received: from mail-out.m-online.net ([212.18.0.10]:59883 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728365AbgG1UMw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 16:12:52 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4BGSXL07Jtz1rt3P;
        Tue, 28 Jul 2020 22:12:50 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4BGSXK6jvvz1qrgF;
        Tue, 28 Jul 2020 22:12:49 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id Awy8Fra_9_tv; Tue, 28 Jul 2020 22:12:48 +0200 (CEST)
X-Auth-Info: bz0Z08lmho0CJuiYcr5fupkQ7w14PN8sXYzYB6rkKGM=
Received: from desktop.lan (ip-86-49-101-166.net.upcbroadband.cz [86.49.101.166])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Tue, 28 Jul 2020 22:12:48 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: Add vendor prefix for Chefree
Date:   Tue, 28 Jul 2020 22:12:40 +0200
Message-Id: <20200728201242.4336-1-marex@denx.de>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Chefree Technology Corp. is an LCD panel manufacturer.

Signed-off-by: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5b1343a8d198..7204e069d498 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -197,6 +197,8 @@ patternProperties:
     description: Ceva, Inc.
   "^checkpoint,.*":
     description: Check Point Software Technologies Ltd.
+  "^chefree,.*":
+    description: Chefree Technology Corp.
   "^chipidea,.*":
     description: Chipidea, Inc
   "^chipone,.*":
-- 
2.27.0

