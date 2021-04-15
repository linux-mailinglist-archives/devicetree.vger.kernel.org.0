Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4DC1F3605E0
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 11:35:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232269AbhDOJfu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 05:35:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231200AbhDOJft (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 05:35:49 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF088C061574
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:26 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id w6so1152364pfc.8
        for <devicetree@vger.kernel.org>; Thu, 15 Apr 2021 02:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xu1g0DrI9LJa2kS8BINPf/ZvT/OZnLUEWclCoz5qqF0=;
        b=blT9RXOZKFYnIi7je/or3L0tNwJe6lh95mzApIRr8It2+ZZMTzYHs316gZz9Yxaxp2
         kLL1nlMGtX3oubf63tj3PI+f+Y9lSbnMISXQUicRFs7KZlJZEAiycZZIDhuqyNC5Jlga
         FJYrxLetHLeBxn25y/I5eIFtcyP91XqvHV1jQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xu1g0DrI9LJa2kS8BINPf/ZvT/OZnLUEWclCoz5qqF0=;
        b=q8znjAF8hstqtiGlxLab0GuQM5HGzCSZ21Mei1EVZDlOdeMfVVi+vmfLRa9ml/8Rs/
         EcAEu/I6fySxEzTar6vY4bOTVIWRj3f7cLCpB1KZF8cySa/3DXbynMB8U0fCsiU35hA+
         mHVM2z6+2w9jDl1ZKSdYobxXc/CigZGbYDNnzJBSVsEtjQp+Dd4k+iMwmtK8Qmer5b4J
         TAUpmkDKEe7GLc77rN8FvobUtqIvXaGCqrzjypYHCrU91oielWItjWM4+jGUndeAuXkU
         RVelqh6QVGu1lLDTJPvBFlIWKADvg+hggmdVzfn91kC0em0x4UzqKfTckUXx09Pqu17e
         oZrw==
X-Gm-Message-State: AOAM5326ikolYk5MBzwGfaiajEMynKGn/qE9up/YFyWyiVaTHgd2m3z3
        DPI1mkUTnXe9lEPF3NYVmxsVUQ==
X-Google-Smtp-Source: ABdhPJwBsLfLN3ng+D52RhMEcqV4qApLtFAf+1PjbHX87Zk1naeywUoQLBfR6alZ9YijRGgI8yYXZA==
X-Received: by 2002:aa7:950d:0:b029:244:4dd5:cd0a with SMTP id b13-20020aa7950d0000b02902444dd5cd0amr2335784pfp.59.1618479326295;
        Thu, 15 Apr 2021 02:35:26 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6432:a6cb:91d2:5e32])
        by smtp.gmail.com with ESMTPSA id a13sm1849502pgm.43.2021.04.15.02.35.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Apr 2021 02:35:25 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 2/8] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-willow
Date:   Thu, 15 Apr 2021 17:35:13 +0800
Message-Id: <20210415093519.1920877-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
In-Reply-To: <20210415093519.1920877-1-hsinyi@chromium.org>
References: <20210415093519.1920877-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Willow is known as Acer Chromebook 311 (C722/C722T).

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 81b86b189a8d..96c401597bd8 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -157,6 +157,13 @@ properties:
               - google,kodama-sku32
           - const: google,kodama
           - const: mediatek,mt8183
+      - description: Google Willow (Acer Chromebook 311 C722/C722T)
+        items:
+          - enum:
+              - google,willow-sku0
+              - google,willow-sku1
+          - const: google,willow
+          - const: mediatek,mt8183
       - items:
           - enum:
               - mediatek,mt8183-pumpkin
-- 
2.31.1.295.g9ea45b61b8-goog

