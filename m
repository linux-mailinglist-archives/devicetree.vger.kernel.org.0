Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD5DC72BC98
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 11:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232246AbjFLJbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 05:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231214AbjFLJaQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 05:30:16 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A43B30E6
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:24:48 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so4676803e87.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561886; x=1689153886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c3HXmWBI5xLrWbOkueODzJ5MVGSA4Kc5TK/lazRH0B0=;
        b=kzgUUkMC5jsWR5xW0+ANRcf2btdakfoFVSpYBSE9CikTfQlpt+AqLN7zdBbZJFtLme
         xv5/N8+XHKqeOLiYheLN/vH4zRYHi9T6pytx/a+feZ6Ar+vvWiN0Eku+dctJjFBED96f
         y6dlmLfFclU/1M8/Dkh0s6PVP4tPSxlThdgfNA1wtRmX3AYoPWL+galeUX+z96THhp9l
         eoKOC7/6cBKs8NL0f/gd6xfgLidEidiAmfGdioadvL+hjOWjmHTAkyP/TtqA63cg+m8E
         1Ro1pxSPqRZ/FZLWuM9+n+8mX+utAr5AZu5GwTebLop+/HDkLST5jFVWE05M/IewJtwh
         TSsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561886; x=1689153886;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c3HXmWBI5xLrWbOkueODzJ5MVGSA4Kc5TK/lazRH0B0=;
        b=P6qpfUDT2U9bkFDPSn4rG+hxhDq0hi8D/lfsjc7SdXQ0V9pAZmY+HrMTExpO4pg8va
         4+t06Cz5Kg8lvsOaPsB8W1T5w1MH92y0CuJPGkamcgnqXPdyFlNoROL3xlqI2ncEgyU0
         yvVPsxNQWFWFbYj4klTdeYPBarlv+/9c0zYOMRMqH4XP4QlENx9goCZHgilfJipQmIN7
         DEvgO7srHr8iluikW09lu6u+Fjiyr480/q8wAGg7Ow/msg17JBR5am+CNiCkcMVCGYDC
         M9Q9EfBLZ8DkU3EryJTGbvGdMbdIfwQTZ6HifvSx3YOLzEr8FBabADGZVqpamqrr9/5v
         ICaA==
X-Gm-Message-State: AC+VfDyXj9SIkSPH7NY8RnGPq6WPXEWtPTv2A7zwydOKgPZwrxyFLGgu
        v/Io6I8BCOeiTtczTpkzTdct+w==
X-Google-Smtp-Source: ACHHUZ5ccKjNrjHtWSXeFcXvi6pGIDd0bXqsgL6lZowErwFAW975a65dQyiL/g71vDQz5+NfmBtGXA==
X-Received: by 2002:a05:6512:615:b0:4f2:5d38:2c37 with SMTP id b21-20020a056512061500b004f25d382c37mr3795687lfe.15.1686561886665;
        Mon, 12 Jun 2023 02:24:46 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:46 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Vinod Koul <vkoul@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Giuseppe Cavallaro <peppe.cavallaro@st.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>
Cc:     netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 14/26] net: stmmac: dwmac-qcom-ethqos: add optional phyaux clock
Date:   Mon, 12 Jun 2023 11:23:43 +0200
Message-Id: <20230612092355.87937-15-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

On sa8775p we don't use the RGMII clock but have an additional PHYAUX
clock so add support for it to the driver.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c   | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
index 252dca400071..2f6b9b419601 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-qcom-ethqos.c
@@ -94,6 +94,7 @@ struct qcom_ethqos {
 
 	unsigned int rgmii_clk_rate;
 	struct clk *rgmii_clk;
+	struct clk *phyaux_clk;
 	struct phy *serdes_phy;
 	unsigned int speed;
 
@@ -604,6 +605,13 @@ static int ethqos_clks_config(void *priv, bool enabled)
 			return ret;
 		}
 
+		ret = clk_prepare_enable(ethqos->phyaux_clk);
+		if (ret) {
+			clk_disable_unprepare(ethqos->rgmii_clk);
+			dev_err(&ethqos->pdev->dev, "phyaux enable failed\n");
+			return ret;
+		}
+
 		/* Enable functional clock to prevent DMA reset to timeout due
 		 * to lacking PHY clock after the hardware block has been power
 		 * cycled. The actual configuration will be adjusted once
@@ -611,6 +619,7 @@ static int ethqos_clks_config(void *priv, bool enabled)
 		 */
 		ethqos_set_func_clk_en(ethqos);
 	} else {
+		clk_disable_unprepare(ethqos->phyaux_clk);
 		clk_disable_unprepare(ethqos->rgmii_clk);
 	}
 
@@ -669,6 +678,12 @@ static int qcom_ethqos_probe(struct platform_device *pdev)
 		goto out_config_dt;
 	}
 
+	ethqos->phyaux_clk = devm_clk_get_optional(dev, "phyaux");
+	if (IS_ERR(ethqos->phyaux_clk)) {
+		ret = PTR_ERR(ethqos->phyaux_clk);
+		goto out_config_dt;
+	}
+
 	ret = ethqos_clks_config(ethqos, true);
 	if (ret)
 		goto out_config_dt;
-- 
2.39.2

