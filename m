Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68C36295105
	for <lists+devicetree@lfdr.de>; Wed, 21 Oct 2020 18:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438292AbgJUQmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Oct 2020 12:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2409026AbgJUQmi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Oct 2020 12:42:38 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC216C0613CF
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 09:42:36 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id n6so3747759wrm.13
        for <devicetree@vger.kernel.org>; Wed, 21 Oct 2020 09:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ktOQBsIi43nG8a2/21JQPeKNNuRP5PqTvkBAgWAn5tg=;
        b=i0gAa5X6lQdX9PQRLe+laWerY6VMaJl4dmiT6eFrLnTc2mxLVLmiMvAWGcvAnHcwx4
         bRRsAi9yCpLOP6i5M1k46oXGtRSSFG50d2yRDnM3GpTKGjzsmZvi7RnjDvWU2vWQGe88
         VzaMuPFNaxqlgjy5VXrpkhLGdYnX69HqlTMRgJg5VQF5t+OFCOFypTyytbfPIkrfxBFZ
         vJaqstRk6Qz7v1TQbN5K9qy2e8WBPScm5gEmXD4E8l1cRPGg0z1g9OLSdD82DY5g2/aG
         9OuQm9Oo2M2Ul/rHhjpM3jLh4xOq+/ZhBLk4gBZ+oG6iFNcRpdJzO3+nMhM1u3bR6dhA
         GdAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ktOQBsIi43nG8a2/21JQPeKNNuRP5PqTvkBAgWAn5tg=;
        b=OXtK6UP5w3rlw4V6nHP6bU9/+Xf9qNSaJP4y1++6ruwzKaYF0ZdmB6v3YX7zwSD33w
         3Qgl43IhsbMBJNCprY4ZDYhdgU6Qc4x2TPHcJ1rglc7p+pS+Py6qJFPzddWYCki8BITH
         8YR168eapCTv1gcWIg8m5UBVxY72xUMpj4zQhNWkJizXfHjzStcxCEpnTzV1FXSj5MFq
         8fIzcdxbm9FXVSfBvG4ZiEfgsr8ysLWIaPQ2GRzjM8cX00crmvGQEtLXg/DPfnRXJfP3
         tgBBCw9A21zabCxzRWaoYEV4GOReGFMUu7GZDUB20fU0y84kCkXmqAbXhXmkJnJzMqLj
         DSSQ==
X-Gm-Message-State: AOAM530+4Z6hN1fvda7OsYjO36Gj7thp4roCFYMeARlwzn3Qjde//YZv
        vvYDAKmF5P3huqBBr9/U3kzGbA==
X-Google-Smtp-Source: ABdhPJwSC4b6Zp3WR/gk387RdiJewfMgrjpTyShE4TGDBNY3p53Pb4FZAnNyTZ++ZiVCeZuokVyJVg==
X-Received: by 2002:adf:de91:: with SMTP id w17mr5681928wrl.84.1603298555294;
        Wed, 21 Oct 2020 09:42:35 -0700 (PDT)
Received: from localhost.localdomain (58.164.185.81.rev.sfr.net. [81.185.164.58])
        by smtp.gmail.com with ESMTPSA id a3sm5321724wrh.94.2020.10.21.09.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Oct 2020 09:42:34 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org, amitk@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 1/3] dt-bindings: thermal: mediatek: make resets property optional
Date:   Wed, 21 Oct 2020 18:42:29 +0200
Message-Id: <20201021164231.3029956-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MT8516 Thermal IP does not support reset. Make the resets property
optional in order to be able to support MT8516 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/thermal/mediatek-thermal.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
index 1e249c42fae0..2d20f6b0dca0 100644
--- a/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
+++ b/Documentation/devicetree/bindings/thermal/mediatek-thermal.txt
@@ -20,12 +20,12 @@ Required properties:
                        clocks are:
 		       "therm":	 Main clock needed for register access
 		       "auxadc": The AUXADC clock
-- resets: Reference to the reset controller controlling the thermal controller.
 - mediatek,auxadc: A phandle to the AUXADC which the thermal controller uses
 - mediatek,apmixedsys: A phandle to the APMIXEDSYS controller.
 - #thermal-sensor-cells : Should be 0. See Documentation/devicetree/bindings/thermal/thermal-sensor.yaml for a description.
 
 Optional properties:
+- resets: Reference to the reset controller controlling the thermal controller.
 - nvmem-cells: A phandle to the calibration data provided by a nvmem device. If
                unspecified default values shall be used.
 - nvmem-cell-names: Should be "calibration-data"
-- 
2.28.0

