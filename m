Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7EBE4CB8B3
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 09:22:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230313AbiCCIW4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 03:22:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231404AbiCCIWz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 03:22:55 -0500
Received: from mail-io1-xd35.google.com (mail-io1-xd35.google.com [IPv6:2607:f8b0:4864:20::d35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9029417187F
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 00:22:09 -0800 (PST)
Received: by mail-io1-xd35.google.com with SMTP id w7so4935214ioj.5
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 00:22:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OvbikKoAKho7Bpj5HDlLF47y32hMSGJasX39JrNGXFI=;
        b=f+nzyti+qR6MREuY43WY1a4cjc7YEyZRGiKyg7jREG3YSvLNneTdgD2kuE535dK50J
         enHSZEaWeABNgz4UyM5TEoF4ZjYlU3decu2UKQWENbiys2ihqRx2S9Ipy8jP09/xgeEh
         h/JuffJstoOEUwL5AGRQE+0RmtCMin1yNwjVxVNAOuXcAg8kfFd2EHX0I3DK/w9FYEmH
         ikDJNANAGx7VzHYH/psDbPQXfwItOwIXrRtCHBabTelw9t0wRwhfC56VI8rWod4JxkHB
         H7r+2jsBidMT7mLFcVM+PIPbd7x7bBme2U/1jAXFNLu9R15IjH1P6JsIEsRnvZcmgLam
         A9gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OvbikKoAKho7Bpj5HDlLF47y32hMSGJasX39JrNGXFI=;
        b=WK8jKhhAmQrV/wy23EdIjR6fIs7yRaQfeTOBm8rn0hSf88wuwWNZz7ZoRtNQKTFm2M
         Uez+bdfO1WF1jWTzNrY79hiyMQ7hC3e9MsOvYpBQX2nSHiza8TOmPmUa7vtaJnPWyCSA
         92CaByv8H0hBL3EFzucn8b71TrcIDpRYn80af2rTHRKg8zcpCwiMT0bAsTEOgQyzAvV2
         hQ/4pN/G6Cb++EJnbUdUc+uVe/IXp46feZuSj1dDIyOS/jJci6ssA80iU8Zmi/G2g2rD
         fkhWrSAn1rfWm8EFgo28tfFsGv/U9miUxbOb81v0VUPHPIaizFm1X9SPfeLNOctD3AYg
         1QLw==
X-Gm-Message-State: AOAM5327eIbD/RxAKZFdphc6nD2dlbN399Gt0Jf7HrWyDVvfKhwEnRWB
        luro0Sj11WE91bua2+ohg2EUmg==
X-Google-Smtp-Source: ABdhPJzjyPfDQxk9e3ZO6oRtB96iZsy8mSZP2do7RFoMubNR7JTUh4xLcktUA+jnUfJv5jq1avtehg==
X-Received: by 2002:a05:6638:285:b0:30e:54b4:d8df with SMTP id c5-20020a056638028500b0030e54b4d8dfmr27700511jaq.154.1646295728953;
        Thu, 03 Mar 2022 00:22:08 -0800 (PST)
Received: from localhost.localdomain ([182.64.85.91])
        by smtp.gmail.com with ESMTPSA id l187-20020a6b3ec4000000b0060523f4e92dsm1204569ioa.28.2022.03.03.00.22.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 00:22:08 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org
Cc:     bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, sboyd@kernel.org, tdas@codeaurora.org,
        mturquette@baylibre.com, linux-clk@vger.kernel.org,
        robh+dt@kernel.org, bjorn.andersson@linaro.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/2] arm64: dts: qcom: sm8150: Add ufs power-domain entries
Date:   Thu,  3 Mar 2022 13:51:40 +0530
Message-Id: <20220303082140.240745-3-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220303082140.240745-1-bhupesh.sharma@linaro.org>
References: <20220303082140.240745-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add power-domain entries for UFS controller & phy nodes
in sm8150 dts.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 6012322a5984..7aa879eb24d7 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -1637,6 +1637,8 @@ ufs_mem_hc: ufshc@1d84000 {
 			phy-names = "ufsphy";
 			lanes-per-direction = <2>;
 			#reset-cells = <1>;
+
+			power-domains = <&gcc UFS_PHY_GDSC>;
 			resets = <&gcc GCC_UFS_PHY_BCR>;
 			reset-names = "rst";
 
@@ -1687,6 +1689,9 @@ ufs_mem_phy: phy@1d87000 {
 			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
 				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
 
+			power-domains = <&gcc UFS_CARD_GDSC>,
+					<&gcc UFS_PHY_GDSC>;
+			power-domain-names = "ufs_card_gdsc", "ufs_phy_gdsc";
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
 			status = "disabled";
-- 
2.35.1

