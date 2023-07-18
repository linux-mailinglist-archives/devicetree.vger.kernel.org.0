Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 565A57576EE
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 10:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230297AbjGRIoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 04:44:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbjGRIoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 04:44:18 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0496FF
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 01:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1689669857; x=1721205857;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=HgPdbUmEfsLF8pyFhzs6jd6wcfwbV7JK9KcdUCKPGNA=;
  b=bl8tmXIqtU1thmbvK4rDS5TX9I8+B3YWRGGbwKN4qmH+vaZkNgXe5YIC
   96uCt2pZMNnMUAYV6oQEnsPQ+6mBAuwv2nYs4x98StUyO5C2BVE9ujMey
   uJkhQPPXVqPtF9Wj/2OtMlM6mz1Ek4baVp4ZONQTBQwETdnCXFdqCRahs
   YkeNJiomaRPXg0FGlKf1zkyQ/C/TSl0XVBOueRUQc069WnSOSkmNICw0z
   Yv3QbN0+ou5Yici+kq0jfBsFx3DOWjaie5pTIlIWgE8wrb2bOqFr9C0hC
   af9BKPNADXIUGBjV7WvnFL8wS6i9w0kzIllRS872U+wAsPZgOUzHWBKtE
   g==;
X-IronPort-AV: E=Sophos;i="6.01,213,1684792800"; 
   d="scan'208";a="31980959"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Jul 2023 10:44:15 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id AA7FA280078;
        Tue, 18 Jul 2023 10:44:14 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: display: bridge: tc358867: Add interrupt property
Date:   Tue, 18 Jul 2023 10:44:11 +0200
Message-Id: <20230718084411.1189831-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This bridge has an interrupt line for event signaling. Add the
corresponding property.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
This fixes warnings like:
imx93-tqma9352-mba93xxla.dtb: dp-bridge@f: 'interrupt-parent', 'interrupts'
do not match any of the regexes: 'pinctrl-[0-9]+'
  from schema $id: http://devicetree.org/schemas/display/bridge/toshiba,tc358767.yaml#

 .../devicetree/bindings/display/bridge/toshiba,tc358767.yaml   | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
index 0521261b04a9..ae894d996d21 100644
--- a/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/toshiba,tc358767.yaml
@@ -49,6 +49,9 @@ properties:
     description: |
         OF device-tree gpio specification for RSTX pin(active low system reset)
 
+  interrupts:
+    maxItems: 1
+
   toshiba,hpd-pin:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum:
-- 
2.34.1

