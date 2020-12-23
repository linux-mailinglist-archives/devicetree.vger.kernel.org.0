Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBBD22E20DD
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 20:28:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728075AbgLWT2D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 14:28:03 -0500
Received: from mout.kundenserver.de ([212.227.126.187]:45221 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726384AbgLWT2D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 14:28:03 -0500
Received: from localhost.localdomain ([37.4.249.194]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N2E9e-1jvH1B3Emk-013als; Wed, 23 Dec 2020 20:25:15 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Eric Anholt <eric@anholt.net>, Maxime Ripard <mripard@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH] dt-bindings: bcm2835-vec: Add power-domains property
Date:   Wed, 23 Dec 2020 20:24:33 +0100
Message-Id: <1608751473-12343-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:6Pmy9jml9JWIJIXLRT/11dG+IeBR3Nbtq0oVYyeyxGBhkZHolyh
 xpHtKH6aKnL5dkVKCUNyq71MKY3NkURmOR/hcQZSTSb4fShDLr6Ep26K74Jz3p7yMjTDWlZ
 ZfBVO+TGzj6ksr4WLNsloiqE9QcBkRMC2xtbPkkRJRhLgTJiEO+CDqZe44ox0Okf+G6Hw3F
 Ep48ZLfPDh/lrEjLP520w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZwmOg4Tdre0=:6iDWyjSVWNmWVJCm72/zUp
 Ibr/MsiYseNfaAXXqZpJFk53mmsRCIwHkmJ38QUMjKUsMOLRkTzuLTsvg16ra1ch6y6jbOaAh
 fx/lfLW5X5Rjsbv9xCflzFO0z8XWPsuqR7DqqQmUIiAfqLuvhRaP1CEKLVGU0/8UA1qReA+zg
 G0w8uVOodpNYpkfHPbE1m/HIE/UsC1dBkypZ2WIMX4ymCYDaOHvXfgmLacHICKNrYfqhLhXO7
 r0DYx7ay+IDic4fSYjWYrHTu8dL7mOP66MfYyerccCDe9x8jgIiJNcPvVF6MjNB2p225bqraF
 fi5gNoPngMIQuEqM74478V8nDRWrPkb35nehBo29PVkcmEEZY6zIP6XML5jWD8btFKicsd8DY
 VeIw4qWvfitnmWKzcXW0Vtc5Sz8Ah1DL4jdwgBU3eoF6uS+8nJqWQOP+6AOjexlo8wE6JkPGL
 aTjR60JqWw==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding the missing property power-domains to the bcm2835-vec schema to fix
the following dtbs_check issue:

vec@7e806000: 'power-domains' does not match any of the regexes: ...

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
index d900cc5..071a43d 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vec.yaml
@@ -22,6 +22,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.7.4

