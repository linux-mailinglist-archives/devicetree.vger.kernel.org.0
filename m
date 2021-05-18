Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE32A387BC5
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 16:57:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244558AbhERO6q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 10:58:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244537AbhERO6n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 10:58:43 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56870C061761
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 07:57:24 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id x8so10562493wrq.9
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 07:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/D0C6tEXN/UZQW5bW2HTmCtLgx9o77WgGBJs9UOzZPU=;
        b=VAlse7UHliYrr2QpSXkTgQ56o3em7xamY/ka4A1njfjrXl42CZMzMrueeAbfqF4x42
         Vmhpm1632T+d+TPDK7hedy2SRx9QGlD35XqN+a69C6NKTS2mqHCRc3jmm4FQSuhVRtLD
         PZkG5sN5RhzROrjB+7XkDGk8WyZ0a4YWUMulaGE8+/SRQGs3oTVdQY/xqin0FYwA04gp
         GLrpVq1qu+ln2PbHnRfWgCwyukMz6qCfgKwEQsuMcCvW9KcJn6BsQ6++KIAYzOO96cIv
         hHEmxibD2tatUwbMCVbBl/1b2SjYJrwRllMzsdndewBUbET79k1VLKBD0wKhnvDztjsZ
         xxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/D0C6tEXN/UZQW5bW2HTmCtLgx9o77WgGBJs9UOzZPU=;
        b=CL5HahoQot0e3JcCV9fA7kckDC8gg1u+JTuRTKBeRDfeXaEQ/05KOKzn17yWFFPBPC
         UHsT/N7W8FnJlmorjEPXI+Ev3axaFMiTChcl6+1w7BZtBd0lUpf2mIlz8W81TPdI0g1O
         lsMUY43cjjX3ygk+IkfbN4v/sWN9kZxwuyrvZSxTO5JueLzaiaAUt2iL3DoxmyHOHPkl
         OkgYBuXopu/JI58HVeDw6xMmI+fPtlgPwP/YoJP8IaqdBkZSDb410WmtnJEOiJg2TVlq
         JGOPB9vQ0C4W5uzw2xbtSEV5NoJslDIe+1CB24KoHnfIr6pEqWRxW5Jv2yOC4ygppmkv
         TqQQ==
X-Gm-Message-State: AOAM530uLNbiW7iAj7zr15NdfhvpbabXoLYAiI1Gyh4cL2QAaWKE0VuF
        TxIzEbsLj+4tdc+WbHLElT+NQA==
X-Google-Smtp-Source: ABdhPJwpMJWsGQ+2piFN+d8uOfC4WF5Q6hmay5w6ZlBLGrB2is0Suo5wmQEaFXpTdmckDEth6WsKpA==
X-Received: by 2002:a05:6000:4d:: with SMTP id k13mr7762317wrx.98.1621349842761;
        Tue, 18 May 2021 07:57:22 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id a18sm2928386wmb.13.2021.05.18.07.57.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 07:57:22 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Qii Wang <qii.wang@mediatek.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: i2c: i2c-mt65xx: add binding for MT8365 SoC
Date:   Tue, 18 May 2021 16:55:21 +0200
Message-Id: <20210518145522.2420135-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210518145522.2420135-1-fparent@baylibre.com>
References: <20210518145522.2420135-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the MT8365 I2C controllers.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
index 0f445d2ab727..ddeda6d7348a 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
@@ -27,6 +27,7 @@ properties:
           - mediatek,mt8173-i2c
           - mediatek,mt8183-i2c
           - mediatek,mt8192-i2c
+          - mediatek,mt8365-i2c
       - items:
           - const: mediatek,mt2701-i2c
           - const: mediatek,mt6577-i2c
-- 
2.31.1

