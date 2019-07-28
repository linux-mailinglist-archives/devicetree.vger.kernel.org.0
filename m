Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B1F1A781A5
	for <lists+devicetree@lfdr.de>; Sun, 28 Jul 2019 23:04:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726097AbfG1VEd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Jul 2019 17:04:33 -0400
Received: from antares.kleine-koenig.org ([94.130.110.236]:35766 "EHLO
        antares.kleine-koenig.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726197AbfG1VEd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Jul 2019 17:04:33 -0400
Received: by antares.kleine-koenig.org (Postfix, from userid 1000)
        id D586E74155C; Sun, 28 Jul 2019 23:04:31 +0200 (CEST)
From:   =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        info@acmesystems.it
Subject: [PATCH 1/2] dts: add vendor prefix "acme" for "Acme Systems srl"
Date:   Sun, 28 Jul 2019 23:04:02 +0200
Message-Id: <20190728210403.2730-2-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190728210403.2730-1-uwe@kleine-koenig.org>
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6992bbbbffab..85965e3446bf 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -27,6 +27,8 @@ patternProperties:
     description: Abilis Systems
   "^abracon,.*":
     description: Abracon Corporation
+  "^acme,.*":
+    description: Acme Systems srl
   "^actions,.*":
     description: Actions Semiconductor Co., Ltd.
   "^active-semi,.*":
-- 
2.20.1

