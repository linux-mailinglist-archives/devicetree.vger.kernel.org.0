Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DCE2913107E
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2020 11:23:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726351AbgAFKXY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Jan 2020 05:23:24 -0500
Received: from mail-lj1-f196.google.com ([209.85.208.196]:45938 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726212AbgAFKXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Jan 2020 05:23:24 -0500
Received: by mail-lj1-f196.google.com with SMTP id j26so50362453ljc.12
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2020 02:23:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=B0/5oZmpyMpvoGdHibbnECdx+O3YaUpB8rzrVDmAk5M=;
        b=clEtWmbh+qaBqe+He2QKgbhvUT/cLCZyyQvw1JRHZwX93MLJhhwpKITQs2A86cqhDK
         R1FVH3Ul0Epai3TWrb4TBgeDApCtrRqtdL5z8uviLVawFn6h7LD1wEOhyhOIhlJoZWyG
         buJC+IMocTB2ZqduPh8Ae++DtZq6endywr62f5VL1SbHV1XCSI2dyK8w4+9Yk9uG5WDb
         1Obk37dnPqbEtjqDAQgg0HhbuiXjnk6PYm+xXNoz2bL+jcHaEC3T00YId8Qw8DL5WOMP
         xsY5IV8vtZQBkiunVu9CGDBU3/AYduXDd5o+PUcvSUcIKORFetRxY32ZvJswqfqff3ns
         sqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=B0/5oZmpyMpvoGdHibbnECdx+O3YaUpB8rzrVDmAk5M=;
        b=rs0D9IqXzxFJgFBZlWPILkTo3pu2HVDJRuOJ7fbU8q2KvWvrCWoJZdI+xlvfP4Czy7
         LEIImQdsuR4zIdOTouBZIwH9y0fzjZWFAWu+tYIlnJzby5iH7ClSdJKKMNLsTagkGwLP
         eF1490arrTIAgK2wRTt1RdbJIzADkejVcwnwuys1KB1C0VdnN3edwn7aJWsUyeIaf2gX
         y3TcymXGLJOMpvbD9J68MMcHwfbKtJMS+fe/UO/lNNUMIGKsF7vrC+VC7uTYlXTr4bdC
         Z75f1ZM32ILSf1l2hsszL0OLH4YPl/5+DmzCfQ7qZtNGDqtnoAPwHiRTFvL+Stp7ZBCH
         I3Ww==
X-Gm-Message-State: APjAAAV5dRG56jDp0ybEhleQkKVF/aYFTTypUbPwHyjAmNsB0MoABGvc
        WO5pk0F+uCU7chwxdg8N0VfKTA==
X-Google-Smtp-Source: APXvYqylp5NiLHXERz7acxYKyV5J6DD2bC3iTYDcgMA9NVOGybslb4wcRBjNRaJF/9+lKu8tR223bA==
X-Received: by 2002:a2e:8954:: with SMTP id b20mr44715875ljk.27.1578306202203;
        Mon, 06 Jan 2020 02:23:22 -0800 (PST)
Received: from localhost.localdomain ([37.157.136.193])
        by smtp.gmail.com with ESMTPSA id u25sm28836745lfk.46.2020.01.06.02.23.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2020 02:23:21 -0800 (PST)
From:   Stanimir Varbanov <stanimir.varbanov@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Stanimir Varbanov <stanimir.varbanov@linaro.org>
Subject: [PATCH] arm64: dts: qcom: msm8996: Fix venus iommu nodename error
Date:   Mon,  6 Jan 2020 12:23:05 +0200
Message-Id: <20200106102305.27059-1-stanimir.varbanov@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the following error/warn seen with make dtbs_check

arm,smmu-venus@d40000: $nodename:0: 'arm,smmu-venus@d40000' does not match '^iommu@[0-9a-f]*'
arm,smmu-venus@d40000: clock-names:0: 'bus' was expected
arm,smmu-venus@d40000: clock-names:1: 'iface' was expected

by rename nodename to "iommu".

Signed-off-by: Stanimir Varbanov <stanimir.varbanov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 4ca2e7b44559..9bbcee31f28b 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2267,7 +2267,7 @@
 			};
 		};
 
-		venus_smmu: arm,smmu-venus@d40000 {
+		venus_smmu: iommu@d40000 {
 			compatible = "qcom,msm8996-smmu-v2", "qcom,smmu-v2";
 			reg = <0xd40000 0x20000>;
 			#global-interrupts = <1>;
-- 
2.17.1

