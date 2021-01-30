Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 60AB730977D
	for <lists+devicetree@lfdr.de>; Sat, 30 Jan 2021 19:12:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231899AbhA3SMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Jan 2021 13:12:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231820AbhA3SMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Jan 2021 13:12:22 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A4CCC061573
        for <devicetree@vger.kernel.org>; Sat, 30 Jan 2021 10:11:27 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DSj2N5kYfz1rwvQ;
        Sat, 30 Jan 2021 19:11:24 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DSj2N51k8z1tYTX;
        Sat, 30 Jan 2021 19:11:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id sUOYUuGMZfK3; Sat, 30 Jan 2021 19:11:23 +0100 (CET)
X-Auth-Info: LF3ZcnJfo/XE34mVwL3j+qVuemhQJiadJ8PKoFJANn0=
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sat, 30 Jan 2021 19:11:23 +0100 (CET)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: Add DT bindings for Displaytech DT050TFT-PTS
Date:   Sat, 30 Jan 2021 19:11:13 +0100
Message-Id: <20210130181114.161515-2-marex@denx.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210130181114.161515-1-marex@denx.de>
References: <20210130181114.161515-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT bindings for Displaytech DT050TFT-PTS 5.0" (800x480)
color TFT LCD panel, connected over DPI.

Signed-off-by: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index edb53ab0d9eb..a341a30952f9 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -101,6 +101,8 @@ properties:
       - chunghwa,claa101wb03
         # DataImage, Inc. 7" WVGA (800x480) TFT LCD panel with 24-bit parallel interface.
       - dataimage,scf0700c48ggu18
+        # Displaytech Ltd. DT050TFT-PTS 5.0" 800 RGB x 480 TFT LCD panel
+      - displaytech,dt050tft-pts
         # DLC Display Co. DLC1010GIG 10.1" WXGA TFT LCD Panel
       - dlc,dlc1010gig
         # Emerging Display Technology Corp. 3.5" QVGA TFT LCD panel
-- 
2.29.2

