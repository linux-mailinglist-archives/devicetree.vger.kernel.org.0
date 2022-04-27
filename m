Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3D945121AE
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:51:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231660AbiD0SzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 14:55:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233930AbiD0Syp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 14:54:45 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF5A93E4FA3
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:41:19 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t6so3724024wra.4
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5PDc4kwfq5Abwa8nZKwgraCJqPwJeISvtFvxURCWRYI=;
        b=UIIGGWXC9ZO6cN8r+a6HL16fNGfaaAhzbI0lQF/wnSlSs/t9eMVYFSuzoAKmV3ZtH/
         0dLq+LCinVd1U4eap4xBmPvz4nW5j0iVD0obOY7K5bu5EI/u+sGkXOuNjCPep7TEasfg
         aBybdJwTaX6LRsFz8T/4Ny40jViAfrFMPHdc/HyPiX6vKOouUGZ9cAHvqjZwGZG17p0T
         SK9skiIx6abasTdI2vQ7YGhdTI9UBDC3q2idGpA3lATiHM+0T8ZwuGnLA2m3DWvULaLm
         GxRR2qiSV1S4DsknDdVCeDHtw95mrLO/imrrLsyayq1IgZPLyDBiTmkz69ZLw94QQPgO
         dV3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5PDc4kwfq5Abwa8nZKwgraCJqPwJeISvtFvxURCWRYI=;
        b=XlmiyWHHZNzxe5mBzKaRzJpwdmn70q7WduajAMQQcWh5QJlTdFWdT3fg6gg0Zd0Lmp
         ikU4fHnDbG2u2UCJU/dMjTgqGCRsgKH79fT4FQwQoLxgvUObYZEGSf2OJeBik9ZbNwz0
         pwrjBfcQQ1LKry5SThDvZTpvf9i6m+VX7z5vLgNd77JUCPubwkLviTpavSNsO3Tqe/LD
         kRt7gmvIryhmea//RTbuMaQ4sprU00gTPi3RTSOS30jB5d7XDvZ3mKq34TGUdiX1nXLs
         hZOI5SB2ePX2XU2Qz3NhtSjmAef2DeG18oU/nsfUN9YutkBnzHrnZuqkCcl2ltjTlrwN
         ux1g==
X-Gm-Message-State: AOAM530+jHAjBVkuL4tJ1MFUCVfpH6CWv5jcARkjsF6r1MTK2/CWOexa
        fCNq39B7VH89F7YA2a+DJQWFHA==
X-Google-Smtp-Source: ABdhPJwdbeKT5kUGKCBIIYgVJXJw7u8BrPYYn/BNsEx7tG7fC2SfT3HwQAiYCTj6e0KUfK0qGjjVAg==
X-Received: by 2002:a5d:610b:0:b0:20a:e00b:5e46 with SMTP id v11-20020a5d610b000000b0020ae00b5e46mr10875426wrt.293.1651084878587;
        Wed, 27 Apr 2022 11:41:18 -0700 (PDT)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id f3-20020a5d64c3000000b0020aef267950sm1992798wri.49.2022.04.27.11.41.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 11:41:17 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Amit Pundir <amit.pundir@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH 2/6] arm64: dts: qcom: pmi8998: add charger node
Date:   Wed, 27 Apr 2022 19:40:27 +0100
Message-Id: <20220427184031.2569442-3-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220427184031.2569442-1-caleb.connolly@linaro.org>
References: <20220427184031.2569442-1-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a node for the smb2 charger hardware found on the pmi8998.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi8998.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
index da10668c361d..962a8719b07a 100644
--- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
@@ -9,6 +9,23 @@ pmi8998_lsid0: pmic@2 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		pmi8998_charger: charger@1000 {
+			compatible = "qcom,pmi8998-charger";
+			reg = <0x1000>;
+
+			interrupts = <0x2 0x13 0x4 IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x12 0x2 IRQ_TYPE_EDGE_BOTH>,
+				     <0x2 0x16 0x1 IRQ_TYPE_EDGE_RISING>,
+				     <0x2 0x13 0x6 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "usb-plugin", "bat-ov", "wdog-bark", "usbin-icl-change";
+
+			io-channels = <&pmi8998_rradc 3>,
+				      <&pmi8998_rradc 4>;
+			io-channel-names = "usbin_i", "usbin_v";
+
+			status = "disabled";
+		};
+
 		pmi8998_gpio: gpios@c000 {
 			compatible = "qcom,pmi8998-gpio", "qcom,spmi-gpio";
 			reg = <0xc000>;
-- 
2.36.0

