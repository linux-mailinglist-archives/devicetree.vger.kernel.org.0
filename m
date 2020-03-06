Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 566DE17C79B
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2020 22:10:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726300AbgCFVKN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Mar 2020 16:10:13 -0500
Received: from gloria.sntech.de ([185.11.138.130]:36132 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726178AbgCFVKN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Mar 2020 16:10:13 -0500
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47] helo=phil.lan)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1jAKET-0003F8-1V; Fri, 06 Mar 2020 22:10:09 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     linux-rockchip@lists.infradead.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, christoph.muellner@theobroma-systems.com,
        robin.murphy@arm.com, heiko@sntech.de,
        linux-arm-kernel@lists.infradead.org, kever.yang@rock-chips.com,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: [PATCH 2/3] dt-bindings: Add binding for Hardkernel Odroid Go Advance
Date:   Fri,  6 Mar 2020 22:09:21 +0100
Message-Id: <20200306210922.172346-2-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200306210922.172346-1-heiko@sntech.de>
References: <20200306210922.172346-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Add a compatible for the Odroid Go Advance from Hardkernel.
The compatible used by the vendor already is odroid-go2, to distinguish
it from the previous (microcontroller-based) Odroid Go, so we're keeping
that, also to not cause unnecessary incompatibilites.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index f4ba00d679e6..4343ce7880e4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -358,6 +358,11 @@ properties:
           - const: haoyu,marsboard-rk3066
           - const: rockchip,rk3066a
 
+      - description: Hardkernel Odroid Go Advance
+        items:
+          - const: hardkernel,rk3326-odroid-go2
+          - const: rockchip,rk3326
+
       - description: Hugsun X99 TV Box
         items:
           - const: hugsun,x99
-- 
2.24.1

