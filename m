Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 03EA330977B
	for <lists+devicetree@lfdr.de>; Sat, 30 Jan 2021 19:12:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230197AbhA3SMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Jan 2021 13:12:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231820AbhA3SMH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Jan 2021 13:12:07 -0500
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9220FC061574
        for <devicetree@vger.kernel.org>; Sat, 30 Jan 2021 10:11:27 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4DSj2M63cmz1rvxj;
        Sat, 30 Jan 2021 19:11:23 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4DSj2M4ndMz1tYTW;
        Sat, 30 Jan 2021 19:11:23 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id 0IlC7nlLDn4r; Sat, 30 Jan 2021 19:11:22 +0100 (CET)
X-Auth-Info: ly0+4a/ojFJ4Y4KpU017wzzSPZ5two6mkyqLQ5ycg+k=
Received: from tr.lan (ip-89-176-112-137.net.upcbroadband.cz [89.176.112.137])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Sat, 30 Jan 2021 19:11:22 +0100 (CET)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Eric Anholt <eric@anholt.net>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: Add vendor prefix for Displaytech
Date:   Sat, 30 Jan 2021 19:11:12 +0100
Message-Id: <20210130181114.161515-1-marex@denx.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Displaytech Ltd. is an LCD panel manufacturer.

Signed-off-by: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Eric Anholt <eric@anholt.net>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2735be1a8470..866295dcb730 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -279,6 +279,8 @@ patternProperties:
     description: Diglent, Inc.
   "^dioo,.*":
     description: Dioo Microcircuit Co., Ltd
+  "^displaytech,.*":
+    description: Displaytech Ltd.
   "^dlc,.*":
     description: DLC Display Co., Ltd.
   "^dlg,.*":
-- 
2.29.2

