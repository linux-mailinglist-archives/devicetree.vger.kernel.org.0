Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B7E7C44BBBF
	for <lists+devicetree@lfdr.de>; Wed, 10 Nov 2021 07:31:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230469AbhKJGed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Nov 2021 01:34:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230396AbhKJGeU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Nov 2021 01:34:20 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E76EEC06120B
        for <devicetree@vger.kernel.org>; Tue,  9 Nov 2021 22:31:30 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id gf14-20020a17090ac7ce00b001a7a2a0b5c3so774721pjb.5
        for <devicetree@vger.kernel.org>; Tue, 09 Nov 2021 22:31:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7VRwqE4mljaTBbEn84HnhMeSkIM9YCg3MxPTKXVa2zs=;
        b=MxHJDM8GyITaPlwz3hRFlgPApmlsT9vH5iVCcFw+8JIfbbL47ai6x1PvNOZC6AQgeR
         ftRLF7CGq4Ssj11u1VdXS+5MXQVdO56WEXUWli/maqXwqKqqnpk1UEu9KpzdpYTwwB4g
         hFY72GezTFtdjkz6tOUTG2GjyEMthOe5d+lAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7VRwqE4mljaTBbEn84HnhMeSkIM9YCg3MxPTKXVa2zs=;
        b=GEXJa2uYe8XFDetgNLDRrSEW0eVYthLMuy2RMRpOCfHZ2jSihjktWmL/9R9LerJ+OZ
         FEdUwKnNISg27QvsQWGOfDi3XdPOKPXyXRSrbGy75rlki3mtvJUoGDb+Bpmky1vrXb3/
         BCLcs8MIWP6QQIYcauDlOyoulL1GCC56KGm7ACJwIIB3G63bs/0hW/e2K5B527JgG+ej
         3zya5SRAB14jG9KSNRfGQfKF42d0Hy3dSiN5knnEEJGV0JW3qPwNGvuro5xip+ADbYRm
         FZtwaxW8/bBqdVIXWG9/hzQ4pW0SHgcwJ89sLjd5JwnlXb9Greo3rWNiHvZ+rBEOSDpM
         ZaIA==
X-Gm-Message-State: AOAM533tz3sIPIJjNFreYCJinku1TArmM5Cx5b8oXN2HZKZ6npNB+5Mh
        4TGdVI2jVVoVtzV9WprX2bFiiQ==
X-Google-Smtp-Source: ABdhPJzq7nkp3CFD6DNs6EgqOZnXl05X7pcntes1Voih0ZR8rTI5/EB7QCsokvu16RpAIQDlHFT1Vg==
X-Received: by 2002:a17:90a:4212:: with SMTP id o18mr14163484pjg.154.1636525890398;
        Tue, 09 Nov 2021 22:31:30 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:6886:f712:1a79:e3d9])
        by smtp.gmail.com with ESMTPSA id w1sm15623959pgb.50.2021.11.09.22.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Nov 2021 22:31:30 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/7] dt-bindings: arm64: dts: mediatek: Add more SKUs for mt8183 fennel board
Date:   Wed, 10 Nov 2021 14:31:17 +0800
Message-Id: <20211110063118.3412564-6-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211110063118.3412564-1-hsinyi@chromium.org>
References: <20211110063118.3412564-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add sku2 and sku7 which uses different audio codec than other fennel boards.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 7cf0c76cd31006..99e7f8e294cd03 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -147,7 +147,9 @@ properties:
           - enum:
               - google,fennel-sku0
               - google,fennel-sku1
+              - google,fennel-sku2
               - google,fennel-sku6
+              - google,fennel-sku7
           - const: google,fennel
           - const: mediatek,mt8183
       - description: Google Juniper (Acer Chromebook Spin 311) / Kenzo (Acer Chromebook 311)
-- 
2.34.0.rc0.344.g81b53c2807-goog

