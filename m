Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 439893DCBA2
	for <lists+devicetree@lfdr.de>; Sun,  1 Aug 2021 14:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231577AbhHAM3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Aug 2021 08:29:52 -0400
Received: from mout.kundenserver.de ([212.227.126.135]:58139 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231749AbhHAM3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Aug 2021 08:29:51 -0400
Received: from localhost.localdomain ([37.4.249.97]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MD9Kj-1mJHGS1kpN-009BrE; Sun, 01 Aug 2021 14:29:29 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 6/9] dt-bindings: arm: bcm2835: Add Raspberry Pi Compute Module 4
Date:   Sun,  1 Aug 2021 14:28:49 +0200
Message-Id: <1627820932-7247-7-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
References: <1627820932-7247-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:6lb8w3F/aILe2lu/AZKqw0SjZzqZZ0BB4cwrenUF4I/G0TDtgla
 t/wXNbron4Vm/V3fgR0SRYqml28NOXGZFO0wTwpu0ZCcfpyk07eMxz5uOMrbrVPYK6xY1ku
 2oyaX2nqSxNiKoEGC0BiC4VQqcPRzOP+H5HgjczFVq++BZ/pye9jQx+aS9K3WqsfTGkwn5T
 8gHeZwqgLwDVR7ZuUpzbg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SRmNiNnLOhM=:jFHJeVr8XHYKdmpFqB85B2
 z40KhhXIgmrlnhXk7T5yRwK+ZsUV2iN2uQAthsYIQw7jEyuGualpX9J5JshD41d53NOpVqQc9
 wNTRdtgUwv9lXxd+DGWdh86lJC88eNDCQvOcDgcOmhBFXdzgV/1PWMBpm1ARwtOShMpjzSLrq
 61dVM2DvX8l9EADchFEUtF62Kw+wowJiC9iMB6iq+5aYR88INmLtZUVsrTanno62nxbniniFR
 8Kuh8ceZWvaqKSIx++fJx8ZdVz3b7WwwfcClRWmouSO+MKeIK/Nzu4dS0yQrgilB34i3lvlkA
 NZV10izrdLOQQxaWvmlPukCqCicW6nqC81vkWSeTscsieSJwx6j7EEv/xhVYQyN45Lz9OQTyx
 WBIseRIx0KjHYx0gQZAQXverIgnY1GhTxVRtQlCe4Jwk7s44nlTnrQBhYa7BrH5GfuQFmS36n
 oBfEk2x1Phku79KKjVgii1ro3ppHlHE+MrDcVO9zktYtNtCtr5KiYz4sBI8LL5Q7pql8eSAbE
 niGNuCnX0CmcDP9yiNzsE9ANw+OwZTZFSlfBxD/BySTA3Am/djJlMQkKOOWyWhnIKV2vWkKBK
 sfJ2Oxw1bBCEQoqB5y8Lizl/9tH91gfdgPM8s7ZikvVDxE0lAgrcmnHTDXxfmeZayAZm6up0g
 ZsCio9zmilHAEr3b33qChqPuGerRUctCNEVhX+4cv4X8FMmtACPl1m3ZACeYWPMOfuwZOSVag
 8aZY/ZJgdrb+dgN3xa+gcwj/7+c58Sgt6WjKXEmsvZnD8t6A3/waCytLz/tDGxGRfxSFzbV5n
 S9hUfB4L6b0fLZGTSmNYXCzaxNKtMCgeP1o7uYQPereWLVlhMEIocYmTsioUQzxNDjnfvmkEn
 KVnAWOJsSH9yjctuw0Jw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Raspberry Pi Compute Module 4 to DT schema.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
index 230b80d..5dc4824 100644
--- a/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/bcm2835.yaml
@@ -19,6 +19,7 @@ properties:
         items:
           - enum:
               - raspberrypi,400
+              - raspberrypi,4-compute-module
               - raspberrypi,4-model-b
           - const: brcm,bcm2711
 
-- 
2.7.4

