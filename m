Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E203B356AE6
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 13:15:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351769AbhDGLPy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 07:15:54 -0400
Received: from mail.cognitivepilot.com ([91.218.251.140]:41487 "EHLO
        mail.cognitivepilot.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351775AbhDGLPw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 07:15:52 -0400
Received: from mail.cognitivepilot.com (localhost [127.0.0.1])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4FFhdn2LQrzmSqcp
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 14:15:41 +0300 (MSK)
X-Virus-Scanned: amavisd-new at cognitivepilot.com
X-Spam-Flag: NO
X-Spam-Score: 2.247
X-Spam-Level: **
X-Spam-Status: No, score=2.247 tagged_above=2 required=6.2
        tests=[RDNS_NONE=1.274, SPF_HELO_NONE=0.001, SPF_SOFTFAIL=0.972]
        autolearn=no autolearn_force=no
Received: from mail.cognitivepilot.com ([127.0.0.1])
        by mail.cognitivepilot.com (mail.cognitivepilot.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id LJFFcVwJWAms for <devicetree@vger.kernel.org>;
        Wed,  7 Apr 2021 14:15:40 +0300 (MSK)
Received: from localhost.localdomain (unknown [185.68.147.27])
        by mail.cognitivepilot.com (Postfix) with ESMTP id 4FFhdm0DjMzmSqbw;
        Wed,  7 Apr 2021 14:15:40 +0300 (MSK)
From:   Ivan Uvarov <i.uvarov@cognitivepilot.com>
To:     devicetree@vger.kernel.org
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Maxime Ripard <mripard@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Andre Przywara <andre.przywara@arm.com>,
        Icenowy Zheng <icenowy@aosc.io>,
        Ivan Uvarov <i.uvarov@cognitivepilot.com>
Subject: [PATCH v4 3/5] dt-bindings: add compatible vendor prefix for Forlinx
Date:   Wed,  7 Apr 2021 14:14:26 +0300
Message-Id: <20210407111428.3755684-4-i.uvarov@cognitivepilot.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
References: <20210407111428.3755684-1-i.uvarov@cognitivepilot.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Baoding Forlinx Embedded Technology Co., Ltd. is the manufacturer of the
Allwinner R40/A40i-powered FETA40i-C SoM and the OKA40i-C dev/carrier board
based on it.

This patch adds the DT vendor prefix for Forlinx in preparation for a
further patch, which includes a devicetree for the OKA40i-C board.

Signed-off-by: Ivan Uvarov <i.uvarov@cognitivepilot.com>

 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index f6064d84a4..e2ea1a731e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -403,6 +403,8 @@ patternProperties:
     description: Firefly
   "^focaltech,.*":
     description: FocalTech Systems Co.,Ltd
+  "^forlinx,.*":
+    description: Baoding Forlinx Embedded Technology Co., Ltd.
   "^frida,.*":
     description: Shenzhen Frida LCD Co., Ltd.
   "^friendlyarm,.*":
-- 
2.25.1

