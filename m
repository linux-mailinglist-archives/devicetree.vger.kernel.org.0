Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 953A42500AA
	for <lists+devicetree@lfdr.de>; Mon, 24 Aug 2020 17:15:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726765AbgHXPPN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Aug 2020 11:15:13 -0400
Received: from mailoutvs22.siol.net ([185.57.226.213]:33978 "EHLO
        mail.siol.net" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726473AbgHXPNk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Aug 2020 11:13:40 -0400
Received: from localhost (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTP id 64E9E525762;
        Mon, 24 Aug 2020 17:04:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
        by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id SoJTlRNGNgBS; Mon, 24 Aug 2020 17:04:50 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
        by mail.siol.net (Postfix) with ESMTPS id 1DB8252576D;
        Mon, 24 Aug 2020 17:04:50 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net [89.212.178.211])
        (Authenticated sender: 031275009)
        by mail.siol.net (Postfix) with ESMTPSA id 79D1452576C;
        Mon, 24 Aug 2020 17:04:47 +0200 (CEST)
From:   Jernej Skrabec <jernej.skrabec@siol.net>
To:     mripard@kernel.org, wens@csie.org, robh+dt@kernel.org
Cc:     airlied@linux.ie, daniel@ffwll.ch, heiko@sntech.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-sunxi@googlegroups.com
Subject: [PATCH 1/2] dt-bindings: gpu: mali-utgard: Add Allwinner R40 compatible
Date:   Mon, 24 Aug 2020 17:04:33 +0200
Message-Id: <20200824150434.951693-2-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200824150434.951693-1-jernej.skrabec@siol.net>
References: <20200824150434.951693-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allwinner R40 SoC contains Mali400, so add its specific compatible to
bindings.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b=
/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index 6226d31ec4b7..d4d785790eaa 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -25,6 +25,7 @@ properties:
               - allwinner,sun4i-a10-mali
               - allwinner,sun7i-a20-mali
               - allwinner,sun8i-h3-mali
+              - allwinner,sun8i-r40-mali
               - allwinner,sun50i-a64-mali
               - rockchip,rk3036-mali
               - rockchip,rk3066-mali
@@ -129,6 +130,7 @@ allOf:
             enum:
               - allwinner,sun4i-a10-mali
               - allwinner,sun7i-a20-mali
+              - allwinner,sun8i-r40-mali
               - allwinner,sun50i-a64-mali
               - allwinner,sun50i-h5-mali
               - amlogic,meson8-mali
--=20
2.28.0

