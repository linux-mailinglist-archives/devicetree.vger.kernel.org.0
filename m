Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2B1233A2EE3
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 17:01:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230304AbhFJPDj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 11:03:39 -0400
Received: from phobos.denx.de ([85.214.62.61]:58526 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230332AbhFJPDi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Jun 2021 11:03:38 -0400
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 5657582CBE;
        Thu, 10 Jun 2021 17:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1623337300;
        bh=z8vyksDbi1Tg8yhCTQ0kxHad7PfZiGsU5cOSq5Q8QN4=;
        h=From:To:Cc:Subject:Date:From;
        b=Wt3D6iMSxdyRtQPHvQCGWMjf23s67ho2KTKl2ZjQlwJ7Itrrv6T5eNUe1hfzmgHcU
         58d4DZQsdwLa2dZC+S6/r+UjuiYxZNj8twV3EVu5Z4yil3y38LqNxHGLIIvBQWU9iE
         yFo4YOIbBRJKZryVd0NwYLWl2Lo2o51jchavbBcMN2fyk4X0grDUcno23NKhem6PDd
         GYIw46O9dTH7qRacvcyeG1tAd6jrBe//R+FY9LaYj17A8ZHf1GFUPxWBnVwPB5aKxd
         +p/5HtVdxVH8KJLYfYpIf77tOSP6WPrUL3+HIBg8ZU0uWfvevBIMkfjP4dQIyBjc7y
         5KD3NjbZf7HqA==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, kernel@dh-electronics.com,
        alsa-devel@alsa-project.org
Subject: [PATCH] dt-bindings: ASoC: sgtl5000: Add audio-graph-card port
Date:   Thu, 10 Jun 2021 17:01:35 +0200
Message-Id: <20210610150135.29905-1-marex@denx.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.102.4 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SGTL5000 codec can be connected via audio-graph-card,
add the missing port: entry into the bindings.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: kernel@dh-electronics.com
Cc: alsa-devel@alsa-project.org
To: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/sound/sgtl5000.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/sgtl5000.yaml b/Documentation/devicetree/bindings/sound/sgtl5000.yaml
index 70b4a8831073..e762c320b574 100644
--- a/Documentation/devicetree/bindings/sound/sgtl5000.yaml
+++ b/Documentation/devicetree/bindings/sound/sgtl5000.yaml
@@ -75,6 +75,10 @@ properties:
     $ref: "/schemas/types.yaml#/definitions/uint32"
     enum: [ 0, 1, 2, 3 ]
 
+  port:
+    $ref: audio-graph-port.yaml#
+    unevaluatedProperties: false
+
 required:
   - compatible
   - reg
-- 
2.30.2

