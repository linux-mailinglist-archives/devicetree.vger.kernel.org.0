Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C6B33413DA
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 04:53:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233653AbhCSDxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 23:53:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233597AbhCSDwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 23:52:53 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5385BC06174A
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 20:52:53 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id g10so2327405plt.8
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 20:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XWzvtynt4AJ0reH53LsMfKbeHPtq+LLFpJ8/+IuTPMQ=;
        b=nJLN2WFsjtFQiWof4oNy+YxyihydLBWh4qwNOFnf0aIcJrJ0xCH6+zVC7NeBulyggI
         +X2SvdDoMQ+zMZRCaYz0TncglBGpSInS2B0WLL7DsDtk53+aAZEbySJxUGrcw5CajT3K
         pp1cNAmDgcE2zRMNEqneCiVjMrrqB48MAd0u4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XWzvtynt4AJ0reH53LsMfKbeHPtq+LLFpJ8/+IuTPMQ=;
        b=dEdDjTmmkTJFAUC8o3mbHvpX9Kc9VVXCdlsXBCsp0zSFCYS678UWxutdkWUkbkTGZb
         HYpi8IjL5v6jpjioUQ/3iFlitq+r9tFBzEiIFkYil7UkeRXDtI3TWumIbZ4dBjXXKMh2
         Dtj5nBIw31XIGcgdJ+NTPZ5xQq1XcMsFSkAXzcMJaGbrnEBSdHBtKA49lGN0sEi/bDtV
         B3zGsfVgWdId7bv/e4afUGN6Wz1z6RVmc5OPWxf4DlisW5lfF9TmrD4XM6x5x42XuyOY
         sJLJu+wiv/ZLf/mrdggMLW2qwhARyhCsBji5xTsSQvEDTIz+89Y7jUZYRXgecGlV358d
         1eIg==
X-Gm-Message-State: AOAM53354rUiKesWGxSN1pXLVJn0QZ4jGa7CSSgzk2Wso2aWd+mqpQDm
        flkZFpZQNqr+gL3cAwyVqZFiJw==
X-Google-Smtp-Source: ABdhPJyfoXCl7+WogHp7CN5EAeytEsyWX0kmezgZb4+wADsb3Co6x3FsZ9/Tn07f6CTgw8724PT5yw==
X-Received: by 2002:a17:90a:db01:: with SMTP id g1mr7755704pjv.127.1616125972878;
        Thu, 18 Mar 2021 20:52:52 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e12f:5c36:14f:bbf5])
        by smtp.gmail.com with ESMTPSA id u66sm3442180pfu.186.2021.03.18.20.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 20:52:52 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, Ben Ho <Ben.Ho@mediatek.com>
Subject: [PATCH v4 2/4] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-juniper
Date:   Fri, 19 Mar 2021 11:52:43 +0800
Message-Id: <20210319035245.2751911-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
In-Reply-To: <20210319035245.2751911-1-hsinyi@chromium.org>
References: <20210319035245.2751911-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mt8183-kukui-jacuzzi-juniper board also known as Acer Chromebook Spin 311,
using mediatek mt8183 SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index a86716cdd408..edee2c3f8620 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -129,6 +129,11 @@ properties:
         items:
           - const: google,damu
           - const: mediatek,mt8183
+      - description: Google Juniper (Acer Chromebook Spin 311)
+        items:
+          - const: google,juniper-sku16
+          - const: google,juniper
+          - const: mediatek,mt8183
 
 additionalProperties: true
 
-- 
2.31.0.rc2.261.g7f71774620-goog

