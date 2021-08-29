Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 327763FAC04
	for <lists+devicetree@lfdr.de>; Sun, 29 Aug 2021 15:43:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235417AbhH2No2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Aug 2021 09:44:28 -0400
Received: from ixit.cz ([94.230.151.217]:44258 "EHLO ixit.cz"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229601AbhH2No0 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 29 Aug 2021 09:44:26 -0400
Received: from newone.lan (ixit.cz [94.230.151.217])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by ixit.cz (Postfix) with ESMTPSA id 5169F24A25;
        Sun, 29 Aug 2021 15:43:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
        t=1630244613;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=QygUsHOafc1MWNVTeVL5KjMkQwzPyY2m4ElQ1bj9bMw=;
        b=iHFQcAxOcAcTOppQJ1CzRE7pyVR4GpwPdd0dbZwu7oR65NX146oKZx4lQa0JCDyYPAAhSS
        m1UIh7SgTZ9QnOlVkZ6g81KmdwL8KQfxEtCBOp/YKytjlxzMH5veXo/bIYvGBZTZFq/QyB
        CME+fNiM427zZL6FO1a6Io6bWigWQxg=
From:   David Heidelberg <david@ixit.cz>
To:     devicetree@vger.kernel.org
Cc:     David Heidelberg <david@ixit.cz>
Subject: [PATCH] dt-bindings: display/panel: ilitek,ili9341: fix indentation
Date:   Sun, 29 Aug 2021 15:42:24 +0200
Message-Id: <20210829134224.58987-1-david@ixit.cz>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes:
./Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml:25:9:
[warning] wrong indentation: expected 10 but found 8 (indentation)

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 .../devicetree/bindings/display/panel/ilitek,ili9341.yaml       | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
index 2ed010f91e2d..20ce88ab4b3a 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9341.yaml
@@ -22,7 +22,7 @@ properties:
     items:
       - enum:
           # ili9341 240*320 Color on stm32f429-disco board
-        - st,sf-tc240t-9370-t
+          - st,sf-tc240t-9370-t
       - const: ilitek,ili9341
 
   reg: true
-- 
2.33.0

