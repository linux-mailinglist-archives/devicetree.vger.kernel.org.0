Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54654641C29
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 10:44:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230033AbiLDJox (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 04:44:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230054AbiLDJoq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 04:44:46 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5709818E07
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 01:44:45 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id h10so10273912ljk.11
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 01:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ViFg3QNyZVtw+zxBmNfbWyO4sny1AXAMq0M/0KRlwk=;
        b=CVpRxf+2zXiCw67GOSd/Qms9suxBrX4AXuS/RX54SRVZECtwIGidrlYDqkMHLipHMZ
         P8x3yHf94Sdx0UsnymUmV3g44uzMF41v6w+5pdM14r9U1YfuvsxdhswL4ymNgpEraA/e
         pkMA2vBxb9b6Ae3hdH4M19cKoDEwTCKHKZCiSr3x26XusYS6YKfti38ier0ki1IBpian
         1XdWy2LcQ9HyKwqw/+q0NAXMyX+fGR0e28X82ycxEhmbUVIa+uTSQ1zJWplM21DyeAp0
         8kEh57LEoDoEjTMDH8R4YlCwo+gMHm4OQUm2RIjrajDDgoFpIrDfWuhi0j83aRsn5HXs
         HW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9ViFg3QNyZVtw+zxBmNfbWyO4sny1AXAMq0M/0KRlwk=;
        b=55DBlt786D/r8zZdkhDAxwE4c2vRgdS6C/mh/gFCVRjIyrnozpBFeqU0Zww5S8TfgF
         B+mcyvC6TPGiJjnTEjcFkxnmSHM5zwMmFFx+OEDKipINdAzwpkpGwdeZSMicKH6yClA9
         XVwdh4WWVeW5FA7jwQ8y8JeqHon19+XNpCljQgSBHhSJ+7U5M9Qoduw31SOLDyRpMxxh
         Nb785CWWHi3xMa/MyEemCh4XAMAKqmgilZ1Z9HuJAhm/AtBkX1EXiZyulGZNTtQDH395
         oBumhnpQGQdi799SPuM6dSKu9rBgKzTWcXxjLSYjC+Phyai5IlbF5cdC6253gZdUbiQd
         Teiw==
X-Gm-Message-State: ANoB5pkCLpcyGRYYR1M//AWvGZ8tCVDGBVuETrS0qKb8Ek9I88HLDyRc
        l11uCjnxwDK8W6Zc9x5Q2plrtw==
X-Google-Smtp-Source: AA0mqf4Sg9RjftHh3OcqV7dy4/QpnyNwHJQ8jdAcCKCqtHTSjS03vC5L8+Dc8CgJBnZjdM/fmUxttw==
X-Received: by 2002:a2e:b946:0:b0:278:f109:2844 with SMTP id 6-20020a2eb946000000b00278f1092844mr23526160ljs.224.1670147083722;
        Sun, 04 Dec 2022 01:44:43 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o10-20020a056512052a00b004b07cdef19csm1711593lfc.138.2022.12.04.01.44.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 01:44:43 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/6] arm64: dts: qcom: sa8155p-adp: fix no-mmc property for SDHCI
Date:   Sun,  4 Dec 2022 10:44:35 +0100
Message-Id: <20221204094438.73288-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221204094438.73288-1-krzysztof.kozlowski@linaro.org>
References: <20221204094438.73288-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no "no-emmc" property, so intention for SD/SDIO only nodes was
to use "no-mmc":

  qcom/sa8155p-adp.dtb: mmc@8804000: Unevaluated properties are not allowed ('no-emmc' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
index 01ac460d910e..25e2d9a2429e 100644
--- a/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
+++ b/arch/arm64/boot/dts/qcom/sa8155p-adp.dts
@@ -397,7 +397,7 @@ &sdhc_2 {
 	vmmc-supply = <&vreg_l17a_2p96>;  /* Card power line */
 	bus-width = <4>;
 	no-sdio;
-	no-emmc;
+	no-mmc;
 };
 
 &uart2 {
-- 
2.34.1

