Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 239C4472D77
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 14:36:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237587AbhLMNgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 08:36:36 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:62170 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236001AbhLMNgg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Dec 2021 08:36:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639402596; x=1670938596;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ufYaztoM7btUy9LuPRGwqpeGKIKUMrwofkGEOKopoSs=;
  b=jtm4ZNIf3xqQrjz8H8hg4lZMx+TjtJeSwqyOSIAoVwH7hxhkZlHL+wl+
   LWk30eWoitFSMoJeVNNsKtmg0OGliSZoi2Bo0deyB7osMRAPvrltLWOOE
   PkgEuFMox8k9AO35QL4IXLzxg8DT9y97O5vzxUvg5deob9CNVaU+nd1OT
   oEClTh/EzfN+3TTFhIDXRDc10KpIVK53W7AIQl5Fbmx/vnSuRx0IWkdkA
   ///RTXNgvuevlPHNv6k3wiIc6InAzq/r/Aw5/6FAAz390Oyy8Rxieza3I
   zjeErvn7S9LFND3eYM0z+C/QFxVZl6lBEeM47XLsNXGEhzpujly88rNQd
   g==;
X-IronPort-AV: E=Sophos;i="5.88,202,1635199200"; 
   d="scan'208";a="21012622"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Dec 2021 14:36:34 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Dec 2021 14:36:34 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Dec 2021 14:36:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1639402594; x=1670938594;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ufYaztoM7btUy9LuPRGwqpeGKIKUMrwofkGEOKopoSs=;
  b=KKj+3NMxyj6W07qYUFOR8sqRTVsvFBiGLmoZtc8gxWUUyxOpo6ggjE1X
   dDGAo7aFwzbn9OuuduhVYRYQbxe/KtnNjnmMJKTxzcXf9GEkM+QHL2zqi
   UoWf+HA/U8Fqms0QFKcJGR6VaQmmSAQybktKbMGoCjDppWWfPPigSP5RJ
   ugl0ff+IoV/RQRMr8ND8WBk8TJ0JGaskMTBnfG0f075s6lq3Sr40tj4PA
   p28kLvsYG+6YzruKHBZLmJJyz2Nm1Ee7tvAcjyyGuWJGA4+msOb31zbtH
   vyMGYZ8Ps2jRlnAIanszLb3UjC/0ODf9Ahof5fvezIfgaAkKRPlLXxOFp
   A==;
X-IronPort-AV: E=Sophos;i="5.88,202,1635199200"; 
   d="scan'208";a="21012621"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Dec 2021 14:36:34 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 31B95280075;
        Mon, 13 Dec 2021 14:36:34 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Alexander Stein <alexander.stein@ew.tq-group.com>
Subject: [PATCH v5 1/4] dt-bindings: display: bridge: sn65dsi83: Make enable GPIO optional
Date:   Mon, 13 Dec 2021 14:36:23 +0100
Message-Id: <20211213133626.2498056-2-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211213133626.2498056-1-alexander.stein@ew.tq-group.com>
References: <20211213133626.2498056-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The SN65DSI8x EN signal may be tied to VCC, or otherwise controlled by
means not available to the kernel. Make the GPIO optional.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index b446d0f0f1b4..c3f3e73f740a 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -91,7 +91,6 @@ properties:
 required:
   - compatible
   - reg
-  - enable-gpios
   - ports
 
 allOf:
-- 
2.25.1

