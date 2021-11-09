Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A54244A656
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 06:33:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242050AbhKIFge (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 00:36:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240642AbhKIFgb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 00:36:31 -0500
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B6EDC061205
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 21:33:45 -0800 (PST)
Received: by mail-pl1-x631.google.com with SMTP id q17so6800510plr.11
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 21:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=86/08aG+p6XRAME724Hp/6Odjw/P8UK3rjLz7Rko9pk=;
        b=Tm4npLty/l5AM/Js01XtTRKor+yxYHW6IRBDxBmsD2yXj8StaHtSkK3j0y3oj916Zd
         TBBBAXrcoc6QwTVKELFb8kCXqOVVuaOe2/Sd5vVPD7RpluQKKAaueTGMvTTjRy/npXau
         HtEVEkTHkW+p1xE7V3OwEzLpJ1yVgukEQ15sg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=86/08aG+p6XRAME724Hp/6Odjw/P8UK3rjLz7Rko9pk=;
        b=eW0ZkFhSwttsJ+PmRyexvFqKDnQvxfWbsdnsws5y2A2rpBL59GGQwun1uPikK3PaDh
         eOyVpjt3rKgExsi6kdnL2ds5GKMIKbAx/K2IuZ4I85b1tV5F3NAJ34qsplTq9Go3uke8
         hr/GuM7Vjcf1iilbCKEs2LY/1E03Wc+YwLmMMPMh2cHnFXf3d7f9QtpXmJYBaXFYE3Hb
         3gWfCnmU2ZbYFym3d2psbrmUGbx444LnIXYAAkfwpT62ulK27UqIjuhW8KGMKTXPBEZ/
         M3nBEqdTkBfa8lW59MzbBejPIU+U+b6IWeFbx5g0Dl1VjarXvkbn025M3C7n5wHP2rv7
         Dnig==
X-Gm-Message-State: AOAM532VXUFZWgcoOC9N5AKEyRflrCvOtSPwxFf4146R4zG4tjwPtyaG
        s6RSm7KKjb0Z8ukuggYhSdJCbw==
X-Google-Smtp-Source: ABdhPJxV6YcFFSMlfxvMpuBcJgAY5UI83IJHkfCiAreiXqCZlk03BfOZ0S3nPu/VjSCpvJwFL7amgA==
X-Received: by 2002:a17:902:7001:b0:141:67d3:adc6 with SMTP id y1-20020a170902700100b0014167d3adc6mr4509246plk.65.1636436024460;
        Mon, 08 Nov 2021 21:33:44 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:cc3e:b71b:e327:fb32])
        by smtp.gmail.com with ESMTPSA id w5sm13741479pgp.79.2021.11.08.21.33.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 21:33:44 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/7] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-cozmo
Date:   Tue,  9 Nov 2021 13:33:32 +0800
Message-Id: <20211109053334.1840273-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211109053334.1840273-1-hsinyi@chromium.org>
References: <20211109053334.1840273-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cozmo is known as Acer Chromebook 314 (CB314-2H/CB314-2HT) Chromebook.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 0fa55497b96fd2..7cf0c76cd31006 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -134,6 +134,10 @@ properties:
               - google,krane-sku176
           - const: google,krane
           - const: mediatek,mt8183
+      - description: Google Cozmo (Acer Chromebook 314)
+        items:
+          - const: google,cozmo
+          - const: mediatek,mt8183
       - description: Google Damu (ASUS Chromebook Flip CM3)
         items:
           - const: google,damu
-- 
2.34.0.rc0.344.g81b53c2807-goog

