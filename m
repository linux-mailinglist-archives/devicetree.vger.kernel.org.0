Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53BD45B38CB
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 15:20:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230490AbiIINUS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 09:20:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230238AbiIINUR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 09:20:17 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB64A5281D
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 06:20:15 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id x10so1801116ljq.4
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 06:20:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=Wd0dLX4RoIQz4F553heILe9/hGLsfSdsBsSpc437liA=;
        b=o61kjP3KIBTm0M3eAdFlAoiGyJBMm5g72Syq4C1anFkLNdLpCuBwguA+kMm1SnFqjd
         0eteJIq+IUxAqS8lBGfNPCjMp9K3r3MC6oHF8ycFsPcJCUliQbHKADQhn2b4ER7FVXUI
         rpjU2UcBdo2Mds6ezQijKdbxojMVwwm0CN0SnRewO5FWb9/fw99glpuvr9QMCCEO12I9
         qCPQg9aRyr0A1U0H7E9qTDPvol6Nwnl5rnz3iQtR5V20DOhrEOTcThxAKmSa1O3cHVu1
         J3HpCwdlae92sYet3G+Fb17tt3dEnYwTuWmCNi0ok9O/RFuTAP8VCsXi2+ZRPSAUQVjV
         X7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Wd0dLX4RoIQz4F553heILe9/hGLsfSdsBsSpc437liA=;
        b=xUTsZbPb+tt3WYAv5NmbfLP5IHfBejuofmu+E0PmdL5eEbs/yjw67owFs/iOKVRezF
         zh+IUBr2deDbFuI0gDlpVZCOiB0JTPFuwgvknRyX3pwli/ZIh7a7dARLwSxHLYsmvGdb
         1HMJw1De0Mcw2CNB74pArrpIUxK+WSoEUAp9UkTvH7+pLLmQuSKjsjTDwtTeVUBssLL7
         LaxSboxv12iVbDOKT9pu34u4feSrmJC/hARlNDFfIorqSoXG7O7fscl4hth3OuSImLCi
         +cA5R9OHZMbO3Zd209sZ15bPJd6/wQ9k79/2tNhwh8wxcay5IHf76VvDX+5TwRVdxPXS
         Dj9g==
X-Gm-Message-State: ACgBeo2+S/X/oIM3x/I0PoNtV6b9lSIebwhnZGTMr2wGU+nSjfdk2pVl
        4xOfocF/8RlkfxaPZxN2kgW/KQ==
X-Google-Smtp-Source: AA6agR4IN0U9QlG9nGkTzwgl9TIcf7+DA9SPXWjc9Rx6V3Wt3cYbPH63oqkMVR31jHDWSuRwlESccA==
X-Received: by 2002:a2e:b04a:0:b0:26b:da87:8a72 with SMTP id d10-20020a2eb04a000000b0026bda878a72mr2446280ljl.233.1662729613945;
        Fri, 09 Sep 2022 06:20:13 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v10-20020a056512348a00b00498ff4ae746sm71729lfr.294.2022.09.09.06.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Sep 2022 06:20:13 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 3/6] drm/msm/hdmi: switch hdmi_pll_8960 to use parent_data
Date:   Fri,  9 Sep 2022 16:20:07 +0300
Message-Id: <20220909132010.3814817-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
References: <20220909132010.3814817-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Replace parent_names usage with parent_data. Note, that this makes the
PLL default to board's `pxo_board' clock rather than just `pxo' clock,
as we are on a way to deprecate the global cxo/pxo clocks.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
index be4b0b67e797..c3e7ff45e52a 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_pll_8960.c
@@ -406,14 +406,14 @@ static const struct clk_ops hdmi_pll_ops = {
 	.set_rate = hdmi_pll_set_rate,
 };
 
-static const char * const hdmi_pll_parents[] = {
-	"pxo",
+static const struct clk_parent_data hdmi_pll_parents[] = {
+	{ .fw_name = "pxo", .name = "pxo_board" },
 };
 
 static struct clk_init_data pll_init = {
 	.name = "hdmi_pll",
 	.ops = &hdmi_pll_ops,
-	.parent_names = hdmi_pll_parents,
+	.parent_data = hdmi_pll_parents,
 	.num_parents = ARRAY_SIZE(hdmi_pll_parents),
 	.flags = CLK_IGNORE_UNUSED,
 };
-- 
2.35.1

