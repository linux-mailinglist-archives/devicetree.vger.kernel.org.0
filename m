Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67BAD30FED4
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 21:52:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbhBDUuc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 15:50:32 -0500
Received: from marcansoft.com ([212.63.210.85]:35770 "EHLO mail.marcansoft.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229977AbhBDUu2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Feb 2021 15:50:28 -0500
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: hector@marcansoft.com)
        by mail.marcansoft.com (Postfix) with ESMTPSA id C471142772;
        Thu,  4 Feb 2021 20:40:10 +0000 (UTC)
From:   Hector Martin <marcan@marcan.st>
To:     Hector Martin <marcan@marcan.st>, soc@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        Marc Zyngier <maz@kernel.org>, robh+dt@kernel.org,
        Arnd Bergmann <arnd@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Olof Johansson <olof@lixom.net>
Subject: [PATCH 01/18] dt-bindings: vendor-prefixes: add AAPL prefix
Date:   Fri,  5 Feb 2021 05:39:34 +0900
Message-Id: <20210204203951.52105-2-marcan@marcan.st>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210204203951.52105-1-marcan@marcan.st>
References: <20210204203951.52105-1-marcan@marcan.st>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Amusingly, this wasn't yet documented, even though this vendor prefix
has been used since time immemorial on PPC.

Signed-off-by: Hector Martin <marcan@marcan.st>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 041ae90b0d8f..d7950c723472 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -25,6 +25,8 @@ patternProperties:
   # Keep list in alphabetical order.
   "^70mai,.*":
     description: 70mai Co., Ltd.
+  "^AAPL,.*":
+    description: Apple Inc.
   "^abb,.*":
     description: ABB
   "^abilis,.*":
-- 
2.30.0

