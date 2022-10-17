Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42B7C601709
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 21:11:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230234AbiJQTJp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 15:09:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48836 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230201AbiJQTJn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 15:09:43 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5449B183A1
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 12:09:41 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id i131-20020a1c3b89000000b003c6c154d528so6359340wma.4
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 12:09:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JQwvrZM0NdshJK8bg4tJ/wU/2YDF+xO/AxCNgwM//+A=;
        b=t4r0XCUanikK7kDAe0IyQZratPozV7OLPNFeESUFTmq+VlGygZdidlfnTRXLYCAOcP
         V45bWJL+6UgMnJL1vzIzftPEUWzMQ1MfrJGQSoZsRAKjGhAVXErLu/xbJu1ALDLwAU74
         wSwZUc9hdZjMaNbzXAtZkxWgk13XGzwLTQYg/wVk2vkaNWbypW5GIOIVt+dYYjN7CsCo
         ARl/8QXFu/PWLHv9nJli7RVksqUUX4mu9PfbnhxK9ZJufQ9Uru6kbv0vWL1NI3hk8/D/
         QdkYjXNvzynVEGiPZ0sZcxLJcKTlnlcsBdyClp/I65BlskQp/WMFKjV/9VfgnB57bM3f
         lv5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JQwvrZM0NdshJK8bg4tJ/wU/2YDF+xO/AxCNgwM//+A=;
        b=oxx1CxejL2ncN+Nz4tOTsYRUlW1BKsSgf1HAOxt2eNFl9QMMPx4l/P1kswiuLdtKXr
         qfD3+mjXNVSQxu0RdJOOc2X6tQGSh1TW0Zg0aMhM6ygT/cK0UhGgfJUSbHaV1sdJxsnl
         syvWqZHj/c0+H2Qj+v1No7bbguDMpY/3MSYgrk7OKUMJrsgrIzNQoLkwypLffY6T90VF
         gDtEybMLbInY9koIca8xKkoL6CKzFgEn2O8oqNl9lgT/sQlcTpKyKGRRr7gQyHqUxU/x
         Wea6lHHVd2uADI/bv4etuifskoAkIMOBwmpvIN/MRrc1MFUrBSHzS7vVx7wyVBvx/K4A
         0yeg==
X-Gm-Message-State: ACrzQf3RtqJzQvg3pyc0Upv9B9Fwu3hGR2bUvJbxqJfhTxbSDMRSQEBm
        VkGYS+6TFlscrRR4gnNdxzJvIw==
X-Google-Smtp-Source: AMsMyM61UUbxtQgNyb/ViwXfWuIo3K+CVJYqgyg3v5VLQT+AXiidWyPuJ3ee3VCx5bUct0zo+pCSKw==
X-Received: by 2002:a05:600c:2754:b0:3c6:aba7:5c93 with SMTP id 20-20020a05600c275400b003c6aba75c93mr8154776wmw.177.1666033779901;
        Mon, 17 Oct 2022 12:09:39 -0700 (PDT)
Received: from localhost.localdomain (cpc76482-cwma10-2-0-cust629.7-3.cable.virginm.net. [86.14.22.118])
        by smtp.gmail.com with ESMTPSA id c25-20020a7bc019000000b003c6b874a0dfsm13830232wmb.14.2022.10.17.12.09.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 12:09:39 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3] arm64: dts: qcom: pmi8998: add rradc node
Date:   Mon, 17 Oct 2022 20:09:02 +0100
Message-Id: <20221017190902.2282899-1-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.38.0
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

Add a DT node for the Round Robin ADC found in the PMI8998 PMIC.

The RRADC reports PMIC die and skin temperatures, as well as
battery/charger thermals. It also reports USB and DC charger voltage and
current measurements.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
This patch introduces a new dtbs_check warning which will be fixed by
https://lore.kernel.org/linux-arm-msm/20221017185105.2279129-1-caleb.connolly@linaro.org/

V2: https://lore.kernel.org/linux-arm-msm/20221017185609.2280067-1-caleb.connolly@linaro.org/
Changes since v2:
 * Remove 'status = "okay";'

V1:
https://lore.kernel.org/linux-arm-msm/20221016180330.1912214-1-caleb.connolly@linaro.org/
Changes since v1:
 * Change node name from adc@ to rradc@, see linked patch
 * Enable the RRADC by default, rather than per-device 
---
 arch/arm64/boot/dts/qcom/pmi8998.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8998.dtsi b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
index 6d3d212560c1..08c9ec2cafa6 100644
--- a/arch/arm64/boot/dts/qcom/pmi8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8998.dtsi
@@ -18,6 +18,12 @@ pmi8998_gpio: gpios@c000 {
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
+
+		pmi8998_rradc: rradc@4500 {
+			compatible = "qcom,pmi8998-rradc";
+			reg = <0x4500>;
+			#io-channel-cells = <1>;
+		};
 	};
 
 	pmi8998_lsid1: pmic@3 {
-- 
2.38.0

