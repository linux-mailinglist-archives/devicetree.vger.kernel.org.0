Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8246781EA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 17:41:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233297AbjAWQlu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 11:41:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233294AbjAWQla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 11:41:30 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 652F32BF3C
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:40:39 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id b17so11959682pld.7
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:40:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B16MdEZGgWKroaibEVRgjt0AS9SNV+wNt8yTwqMwdvU=;
        b=3luz0yicHkzX9obA6wm0VTILTZd6AjbXSjByNM5YJy6QlQHNa0DGbpHhc2uxPO713/
         u4CpMSROHnkI7Vj/Ay60v+5J8j2bgJvRg1KB+7yxjjlyW9l/RgEk/hiTQQMAma6nNo8I
         YZLEnhwN7hAPCUC1848i88Kyml1DJcV8fH1vFmDGt7BjQ5x7qJVfjg1fwbbj2fKqTNgx
         KEW7uhaaO9KKSsB22Wfa7E0Qk0awybl+SEHB8DvgfvR18vR1hlX7rLfv0h43kJw3NRmd
         vQuVYu9rAYgOCCDBIHFvTpNFg8yM7iQqN7tZ/0Uq6zX94qnfWh3k2Jgb/rN7eraEPFqr
         xuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B16MdEZGgWKroaibEVRgjt0AS9SNV+wNt8yTwqMwdvU=;
        b=TX8BxHoEjR1plk2fsfOg7F0dDYsQxxr6k3yKiUEU2QXb1uv9TVfEcIfsCBJTKKLOYL
         MXv4isIg5U0RyKrWzRWdwD+Q/dMIdppJxHWF5h8ppxRPuWAUtO3UMJshYRTYCeOXE+kD
         ukWcOhqrCBFULXcUYDZatxlLQnguZs/fY2YHjAbrLTtQ8D751Nv038SM//qPHSYP3HW9
         fdm2i+75updY2/QQL/iW7XntqCiU9rQq1wo+j0pOUsouYMSxtM8sL3VK39El3QLWnawF
         IT3uaI8SXZZFX6xgMvEhj4sSUYx9h7FelUyMW0ljkaZh9PQ/zXgR6Ew1KqiXrXHzV3oC
         D8cg==
X-Gm-Message-State: AFqh2kooMjKqvNe72zitzjSoyxXjgaLB2Ohor0k+Qae1m6aiLqQXTACt
        UiOur+6+oMG+QkkCARMFXHDb1Q==
X-Google-Smtp-Source: AMrXdXuxO08rV+yFhtyvfHzEVpXPc/YDOR3YmKlRE40SimymNJOISGgMbAQsLZ6z1Wkav4ffxz2mbg==
X-Received: by 2002:a17:902:f312:b0:193:678:df13 with SMTP id c18-20020a170902f31200b001930678df13mr19832591ple.36.1674492037572;
        Mon, 23 Jan 2023 08:40:37 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:2279:f361:f93b:7971])
        by smtp.gmail.com with ESMTPSA id a3-20020a170902710300b0019269969d14sm17679971pll.282.2023.01.23.08.40.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 08:40:37 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Tom Cubie <tom@radxa.com>
Subject: [PATCH 1/4] drm: panel: jadard-jd9365da-h3: Fix panel vendor and model
Date:   Mon, 23 Jan 2023 22:10:15 +0530
Message-Id: <20230123164018.403037-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The initial datasheet claimed that chouzhong designed this 10"
DSI panel on top of JD9365DA IC, but later Radxa mentioned that
chouzhong is the manufacturer.

So the actual design of the panel, gsensor, and customized FPC
is done by Radxa. The panel model named is Radxa Display 10HD
with AD001 is the part number.

Fix the binding and panel driver with the proper panel vendor
and model.

Fixes: <6b818c533dd8> ("drm: panel: Add Jadard JD9365DA-H3 DSI panel")
Fixes: <bb3098eead99> ("dt-bindings: display: Document Jadard
JD9365DA-H3 DSI panel")
Reported-by: Tom Cubie <tom@radxa.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../bindings/display/panel/jadard,jd9365da-h3.yaml  |  4 ++--
 drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c    | 13 ++++++++-----
 2 files changed, 10 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index c06902e4fe70..10ba1b813304 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -16,7 +16,7 @@ properties:
   compatible:
     items:
       - enum:
-          - chongzhou,cz101b4001
+          - radxa,display-10hd-ad001
       - const: jadard,jd9365da-h3
 
   reg: true
@@ -52,7 +52,7 @@ examples:
         #size-cells = <0>;
 
         panel@0 {
-            compatible = "chongzhou,cz101b4001", "jadard,jd9365da-h3";
+            compatible = "radxa,display-10hd-ad001", "jadard,jd9365da-h3";
             reg = <0>;
             vdd-supply = <&lcd_3v3>;
             vccio-supply = <&vcca_1v8>;
diff --git a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
index 48c1702a863b..ea89cecad0cf 100644
--- a/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
+++ b/drivers/gpu/drm/panel/panel-jadard-jd9365da-h3.c
@@ -167,7 +167,7 @@ static const struct drm_panel_funcs jadard_funcs = {
 	.get_modes = jadard_get_modes,
 };
 
-static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
+static const struct jadard_init_cmd radxa_display_10hd_ad001_init_cmds[] = {
 	{ .data = { 0xE0, 0x00 } },
 	{ .data = { 0xE1, 0x93 } },
 	{ .data = { 0xE2, 0x65 } },
@@ -364,7 +364,7 @@ static const struct jadard_init_cmd cz101b4001_init_cmds[] = {
 	{ .data = { 0xE7, 0x0C } },
 };
 
-static const struct jadard_panel_desc cz101b4001_desc = {
+static const struct jadard_panel_desc radxa_display_10hd_ad001_desc = {
 	.mode = {
 		.clock		= 70000,
 
@@ -384,8 +384,8 @@ static const struct jadard_panel_desc cz101b4001_desc = {
 	},
 	.lanes = 4,
 	.format = MIPI_DSI_FMT_RGB888,
-	.init_cmds = cz101b4001_init_cmds,
-	.num_init_cmds = ARRAY_SIZE(cz101b4001_init_cmds),
+	.init_cmds = radxa_display_10hd_ad001_init_cmds,
+	.num_init_cmds = ARRAY_SIZE(radxa_display_10hd_ad001_init_cmds),
 };
 
 static int jadard_dsi_probe(struct mipi_dsi_device *dsi)
@@ -452,7 +452,10 @@ static void jadard_dsi_remove(struct mipi_dsi_device *dsi)
 }
 
 static const struct of_device_id jadard_of_match[] = {
-	{ .compatible = "chongzhou,cz101b4001", .data = &cz101b4001_desc },
+	{
+		.compatible = "radxa,display-10hd-ad001",
+		.data = &radxa_display_10hd_ad001_desc
+	},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, jadard_of_match);
-- 
2.25.1

