Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08F1D584334
	for <lists+devicetree@lfdr.de>; Thu, 28 Jul 2022 17:39:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230187AbiG1PjW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jul 2022 11:39:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229588AbiG1PjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jul 2022 11:39:21 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A57755723A
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 08:39:20 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id y9so2221151pff.12
        for <devicetree@vger.kernel.org>; Thu, 28 Jul 2022 08:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CqSVW/Ueq6eSKuuwfz5Rq7CFA5+wXLwAWIYxDZSpO44=;
        b=Mr16A+PaQ/QvRlFTof2HXImkabcfMVdsACcFH/i8ptMJGW1+/4dSaqJ2BBBZbr8sj1
         T/xZiOYHH9TxqQMvAbuFv+TD6zRIiIZWvOjT+sFZppRity0mktOZJF6Gn+Hajj67uf5z
         9Pv1twnvGQC0/BWmgqg9CgZVs82EDjtuTntDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CqSVW/Ueq6eSKuuwfz5Rq7CFA5+wXLwAWIYxDZSpO44=;
        b=V5E58jB7ctC6pRrQL9Sz95Lb06XVw2DzOwb7FTJIP9Z9899MmMGQsu/4lH4V4qwxMA
         UuIwOfaHCyH2D84U/bbtGN89Btur0crS7TKagrdv4O05FeSTm4EEPH64jS7ZXJwn6UJ0
         GFoNse1w9Ay9vwQ7eM0XMEoObkOm5uDz4JK2+gLyidnBF4wqI7UacoUzV8nrZoYXEocP
         vUs+97qvWgStJRX4FjD4c2henlPMlRLXRdCdAp8ryFwC831DWyVqEO9LBDU0UUcvZ9lv
         bwtRi3ccFNbxWd/WLCCRs1+SoTbQKpZIj7Gqc5Hn5PU4bmwA+Js0LQnIMSW3NNfBsd47
         Nqvw==
X-Gm-Message-State: AJIora+fCdbDB7zUa0x2LyIbSltWpNmHrDS6zDJFBBQi63Ju2/csJRWB
        rMNzibxO2kj2uR9pLFUg0cBxdA==
X-Google-Smtp-Source: AGRyM1u7RU0iN+DYfRvTGeLIPu8TkCTXOx9aEqO/5m1pJbFtITJo9P6lOu6fitsB9UUSmxcut8h8eg==
X-Received: by 2002:a63:1c24:0:b0:41b:40c5:f114 with SMTP id c36-20020a631c24000000b0041b40c5f114mr8543848pgc.3.1659022760163;
        Thu, 28 Jul 2022 08:39:20 -0700 (PDT)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:7c0f:5963:f38d:5645])
        by smtp.gmail.com with ESMTPSA id n5-20020a170902e54500b0016c0593876csm1462148plf.157.2022.07.28.08.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 08:39:19 -0700 (PDT)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Eizan Miyamoto <eizan@chromium.org>,
        Evan Benn <evanbenn@chromium.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Pin-yen Lin <treapking@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v3] arm64: dts: mt8173-oak: Switch to SMC watchdog
Date:   Thu, 28 Jul 2022 23:39:13 +0800
Message-Id: <20220728153913.2652153-1-treapking@chromium.org>
X-Mailer: git-send-email 2.37.1.359.gd136c6c3e2-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Switch to SMC watchdog because we need direct control of HW watchdog
registers from kernel. The corresponding firmware was uploaded in
https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/3405.

Signed-off-by: Pin-yen Lin <treapking@chromium.org>
---

Changes in v3:
- Remove /delete-node/ and create a new node for SMC watchdog.

Changes in v2:
- Move the modifications to mt8173-elm.dtsi and add some comments.

 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index e21feb85d822..fc8203297bac 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -161,6 +161,19 @@ hdmi_connector_in: endpoint {
 			};
 		};
 	};
+
+
+	smc_watchdog {
+		compatible = "arm,smc-wdt";
+	};
+};
+
+/*
+ * Disable the original MMIO watch dog and switch to the SMC watchdog, which
+ * operates on the same MMIO.
+ */
+&watchdog {
+	status = "disabled";
 };
 
 &mfg_async {
-- 
2.37.1.359.gd136c6c3e2-goog

