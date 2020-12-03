Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 787852CD67F
	for <lists+devicetree@lfdr.de>; Thu,  3 Dec 2020 14:19:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730603AbgLCNQy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 08:16:54 -0500
Received: from mo4-p02-ob.smtp.rzone.de ([81.169.146.168]:9082 "EHLO
        mo4-p02-ob.smtp.rzone.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730483AbgLCNQy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 08:16:54 -0500
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXS7IYBkLahKxB5G6JlbU="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain
        by smtp.strato.de (RZmta 47.3.4 DYNA|AUTH)
        with ESMTPSA id Z061efwB3DDvqid
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
        (Client did not present a certificate);
        Thu, 3 Dec 2020 14:13:57 +0100 (CET)
From:   Stephan Gerhold <stephan@gerhold.net>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     linux-input@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
        Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 2/3] dt-bindings: Input: tm2-touchkey - document vddio-supply
Date:   Thu,  3 Dec 2020 14:12:41 +0100
Message-Id: <20201203131242.44397-2-stephan@gerhold.net>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201203131242.44397-1-stephan@gerhold.net>
References: <20201203131242.44397-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Samsung touchkey controllers are often used with external pull-up
for the interrupt line and the I2C lines, so we might need to enable
a regulator to bring the lines into usable state. Otherwise, this might
cause spurious interrupts and reading from I2C will fail.

Document support for a "vddio-supply" that is enabled by the tm2-touchkey
driver so that the regulator gets enabled when needed.

Cc: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 .../devicetree/bindings/input/cypress,tm2-touchkey.yaml      | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/cypress,tm2-touchkey.yaml b/Documentation/devicetree/bindings/input/cypress,tm2-touchkey.yaml
index 90d4def83182..52dca8b64081 100644
--- a/Documentation/devicetree/bindings/input/cypress,tm2-touchkey.yaml
+++ b/Documentation/devicetree/bindings/input/cypress,tm2-touchkey.yaml
@@ -37,6 +37,11 @@ properties:
   vcc-supply:
     description: Optional regulator for MCU, 1.8V-3.3V (depending on MCU).
 
+  vddio-supply:
+    description: |
+      Optional regulator that provides digital I/O voltage,
+      e.g. for pulling up the interrupt line or the I2C pins.
+
   linux,keycodes:
     minItems: 1
     maxItems: 4
-- 
2.29.2

