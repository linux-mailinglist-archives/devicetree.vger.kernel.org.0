Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95F051F659B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2020 12:24:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726693AbgFKKYd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jun 2020 06:24:33 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:47404 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727115AbgFKKYT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jun 2020 06:24:19 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id 3A2262A4B78
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     Laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, jason@lakedaemon.net,
        tomi.valkeinen@ti.com, robh+dt@kernel.org, airlied@linux.ie
Subject: [PATCH v3 5/5] dt-bindings: display: ti,tfp410.yaml: make the ports node optional
Date:   Thu, 11 Jun 2020 12:23:56 +0200
Message-Id: <20200611102356.31563-6-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
References: <20200611102356.31563-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make the ports node optional, since there are some DTs that don't define
any ports for ti,tfp410.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
---
 Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
index 605831c1e836..1c9421eb80fa 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,tfp410.yaml
@@ -83,7 +83,6 @@ properties:
 
 required:
   - compatible
-  - ports
 
 if:
   required:
-- 
2.18.0

