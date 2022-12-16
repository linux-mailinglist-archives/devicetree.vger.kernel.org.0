Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9DAF64F540
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 00:40:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230020AbiLPXke (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 18:40:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbiLPXkc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 18:40:32 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB4121740C
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:40:31 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id c1so5780115lfi.7
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g/bLk04dhGvObgv0ibnCNcEYZnqfFntTEvodjggi70o=;
        b=J072llu5NfA6FPCI0kSB6d9eWuWAoO5i4aFxwLXXZq/JJMYLPfmWT6NWEIOlK70wUD
         ZuhE0Bg1O7B6SARBI8G2FGjIeIMsm0oVgXUjW2KcL0pi3zQ/cGucyEfBDKHrOTHheRSN
         B/SR2Olo68a3ZDOekdmIMiDyIumvA6A5hRgjQ6AVV6cXxUtauGg2U+isTW9mcFrr79ff
         KhQHHRF3Ty63pyfTiUCQsDzG2+jTTcLWKxJOtvcG6Ro2/9rumyH89sSaHU4mzHhjrSxs
         fzc6ccZ9W5jOB+3Ftdhn5J6JlpPPjxkCEKtL9wb5fuGBwMZ/iqmwUGTWOSuLOe0WG4We
         geHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g/bLk04dhGvObgv0ibnCNcEYZnqfFntTEvodjggi70o=;
        b=mp0A678guHBIYJcTcncoTuoMoEyhsmG90NStDXOQeVGRyS4FdLq6ASppVe50+S+fjt
         uM5zySXNfBYOgzH4ZrNNBif9fE8+tT0N1jDuES60UXRqU7ePoJfkXCedXP4fU+/IN64B
         z09cWi8g+XFRfLSZVciJBmcgZNw6R6ioguktdcvVRCbZl4dF4Cq9AyF6iWqpLQTpKnfj
         TgcFlHfv3Y9X0Y7EQXzUzJNp0YW44XhtE1ekr18TZ9up/i15aKWjnfiDBHnKvd2eXWkZ
         MKkWoF5Ul2x6KtsckUIJ6PLJZ/bYhhL4Xi5sY5NLyrcAkFiyRpijFBKtPcIWZITrzeo6
         6UjQ==
X-Gm-Message-State: AFqh2koskIUwmdOT24U0mbXX3QkNqohcZb+FYCIwS7PI2FOjBaCXbOCd
        BxfFTpd6+H2FnN013NuClIiL5Q==
X-Google-Smtp-Source: AMrXdXu5EMtQvFkCcKMVgrjQBjg12/f7JLtr0e3sjyWv4wljAUzxoT+/cbrxL9uucWk+Con97pufQQ==
X-Received: by 2002:a05:6512:12c1:b0:4b6:ff4a:885a with SMTP id p1-20020a05651212c100b004b6ff4a885amr10191927lfg.37.1671234030228;
        Fri, 16 Dec 2022 15:40:30 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25055000000b004b40c2fccfdsm336950lfm.59.2022.12.16.15.40.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 15:40:29 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: qcs404: register PCIe PHY as a clock provider
Date:   Sat, 17 Dec 2022 01:40:27 +0200
Message-Id: <20221216234027.539917-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
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

Add #clock-cells to the pcie_phy node. It provides a PCIe PIPE clock.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index a5324eecb50a..ffffaa7507cf 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -810,6 +810,7 @@ pcie_phy: phy@7786000 {
 			reset-names = "phy", "pipe";
 
 			clock-output-names = "pcie_0_pipe_clk";
+			#clock-cells = <0>;
 			#phy-cells = <0>;
 
 			status = "disabled";
-- 
2.35.1

