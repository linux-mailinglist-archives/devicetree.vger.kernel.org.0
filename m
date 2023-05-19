Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2592D70A1FF
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 23:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231629AbjESVtY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 17:49:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229909AbjESVtE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 17:49:04 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3C9B10D7
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 14:48:55 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-64d41763796so411623b3a.2
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 14:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684532935; x=1687124935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZX6LVgOMZu0ArktFgLVf83JETk2AvPW+GkyQpaVw8k=;
        b=rPKR9Rx3JRg/0vvHaNXGmGLwQD5W3k6kCmmuzWJKWlIkRFaalkFvu9V/4ypfPte2ui
         VwaCd/TcG4vjvWr+Ff+2/Qe9MVbpkAfwRhZCCPzgWumrT3vAv37CxHPMb7RvJVlBioui
         g1AZip+tAFNcpVI91dwcEgyEIE27NTX9id/ADcBh5ya+srJ8WO5VTHDr+d52YGwpG1jo
         E844cPkxj+zSzSbAw2k9FZYSjHr+jBHuDf0xKOewl97kAfwm4wePEXxhgM8WJem/gcmr
         j3RO8hLWK9EXTljjVFwxQcT60xbOzK4z+9RYO23Pd9kuFur+CgPCCOt0203JSVNUCnnx
         pxNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684532935; x=1687124935;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WZX6LVgOMZu0ArktFgLVf83JETk2AvPW+GkyQpaVw8k=;
        b=EZs63xEMUOHZXtmBc7w85Aq2PPu7HBCZv+cT/PdS0yLKuBCr5FAnThsxElQfxcCU0s
         nN8t8sWYRaRMye87BZ2lZsH/v8lQebJCFD8SUmTt2w+sfKqD0Aoms3GIVZSCt1fNsREi
         FBnrOu+jxPSdFdUnZ7mbnzVXf5E+p1EqMMGgQeR+dMlmB+es59mdxP6cTeZp+vDiIX2C
         DmFYWn5u00FFI1GRTwBTNLDXebzSkCrLEv+x2wcqSlrgXRjfwhvLnIeYA4nFbAfnZRSU
         ERTfN4o+lCdiBX4DtxxquQ3VTY74au23T1hPWXdJXBvUlKB1DPHZDqCHPEN80E7aVXL9
         FfTQ==
X-Gm-Message-State: AC+VfDxOSCqMnqlKP1z3cAxw7baolKqMhFr62Njuehvn3dfYN5zb2fkA
        twCl53VPpp93VHFKBxw4aVlZ/Q==
X-Google-Smtp-Source: ACHHUZ7HN3g/AYQq4g1o3ywAtgSwto6zSC+wBqyNlsDixCqV9bMuIYqgilZ4+2ApoGWwOMP7VtGApQ==
X-Received: by 2002:a05:6a00:1389:b0:643:b27f:6c43 with SMTP id t9-20020a056a00138900b00643b27f6c43mr5326688pfg.27.1684532935042;
        Fri, 19 May 2023 14:48:55 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:d309:883d:817e:8e91:be39])
        by smtp.gmail.com with ESMTPSA id n14-20020aa7904e000000b006470a6ef529sm144891pfo.88.2023.05.19.14.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 May 2023 14:48:54 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org, djakov@kernel.org,
        stephan@gerhold.net, Anders Roxell <anders.roxell@linaro.org>,
        Linux Kernel Functional Testing <lkft@linaro.org>
Subject: [PATCH v7 04/11] arm64: dts: qcom: sdm845: Fix the slimbam DMA engine compatible string
Date:   Sat, 20 May 2023 03:18:06 +0530
Message-Id: <20230519214813.2593271-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230519214813.2593271-1-bhupesh.sharma@linaro.org>
References: <20230519214813.2593271-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As per documentation, Qualcomm SDM845 SoC supports SLIMBAM DMA
engine v1.7.4, so use the correct compatible strings.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Tested-by: Anders Roxell <anders.roxell@linaro.org>
Tested-by: Linux Kernel Functional Testing <lkft@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 90424442bb4a..4d768e09d62d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -5212,7 +5212,7 @@ msi-controller@17a40000 {
 		};
 
 		slimbam: dma-controller@17184000 {
-			compatible = "qcom,bam-v1.7.0";
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			qcom,controlled-remotely;
 			reg = <0 0x17184000 0 0x2a000>;
 			num-channels = <31>;
-- 
2.38.1

