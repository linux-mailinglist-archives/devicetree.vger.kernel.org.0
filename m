Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 257D4774898
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:36:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236497AbjHHTf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236515AbjHHTfk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:35:40 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB712179F
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 12:01:59 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-31792ac0fefso4526486f8f.2
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 12:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691521318; x=1692126118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OmT9PzSta8Xptuy25Nk3Dl9DmZNJ19laWsjgvsxKz6Y=;
        b=GVJmei0inJ0pPMlkTW2uh++vKy1E8M/6nFMSD/TvCfbJpSdadN13sEm64EImWmjNSa
         XeHdSPFdksGwLJHCq0jdOOPEJMoQZz2JYdLVWCuuLDzIhKT3vJ7nlGXfxzR5yLedeQcX
         bRb/ZFdykcJMEJpYY2IJnDnYv5rrzW6K+UeeHj5Yqucz+jk0DKV2bFu4K1aBW9I/oIa0
         h+YaOElDyIjmIIpxlJoiSx2LdwVJt9sL/E+GUyqzZBCBLAFh16xW572G+DWYDuJ1rBKv
         Nc6dknghuTCa6MJZ4n+z61Z2Neq1svT/bafnNdwLMshnHMqIPNqZwUDxm55Rhi33KY9m
         niFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691521318; x=1692126118;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OmT9PzSta8Xptuy25Nk3Dl9DmZNJ19laWsjgvsxKz6Y=;
        b=ROWXfkHD1MOYR5um8SVVVL1ClLv5I09NmGXUYSkY7qbPKlu7vncGYBhXz4kd48MdZP
         25FTnZkUjyVUuKHpLzYUUv2J+EcvLkkcHrp1rdyl4sSq/fT83DUXQWFkZMXD4UK+k01J
         jmt3/KZU6okv3HyvjCMvqEb4x67YdXzmvV8+ZXKp8br4U17/Ga5WAGgjBPadJK/l+uPu
         ISBYlY3iRCdroFaV8gyXOOgn7oNYLMW5s3vv78/Svep6ghcmISEYcS+zo0QlXrJeYjmM
         NMaaJUVLTeM9Ms8bQ9gEkNa/rdm3PHqBxPZl28RF6BK0YVJYKZwSCG9m5ZoVA7qIBXH8
         nCGw==
X-Gm-Message-State: AOJu0YyNQt9v5GlhG7pIp5YogTAbsOmfpD2tRNIjvcNpvIkWyWYOoO+k
        d/jUCofeVBZgT+rs76MAkThimA==
X-Google-Smtp-Source: AGHT+IFV/uBYBdBvXQ69ksH0nRx5//stS4hJaZqVO1Ze5T08JW/n9sbqQeUFby/pGOgKndKDYgR6pw==
X-Received: by 2002:a5d:6781:0:b0:313:f1c8:a968 with SMTP id v1-20020a5d6781000000b00313f1c8a968mr197129wru.2.1691521317843;
        Tue, 08 Aug 2023 12:01:57 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:6a08:bcc0:ae83:e1dc])
        by smtp.gmail.com with ESMTPSA id z14-20020adfe54e000000b00317e9f8f194sm7301055wrm.34.2023.08.08.12.01.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 12:01:57 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Andrew Halaney <ahalaney@redhat.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH v2 5/8] arm64: dts: qcom: sa8775p-ride: index the first SGMII PHY
Date:   Tue,  8 Aug 2023 21:01:41 +0200
Message-Id: <20230808190144.19999-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230808190144.19999-1-brgl@bgdev.pl>
References: <20230808190144.19999-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

We'll be adding a second SGMII PHY on the same MDIO bus, so let's index
the first one for better readability.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Andrew Halaney <ahalaney@redhat.com>
---
 arch/arm64/boot/dts/qcom/sa8775p-ride.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
index a03a4c17c8f0..f9e1a017798e 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dts
@@ -263,7 +263,7 @@ vreg_l8e: ldo8 {
 
 &ethernet0 {
 	phy-mode = "sgmii";
-	phy-handle = <&sgmii_phy>;
+	phy-handle = <&sgmii_phy0>;
 
 	pinctrl-0 = <&ethernet0_default>;
 	pinctrl-names = "default";
@@ -279,7 +279,7 @@ mdio {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		sgmii_phy: phy@8 {
+		sgmii_phy0: phy@8 {
 			compatible = "ethernet-phy-id0141.0dd4";
 			reg = <0x8>;
 			device_type = "ethernet-phy";
-- 
2.39.2

