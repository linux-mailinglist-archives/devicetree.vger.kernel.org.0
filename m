Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BA656D36FA
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 12:08:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231148AbjDBKI5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Apr 2023 06:08:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231146AbjDBKIX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Apr 2023 06:08:23 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06176C66E
        for <devicetree@vger.kernel.org>; Sun,  2 Apr 2023 03:08:01 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id w4so25368016plg.9
        for <devicetree@vger.kernel.org>; Sun, 02 Apr 2023 03:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680430075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3MVums2xGimULwLAksXbnkYaopPwvTqx5iwZKEFGpjA=;
        b=JT63Rdhv/c5JJ5GCMTVSXvcZVx4bC/BZrzg1L8YflrpvJhy83hlbx+Xq5LAfxEkOv6
         ws8KXu9cULU4hHrByxg/rEX4R+VQgHOj9uLYiMCpUlOdHRXkNjBePqyIAi1bD6JMvmk0
         vy2xfk7ziuSDm7zwYt9DNnhIinKUKAvTLU8/Az6Pb4LNjFI7B/5xGhGTek7OB5PZDboR
         HlYRM6Dy2upjTDMaW4QQz/dJLM9S/U177RksXavoVJGi4cTWhV/pSAoRAN/B0OXuS0xO
         FBPUzajRoqzoF/J9Y1TxkKHDM429XvjVuBnT44KlrrgCUcKfOXdMUt2gswsCoDP0yGZ6
         cizQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680430075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3MVums2xGimULwLAksXbnkYaopPwvTqx5iwZKEFGpjA=;
        b=olOjvGxQqQvZ/DkInUr0tEltPBAhoTbG8iRhpawwFEM9LJNkzc8wx9VB+zljZLHwny
         ptSwlXnOBNC/rIjb8zUE/wdzo3HDr9yiWvMCBAVVOu5zFuSzNwlGs4HOLSNH7wkUxTyj
         MMb+1PzkZOYYnNEKTTfKHFCyVGCrt+Em+k90bf5kTn9qRLki+WW+R6w3G3jJgGWlcgXi
         stNyWtyaT3MZjRXx21Mz3WCS1ECv54uh764RPqzn4I66ddA9Z2gR0tZt2r216a+ubfUc
         0oXw6mtOHO5EUNgnawcuRNrXs3BoD5w/Cw6boSBdjq2w1FS/nvFSo/f3gRImFDw9AGiv
         lK+Q==
X-Gm-Message-State: AO0yUKXtwNxrgQP9i9Rmp1221vE6WRh0H5Og2+C20Xne1So2L5I80G6G
        Tu6eeTqOhZOCD5gAjY/ndN0KsQ==
X-Google-Smtp-Source: AK7set/a4NgE5LwbYfh0ahtKl9foMp+tcXqTh0MqHAh8T0+VmTx9clHTv5xmJZ45GCuvFvhLcIqVbA==
X-Received: by 2002:a05:6a20:1222:b0:db:a03c:713d with SMTP id v34-20020a056a20122200b000dba03c713dmr25718269pzf.23.1680430075466;
        Sun, 02 Apr 2023 03:07:55 -0700 (PDT)
Received: from localhost.localdomain ([223.233.66.184])
        by smtp.gmail.com with ESMTPSA id a26-20020a62bd1a000000b0062dba4e4706sm4788739pff.191.2023.04.02.03.07.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Apr 2023 03:07:55 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v5 08/11] arm64: dts: qcom: sm8150: Add Crypto Engine support
Date:   Sun,  2 Apr 2023 15:35:06 +0530
Message-Id: <20230402100509.1154220-9-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
References: <20230402100509.1154220-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add crypto engine (CE) and CE BAM related nodes and definitions to
'sm8150.dtsi'.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 9491be4a6bf0..c104d0b12dc6 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2081,6 +2081,28 @@ ufs_mem_phy_lanes: phy@1d87400 {
 			};
 		};
 
+		cryptobam: dma-controller@1dc4000 {
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
+			reg = <0 0x01dc4000 0 0x24000>;
+			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			iommus = <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+		};
+
+		crypto: crypto@1dfa000 {
+			compatible = "qcom,sm8150-qce", "qcom,qce";
+			reg = <0 0x01dfa000 0 0x6000>;
+			dmas = <&cryptobam 4>, <&cryptobam 5>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x514 0x0011>,
+				 <&apps_smmu 0x516 0x0011>;
+			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
+			interconnect-names = "memory";
+		};
+
 		tcsr_mutex: hwlock@1f40000 {
 			compatible = "qcom,tcsr-mutex";
 			reg = <0x0 0x01f40000 0x0 0x20000>;
-- 
2.38.1

