Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 559A5DDC47
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2019 06:08:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726303AbfJTEIu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Oct 2019 00:08:50 -0400
Received: from mx2.suse.de ([195.135.220.15]:37158 "EHLO mx1.suse.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1725747AbfJTEI2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 20 Oct 2019 00:08:28 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
        by mx1.suse.de (Postfix) with ESMTP id 1C371AF24;
        Sun, 20 Oct 2019 04:08:27 +0000 (UTC)
From:   =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To:     linux-realtek-soc@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        info@synology.com, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/8] dt-bindings: arm: realtek: Document RTD1293 and Synology DS418j
Date:   Sun, 20 Oct 2019 06:08:13 +0200
Message-Id: <20191020040817.16882-5-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191020040817.16882-1-afaerber@suse.de>
References: <20191020040817.16882-1-afaerber@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define compatible strings for Realtek RTD1293 SoC and Synology
DiskStation DS418j NAS.

Cc: info@synology.com
Acked-by: Rob Herring <robh@kernel.org>
[AF: Converted to json-schema]
Signed-off-by: Andreas Färber <afaerber@suse.de>
---
 v1 -> v2:
 * Converted to YAML schema
 
 Documentation/devicetree/bindings/arm/realtek.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/realtek.yaml b/Documentation/devicetree/bindings/arm/realtek.yaml
index 66458a3f422d..6ea3a79825cc 100644
--- a/Documentation/devicetree/bindings/arm/realtek.yaml
+++ b/Documentation/devicetree/bindings/arm/realtek.yaml
@@ -14,6 +14,12 @@ properties:
     const: '/'
   compatible:
     oneOf:
+      # RTD1293 SoC based boards
+      - items:
+          - enum:
+              - synology,ds418j # Synology DiskStation DS418j
+          - const: realtek,rtd1293
+
       # RTD1295 SoC based boards
       - items:
           - enum:
-- 
2.16.4

