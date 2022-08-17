Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 154E1597273
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 17:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240654AbiHQO7x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 10:59:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240653AbiHQO7j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 10:59:39 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0B0A9D13B
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 07:59:29 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id v2so19335484lfi.6
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 07:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=qaIdW5O82kxfv9Y1sMxSlPwy2QYyGigvAsH9y7GzQoA=;
        b=zJBaMHjJLoMdUpdiQAWzHqk0gYW5QeRizIO7FlT0xRi9T2mzRV4itNNd4lSLOzpyZd
         WmnZZiEoDLIFvXwOuoB8T8Q7ojsJNfE3V6ir8OyaLbVoDFr9NKB+SCv4z39sIaXjXeQb
         yketGLwJDqF3rrGkSbXE5mFRp5aFuOsCLUXQwZSs/Z7+V40rXrLmnPkrD9Or1mZK3AsE
         MLrxpwFvHNzVIy4UKhq79BUK5ALkSchOwcTFQX+rXGEB1HCSpYo42k7fpbdXs6iyEjbD
         wQ9+Lr2PuytAbpHf7NXturPFyMNrt4Pq8CCZNJlCaNgi6LlFmnKvIDQXEflfyLSqrcq/
         qQ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=qaIdW5O82kxfv9Y1sMxSlPwy2QYyGigvAsH9y7GzQoA=;
        b=NI1UOpsKENQVGEoLNTFigl4U7dPGyzlMtrwFh4kLDlUWxnxAQ7x5VWStyWX1YKcWli
         ROCUOFN0j/1VB9VbWS4+crXrmhI6ixXR8yULFyHqlGFRuMAJXNN8Mo4nEXxlKoihQGp5
         Rmnt/xei3wsDqsJ9uA0TkHp9spF7NoWbs4zkZ6kClnZqewYPxw6PGQKQpQ1XeVRQKLgB
         +yKO0b61JHiU/EqBNsOREZ4pZiiXB8T6IvIPvEhFHznJy6Iqjxwby81XjwiJMN9JsSnT
         NvNlLs6PwIFQtundUYLKK4vfQyH1UKTt1I9w8OPykBVeHbssOJdT8ltzaz/X69dbmCmO
         rQrw==
X-Gm-Message-State: ACgBeo2tlI6ae8cOVgdtlQMU2jmi0fbByGBOh4kHF8bv+kxo9VdXMNNI
        WGpKAAwPPj9IMCdWwsdFPo7FaA==
X-Google-Smtp-Source: AA6agR5On77+riff58U/xLRzhK9miPkOi7rswXtUHo1A6h9V32w/p99uCmT9c5hkXYo7OzcoO0lltQ==
X-Received: by 2002:a05:6512:3e07:b0:48b:131:616 with SMTP id i7-20020a0565123e0700b0048b01310616mr9855737lfv.475.1660748369197;
        Wed, 17 Aug 2022 07:59:29 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id u16-20020a05651c131000b0025fdf9eec1dsm2250454lja.111.2022.08.17.07.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 07:59:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH v2 13/17] arm64: dts: qcom: ipq6018: switch TCSR mutex to MMIO
Date:   Wed, 17 Aug 2022 17:58:57 +0300
Message-Id: <20220817145901.865977-14-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817145901.865977-1-krzysztof.kozlowski@linaro.org>
References: <20220817145901.865977-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The TCSR mutex bindings allow device to be described only with address
space (so it uses MMIO, not syscon regmap).  This seems reasonable as
TCSR mutex is actually a dedicated IO address space and it also fixes DT
schema checks:

  qcom/ipq6018-cp01-c1.dtb: hwlock: 'reg' is a required property
  qcom/ipq6018-cp01-c1.dtb: hwlock: 'syscon' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index 6b35f03c4862..a7c7ca980a71 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -129,12 +129,6 @@ scm {
 		};
 	};
 
-	tcsr_mutex: hwlock {
-		compatible = "qcom,tcsr-mutex";
-		syscon = <&tcsr_mutex_regs 0 0x80>;
-		#hwlock-cells = <1>;
-	};
-
 	pmuv8: pmu {
 		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(4) |
@@ -252,9 +246,10 @@ gcc: gcc@1800000 {
 			#reset-cells = <1>;
 		};
 
-		tcsr_mutex_regs: syscon@1905000 {
-			compatible = "syscon";
-			reg = <0x0 0x01905000 0x0 0x8000>;
+		tcsr_mutex: hwlock@1905000 {
+			compatible = "qcom,ipq6018-tcsr-mutex", "qcom,tcsr-mutex";
+			reg = <0x0 0x01905000 0x0 0x1000>;
+			#hwlock-cells = <1>;
 		};
 
 		tcsr: syscon@1937000 {
-- 
2.34.1

