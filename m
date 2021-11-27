Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A259F45FC7C
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 04:52:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236910AbhK0D4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 22:56:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352565AbhK0DyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 22:54:08 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2675C0613B3
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 19:24:25 -0800 (PST)
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 8B505801B2;
        Sat, 27 Nov 2021 04:24:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1637983462;
        bh=Fm4MQmpxeT3k03kAXRNhwX7gOsvI4vy9V0IfG9vkdhc=;
        h=From:To:Cc:Subject:Date:From;
        b=Kare1qGDeWfy9GsJ2t/u1DLQUGxdlNpPZC1yHr8prxL/AjMJB3Paks7QNk5PUBR/1
         0bFQY/2IsQZ0cL7FNy4MzLZAebHRvbWLjklfgBeZx0gMnA3hc39SxBa3DAZX9nU1YP
         FnAmNa5WcS/e1SpA0sEkOu0jpf7eZfvvf4SfE9kYsUKJXRqgNDH5eUUOUkVyEA37HB
         i4xkAngWg+GH7Epwc/HyCwno+DWpcwz+JLD6C7csAQpa0UEo6G0uTipVvxZuv3+2Y0
         dCt/gvkrRuuJaIaczbNlf0jbAOTev1llNtGHBgNqYhY+9sDiB1BXG8Y7+l+8RyP0v/
         +p8sfBzABSAIQ==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Andrzej Hajda <a.hajda@samsung.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Jonas Karlman <jonas@kwiboo.se>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: display: bridge: tc358867: Document DPI output support
Date:   Sat, 27 Nov 2021 04:24:02 +0100
Message-Id: <20211127032405.283435-1-marex@denx.de>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TC358767/TC358867/TC9595 are all capable of operating in multiple
modes, DPI-to-(e)DP, DSI-to-(e)DP, DSI-to-DPI. Document support for the
DPI output port, which can now be connected both as input and output.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Andrzej Hajda <a.hajda@samsung.com>
Cc: Jernej Skrabec <jernej.skrabec@siol.net>
Cc: Jonas Karlman <jonas@kwiboo.se>
Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml  | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index f1541cc05297..5cfda6f2ba69 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -61,8 +61,8 @@ properties:
       port@1:
         $ref: /schemas/graph.yaml#/properties/port
         description: |
-            DPI input port. The remote endpoint phandle should be a
-            reference to a valid DPI output endpoint node
+            DPI input/output port. The remote endpoint phandle should be a
+            reference to a valid DPI output or input endpoint node.
 
       port@2:
         $ref: /schemas/graph.yaml#/properties/port
-- 
2.33.0

