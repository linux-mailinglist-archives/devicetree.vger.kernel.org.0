Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E323C78A978
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 11:59:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbjH1J7Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 05:59:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230245AbjH1J6u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 05:58:50 -0400
X-Greylist: delayed 536 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 28 Aug 2023 02:58:47 PDT
Received: from mout-y-209.mailbox.org (mout-y-209.mailbox.org [91.198.250.237])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B89791
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 02:58:47 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-y-209.mailbox.org (Postfix) with ESMTPS id 4RZ5Pl4f7Lz9spy;
        Mon, 28 Aug 2023 11:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1693216187;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=CcdTn8UfAzM6slmsMgUhSxZcDnljzHovdfdn5UI8RBc=;
        b=PTUJNuELlPaeN8cSeuFfbUYhCLTZfBoJh+/EjxEUsdGMDLogysje1SCW1+7m4e49jaGBqd
        bQlfgAXUj+kbiVnEOycfCKoRTJeI7dcnu11XfKV7pbjJ/PADWuuy4Kie0tBl8rmpbKslvA
        NhahMutwHnvrGxEvoxRZQSRHqEcQmdtJQNawDUWvevVYSs+tABZfyEU7VJnTgKU3D5141k
        pir6ImIyoDsWSYKienWPgcaZZYmBqdMVeP+UuQgRNgJKhM4LV0QUSEUdrhvUOZkzP0PXjn
        aFZ2TV+385AD8534o+NuL6jeNTTDpyzL/7td51J8AFMEOQGmHhAzQfU5ED12Tw==
From:   Elmar Albert <eal.git@mailbox.org>
To:     dri-devel@lists.freedesktop.org
Cc:     Elmar Albert <ealbert@data-modul.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/2] dt-bindings: display/panel: Add AUO G156HAN04.0 LVDS display
Date:   Mon, 28 Aug 2023 11:49:42 +0200
Message-Id: <20230828094943.123676-1-eal.git@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-RS-META: 7rgzgawhybhdfeyba56zuegtq5yy7img
X-MBO-RS-ID: 5833fdb31cba27b5bb8
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Elmar Albert <ealbert@data-modul.com>

Document support for the AUO G156HAN04.0 LVDS display.

G156HAN04.0 is a Color Active Matrix Liquid Crystal Display composed of
a TFT LCD panel, a driver circuit, and LED backlight system. The screen
format is intended to supportthe 16:9 FHD, 1920(H) x 1080(V) screen
and 16.7M colors (RGB 8-bits ) with LED backlight driving circuit.
All input signals are LVDS interface compatible.

G156HAN04.0 is designed for a display unit of notebook style
personal computer and industrial machine.

Signed-off-by: Elmar Albert <ealbert@data-modul.com>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 25b4589d4a58..cea702de664b 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -67,6 +67,8 @@ properties:
       - auo,g121ean01
         # AU Optronics Corporation 13.3" FHD (1920x1080) TFT LCD panel
       - auo,g133han01
+        # AU Optronics Corporation 15.6" FHD (1920x1080) TFT LCD panel
+      - auo,g156han04
         # AU Optronics Corporation 15.6" (1366x768) TFT LCD panel
       - auo,g156xtn01
         # AU Optronics Corporation 18.5" FHD (1920x1080) TFT LCD panel
-- 
2.34.1

