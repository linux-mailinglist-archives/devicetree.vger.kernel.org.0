Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA89B462E82
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 09:28:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234398AbhK3IbY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 03:31:24 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:24996 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234388AbhK3IbY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 30 Nov 2021 03:31:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1638260885; x=1669796885;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=y087io6W78myDS6+K3HfVOM/2PolVU0QVHvntIVqHnE=;
  b=OZp7+laMr5RJeLZNFAdlIhIgtAeOIlvuNPfpDMug6neg8sVwYMP8lorC
   3YlUMsET/4xkG7gz7M1VPr+0rWGs4ESD9n9mPrfMF8R/5RdEingze6WVe
   gSIUyrje4NcgFJr2U7PVcOdvMU3V+FyPd4Qgane5JjwcqdOcmrRGOx2hi
   aRn9KhjNiSk3K3d4bHz6WPDHnVSKAkOl4yIFfrVvdEg+zdYg4+LwukDwu
   WU6vesrLpdT2vYLAClPGH9G7Fj+8c0dgzYd0b2QdqeTVrT1n2JLrqOfOU
   QN9BPtF0Ftg1RWjV2vbkzZ2wQNrSh1DdFcJ9pvm1D+DpkX2dqwZ+6cHdK
   g==;
X-IronPort-AV: E=Sophos;i="5.87,275,1631570400"; 
   d="scan'208";a="20748269"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 30 Nov 2021 09:28:04 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 30 Nov 2021 09:28:04 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 30 Nov 2021 09:28:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1638260884; x=1669796884;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=y087io6W78myDS6+K3HfVOM/2PolVU0QVHvntIVqHnE=;
  b=NKqmTleBpBbRwRrrLV7RdbwAtZ+i7f/ZJS0VbzNDjkTYYqEoyXydH9tQ
   EcTkVZWQWGhyRk3/efN8a7c5dOI3dW+oHj8J1Aswvz13YvQ5WQvd6E8Ry
   uGBShu9+KWGD60+NL8LNyc2bRieqeMWGFxaYVKnxf8VgdzmJ1w6NqgHs5
   cBx4dQDy695S1tMOCtBmPgilViXyehIcO2CIzYZgA1BTY4gIH5fX0vag9
   w04q6IO0nGDtGnKm/1ZqcYnpXQtSfZ2TXYzPKh7af7sIVTVhub7rmqgRk
   XYVuOGlXlBmQQbtyodRLFevoeTdgtmT4XxnRoQNc8/zb7JXws4s+MprmF
   A==;
X-IronPort-AV: E=Sophos;i="5.87,275,1631570400"; 
   d="scan'208";a="20748268"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 30 Nov 2021 09:28:04 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 7A3D3280065;
        Tue, 30 Nov 2021 09:28:04 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Andrew Lunn <andrew@lunn.ch>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jakub Kicinski <kuba@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: net: Reintroduce PHY no lane swap binding
Date:   Tue, 30 Nov 2021 09:27:56 +0100
Message-Id: <20211130082756.713919-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This binding was already documented in phy.txt, commit 252ae5330daa
("Documentation: devicetree: Add PHY no lane swap binding"), but got
accidently removed during YAML conversion in commit d8704342c109
("dt-bindings: net: Add a YAML schemas for the generic PHY options").

Note: 'enet-phy-lane-no-swap' and the absence of 'enet-phy-lane-swap' are
not identical, as the former one disable this feature, while the latter
one doesn't change anything.

Fixes: d8704342c109 ("dt-bindings: net: Add a YAML schemas for the generic PHY options")
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index 2766fe45bb98..ee42328a109d 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -91,6 +91,14 @@ properties:
       compensate for the board being designed with the lanes
       swapped.
 
+  enet-phy-lane-no-swap:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      If set, indicates that PHY will disable swap of the
+      TX/RX lanes. This property allows the PHY to work correcly after
+      e.g. wrong bootstrap configuration caused by issues in PCB
+      layout design.
+
   eee-broken-100tx:
     $ref: /schemas/types.yaml#/definitions/flag
     description:
-- 
2.25.1

