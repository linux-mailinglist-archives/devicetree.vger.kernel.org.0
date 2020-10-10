Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9D5128A384
	for <lists+devicetree@lfdr.de>; Sun, 11 Oct 2020 01:09:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731128AbgJJW46 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Oct 2020 18:56:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731198AbgJJTxO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Oct 2020 15:53:14 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0675C05BD0D
        for <devicetree@vger.kernel.org>; Sat, 10 Oct 2020 06:21:29 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id a23so11500168ljp.5
        for <devicetree@vger.kernel.org>; Sat, 10 Oct 2020 06:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=349Z8Ph6yBAK5DaqmkrRihB7AaoK9dncfuWSdIi4YRA=;
        b=F6pwG5xnwIS2QRHcjIpgatjyzbXe4KUuVV0utR/5y7biA4Pg/xCxPzKaonJ0F/tDZk
         6zvlZtNtI19TOBnaiTwwDlmuDI589fU4fzfz9gUJpyl4KAhsjz43dHRUubg+SeP9iyjR
         I87bvyQk2sInBw0+bF/4wQy4KTLNQqXwmEQ7z3Q7ajwiS9ChHR/6g1y7Iy4gqkql2Fcf
         79hD36EYvSuB8kH40qmuTluW8tV/lGGxP9IX+t40cYQ7C3jmlOPV/uF6Nqzaoj9jCjCT
         d3ATFgdW+rxg7QRePdpC4pBZwlvhN1uYUWJkX2UsOs+PJjzpNhbNod5TZsfkeQWreG7+
         s7Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=349Z8Ph6yBAK5DaqmkrRihB7AaoK9dncfuWSdIi4YRA=;
        b=OjTYxeAtiPeK2OcpAs9PCOXAZwizZ7b3l/3Y4Nh1vmZ089/nN3pwayH+d+GbHGqVCe
         7vrTN8kIneT9vZ6qfJW50vNhXFB+jyxVYjHEAV/AVypu+cB+E9S/IUMxL9ip6oih/NZ+
         bjeHxm4qg+kyxusXS0WS39vCe3jmuZ53+FTEeLpWVFJPsZU+2Y+cWU79Nr8j1lVr/EUc
         kkB89ViNxIatvEL7CrbPI+INDsZ5YMSlDCi+97h3FVH3aU5LyHduH7IhqV6lKFzAJzsi
         hHBXytmXSZEHJaGEL2tvUlXawVPO2uUsIMu21p6sk6iIYHWqaZ3Y6Ms42hQi6Uerd3CH
         +9Og==
X-Gm-Message-State: AOAM530RR907haphUlhg08rWlzJ86tfEP+mc6p5CypXmQBNis3eAmsZo
        9Cb0EV4PHVAoGuZZOCirAdd1Gw==
X-Google-Smtp-Source: ABdhPJyhBv0jXoNwaSokzC1b16EMQTYa6HtFHj51sUOzxt1RTcFU5A0ZId0v2CReeT82NhjfCn86oA==
X-Received: by 2002:a2e:8059:: with SMTP id p25mr6484726ljg.291.1602336087853;
        Sat, 10 Oct 2020 06:21:27 -0700 (PDT)
Received: from eriador.lan ([188.162.65.231])
        by smtp.gmail.com with ESMTPSA id k21sm2322685ljb.43.2020.10.10.06.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2020 06:21:27 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: sm8250: add iommus entry to QUP nodes
Date:   Sat, 10 Oct 2020 16:21:25 +0300
Message-Id: <20201010132125.416064-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable IOMMUs configuration for QUP nodes to stop SM8250 boards from
rebooting when using I2C DMA transfers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 889d11725c5d..ec6cfaaaa971 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -468,6 +468,7 @@ qupv3_id_2: geniqup@8c0000 {
 				 <&gcc GCC_QUPV3_WRAP_2_S_AHB_CLK>;
 			#address-cells = <2>;
 			#size-cells = <2>;
+			iommus = <&apps_smmu 0x63 0x0>;
 			ranges;
 			status = "disabled";
 
@@ -674,6 +675,7 @@ qupv3_id_0: geniqup@9c0000 {
 				 <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
 			#address-cells = <2>;
 			#size-cells = <2>;
+			iommus = <&apps_smmu 0x5a3 0x0>;
 			ranges;
 			status = "disabled";
 
@@ -936,6 +938,7 @@ qupv3_id_1: geniqup@ac0000 {
 				 <&gcc GCC_QUPV3_WRAP_1_S_AHB_CLK>;
 			#address-cells = <2>;
 			#size-cells = <2>;
+			iommus = <&apps_smmu 0x43 0x0>;
 			ranges;
 			status = "disabled";
 
-- 
2.28.0

