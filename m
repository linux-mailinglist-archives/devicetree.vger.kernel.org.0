Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85435647F4B
	for <lists+devicetree@lfdr.de>; Fri,  9 Dec 2022 09:34:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiLIIeF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Dec 2022 03:34:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229784AbiLIId7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Dec 2022 03:33:59 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB23260B73
        for <devicetree@vger.kernel.org>; Fri,  9 Dec 2022 00:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670574832; x=1702110832;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=luhwqP615gaIKUHkckaMaynP8Q6kPKzrxxIa8K9DBHA=;
  b=GmWbiimwEnES/0QGix58Pwx2v7Gt1qFvwwzJui7uARvKMOCSXW3tXKjZ
   vsD7lPZyC3khRpTVB5Jq/3wXvnA4nGa7qEWwCZldn7SuH04QBwQWcA/g/
   2PcCiN7xDhlduqLpkxBsnqjkjZPLwdmSxU/67opm5V+b1ZcycxKy7NSZK
   hIO8rXt0YLuzh2BrDGN95LKJoakkJLSO3B07ooA6atTfODBPxN1IIftjN
   iW0ylLzPwRBBU7QRwv+mH461+COtGV+doPJ8ux9UWlEZWPUY/Ejiy+9vt
   oqr0V+WwzAQCUcUPdFbrF4ypqlNgDs9s1sGg1y62vz3aiDDsgYjjAjRrA
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857152"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 09 Dec 2022 09:33:47 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 09 Dec 2022 09:33:47 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 09 Dec 2022 09:33:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1670574827; x=1702110827;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=luhwqP615gaIKUHkckaMaynP8Q6kPKzrxxIa8K9DBHA=;
  b=EWMMD5Tu+d4kwwTJ5UTLE9HHPazaYNiGjw72Gsyv/IvccQRwX455jsj5
   d+xFG/NdwrXJ4riNbCiYN98QMH5SOzfGwsS3qQODq28AQ6DTT7PPvdRSw
   uinhkUzO2BhHuUQfrDCqspJOPsm75RSBI5oy7EbiRc7g/TrguaakgiNTg
   ++gMTroK2v7QQTBJ7ryz+OaowDNGCRQ6TbV0gullKXu9ipxI1CS8M2ZNq
   2u76lEsshCl6+SjOQ3W68JzaP2J1b8n2h2wsuXYDiNw7gZBPs0H1o3vhl
   N9brsvQTIbJyEdpSu5g31FiecPIOdm4+YG7BeuzPp3HXtHOwh0EW5XtU7
   A==;
X-IronPort-AV: E=Sophos;i="5.96,230,1665439200"; 
   d="scan'208";a="27857146"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 09 Dec 2022 09:33:46 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C79EA280072;
        Fri,  9 Dec 2022 09:33:45 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Marek Vasut <marex@denx.de>,
        Frieder Schrempf <frieder.schrempf@kontron.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: drm/bridge: ti-sn65dsi83: Add enable delay property
Date:   Fri,  9 Dec 2022 09:33:38 +0100
Message-Id: <20221209083339.3780776-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
References: <20221209083339.3780776-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It takes some time until the enable GPIO has settled when turning on.
This delay is platform specific and may be caused by e.g. voltage
shifts, capacitors etc.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index 48a97bb3e2e0d..3f50d497cf8ac 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -32,6 +32,10 @@ properties:
     maxItems: 1
     description: GPIO specifier for bridge_en pin (active high).
 
+  ti,enable-delay-us:
+    default: 10000
+    description: Enable time delay for enable-gpios
+
   vcc-supply:
     description: A 1.8V power supply (see regulator/regulator.yaml).
 
-- 
2.34.1

