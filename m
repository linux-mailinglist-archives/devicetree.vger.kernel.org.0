Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 57478AB980
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2019 15:42:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393355AbfIFNml (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Sep 2019 09:42:41 -0400
Received: from relay2-d.mail.gandi.net ([217.70.183.194]:39075 "EHLO
        relay2-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393354AbfIFNml (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Sep 2019 09:42:41 -0400
X-Originating-IP: 2.224.242.101
Received: from uno.lan (2-224-242-101.ip172.fastwebnet.it [2.224.242.101])
        (Authenticated sender: jacopo@jmondi.org)
        by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 2ED2340018;
        Fri,  6 Sep 2019 13:42:38 +0000 (UTC)
From:   Jacopo Mondi <jacopo+renesas@jmondi.org>
To:     laurent.pinchart@ideasonboard.com,
        kieran.bingham+renesas@ideasonboard.com, geert@linux-m68k.org,
        horms@verge.net.au, uli@fpond.eu,
        VenkataRajesh.Kalakodima@in.bosch.com
Cc:     Jacopo Mondi <jacopo+renesas@jmondi.org>,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com
Subject: [PATCH v4 2/9] dt-bindings: display, renesas,du: Document cmms property
Date:   Fri,  6 Sep 2019 15:43:34 +0200
Message-Id: <20190906134341.9879-3-jacopo+renesas@jmondi.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190906134341.9879-1-jacopo+renesas@jmondi.org>
References: <20190906134341.9879-1-jacopo+renesas@jmondi.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the newly added 'cmms' property which accepts a list of phandle
and channel index pairs that point to the CMM units available for each
Display Unit output video channel.

Signed-off-by: Jacopo Mondi <jacopo+renesas@jmondi.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 Documentation/devicetree/bindings/display/renesas,du.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/renesas,du.txt b/Documentation/devicetree/bindings/display/renesas,du.txt
index c97dfacad281..1773b0a2f54f 100644
--- a/Documentation/devicetree/bindings/display/renesas,du.txt
+++ b/Documentation/devicetree/bindings/display/renesas,du.txt
@@ -45,6 +45,10 @@ Required Properties:
     instance that serves the DU channel, and the channel index identifies the
     LIF instance in that VSP.

+  - renesas,cmms: A list of phandles to the CMM instances present in the SoC,
+    one for each available DU channel. The property shall not be specified for
+    SoCs that do not provide any CMM (such as V3M and V3H).
+
 Required nodes:

 The connections to the DU output video ports are modeled using the OF graph
@@ -91,6 +95,7 @@ Example: R8A7795 (R-Car H3) ES2.0 DU
 			 <&cpg CPG_MOD 721>;
 		clock-names = "du.0", "du.1", "du.2", "du.3";
 		vsps = <&vspd0 0>, <&vspd1 0>, <&vspd2 0>, <&vspd0 1>;
+		renesas,cmms = <&cmm0 &cmm1 &cmm2 &cmm3>;

 		ports {
 			#address-cells = <1>;
--
2.23.0

