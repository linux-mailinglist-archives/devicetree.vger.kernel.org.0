Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0CA46F599B
	for <lists+devicetree@lfdr.de>; Wed,  3 May 2023 16:13:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229824AbjECONh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 May 2023 10:13:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230005AbjECONg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 May 2023 10:13:36 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AF215BB8
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 07:13:34 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f193ca059bso32473705e9.3
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 07:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683123213; x=1685715213;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FnRAMK/euvotv1DckR23GzTFZduFeuBiLsd12TeuopY=;
        b=bAGXrkyXTiH15juUM/S0b1xpvXHxKRc3haE68Itz1M8du9+zbEmWuPpJ9+RAMEEtIa
         YbxYU1AxN4Hx46aMS/p+M8GUF0/MB0TS6YeZngbfhSHSfpc0S2nBW/cP+M1o1mwUTuDx
         PVSwFe8fDklhQ7xPuQHEgxqHj9L/Re+ew+WfnFoEjQiBKj7fmDaR48xV5UxNDkGEuUlp
         Ut45jq6R7pGcqCqDoh/KUdjXtrXbSjLASQAJXfIkw55z0MRaMbWcb7ZQOh+sCLtYcrVl
         saj/JZQAvlydev00YJkobrsrm5KVXdNBh2vm8qEfpWUuPm6pyph8rK97LSObhXUIWjMu
         bwuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683123213; x=1685715213;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FnRAMK/euvotv1DckR23GzTFZduFeuBiLsd12TeuopY=;
        b=CIXQoxbWRkQmB4Oem/6DcW7rMkLKjZMZ9vNmvn4JV+784pXepa37JVU34UD8IWgrb1
         nL74gYuLI6z37qEQyQNoT8+uDfK56KSElqRyU05Dv5bXSaEIHwQhHyrk33Niq8cVBqgc
         2zmhamI2zTnQFEWuqBp1iKTfVfuTL9rchXGXIUWUzeXOAsmqDrEo/xC9drHbhNi/xBGd
         VKrMj9M9knKQN+Cqx5tRDP0TbWd8tNUBm4YuHA+5JbRF7PDSvjOvI+lGWHIY35JiVjPL
         bswGsXs5tprlv1LjrkL6qy2z24jiZtn3Ku6fyEnF41ft/2gXAREvMZsH90jYNuSQkSM1
         WuCA==
X-Gm-Message-State: AC+VfDwdg7lW+S6lQeQlp5srizkTP0M1O4QaYVpHhaa8OjwUPoBX34aW
        qi4P321jRgjiOqizO7kplKR1AA==
X-Google-Smtp-Source: ACHHUZ4kqHIlH2tGb62YZENkUC0RYMX8le84AGAhQDzh+VkYxUCqNjDJQMy6DywZkelV4c4oik4biQ==
X-Received: by 2002:adf:eb0c:0:b0:306:2a46:4b11 with SMTP id s12-20020adfeb0c000000b003062a464b11mr144282wrn.43.1683123212901;
        Wed, 03 May 2023 07:13:32 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id a13-20020a056000100d00b003063c130ef1sm3028638wrx.112.2023.05.03.07.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 07:13:32 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 03 May 2023 16:13:29 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: pmk8550: add reboot-mode node using
 sdam_2 nvmem
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230503-topic-sm8450-upstream-reboot-reason-v1-2-c5ac3dd5b49f@linaro.org>
References: <20230503-topic-sm8450-upstream-reboot-reason-v1-0-c5ac3dd5b49f@linaro.org>
In-Reply-To: <20230503-topic-sm8450-upstream-reboot-reason-v1-0-c5ac3dd5b49f@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Abel Vesa <abel.vesa@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1423;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=o0IBMg7Jof28fhnCAn20ULGH3tJLlHPoy8qOqWae/SQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBkUmwJSR4MUoihlmfyGM/Dw/eRfdLqQ/oYHPT8YpLE
 jc1Y/V2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZFJsCQAKCRB33NvayMhJ0bjsEA
 Cwh1xuV8MLVFTK7yJmv4xF33/Dfpn5+LmnnNzCDYlLpLk4xmSArSSGopdLNxFIQ9O7ewWs5wIBSGnA
 FalvdsJ9weH9F1EDzHaMva3netcioyvGXE4Ck1XV4U75B604a+KGk+nCOBOTduj/N0QJTZzHPtHhSs
 FA5/VUtEDxOoWcp1/9XdXccsyw+KqFO7+elOtZCruU+TgAtiajdNvRKGkwe/YCdJpFbPqpaXfqsf5v
 sql1Xr1SmjytnZNMGA0yz4u6qLybVag5UsNyt0G6j0q4MVtYzoYXDHxNASlmMGvbMOwVjbh5+yfgiq
 gN56Z7/nPAuctPhDUJkIz1MKRQdTxd+bswIKSyRZ1H3eoe86g+bIXbgjSh8qo97a3mKvrByUAsiNIm
 Lmy6Chl9QThb7MmwMMLhcY5sysLeOxjbhAoEZ2tH9SnGsscnsftAMHmvGjREmk9xuQ/rH/e+vn3d4V
 DJzNEeDMNrwun59cwTTEQGVEoreAr/jP3yHHJ7V+UGK++o/W63EKZnl6RysDDeR6/ijh2yRVbktYjv
 iuK8B2/K1EeykMK7yr6A8tanPKAbnez1YtwhlKRkXy9hAlC/JAaWss/Q+oN1/n7nN1gWGbw1kuu0VK
 s45WHyVDs4yCNJ3raoSQXiE0PYg8QglfCf2NpwkRDdJzLRJeSBPIxF4OGdmw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce sdam_2 node, which is to be used via nvmem for power on
reasons during reboot. Add supported PoN reasons supported via sdam_2
node.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmk8550.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmk8550.dtsi b/arch/arm64/boot/dts/qcom/pmk8550.dtsi
index 201efeda7d2d..8c897d4fee29 100644
--- a/arch/arm64/boot/dts/qcom/pmk8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmk8550.dtsi
@@ -8,6 +8,16 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/spmi/spmi.h>
 
+/ {
+	reboot-mode {
+		compatible = "nvmem-reboot-mode";
+		nvmem-cells = <&reboot_reason>;
+		nvmem-cell-names = "reboot-mode";
+		mode-recovery = <0x01>;
+		mode-bootloader = <0x02>;
+	};
+};
+
 &spmi_bus {
 	pmk8550: pmic@0 {
 		compatible = "qcom,pm8550", "qcom,spmi-pmic";
@@ -42,6 +52,19 @@ pmk8550_rtc: rtc@6100 {
 			status = "disabled";
 		};
 
+		pmk8550_sdam_2: nvram@7100 {
+			compatible = "qcom,spmi-sdam";
+			reg = <0x7100>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x7100 0x100>;
+
+			reboot_reason: reboot-reason@48 {
+				reg = <0x48 0x1>;
+				bits = <1 7>;
+			};
+		};
+
 		pmk8550_gpios: gpio@8800 {
 			compatible = "qcom,pmk8550-gpio", "qcom,spmi-gpio";
 			reg = <0xb800>;

-- 
2.34.1

