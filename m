Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D3C9781E21
	for <lists+devicetree@lfdr.de>; Sun, 20 Aug 2023 16:25:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230515AbjHTOZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Aug 2023 10:25:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231194AbjHTOZU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Aug 2023 10:25:20 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 113C82D58
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:42 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2bcb0b973a5so13337151fa.3
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 07:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692541240; x=1693146040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pUMR3LqJcxqZxpTo1E2SP3COlMrchmG5hYlUxy2vLhI=;
        b=qnumYkRMy5qjqNn91jKN25UnEPXHQG3fjXMmnvRFnsHQL1bGXU6j0EK7O5R3lhiRxs
         +TrrnufeDtMXTb4guljQcN7TwJ9iTTn+MccPtvrKDvrbq7hoOpo9tCLiRb5IlBV8bTIw
         eYWLqrBmqH+NXhipTNcpTc/QVy490kl7BPrLHm/fXzYNCCHNr1rYfero1f+PF76Bnz/x
         UkSVUp5KrChTwAH1vVtUQB6fq2M8DIbZbDmaDo3iVZadmU5JE2eHAzQpqYX/zxoiDeOE
         tRVCSWX0QUv/FauB9T4l21HhHrH4z2+D7xHdIK8lM+E11CD1XJuBk34eef99ZIikquRh
         23Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692541240; x=1693146040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pUMR3LqJcxqZxpTo1E2SP3COlMrchmG5hYlUxy2vLhI=;
        b=DwU2pWbiBeN2261k1ow3jIdV3SBCGNm5GwEDthkEVhYvDSuHB5v+SLOCwOaKOnm1Wa
         HngVrRf+rMd++DWUBkhIkVgtupcuAiFLNFmnqKcjoU432qqU6/EpPcpLUX5d581LMnCP
         c9ylU8Yf4W7R+Nydi2ydROk0hneayGWBmVYdk59BehG/IREzhQhq9XuKDPfGvbCaHdqP
         boAI/ogG9Czn2sMyPaf0GruN3rDphf0Hk2TNzuItjnKMnr1ITeib5V1KTnfcrkP3+OFC
         NTj9zckAN4ztZQ9vcZtoAuSZMYCJQHcHbCO5ZirrEuvqzJ/9EbeIwbAe/bYm5pnuvhK7
         1+tw==
X-Gm-Message-State: AOJu0YzLtUknMUbN4IUExOX58PWmWj8Cl5/qno51bKjHfA39KN/LQtFr
        QHlKAIStZUoKQx1Lq7lD4AgLfQ==
X-Google-Smtp-Source: AGHT+IH9SBm8UHcwiZJ6hZkUq5f62BcCkWHDyWeTvgtXUbCl1CrVzCB/6GmGPVuFaN4xnmAlUYFBAw==
X-Received: by 2002:a2e:7019:0:b0:2b9:acad:b4b8 with SMTP id l25-20020a2e7019000000b002b9acadb4b8mr2948261ljc.52.1692541240124;
        Sun, 20 Aug 2023 07:20:40 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n9-20020a2e7209000000b002b9e501a6acsm1706222ljc.3.2023.08.20.07.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 07:20:39 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: [PATCH v3 03/18] phy: qcom-qmp-pcie: drop ln_shrd from v5_20 config
Date:   Sun, 20 Aug 2023 17:20:20 +0300
Message-Id: <20230820142035.89903-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
References: <20230820142035.89903-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no shared lane config for v5.20 PHYs, it is only present on
SM8550 gen4x2.

Fixes: a05b6d5135ec ("phy: qcom-qmp-pcie: add support for sa8775p")
Cc: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index e15ea113b2db..373f959e439d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2342,7 +2342,6 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
 	.rx		= 0x0200,
 	.tx2		= 0x0800,
 	.rx2		= 0x0a00,
-	.ln_shrd	= 0x0e00,
 };
 
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
-- 
2.39.2

