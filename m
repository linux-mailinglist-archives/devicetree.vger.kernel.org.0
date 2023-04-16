Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76E486E3823
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 14:38:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbjDPMiF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 08:38:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230316AbjDPMiC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 08:38:02 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C13014C0F
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 05:37:57 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5055141a8fdso2858116a12.3
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 05:37:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681648676; x=1684240676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gzkej2x000un3WGEKUhC8eQaJi6H3ktLZIrlxCRrcMo=;
        b=qo4BIIlX4bgK0NF/G72Fx/VoeyKha37jz3aQ6P8tp5b9nwn7MHZN5BrVjAN+Vp0e6g
         01AFHwzWrWIkLhbTjWdAzh39wSSU1BKtsCzCKKPurXi6mGFl5zykxM1yll/6vtrYuJPm
         4odLTNF+xz64k7czDdTyC7N2UGeHkYKFrKyogdhBW89ELRUEvWmAc0T7hCjKlXUywqYO
         xlqLnvGlNLNpTUlhv4oEynWGnqaxCsu5VgOC1oC1DWGGV4H4Lc3cPShInbwMGkE3HAmd
         /D89u5D64Jfmq/RucK9AxiyWzhyoOkatZuI3ZNNPvK0HqvyLBSYCSmNARqYsnqcCx4PQ
         VFzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681648676; x=1684240676;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gzkej2x000un3WGEKUhC8eQaJi6H3ktLZIrlxCRrcMo=;
        b=iSkhwENojJkDeD2IoBpDKtVEbqPOLX5PEfCkrbXwVwb4SPLNS/fFF/UPK8xic1NTaT
         sRoAprRDeNJLBQ35ULlj/zb+8MYWnAfMoxR++PJJQqoobrRE3kjfP4IeUeG1FKvhK0jQ
         e6/7+5AQGPdWcgfZi62J1uh+i1o5ct9jUa4GdCzygmCFDsUJhKWsRJ8nXj9Gw/Ck5Yo3
         HN+Qvl17GF4vamofig1XAKC16msUNoLoa9dmI7dxmZhcxUH/nGeCy6DZCUhfK7F3IIbC
         d0J1ixDFMDPKQoEnpmjKEPKcjdCPS+U7cFIVcL0ZZPCMatBu1D9ocAui3k8JcI2a76pD
         TTtw==
X-Gm-Message-State: AAQBX9fkJTfUio2wFpnx92+AZI4gmhxjU5qzF7pJKaRyazCD0I733+E3
        qz9cXjoKo+nkj6wcvADRd6kA9A==
X-Google-Smtp-Source: AKy350a6gUuMVOfmrXHn95EAsIXblaGeEbqdWYK2rSkITRfPK/3aKWXxhzpqXIPrpi4sYfiZJtCm3Q==
X-Received: by 2002:a05:6402:202f:b0:504:ecfa:fa6c with SMTP id ay15-20020a056402202f00b00504ecfafa6cmr10953266edb.1.1681648676299;
        Sun, 16 Apr 2023 05:37:56 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:29dd:ded4:3ccc:83db])
        by smtp.gmail.com with ESMTPSA id j23-20020aa7de97000000b0050432d2b443sm4556889edv.48.2023.04.16.05.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Apr 2023 05:37:55 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 6/6] arm64: dts: qcom: sm6125-sprout: align ADC channel node names with bindings
Date:   Sun, 16 Apr 2023 14:37:30 +0200
Message-Id: <20230416123730.300863-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230416123730.300863-1-krzysztof.kozlowski@linaro.org>
References: <20230416123730.300863-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Bindings expect ADC channel node names to follow specific pattern:

  sm6125-xiaomi-laurel-sprout.dtb: adc@3100: 'adc-chan@4d', 'adc-chan@4e', 'adc-chan@52', 'adc-chan@54' do not match any of the regexes: ...

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
index b1038eb8cebc..a7f4aeae9c1a 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
@@ -138,7 +138,7 @@ &pm6125_adc {
 	pinctrl-names = "default";
 	pinctrl-0 = <&camera_flash_therm &emmc_ufs_therm>;
 
-	adc-chan@4d {
+	channel@4d {
 		reg = <ADC5_AMUX_THM1_100K_PU>;
 		qcom,ratiometric;
 		qcom,hw-settle-time = <200>;
@@ -146,7 +146,7 @@ adc-chan@4d {
 		label = "rf_pa0_therm";
 	};
 
-	adc-chan@4e {
+	channel@4e {
 		reg = <ADC5_AMUX_THM2_100K_PU>;
 		qcom,ratiometric;
 		qcom,hw-settle-time = <200>;
@@ -154,7 +154,7 @@ adc-chan@4e {
 		label = "quiet_therm";
 	};
 
-	adc-chan@52 {
+	channel@52 {
 		reg = <ADC5_GPIO1_100K_PU>;
 		qcom,ratiometric;
 		qcom,hw-settle-time = <200>;
@@ -162,7 +162,7 @@ adc-chan@52 {
 		label = "camera_flash_therm";
 	};
 
-	adc-chan@54 {
+	channel@54 {
 		reg = <ADC5_GPIO3_100K_PU>;
 		qcom,ratiometric;
 		qcom,hw-settle-time = <200>;
-- 
2.34.1

