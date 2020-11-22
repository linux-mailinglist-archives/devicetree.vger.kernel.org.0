Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC0D62BC371
	for <lists+devicetree@lfdr.de>; Sun, 22 Nov 2020 04:42:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726674AbgKVDlv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 Nov 2020 22:41:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726544AbgKVDlu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 Nov 2020 22:41:50 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32659C0613CF
        for <devicetree@vger.kernel.org>; Sat, 21 Nov 2020 19:41:50 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id 92so9716759otd.5
        for <devicetree@vger.kernel.org>; Sat, 21 Nov 2020 19:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5ubhNMSuyyXPIzDr3TUWiACtJHtGzZ8BS70SpEffNk=;
        b=E5Gtbt+GgoKUifH+W8eqJX09GOH3Fh4UwdWZGnyE372rBW9Li8qt+bAN+JdK1SgrJY
         mctuNw8RZXfIq/Rfpd/Su/soFQH4v31ubYwykM0Mimmn1Ys2vAjzPnI4gnx7nn9ASdAK
         tIvNR5v8xY+akvkG+omhZUlT4ySLykqUYsPqUPEhRjdrQeKlqpA7OV6inBdTi8HoZ59T
         tQGwSXoAK2gyC0bKk00twJyZP8uHiALGQNwG88YdFdQfGiHxGsOGHeAjxEbyF1bh891A
         S+F79mWJR9SIs/w2cr7QtDiUpebx1n0Z/dOdaZsf2OeJW6/alYrT/WMioFPKMN8GVxD0
         nOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5ubhNMSuyyXPIzDr3TUWiACtJHtGzZ8BS70SpEffNk=;
        b=p4FS0iY/PTFuWrwD8tKuGvgMqAvu4+H6MsGjs7n7DPTfI6JKnwJucjg9ueuZ25Fg+g
         ZtNbLJ4BC6KvKQPUgPjAt8968z1jYxHH2UnA5kdBJ6gUhM/F08Kmr131dib9fBysuTuk
         BmqQzVx9TfWWr4u6Psaug8y1W3y2VQemTmhMVblScYLx5zNVmf5ZqAvStMnqQrAnpgX9
         tUbf3x9bk09se3WJVUqCkHy9qwz3HxQo8b/7f61tOE2L2rnHFYTcB5ekBgIpS+mFcoNO
         Wjjd/OVlUF4rZc7cKIPMBQ4Lzx1Ic0aT0TI+QlkLjZkRs/7tP/670+SKsCBDwOCMuCnS
         /tuQ==
X-Gm-Message-State: AOAM533olpRGNOlZi2Wi518gyQFfKM0JZ2hul3JWY8514cEkJP+1ygs4
        4Y14LusC60U4ABZDJzbgb7IcsA==
X-Google-Smtp-Source: ABdhPJwVnGpshY8GVlVNlMjyh5hmg7o6bD3PTA+a8AbbL/MHxbfKxdqQenfeSz5wPImGCpiY2n8LTQ==
X-Received: by 2002:a9d:5904:: with SMTP id t4mr16263250oth.109.1606016509362;
        Sat, 21 Nov 2020 19:41:49 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id e8sm4195893oti.76.2020.11.21.19.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 19:41:47 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: sdm845: Add iommus property to qup
Date:   Sat, 21 Nov 2020 19:41:49 -0800
Message-Id: <20201122034149.626045-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stephen Boyd <swboyd@chromium.org>

The SMMU that sits in front of the QUP needs to be programmed properly
so that the i2c geni driver can allocate DMA descriptors. Failure to do
this leads to faults when using devices such as an i2c touchscreen where
the transaction is larger than 32 bytes and we use a DMA buffer.

arm-smmu 15000000.iommu: Unexpected global fault, this could be serious
arm-smmu 15000000.iommu:         GFSR 0x00000002, GFSYNR0 0x00000002, GFSYNR1 0x000006c0, GFSYNR2 0x00000000

Add the right SID and mask so this works.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
[bjorn: Define for second QUP as well, be more specific in sdm845.dtsi]
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi | 2 ++
 arch/arm64/boot/dts/qcom/sdm845.dtsi       | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
index 39f23cdcbd02..216a74f0057c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-cheza.dtsi
@@ -653,10 +653,12 @@ &pm8998_pwrkey {
 
 &qupv3_id_0 {
 	status = "okay";
+	iommus = <&apps_smmu 0x0 0x3>;
 };
 
 &qupv3_id_1 {
 	status = "okay";
+	iommus = <&apps_smmu 0x6c0 0x3>;
 };
 
 &sdhc_2 {
diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 6465a6653ad9..d6b7b1bfa202 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -1120,6 +1120,7 @@ qupv3_id_0: geniqup@8c0000 {
 			clock-names = "m-ahb", "s-ahb";
 			clocks = <&gcc GCC_QUPV3_WRAP_0_M_AHB_CLK>,
 				 <&gcc GCC_QUPV3_WRAP_0_S_AHB_CLK>;
+			iommus = <&apps_smmu 0x3 0x0>;
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
@@ -1460,6 +1461,7 @@ qupv3_id_1: geniqup@ac0000 {
 			clock-names = "m-ahb", "s-ahb";
 			clocks = <&gcc GCC_QUPV3_WRAP_1_M_AHB_CLK>,
 				 <&gcc GCC_QUPV3_WRAP_1_S_AHB_CLK>;
+			iommus = <&apps_smmu 0x6c3 0x0>;
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
-- 
2.28.0

