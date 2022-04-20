Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E85F507DD4
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 02:56:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234342AbiDTA7U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 20:59:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233996AbiDTA7T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 20:59:19 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B70B13D01
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 17:56:35 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-deb9295679so414253fac.6
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 17:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MjbwUecN50NCi1WrcvFSCwpe8TTcmnyRDU439G3bofI=;
        b=MYKm1/GC+Khyw5NyVC0F06vuMI83m3yXsTtzvJIBN+Jz47l8W0sB9q6AHPutM7rlgF
         q/c2LNHmyf5HSlXvauf3uvuTugZO7OZu3plPIftMHqfb6Tb7/uL5oGJGn3i73sPngkps
         EqFOXq6n4H+qldOy9bsjCPSXDHHNf+0un/CViE1rD6c9lt5lltnrYkmwifyOZ+frFQ9n
         3g8XMSf/VNBO4uKKwvg4pNyeq/dQEZBDhGzUeoZxjPhPERKbRMAFWjhw01WMkayVZ3Ag
         aCzYsjm/xpXlx851XN2HncBJ1KNBMcDD0KiSz+siTi3W7p9+g5BUyNue55e5GHEk3bOz
         Tz1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MjbwUecN50NCi1WrcvFSCwpe8TTcmnyRDU439G3bofI=;
        b=KUQSjWxpF2WwQLMTBedRb4IglzxS7/vBg1Xjx9B8t8dGpabsmqVXMR0jQ67bs8x0qP
         74KEtmA65XpKPHDOax6yYugoo9UpjyeO2oN7G27sD3milQbKq8b+ZbNh9673Hb2db+fr
         JBRqAEW4+pADzA2wp81z9K2p/NOfEwuVvHkEgPpAtktMsMx6FldAn1d6FF9XBgN59Wdl
         V1nkBZ6QmxlZY+LHgD9x5LSnGis3e3I6NE+6wDPu3MChGDkImVlNRUTCLS5f350IooMo
         vVWq5LnoJN4e2pe97CjR4bCEkfjwDyH6BvN08yg6TNSrhfa3Ud7FplVMHDbYdjkACdPa
         js+g==
X-Gm-Message-State: AOAM533TQqpABR5+D09lSYw6GcrXIMXcvY8nSgNdfacC5nAwGNyyav8L
        xR56ltSI1dWlWWw+HaeszkU=
X-Google-Smtp-Source: ABdhPJzSJeJ+hyQaaMr4BYYGzVK9DQOvAtG4QWWew+HFYR/bPcR4O9gQimv06Q8TCz9cWZFtaLfLpg==
X-Received: by 2002:a05:6870:f697:b0:da:b3f:3268 with SMTP id el23-20020a056870f69700b000da0b3f3268mr562150oab.280.1650416194479;
        Tue, 19 Apr 2022 17:56:34 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:cae2:6d6c:7abc:9c1e])
        by smtp.gmail.com with ESMTPSA id i28-20020a9d4a9c000000b005ce06a77de2sm6227328otf.48.2022.04.19.17.56.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 17:56:33 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     sam@ravnborg.org
Cc:     robh+dt@kernel.org, hs@denx.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] dt-bindings: display: simple: Add Startek KD070WVFPA043-C069A panel
Date:   Tue, 19 Apr 2022 21:56:24 -0300
Message-Id: <20220420005625.990999-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add Startek KD070WVFPA043-C069A 7" TFT LCD panel compatible string.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1eb9dd4f8f58..e190eef66872 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -294,6 +294,8 @@ properties:
       - starry,kr070pe2t
         # Starry 12.2" (1920x1200 pixels) TFT LCD panel
       - starry,kr122ea0sra
+        # Startek KD070WVFPA043-C069A 7" TFT LCD panel
+      - startek,kd070wvfpa
         # Team Source Display Technology TST043015CMHX 4.3" WQVGA TFT LCD panel
       - team-source-display,tst043015cmhx
         # Tianma Micro-electronics TM070JDHG30 7.0" WXGA TFT LCD panel
-- 
2.25.1

