Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C08922309B0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 14:12:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729237AbgG1MM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Jul 2020 08:12:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729225AbgG1MM4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Jul 2020 08:12:56 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C7B5C061794
        for <devicetree@vger.kernel.org>; Tue, 28 Jul 2020 05:12:56 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4BGFtX6hkyz1rtMh;
        Tue, 28 Jul 2020 14:12:52 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4BGFtX5DGLz1qtx3;
        Tue, 28 Jul 2020 14:12:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id LvIVDPm822gk; Tue, 28 Jul 2020 14:12:51 +0200 (CEST)
X-Auth-Info: 0hTjO/13GLCLqFA7OYPDyaErfRHLkMZdk8u6FZaE048=
Received: from desktop.lan (ip-86-49-101-166.net.upcbroadband.cz [86.49.101.166])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Tue, 28 Jul 2020 14:12:51 +0200 (CEST)
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     Marek Vasut <marex@denx.de>, Eric Anholt <eric@anholt.net>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH V2 2/3] dt-bindings: Add DT bindings for Powertip PH800480T013
Date:   Tue, 28 Jul 2020 14:12:45 +0200
Message-Id: <20200728121246.23304-2-marex@denx.de>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200728121246.23304-1-marex@denx.de>
References: <20200728121246.23304-1-marex@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DT bindings for Powertip PH800480T013 800x480 parallel LCD,
this one is used in the Raspberry Pi 7" touchscreen display unit.

Signed-off-by: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Eric Anholt <eric@anholt.net>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org
---
V2: Add the bindings to panel-simple.yaml
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 6deeeed59e59..5a0af2b80aba 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -219,6 +219,8 @@ properties:
       - osddisplays,osd070t1718-19ts
         # One Stop Displays OSD101T2045-53TS 10.1" 1920x1200 panel
       - osddisplays,osd101t2045-53ts
+        # POWERTIP PH800480T013-IDF2 7.0" WVGA TFT LCD panel
+      - powertip,ph800480t013-idf02
         # QiaoDian XianShi Corporation 4"3 TFT LCD panel
       - qiaodian,qd43003c0-40
         # Rocktech Displays Ltd. RK101II01D-CT 10.1" TFT 1280x800
-- 
2.27.0

