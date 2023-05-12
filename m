Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 533F16FFDF9
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 02:32:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239669AbjELAcl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 20:32:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239645AbjELAck (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 20:32:40 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8DF96A78
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 17:32:37 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f14f266b72so8251179e87.1
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 17:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683851556; x=1686443556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2jRSMDMTdVsO/Mdr/Nh2wzZ9KeAk9092DrEdnm9Eu+w=;
        b=mzpZTt79Kk1TVhOKCzu8CO08OvcUJ7dwuU/OZOIZz3wKTyIJ3zuZjjRQhH5yDUdX+1
         U0QAD/CxfcGODVp743rv+ErlJyj/6i3S+h8w67pp+2deuIPODIPfrdElx7wDo8buos0M
         vBu+DKrH6+u6/iLWoJlLcIn7PiWtdVlCTmBJdsF2jo0Z0oYnyC3+5FhtjUuC2Kn6xFzc
         oPCiXtVWYONJMmFMRhbDMXuq6hzn5mVelpFrwx/8DWJd1rBza8cctL/sSap3DInRwWgr
         YgrXCiAp3UIFczxTwgKeC34oD+HB5+utR6brG5zJv/d2ZxX5TugH58yf0i+ZfhA+XsmZ
         qCoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683851556; x=1686443556;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2jRSMDMTdVsO/Mdr/Nh2wzZ9KeAk9092DrEdnm9Eu+w=;
        b=Gu3sSSvRbLjPDIzy80gb6AriT/F8VW9KKvqrWSnmxturfqOblb3seakTjWSM0rMclK
         1p200EXydB0xrIcPZUd3aWhl1QwB1kR3gw8vs5nnK2qNakp+6T5YYZvksktd6mC21+Ae
         Vbe7h8wiUyTNmEwsbsKNDJFBKdFeOnkhbHOi8F0ORk7iYZRsQ29ogzp4s9HtgGDmYQtw
         QfnqpwHpqzGR1hNMb5K6pNs8/NiVgvb6ZbsAALQ9ifpei/Zx6HmBS2PeNCmfLVtL/35/
         i78+qG0VdY5shp5FFc1BMb2QQEA0qUeCsKqXrEWyKVPk30jBcKVYyrEySCeGLa/7RzD9
         RFHw==
X-Gm-Message-State: AC+VfDwFTAXSlV70/aYXhDHyaJ0YF0rZ66/FTi1q024SX7JhSdbJzEZ5
        ndW59680kCLQhGrIiRXWoQOP1A==
X-Google-Smtp-Source: ACHHUZ7VOAFMAPGE2Bdop27K9F3qrc8g2XmJoSRMPQPjISZRgAevSnZNJytnxckylmhnVNuqNg1blA==
X-Received: by 2002:a05:6512:21af:b0:4db:4fe8:fd0f with SMTP id c15-20020a05651221af00b004db4fe8fd0fmr3096821lft.25.1683851556238;
        Thu, 11 May 2023 17:32:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id i7-20020a056512006700b004f13cd61ebbsm1282708lfo.175.2023.05.11.17.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 17:32:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, stable@kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 06/10] clk: qcom: gcc-mdm9615: use proper parent for pll0_vote clock
Date:   Fri, 12 May 2023 03:32:26 +0300
Message-Id: <20230512003230.3043284-7-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230512003230.3043284-1-dmitry.baryshkov@linaro.org>
References: <20230512003230.3043284-1-dmitry.baryshkov@linaro.org>
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

The pll0_vote clock definitely should have pll0 as a parent (instead of
pll8).

Fixes: 7792a8d6713c ("clk: mdm9615: Add support for MDM9615 Clock Controllers")
Cc: stable@kernel.org
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/gcc-mdm9615.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gcc-mdm9615.c b/drivers/clk/qcom/gcc-mdm9615.c
index fb5c1244fb97..2f921891008d 100644
--- a/drivers/clk/qcom/gcc-mdm9615.c
+++ b/drivers/clk/qcom/gcc-mdm9615.c
@@ -58,7 +58,7 @@ static struct clk_regmap pll0_vote = {
 	.enable_mask = BIT(0),
 	.hw.init = &(struct clk_init_data){
 		.name = "pll0_vote",
-		.parent_names = (const char *[]){ "pll8" },
+		.parent_names = (const char *[]){ "pll0" },
 		.num_parents = 1,
 		.ops = &clk_pll_vote_ops,
 	},
-- 
2.39.2

