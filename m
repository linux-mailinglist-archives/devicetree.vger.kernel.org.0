Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D76CD3413D9
	for <lists+devicetree@lfdr.de>; Fri, 19 Mar 2021 04:53:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233642AbhCSDxK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 23:53:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233527AbhCSDwv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 23:52:51 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C4AFC06175F
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 20:52:51 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id o2so2328130plg.1
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 20:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wu0UN0qTxD7NQTRZi1+qshriPs2sSwGOFj55/TJrhfs=;
        b=fqqvH2c7HgMSttFHhPrVseaYGYI7ND17sa4mOG9uxCnTyKNZoYpah+jzIMyTWsQtVi
         cFHQa6VIMlMw0oO9A//gedyeB84lyFm9tYX2HqoJw3TnRchhRUgaoeRvuHLtJDK8xRZD
         UhV+9UZ6BYweMxfHNxIw6wIEauX5a/w0sb/vw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wu0UN0qTxD7NQTRZi1+qshriPs2sSwGOFj55/TJrhfs=;
        b=MJ3IH/5EHAKfgYyQPaXYbjgPfGW6/uymXwG/s3y2VPwjkjz4zeDGf3OlBWj+3i7Fnf
         s6lvAftPx4abElqDlvq6Wu5nex4Zv7NDCkCEBw9SxZOFuCL3VspprwDlfUKPTQg7z7s/
         z3dnsSC/7+cSCLnGJi+49zi5A59Z53DA1M+N79W+6Ez7dBFPEhcAcjJyXnGer1ephK2L
         tuXahelk8jtgpUsqk6ZZxW3kOxre9ru4ghl/uf4HLCPkEJUool0Jmnp4hBvRoAaUTEc5
         JtMIofYWH1XP/9FzyTbe5ujKhDtZfFovWru2ZI7FK9xk6mLWMrtEKKCpX7EyvHpB9nj4
         TkZw==
X-Gm-Message-State: AOAM530K0g+CM66uIERBkE00S6TBCa0kLIupoKFC4kt0e68Vrn7Iad0Q
        mZNJO3/yNnhM9yhLTaJKHJMnPw==
X-Google-Smtp-Source: ABdhPJwtstJdF7ulIAFEh2bGsL+qpO3Qj+dYWl2OUYKZAv1QwvYbJBHLwVcpzF2cMuew4wQ5OLgG8A==
X-Received: by 2002:a17:902:ecc4:b029:e6:1a9f:3397 with SMTP id a4-20020a170902ecc4b02900e61a9f3397mr12844270plh.9.1616125970722;
        Thu, 18 Mar 2021 20:52:50 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e12f:5c36:14f:bbf5])
        by smtp.gmail.com with ESMTPSA id u66sm3442180pfu.186.2021.03.18.20.52.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 20:52:50 -0700 (PDT)
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
Subject: [PATCH v4 1/4] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-damu
Date:   Fri, 19 Mar 2021 11:52:42 +0800
Message-Id: <20210319035245.2751911-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mt8183-kukui-jacuzzi-damu board also known as ASUS Chromebook Flip CM3,
using mediatek mt8183 SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 93b3bdf6eaeb..a86716cdd408 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -125,6 +125,10 @@ properties:
               - google,krane-sku176
           - const: google,krane
           - const: mediatek,mt8183
+      - description: Google Damu (ASUS Chromebook Flip CM3)
+        items:
+          - const: google,damu
+          - const: mediatek,mt8183
 
 additionalProperties: true
 
-- 
2.31.0.rc2.261.g7f71774620-goog

