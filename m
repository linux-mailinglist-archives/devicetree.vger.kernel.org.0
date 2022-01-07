Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D243F48794B
	for <lists+devicetree@lfdr.de>; Fri,  7 Jan 2022 15:55:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347888AbiAGOzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jan 2022 09:55:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347901AbiAGOz2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jan 2022 09:55:28 -0500
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE36BC061401
        for <devicetree@vger.kernel.org>; Fri,  7 Jan 2022 06:55:27 -0800 (PST)
Received: by mail-wm1-x333.google.com with SMTP id o203-20020a1ca5d4000000b003477d032384so1428045wme.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jan 2022 06:55:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=47wpJBWQnnL/Yb6rNHbZNchIMuG97gnS58weYyw8g1s=;
        b=oDkoluSypttLPb8Umty2MkLN39zoNn+9O+8uwJHEHGGV530ukbfqnm4b05aPIAWwse
         /2V6s2vxjhUrjAZGU41ncmfN+ghD273nb2lCOlD6KX1CR5RGjjVkypoCBmQOYxnhbxGr
         j29xczS30M6R8PDuiilNYwCKA08PJYH1+/ufSiO6+xC+NrtfjlXlDevRjgguGzpQxey6
         x7b39MeJgsG8uKRUkQpPFg70pMUPxHe5oYg46UIHAhZbu3ZeDHbC3DXYRxIx7b3+Q/fZ
         fdOcqfqaB3CqPoclqeAW7ANd6Cz/7dUyXUxE25RwNSkOFMFulUUBKDXSglnWbiP/suCB
         fhVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=47wpJBWQnnL/Yb6rNHbZNchIMuG97gnS58weYyw8g1s=;
        b=iprJrVve4ZHgs2pKfKctDvU5zrumouH1Z0/62YvIhSE9yfuAK7beDNizMjRicWtGk0
         dHrosX2aY0DCBVn0phjYDX9QwcwGQODGD9n1izopl6iGu1kdtJpFm4YCu2YkxjpFj9Ax
         tbNWFGpbFxnhGLhCI5ciylgrgG8RGjM+np/lGaSYP08cCMxg9FO04tuMmQkWQRu7FIUs
         w2TgQCvTTUFAkhPITN7kHELR64+WBybovKdcCyIJGCw5GYE13vIVnhDhSLuW/m9lTdVw
         6W5y6yA+BcugyDmE1eKteBtRqY8TKcg8X/i57QRFuQAgCViF0NGc0fNAeMHN58vQN2U3
         1MpQ==
X-Gm-Message-State: AOAM5318A7D73W8dMNMEogEhtQ//mmADZtF+wHbyfkCbgVSzH8iCbGQa
        Z6R7G9OmrlYAcuY/zs4K5hCt4Q==
X-Google-Smtp-Source: ABdhPJyBKmX/qE3POuKtDj/Gi6P0EsDyoBMPeSdgpd9TbRF+5r9CaPnxZmF+nL27uoClnSD7luMOTQ==
X-Received: by 2002:a1c:7214:: with SMTP id n20mr11484032wmc.118.1641567326252;
        Fri, 07 Jan 2022 06:55:26 -0800 (PST)
Received: from localhost.localdomain ([2001:861:44c0:66c0:fc89:e826:8938:cbde])
        by smtp.gmail.com with ESMTPSA id n8sm5594492wri.47.2022.01.07.06.55.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jan 2022 06:55:25 -0800 (PST)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 2/6] dt-bindings: display: meson-vpu: add third DPI output port
Date:   Fri,  7 Jan 2022 15:55:11 +0100
Message-Id: <20220107145515.613009-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220107145515.613009-1-narmstrong@baylibre.com>
References: <20220107145515.613009-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add third port corresponding to the ENCL DPI encoder used to connect
to DSI or LVDS transceivers.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../devicetree/bindings/display/amlogic,meson-vpu.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
index 851cb0781217..525a01a38568 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
@@ -92,6 +92,11 @@ properties:
     description:
       A port node pointing to the HDMI-TX port node.
 
+  port@2:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node pointing to the DPI port node (e.g. DSI or LVDS transceiver).
+
   "#address-cells":
     const: 1
 
-- 
2.25.1

