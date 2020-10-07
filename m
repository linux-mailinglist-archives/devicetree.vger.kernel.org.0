Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC74285ACA
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 10:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727920AbgJGIpU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 04:45:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727832AbgJGIpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 04:45:11 -0400
Received: from hillosipuli.retiisi.eu (hillosipuli.retiisi.org.uk [IPv6:2a01:4f9:c010:4572::81:2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC7CC0613D2
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 01:45:10 -0700 (PDT)
Received: from lanttu.localdomain (lanttu-e.localdomain [192.168.1.64])
        by hillosipuli.retiisi.eu (Postfix) with ESMTP id B73D1634C8D;
        Wed,  7 Oct 2020 11:44:24 +0300 (EEST)
From:   Sakari Ailus <sakari.ailus@linux.intel.com>
To:     linux-media@vger.kernel.org
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 022/106] dt-bindings: nokia,smia: Remove nokia,nvm-size property
Date:   Wed,  7 Oct 2020 11:44:59 +0300
Message-Id: <20201007084505.25761-4-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201007084505.25761-1-sakari.ailus@linux.intel.com>
References: <20201007084505.25761-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

nokia,nvm-size property was removed from the bindings but it was left in
the example. Remove it from the example, too.

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
---
 Documentation/devicetree/bindings/media/i2c/nokia,smia.txt | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt b/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt
index 5ea4f799877b..5f39a7070c51 100644
--- a/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt
+++ b/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt
@@ -54,7 +54,6 @@ Example
 		vana-supply = <&vaux3>;
 		clocks = <&omap3_isp 0>;
 		clock-frequency = <9600000>;
-		nokia,nvm-size = <512>; /* 8 * 64 */
 		port {
 			smiapp_ep: endpoint {
 				data-lanes = <1 2>;
-- 
2.27.0

