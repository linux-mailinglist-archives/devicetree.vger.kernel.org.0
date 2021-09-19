Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93DB641097C
	for <lists+devicetree@lfdr.de>; Sun, 19 Sep 2021 05:11:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236053AbhISDMs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Sep 2021 23:12:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235586AbhISDMr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Sep 2021 23:12:47 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F573C061757
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 20:11:23 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id f3-20020a17090a638300b00199097ddf1aso12827420pjj.0
        for <devicetree@vger.kernel.org>; Sat, 18 Sep 2021 20:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=R30B43xyz2y8LC6ycmn9kteDx5Gx9CHyBFPXTaULZU0=;
        b=fNi01DaE/B/10oGxW1oTOrTnEfWv3N+3WkHOqbm/m2uvIgzPKNhqTNLAFqkIMU6u9y
         bhZxISlX9y3KdwaBGaQf3VwKvYHojM9vdwAoCmbQOO8dVjFfIrqVm+Y/Bdsvj6+glSY0
         3cvC3QithyJQlGKfj6vP2o8efw08HARme3UyaZBfEhHsQkqaT39YcZm2En8RSsKY0S+7
         1iL0Ka26ZuefjmKPYD0tiLGIYsw9cYspQqJc1pxLT8A2wix2UJKNBAVMsXGl1oWcw8An
         9ZXt8yG1QRxGrRTnIiGSYjbYzxhN1G7t/cBbChzzWzKqcZxd58+fMlhhXvk5IA7X+uQL
         UJyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=R30B43xyz2y8LC6ycmn9kteDx5Gx9CHyBFPXTaULZU0=;
        b=3GAceQNzRclcvV2Q0+ECa76WATfN2F2U7ZP6mwH/78TGq2DtDl2bNJYy+OUFZ1Rb6y
         OHYhoSznK4+9foClGuzjVsPhn/Bsn9sm22wFrGLSic977SHYQhNeYFS2dxhICcJxLTWX
         1mgYydvpuQ7cOqZo5ZHK0zCOwA/fboUW4yKoDQiLSnQ57qigFHQADARyxlx+qCiggD6u
         UeMB5zjnqMW9NkA3vwNlxv6ctirCAZ+uvOVcV5I1r4CSxdw81D9GAV0US0IbgBA3bdHf
         3frRoFMiWBVfWsB1OQkkEWI9rYXglknmARK7qCMpAlerErQZddoJUBq1C44unJ16cDVo
         7hdw==
X-Gm-Message-State: AOAM533w+c0N7v3neL8xG2GWpxSqPUtrWDkWMWPq6iG0IYKcAJf4ng/G
        GEV2nL5k7R7zoT5roQQ3hH/QSw==
X-Google-Smtp-Source: ABdhPJxBtNL84WRMvdDSgQAFsSSInOctHxHUB8iiqLXyFf6sGvVSOqagb8cOPqiaxAHFO9G+9lXNJw==
X-Received: by 2002:a17:902:b218:b029:11a:bf7b:1a80 with SMTP id t24-20020a170902b218b029011abf7b1a80mr16768240plr.82.1632021082696;
        Sat, 18 Sep 2021 20:11:22 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id 132sm10224931pfy.190.2021.09.18.20.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Sep 2021 20:11:22 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qusb2: Add compatible for QCM2290
Date:   Sun, 19 Sep 2021 11:11:09 +0800
Message-Id: <20210919031110.25064-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210919031110.25064-1-shawn.guo@linaro.org>
References: <20210919031110.25064-1-shawn.guo@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for QUSB2 PHY on QCM2290 platform.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index ec9ccaaba098..48ae604b2194 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -21,6 +21,7 @@ properties:
               - qcom,ipq8074-qusb2-phy
               - qcom,msm8996-qusb2-phy
               - qcom,msm8998-qusb2-phy
+              - qcom,qcm2290-qusb2-phy
               - qcom,sdm660-qusb2-phy
               - qcom,ipq6018-qusb2-phy
               - qcom,sm4250-qusb2-phy
-- 
2.17.1

