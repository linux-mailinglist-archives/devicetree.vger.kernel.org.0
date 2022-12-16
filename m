Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1058964F53E
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 00:40:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230115AbiLPXke (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 18:40:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230020AbiLPXkc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 18:40:32 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BDC56407
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:40:31 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id m29so5562149lfo.11
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 15:40:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=mO6GTEu8x/YM6wnvapt5u40IbV3efRsxnbpPo9jpp2d/qIdvVJ/I+NSdS4K5e09bbc
         bLPi/pf8fMQR4Mgz/LzlNEdN7+aVGsQempHQm9YJaTRyV2SbT2CX8ltb2jRgLwltuLti
         oMjrXTk/B8qk2KawhYNGWqEZ+k6z7IU35rNIUMtN6uBE9AoJiXmvxXNVWW7rxo4eV8Lm
         9VW88mGVFkA/n5GEFy0P7ishOxc+akf1xQLAmxJ3n4fBcu9EIwBm6ZWbVuEXPh1vhq5v
         0Po7UAgMl4y0stvdPm4FCgytDr6VzlS6VwhH17ZWa8ai1hjMcaDkXqSRGF4NAYCLjPzJ
         dxuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cZwQ38RrZGBM4qHYSFGd7K3TwyC7n/w0FHJkPUy2UM=;
        b=Zk4O2mYkh8JR7cbtnA42mlUqhX25YUGW3h/FLRbRAeFnhEnlrJWggy5DjPbaUsv8ms
         FwmCs7KTuoOaTBGUu/rrnU0mJaclSPl+lmuomhebY2aaOZGX3c7trIe93/TCA1qPfz8d
         BNDmfjAVOPKG74xkEYN5X+wG8aCIbgqwotdedoDlgyQbJrhL/vsvJ2pon0j8iIyICpdC
         8oIewljv1U9H+GdiVlPv7TLenklFMSV0hoz6JxzBh1U1mUcLT3ZgE6eIseTbNCliXtKi
         ML0PkMCY2WkAx2UaDgXDA0Z8QTctJPPyMAFLsoECMqpNrmTbH6mvIWTyJM9v49BausHw
         VZsQ==
X-Gm-Message-State: ANoB5pnr6/mgtX3GvHYzROSjd/7amK5hbsi1+EToao1Jh1WhQZiiRlNi
        hev/mD6QX2bWUJj7OaLNdoRqPQ/whFP64vIz2Vk=
X-Google-Smtp-Source: AA0mqf6LBdEGcgyFkutG3rmz4Csb86TyQrexMg3SEuzL6EnIva7pNhA9wUTmnPTfxzPeybD5RMF5Ig==
X-Received: by 2002:ac2:5a43:0:b0:4b5:90c5:281c with SMTP id r3-20020ac25a43000000b004b590c5281cmr9295436lfn.19.1671234029557;
        Fri, 16 Dec 2022 15:40:29 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a21-20020ac25055000000b004b40c2fccfdsm336950lfm.59.2022.12.16.15.40.28
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
Subject: [PATCH 2/3] phy: qualcomm: pcie2: register as clock provider
Date:   Sat, 17 Dec 2022 01:40:26 +0200
Message-Id: <20221216234027.539917-2-dmitry.baryshkov@linaro.org>
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

Register pcie2 PHY as a clock provider to enable using it in the
DT-based clock lookup.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-pcie2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-pcie2.c b/drivers/phy/qualcomm/phy-qcom-pcie2.c
index 5407e59bb185..11a2bb958681 100644
--- a/drivers/phy/qualcomm/phy-qcom-pcie2.c
+++ b/drivers/phy/qualcomm/phy-qcom-pcie2.c
@@ -243,7 +243,11 @@ static int phy_pipe_clksrc_register(struct qcom_phy *qphy)
 	fixed->fixed_rate = 250000000;
 	fixed->hw.init = &init;
 
-	return devm_clk_hw_register(qphy->dev, &fixed->hw);
+	ret = devm_clk_hw_register(qphy->dev, &fixed->hw);
+	if (ret < 0)
+		return ret;
+
+	return devm_of_clk_add_hw_provider(qphy->dev, of_clk_hw_simple_get, &fixed->hw);
 }
 
 static int qcom_pcie2_phy_probe(struct platform_device *pdev)
-- 
2.35.1

