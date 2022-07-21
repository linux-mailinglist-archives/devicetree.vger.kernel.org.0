Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2B8257C283
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 05:03:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230200AbiGUDDo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 23:03:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbiGUDDo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 23:03:44 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C98A733E20
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 20:03:39 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 742F980586;
        Thu, 21 Jul 2022 05:03:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1658372617;
        bh=j4euMDYmhB1Pbeh1qWoeSQHhIKqUyV4weVqOQqim+QM=;
        h=From:To:Cc:Subject:Date:From;
        b=J+wUQ0APP35VQoFNxzpBGoMF783G49rDR/CuJ0eLSdr4eCr3ctKVEv3DA4gXboXML
         4RRXi8NcIKIV3oD7uScuMrZNGQ+C0r5S3stuHMW04DS0pE1a2/Zts4koYnoyzhVbkY
         JRRdcYOGIWp1D2AYgkmfDW89S2Lb0nyfIXNcwKqXio5Zleov3X+F5IIF+JAUUHJdgM
         utZX5WS4CG7R+hhxhpSt2obhJXahajSefrIFguCQgSMo2oMrnzE9MQ28TGBZPpUOUO
         nlAXSuGsgNGtAX1v3Cr5mKvzNTYyu+GHQhy51RK9i/sb6lBSkTZP79O2FAw6ykZ/tp
         7tg3bqXIkKSBQ==
From:   Marek Vasut <marex@denx.de>
To:     devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, dri-devel@lists.freedesktop.org,
        Marek Vasut <marex@denx.de>,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH] dt-bindings: vendor-prefixes: add Densitron
Date:   Thu, 21 Jul 2022 05:03:27 +0200
Message-Id: <20220721030327.210950-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Densitron is a manufacturer of LCD panels.
https://www.densitron.com

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Guido Günther <agx@sigxcpu.org>
Cc: Jagan Teki <jagan@amarulasolutions.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 88859dd4040ee..6277240536b44 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -312,6 +312,8 @@ patternProperties:
     description: Dell Inc.
   "^delta,.*":
     description: Delta Electronics, Inc.
+  "^densitron,.*":
+    description: Densitron Technologies Ltd
   "^denx,.*":
     description: Denx Software Engineering
   "^devantech,.*":
-- 
2.35.1

