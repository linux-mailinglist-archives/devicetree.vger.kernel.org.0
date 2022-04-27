Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 714FD5121C6
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:52:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231917AbiD0Szk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 14:55:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234010AbiD0Syt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 14:54:49 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10C0B42EB
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:41:22 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id s21so3699026wrb.8
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 11:41:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=N6G/xcwWCTxvb9G73B2XRdjPPr2MF5UR6WrCerpPvtI=;
        b=Eq8RmBUa6QZIrPBoaS4wU4l9ksQhkbE+j9QQwicFPr7ea96HlDJXhgWVybK81lp291
         A32tb/pPMKlpwfXAfDCIpaEPK+Hx5xBCZuDGPJlnk2iAT5Vhu59xnuFOJok//ATLLCkB
         st01pOkCOOY5SiT9Xx0G9FC4T9dc7TthrvU/JlKqINfASBOYtr6fQmn6IrEGGtLSPBe0
         HpwmdfsuvUwQ8dYQFEiGjuHmGQNVUDYibL1rHMy7Ki1GTKyG9mbFszIVfe6/spogSqw9
         CWq/TX7YQM4l9Xza2E9f8Wo/+xRdzrcbZsLTUHqpNib8ebjuILDJWkJDmue6HGx6gXqJ
         1phA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=N6G/xcwWCTxvb9G73B2XRdjPPr2MF5UR6WrCerpPvtI=;
        b=8D2KASlO6spSS5MCBCbf84q949wBpr9VIq4balZNzP5HIO9EJdTvRx/yBqSnzn+oaS
         4TTFjkbpTzJ5fj/xZy7r/6R9Q20AOKwVZHxGjxVuvqXPs09wE+hiTNPxJY+TOgpTwTlD
         m707/gX5hZRhct9fa8W/cky2alVCpZcdduGrjfV5fHeqSnDmEzhTwbas//csgjR5qjfx
         bSDIeMwv94d4+mCrQ1oo5y7cixckbWDrXdUYbf3EeHdA5cbBUS33Yi6uTx2Xk8nBImJ1
         Kerz7CFR3/nMao1/5jV/v/06ILXDvnovX3abb+SXjSWptKOQPpMGHZqlOh4kgn8oAwx9
         5i8w==
X-Gm-Message-State: AOAM5302elWe2JfPrWAEAJ5gIBsu7CDoHTDk6au1kFFMgOd6+JgQWB/e
        +iG3lfCpKqx/uEJQWSdUH+Ol7g==
X-Google-Smtp-Source: ABdhPJwZVKozldr6zcXz35GYlRTsb+89wBHEbE1Uy4aFsPphD87s+fTEG/jHqJh2dUUwdOsRDpNklA==
X-Received: by 2002:a5d:6752:0:b0:20a:ce1f:2ceb with SMTP id l18-20020a5d6752000000b0020ace1f2cebmr20539629wrw.715.1651084881147;
        Wed, 27 Apr 2022 11:41:21 -0700 (PDT)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id f3-20020a5d64c3000000b0020aef267950sm1992798wri.49.2022.04.27.11.41.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Apr 2022 11:41:20 -0700 (PDT)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Amit Pundir <amit.pundir@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>
Subject: [PATCH 4/6] arm64: dts: qcom: sdm845-db845c: enable pmi8998 charger
Date:   Wed, 27 Apr 2022 19:40:29 +0100
Message-Id: <20220427184031.2569442-5-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220427184031.2569442-1-caleb.connolly@linaro.org>
References: <20220427184031.2569442-1-caleb.connolly@linaro.org>
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

Enable the smb2 charger driver on the db845c and add a simple-battery
node to report the correct VBAT voltage.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 40a290b6d4f3..3b73b5305c51 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -240,6 +240,18 @@ vph_pwr: vph-pwr-regulator {
 
 		vin-supply = <&vbat_som>;
 	};
+
+	/*
+	 * The db845c doesn't actually have a battery, but the charger circuitry
+	 * is still wired up to support one, it needs to be programmed for nominal
+	 * vbat voltage. See the vbat-regulator above.
+	 */
+	battery: battery {
+		compatible = "simple-battery";
+
+		voltage-min-design-microvolt = <4200000>;
+		voltage-max-design-microvolt = <4200000>;
+	};
 };
 
 &adsp_pas {
@@ -603,6 +615,12 @@ &pmi8998_rradc {
 	status = "okay";
 };
 
+&pmi8998_charger {
+	status = "okay";
+
+	monitored-battery = <&battery>;
+};
+
 /* QUAT I2S Uses 4 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
 	qi2s@22 {
-- 
2.36.0

