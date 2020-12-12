Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 849FA2D83D6
	for <lists+devicetree@lfdr.de>; Sat, 12 Dec 2020 02:25:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405926AbgLLBYZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 20:24:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390130AbgLLBXy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 20:23:54 -0500
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com [IPv6:2607:f8b0:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F461C0613CF
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 17:23:14 -0800 (PST)
Received: by mail-pl1-x644.google.com with SMTP id r4so5500313pls.11
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 17:23:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vBtSCo2aiVK+Pe61Pe1iCNpVRoVlE9vowQAOup0zUVo=;
        b=dYSqgqy5cEveG6dzM6glJgQcweYN29Jm+7P3TivHfgKnveCQwCxxrnWF2dKcStcQpJ
         3+oEJsl6Sq5GkXwsmx03Xjlu+yrt4/+pPZiv/LSMfL+BDxmwWGKQx4/jWqS8fgJupmQ/
         w9cAUX4Jbd3eo+7K5KTIy4Q0MKjyvVzZ7nXs0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vBtSCo2aiVK+Pe61Pe1iCNpVRoVlE9vowQAOup0zUVo=;
        b=Lroi4BFqt/ZUf838NLyXooNTw9v90rI8xKq+/RdldyChowsayI3oHQIeX4nAGHiJ/h
         M7kEjp6PcdSmlpbEiXA/RQQGfFsp22UBqTHiAR6KamMoMBsRhV2IVKdYMWq9JFBUlHQy
         F8/if9mhkneYLSjXmztEHzvwUKeJO/cH0DP7ZAiSIC/KJ7IPbmtJl5ck4LXk1Fv8vzJC
         MrOjFFqjlU1P50thaXdh/KQ9Q1hDEGsSWwG2ULUJVqhq4L1NsK+rgyAd6fv+wsnm+Xv2
         jW9sxYx0M0i8sO51Ks0r+HlL7Q0s02W0TZshyhGzMpl/LvSqVZVw2PVg5w5r1wxfwnPd
         DAhg==
X-Gm-Message-State: AOAM5323SXziFJ1gjACnfNHzF6lRd8g0KCkQSpSTTraGBouafVpk/1QM
        DmyNO2LLxNoVA6kKWDRxnMOrpg==
X-Google-Smtp-Source: ABdhPJy0Omx3Bd/nYZtQzkm1h7saxbiLpbRzdG7yoONL2juuSNDiJMIvVeh0TdIIKVu6urt97ZoSww==
X-Received: by 2002:a17:90a:ead1:: with SMTP id ev17mr15819352pjb.51.1607736193819;
        Fri, 11 Dec 2020 17:23:13 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id c2sm11623071pfa.59.2020.12.11.17.23.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 17:23:13 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org, arnd@arndb.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH] dt-bindings: vendor-prefixes: Fix misordering introduced by honestar prefix
Date:   Sat, 12 Dec 2020 10:22:53 +0900
Message-Id: <20201212012253.373074-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The prefix for honestar should come before honeywell.

Fixes: 43181b5d8072 ("dt-bindings: vendor-prefixes: Add honestar vendor prefix")
Link: https://lore.kernel.org/linux-arm-kernel/CAFr9PXmwOEuHHA-kDeL1YS8bWvovrt43MXxyy1J+hGbXwPUFSA@mail.gmail.com/
Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a6cf2cef6f89..5f9bb0c152af 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -449,10 +449,10 @@ patternProperties:
     description: Hitex Development Tools
   "^holt,.*":
     description: Holt Integrated Circuits, Inc.
-  "^honeywell,.*":
-    description: Honeywell
   "^honestar,.*":
     description: Honestar Technologies Co., Ltd.
+  "^honeywell,.*":
+    description: Honeywell
   "^hoperun,.*":
     description: Jiangsu HopeRun Software Co., Ltd.
   "^hp,.*":
-- 
2.29.2

