Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD7C945FC55
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 04:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229592AbhK0DYn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 22:24:43 -0500
Received: from phobos.denx.de ([85.214.62.61]:44734 "EHLO phobos.denx.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232694AbhK0DWm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Nov 2021 22:22:42 -0500
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id C928780F9C;
        Sat, 27 Nov 2021 04:19:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1637983168;
        bh=pGyO8fpSDuDUsNsNVCHjWVp0mRM9yNyV7jFc3G0YZwg=;
        h=From:To:Cc:Subject:Date:From;
        b=zu8h176qRblJCDjyUi7D/+/vHwivmYHA7V1/sSZaD+x7AYdBA5TwknIINzmaETuBj
         6cf8h3x6RLI5oTUqy5h305m7U7oLKlhu+NMrj4zdPxwHKwSHiHqL8X/gXXjZQ75leh
         2bYt0vsRvVc/CI0mTr9okYGPGqWOyVvlvjfLeMZScCBrJ7aSm8j6gdIzxdXBZcdR4m
         4AV/68hs7odV0+ED52h+E9eeIYhoURyLDjDkOSyIp/AD6PyjiN3q7Mhre3bkEdibEY
         kVFYYU8tt/jlNHY5rfz9Sor5I68rK6TdYpUGE/8SHyGKOrvACN4E4FaELX0iv4Hs8L
         H8SFa8YTKDdbg==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: Add Team Source Display Technology vendor prefix
Date:   Sat, 27 Nov 2021 04:19:07 +0100
Message-Id: <20211127031909.283383-1-marex@denx.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for Team Source Display Technology Co., Ltd.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
NOTE: All the documentation abbreviates the company name as TSD,
      but that vendor prefix is already taken.
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 84cd16fe9380..95435428f1f1 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1240,6 +1240,8 @@ patternProperties:
     description: Truly Semiconductors Limited
   "^visionox,.*":
     description: Visionox
+  "^team-source-display,.*":
+    description: Shenzhen Team Source Display Technology Co., Ltd. (TSD)
   "^tsd,.*":
     description: Theobroma Systems Design und Consulting GmbH
   "^tyan,.*":
-- 
2.33.0

