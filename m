Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B60BB3E01F1
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 15:28:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238437AbhHDN3D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 09:29:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238424AbhHDN3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 09:29:02 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2C42C061798
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 06:28:49 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id 14so2699220qkc.4
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 06:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QFLJoMXDhEHLGcdtkF5dL2y+7dGxyAlRAtgvl9mW6Tw=;
        b=oLPA8doLkq8mTryx6byEUyfPcDftA5boAK9TdrX1I4VX30Yaif3f7cYCTYMm7hMQZi
         mIqsYFJWNKaOrY7HAFerGVPsVDYN6f1/jHPutnsVjSLEa/xT2y/gYA/1nZ8pyFgOMq2j
         zi0k2Csj36CNw1lw67DsWKVwj6mhpWXoViK8GpuuKWzbUS7uKxrYgMlO9hmFktSawJRz
         QnAFgZoQsAZwiHBx85H7xeHo5fsMwkHU020uT82QosoQhlsOH2Br7opC5l3TBouKTE+r
         pGT5e0pSWpnBU+qXxK4uv4iil2YvKbw2AXRzrONRb+7ee5S4bREEYB8X4ukL1jXPxgB5
         NwPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QFLJoMXDhEHLGcdtkF5dL2y+7dGxyAlRAtgvl9mW6Tw=;
        b=LIL4ykzA4uC1qkLo7olxgAGirwqQD1U+ajVV/NeJCiwxZ7wp8XnhM2NVMOpLkh7piM
         04bNskoa43qVt0LAfG7GstKuxSVatKtPF/hX4WGS67EWU6UyzPOEP5Hamg+uO5aIwjn+
         pNoLNUnhk5J5xpmdDvfOoWsBOPJnCGTMKw6u1L0iwd/SPBt1kcHWfeMgdNxTAHXzOePT
         lnqbAH+jMO270TACNZNgqlmyuO28HE58+ENozAq5OrKAb0E64YAcaz3QZzE01pyzySS0
         gZfvIFEL/RyVJD8B0Rl+UJLAd8iXkuUTtPhlpQnzFJAI/ol+cr90omrjiDcMRpViFcvf
         XJ+g==
X-Gm-Message-State: AOAM5319sECB1Hc5sPwzPXmThA1Aoe5ZZXJlC3fEizwsJ3nidcIQSdk8
        S51zop4+eXqyv/crmm+LkZRRIA==
X-Google-Smtp-Source: ABdhPJwyeggZTlJqzKdDaWXJ+Ft1mPz5g6bWBjVq/b7qflnOgpdzYCVkml8dHDVDI3Z8vjShMgHYdQ==
X-Received: by 2002:a05:620a:1398:: with SMTP id k24mr25691862qki.12.1628083729029;
        Wed, 04 Aug 2021 06:28:49 -0700 (PDT)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id d82sm1342054qkc.86.2021.08.04.06.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 06:28:48 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8150: Fix incorrect cpu opp table entry
Date:   Wed,  4 Aug 2021 09:28:47 -0400
Message-Id: <20210804132847.2503269-1-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

CPU0 frequency 768MHz is wrongly modeled as 576000000 hz in
cpu0_opp_table. Use the correct value 768000000 hz.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index cbf0d8d7d76d..5e6471e5e2fc 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -319,7 +319,7 @@ cpu0_opp5: opp-672000000 {
 		};
 
 		cpu0_opp6: opp-768000000 {
-			opp-hz = /bits/ 64 <576000000>;
+			opp-hz = /bits/ 64 <768000000>;
 			opp-peak-kBps = <1804000 19660800>;
 		};
 
-- 
2.25.1

