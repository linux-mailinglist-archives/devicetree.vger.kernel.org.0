Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02B921D06C2
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 07:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729284AbgEMF5i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 01:57:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1729255AbgEMF5g (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 May 2020 01:57:36 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A7D6C05BD09
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 22:57:36 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id b8so6392430plm.11
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 22:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DcfzpsSQi5daWC7gaUxlctrXi7sUjiovhdgBTIYbCvY=;
        b=Z9W0BIi72UXdojVMzZWful+VXcfM/7mRwMC0X+0E84c4Aui52O/gq58ODytZaCoEpq
         lppEFJ0h7Z4GNiBHYRnIDRoFncvLX1S0EvgYazLkYCpxr+ky75g6xiaTCvd6DGe11jfb
         DZcKTjwZqlCr2Wh76Z1aIPZgIo5NPAOcGmu6gJt+5IRqROpUtzVxoWJ5lyQrNjHPPuQM
         DPQeGZnpgqSD6DfOCAehh7lBYBYMxO7K1sQTl3tKQlctMrLMkUJ5teaymmG3yFmH0W0K
         Xu5a3pwpaoK9CEqrxWI2iyKub2dQymK36F/omOttrnx8Z9CkXAzznvIQB1HJWazOIiWT
         N2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DcfzpsSQi5daWC7gaUxlctrXi7sUjiovhdgBTIYbCvY=;
        b=EpTOJ/f+DQ8yfFxOlD2IYDVSyJP7H0UwBYMXgBU3CzihXqapMGIxJ60bieB7VTrEFk
         675lrZB1NflNRU3uwKg7rFT8YvkKgjqZQf91BIckdzRYQNJdwm/vHGYZrxC+Ggzj6Sv/
         MHmCbZ96K9UMUFw/A0AccIn/H+BGghqs2WwlwhR793zBPVGGZS9GmfqqnHHwdA9rGvWY
         VPdgzQRVHd9OPnyIBA7uHEFq+gWgFdd9iDx+mW3+7y0NTD8oEJ9Efj1W6QfXluf8zmxS
         rGvjhvVrINsTaICmND4YMLPEFtAobbuyqb3WLRukV1kdmxeIEyv654OEsMCiT/W8y5p0
         s+kQ==
X-Gm-Message-State: AGi0PuaS2ddTSewV+HT9ifBJX3JVoStQIJhO94T/PeXKNN/hZ4ezw1uM
        ny2ibSst+6GBHazQWMtLq7ftHg==
X-Google-Smtp-Source: APiQypJHtKHCPhkSK5TO6wa+IvZfdz4WkKAze9q1aB256pHsfLzhf5c01TqMeRxOhNxoI7RQk+FfTg==
X-Received: by 2002:a17:902:bd81:: with SMTP id q1mr23737306pls.46.1589349455552;
        Tue, 12 May 2020 22:57:35 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id w192sm14131161pff.126.2020.05.12.22.57.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 22:57:34 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Stephen Boyd <swboyd@chromium.org>
Subject: [PATCH v5 5/5] arm64: dts: qcom: sdm845: Add IMEM and PIL info region
Date:   Tue, 12 May 2020 22:56:41 -0700
Message-Id: <20200513055641.1413100-6-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513055641.1413100-1-bjorn.andersson@linaro.org>
References: <20200513055641.1413100-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a simple-mfd representing IMEM on SDM845 and define the PIL
relocation info region, so that post mortem tools will be able to locate
the loaded remoteprocs.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v4:
- imem is no longer compatible with "syscon"

 arch/arm64/boot/dts/qcom/sdm845.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 7cce6f1b7c9e..1abbbe7a43a0 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3716,6 +3716,21 @@ spmi_bus: spmi@c440000 {
 			cell-index = <0>;
 		};
 
+		imem@146bf000 {
+			compatible = "simple-mfd";
+			reg = <0 0x146bf000 0 0x1000>;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			ranges = <0 0 0x146bf000 0x1000>;
+
+			pil-reloc@94c {
+				compatible = "qcom,pil-reloc-info";
+				reg = <0x94c 0xc8>;
+			};
+		};
+
 		apps_smmu: iommu@15000000 {
 			compatible = "qcom,sdm845-smmu-500", "arm,mmu-500";
 			reg = <0 0x15000000 0 0x80000>;
-- 
2.26.2

