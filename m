Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2F356BA83E
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 07:45:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231575AbjCOGpF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 02:45:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231620AbjCOGok (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 02:44:40 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8929311F4
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:44:12 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id 6-20020a17090a190600b00237c5b6ecd7so825842pjg.4
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 23:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678862652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u4buO9u/YEJ2XslOs7PK/sn8ZofMZxzKI+5s+2aMPGs=;
        b=TLr0mBUM2U4Mm/fZK5JU42H7nrEehkO13ShcIkRweW1jcPAYb7BxRev7sbFleukMV/
         M/gxnvyPXCZx2XBJCuKpidlNeuS821hi2QWNa8Cpadn+nKgB6MwVkCYFCL0acp6jNEUS
         sWt1mLMjBskRkuhSis11UlX7RKSEJssEK+2zJRsPcrJIg/URDOsu5P18/j4yLOeQ2OhA
         xCIDL69dQovODnMToUO51uPlg2Jd4aj+oLp5B4KWyHJ7kxzDb9h1KoAWVYqgWvdIixOL
         SC9mUKc0rdUig/dBUupv5G0mPdXattLjy4aHNE6WpxEn1k1zksOF0j2sZPgcgL3i+nkR
         Rb7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678862652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u4buO9u/YEJ2XslOs7PK/sn8ZofMZxzKI+5s+2aMPGs=;
        b=K6699ObF7nbNWqoiDIRVNbeuA457vJudRhnN5L/+TOIsz6MQtap9aR/CyZVnIdIQRj
         ynCpXf5YWI9z0WTQC5xgEj938xY0E0mTimkmGY7jSMoXQ6WvHodNlW3Ipg1drKkrjxgq
         gldBmx7riFJXftwjVEiqoh9sqEioKDwXf1auDBryBxjfVNE9kQP1nVbiVS/qsMX731Uv
         yGEFYk06Jy8wDtSz9ntZphFaKOkN3ttuTAbQpBNGPdBsZh6ZVDQ2qSvf7GBBonGXpv1X
         zcZsQ1JPdzfMiXf1SOd8Q6Vj8VsH3yWWSx6EVDhfVdMPSswvVuU2K7AqjOseb6sTbC8m
         ILSw==
X-Gm-Message-State: AO0yUKXDwTOZLLZnd+8k3+XBCfNPM9QRy1O+lGImVr6KKhtRAI8gMIIZ
        dXJWGK7h1WIWgXHiIHV2gIpf
X-Google-Smtp-Source: AK7set+ASsrZPRNm6wN+fXqyjW6FtdOBZ0ficbA5MrptjDrwZf1uoOUIBtFZzhnmVV+49wG3JKqmXw==
X-Received: by 2002:a17:90b:4acd:b0:22c:4d85:1725 with SMTP id mh13-20020a17090b4acd00b0022c4d851725mr41583536pjb.9.1678862652460;
        Tue, 14 Mar 2023 23:44:12 -0700 (PDT)
Received: from localhost.localdomain ([117.217.182.35])
        by smtp.gmail.com with ESMTPSA id u4-20020a17090a6a8400b002367325203fsm550747pjj.50.2023.03.14.23.44.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 23:44:11 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org, lpieralisi@kernel.org, kw@linux.com,
        krzysztof.kozlowski+dt@linaro.org, robh@kernel.org
Cc:     konrad.dybcio@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_srichara@quicinc.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 16/18] arm64: dts: qcom: sm8250: Add "mhi" region to the PCIe nodes
Date:   Wed, 15 Mar 2023 12:12:53 +0530
Message-Id: <20230315064255.15591-17-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230315064255.15591-1-manivannan.sadhasivam@linaro.org>
References: <20230315064255.15591-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "mhi" region contains the debug registers that could be used to monitor
the PCIe link transitions.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 2f0e460acccd..81383e20d3d9 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -1824,8 +1824,9 @@ pcie0: pci@1c00000 {
 			      <0 0x60000000 0 0xf1d>,
 			      <0 0x60000f20 0 0xa8>,
 			      <0 0x60001000 0 0x1000>,
-			      <0 0x60100000 0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0 0x60100000 0 0x100000>,
+			      <0 0x01c03000 0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			device_type = "pci";
 			linux,pci-domain = <0>;
 			bus-range = <0x00 0xff>;
@@ -1933,8 +1934,9 @@ pcie1: pci@1c08000 {
 			      <0 0x40000000 0 0xf1d>,
 			      <0 0x40000f20 0 0xa8>,
 			      <0 0x40001000 0 0x1000>,
-			      <0 0x40100000 0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0 0x40100000 0 0x100000>,
+			      <0 0x01c0b000 0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			device_type = "pci";
 			linux,pci-domain = <1>;
 			bus-range = <0x00 0xff>;
@@ -2041,8 +2043,9 @@ pcie2: pci@1c10000 {
 			      <0 0x64000000 0 0xf1d>,
 			      <0 0x64000f20 0 0xa8>,
 			      <0 0x64001000 0 0x1000>,
-			      <0 0x64100000 0 0x100000>;
-			reg-names = "parf", "dbi", "elbi", "atu", "config";
+			      <0 0x64100000 0 0x100000>,
+			      <0 0x01c13000 0 0x1000>;
+			reg-names = "parf", "dbi", "elbi", "atu", "config", "mhi";
 			device_type = "pci";
 			linux,pci-domain = <2>;
 			bus-range = <0x00 0xff>;
-- 
2.25.1

