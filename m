Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8B7C423A55
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 11:16:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230120AbhJFJSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 05:18:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237801AbhJFJSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 05:18:35 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F9C8C06174E
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 02:16:43 -0700 (PDT)
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 65C92581;
        Wed,  6 Oct 2021 11:16:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1633511800;
        bh=7EZEVLor2blKHboM0zN+7tSG1twSkFXBR0R70J04Rwk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=mWENS5tMD5lmYT97wh+0GZOBPwo9xBrCaUV/1+tGjTWMg4JAx9w15gAmjJNx/jm3k
         Y8zsGXQk2f2BiS0Dq5fABAE/WSiLfTp2lezKma76a2nIl0SYeqgPDwMeZ1/1iujJ6i
         Jz7u/CUnVyJnpYDn96zFubKK/pwSxQqctYpG7X6s=
From:   Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH] dt-bindings: display: bridge: sn65dsi83: Make enable GPIO optional
Date:   Wed,  6 Oct 2021 12:16:24 +0300
Message-Id: <20211006091624.6293-1-laurent.pinchart+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006074713.1094396-3-alexander.stein@ew.tq-group.com>
References: <20211006074713.1094396-3-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

The SN65DSI8x EN signal may be tied to VCC, or otherwise controlled by
means not available to the kernel. Make the GPIO optional.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml         | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
index 07b20383cbca..a5779bf17849 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
@@ -93,7 +93,6 @@ properties:
 required:
   - compatible
   - reg
-  - enable-gpios
   - ports
 
 allOf:

base-commit: 1e3944578b749449bd7fa6bf0bae4c3d3f5f1733
-- 
Regards,

Laurent Pinchart

