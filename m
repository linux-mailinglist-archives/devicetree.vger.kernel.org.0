Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3BFCA189793
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2020 10:08:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726586AbgCRJIX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Mar 2020 05:08:23 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:45936 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727041AbgCRJIX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Mar 2020 05:08:23 -0400
Received: by mail-pl1-f195.google.com with SMTP id b9so971128pls.12
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2020 02:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1f5kYBCY1uKoKqzNVNfGNS8kuHSh6LqXMA1hvR+KOa4=;
        b=odpifOv74L/hJEF9iJGfNTia2vJHOM15ktWoY9+u6TyDAXF1sMbGixEhMpVOl4E3HZ
         tnGueGctwD+Jx84fkUdRZVJewBTUQegE2MhMNeiXuv0Av9ZmH7PvS0JItGfFvts8Bn/t
         KxrAuH7DMlZ5cb3vrEj/p7XbteiEsvPV2CT/Z2/EmaF6w/D2GH/kspyzb90VnJk9jyRq
         81k+EbW992v2eehds1ValPodUaD5Ii3uek9LZBgZF8KHEke2tDuBwdD/bdrmQ2mwL08h
         c46AVSSANfr7hXHuCqufq4d69eVXg+8aQT1b/sflb1T6mkAcstfbfOGnw7fOsrLrAh1R
         4MIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1f5kYBCY1uKoKqzNVNfGNS8kuHSh6LqXMA1hvR+KOa4=;
        b=BwpwMtXJk46htclTrK1swxtzOMyCIjrZmRAWcujgE5xTxhFxq+OEcQgoGF19KZQJ8v
         76jEVQhKfuqCriMQfM7PJIF54J8GfOyuJQbABV7H9DH0zoRdUYLbxdlqDrRceUjSdvKG
         rQcx+GquCi40dFxhBIUaBAHdSimZcrFYyZogLOF0uYUpgY4bd7MEOaIBAmrOufpK4QAJ
         Z7g7uMKCva9vAFtczWBgJX/L7I17STJCC/uLYjRp7ZypccExfQBkNHVh+RowAQZabjZt
         19FTkh7MMGLEMj1vrRR5X154VclwTXSvq3/dLUwAp4H3G8ByL7Xy5k1H/IiPzO3I8XFj
         25kw==
X-Gm-Message-State: ANhLgQ19id4IhJDhNZJLu7cRX7kioFyePBTwKojzZsLTRJ5AdyC6XjBZ
        QFeHgt4/E4DCCLzUO3+jZUWIVQ==
X-Google-Smtp-Source: ADFU+vvJtZn1wKJFN1I9x9yIzxQr88V3AsLSI8/vu7XSfy0TQhPJXOohHYVEd+HZeZtJcINo2nPObA==
X-Received: by 2002:a17:902:b905:: with SMTP id bf5mr2706826plb.162.1584522502102;
        Wed, 18 Mar 2020 02:08:22 -0700 (PDT)
Received: from localhost ([103.195.202.108])
        by smtp.gmail.com with ESMTPSA id c15sm1778384pja.30.2020.03.18.02.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 02:08:21 -0700 (PDT)
From:   Amit Kucheria <amit.kucheria@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        bjorn.andersson@linaro.org, sibis@codeaurora.org,
        swboyd@chromium.org, dianders@chromium.org
Cc:     devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: cpus: Add kryo468 compatible
Date:   Wed, 18 Mar 2020 14:38:16 +0530
Message-Id: <cd0f3d35ca0fc2944fd97e030a28318ff82dd5c1.1584516925.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kryo468 is found in sc7180, so add it to the list of cpu compatibles

Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 7a9c3ce2dbef..57408c773b4d 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -156,6 +156,7 @@ properties:
       - qcom,krait
       - qcom,kryo
       - qcom,kryo385
+      - qcom,kryo468
       - qcom,kryo485
       - qcom,scorpion
 
-- 
2.20.1

