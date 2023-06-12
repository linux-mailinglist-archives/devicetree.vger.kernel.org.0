Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0202872BC6A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 11:30:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233101AbjFLJaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 05:30:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233191AbjFLJ3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 05:29:37 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C8251B8
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:24:28 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-3f6e68cc738so29745695e9.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 02:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1686561867; x=1689153867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F1RtgufzwN5zkIc6lOIXx9j+jgAzsHOFWAyMRveQqLo=;
        b=jxFUBvkZ4Lg20XupS3NzkHFqhu8SEtVVfcnXOO+b6K6/t0uzorkTHwYRDrMhd2dJIU
         tdhzK6iKF6+sYaQwrNwnE3nbalQyEeuelBYndZA4Zlh1ic3fnVO7sRut7VoIEBGZqyTT
         j7X7mK1z0w+BQ2GjWcZZVMaxzDmSNJFStDd6l63u1LsPuVC+IR1W1QtTzlOsR9JLI+Vp
         /C2z7U/al+XLw+5ktMrKm6sW96aoMXXs83R5MH7rwPztSggbFtGmzEURIWOz4sSzPa4R
         7fu5lNM2p2uS5s2x+WETMW9u7Bl5Y9cMoLBsyEonGg0j/q1FpAfYpaSsN/KMSudrABVj
         RkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686561867; x=1689153867;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F1RtgufzwN5zkIc6lOIXx9j+jgAzsHOFWAyMRveQqLo=;
        b=drSIntgA5mIxBATq4HPEQvJwoHvH5Lk1+36tZeo97eUU6tJy+L4lu/quDKtK9uVfXf
         5HoOdq+CaNIYcCVFz+WvmG8G1XAel75aamIwWESuEPoQTBOA51wzF3zfzWeRk1ZxgxP9
         Np9zIf3Mogv9XIoXdjZ/9fAHD7U2OQ8K2UCS3TWYVkpEGIDwOTPZtNHUSxwFADrNwJch
         R4iaS9LsWlUM2EVxQs0OPieDmhl1peoaL/hPehnBEmyystq6w20zMXFCqzv1pOiMi2JP
         DFyfLY59WFOQegqKZHaSDbdGfbjKCwCtT8TpUBLvHZEhR+OXKmMVxLsBf7Bx4mbN1gqt
         Ubag==
X-Gm-Message-State: AC+VfDwZj7gDIUVc7beA/m7wmXT4dEVgpoKQRqBYcfS4VZABTBEIsuft
        fZ8XvkZg8NElH36uAquRc1PFCQ==
X-Google-Smtp-Source: ACHHUZ4X9DW5v3nm9ETabAEnO/zHuXwpBxjwwwHIiRMD9OibOaCyO+b+AitZRY7pXVt/6xW+wsS/3g==
X-Received: by 2002:a1c:4b13:0:b0:3f7:f264:3edc with SMTP id y19-20020a1c4b13000000b003f7f2643edcmr5877256wma.14.1686561866564;
        Mon, 12 Jun 2023 02:24:26 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:a222:bbe9:c688:33ae])
        by smtp.gmail.com with ESMTPSA id p14-20020a7bcc8e000000b003f727764b10sm10892044wma.4.2023.06.12.02.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jun 2023 02:24:25 -0700 (PDT)
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
Subject: [PATCH 01/26] phy: qualcomm: fix indentation in Makefile
Date:   Mon, 12 Jun 2023 11:23:30 +0200
Message-Id: <20230612092355.87937-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612092355.87937-1-brgl@bgdev.pl>
References: <20230612092355.87937-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Align all entries in Makefile.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/phy/qualcomm/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index de3dc9ccf067..5fb33628566b 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -20,4 +20,4 @@ obj-$(CONFIG_PHY_QCOM_USB_HSIC) 	+= phy-qcom-usb-hsic.o
 obj-$(CONFIG_PHY_QCOM_USB_HS_28NM)	+= phy-qcom-usb-hs-28nm.o
 obj-$(CONFIG_PHY_QCOM_USB_SS)		+= phy-qcom-usb-ss.o
 obj-$(CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2)+= phy-qcom-snps-femto-v2.o
-obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)		+= phy-qcom-ipq806x-usb.o
+obj-$(CONFIG_PHY_QCOM_IPQ806X_USB)	+= phy-qcom-ipq806x-usb.o
-- 
2.39.2

