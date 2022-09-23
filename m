Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C29585E7F62
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 18:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232650AbiIWQQR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 12:16:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232336AbiIWQQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 12:16:11 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6EEE130BD6
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 09:16:09 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id o2so1024143lfc.10
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 09:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=l9KPENs01rvOOXjLT8Qa2HzJChvcWGtJ+M/KMDgaQo4=;
        b=igysk/LPGN7CPrkOpx0dO63HrJb3ebNd0gJo1lZ5TJcPAcefsFTL9IZfTCzLNzjo/K
         rqsaFrfXWLOvH7yX4HvVvNAN5alEEy53JtMpRwAKeZkGltThuKe/EmkM+HqvW5rVV/Td
         4KRI8EkRoebtGcUsva89IoR8F1mujKAAXt6oTrpRvEGf8tAoQUMiNprYKI4jHrHuYH8T
         jQH5gO0S7VgoKmhr04SF6o1GCR8zw4W5pmF8/hY9VjgFFqt9oALu8x+AvOfFWHll8uOG
         3lXjfpZ8KBEs3uE1I7aJTq18aUaRywiitC+BdjzU7iS+NtWwTtzF7ZM/HgnTGKYawHO5
         ye5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=l9KPENs01rvOOXjLT8Qa2HzJChvcWGtJ+M/KMDgaQo4=;
        b=HFm05vF3TXe8rqvqvF32YpzqlY5ZGJgnjWBCr4uIORKep6rfFrY0XfEuyclI5W/vqc
         dvWAEF9DyVH7wiN1tJ5ZCiZ3YM8dHnKMakrpFT5zRvYXRIKooBJaH5LQxEA45One3we+
         TumouluyKc0KjmFzCmbwdkK3QD8b0WFGaVT8pXBlaQRmt1F0cw3iXrE5FkcxH2LUMTB2
         cdaGZUAwH7n+ZAJ3FF0oW/2mLBTu3PyY5cm8afFfRX4QkBXhccHNk2y9BVf5NCKs59q3
         m/DHMtp7ER7Wv8jRWNX957dZZcRQ2H0UZXGpzo6+/R5XFZ78X7HyxywvKD4H2AgJZAkj
         beWg==
X-Gm-Message-State: ACrzQf2IhRqbTdEZxdj2E5HTjx6Ex5GyGW1N3pSxak2PLBmjMpj+XOs/
        u3MdMe8OKU8UlUU77G+DYKflbg==
X-Google-Smtp-Source: AMsMyM6tObYbcMIu84HwB72ICqPwolfxLPi+i1ky6mlQCNrwwyRzMbsebQ95K4JP3IV2pVVm2iM3fQ==
X-Received: by 2002:a05:6512:32c8:b0:49a:91d7:1bbf with SMTP id f8-20020a05651232c800b0049a91d71bbfmr3459943lfg.560.1663949768051;
        Fri, 23 Sep 2022 09:16:08 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f9-20020ac25cc9000000b00492f45cbbfcsm1493491lfq.302.2022.09.23.09.16.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 09:16:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/11] arm64: dts: qcom: sdm845: drop unused slimbus properties
Date:   Fri, 23 Sep 2022 18:14:43 +0200
Message-Id: <20220923161453.469179-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923161453.469179-1-krzysztof.kozlowski@linaro.org>
References: <20220923161453.469179-1-krzysztof.kozlowski@linaro.org>
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

Drop properties from slimbus node: unneeded status and
downstream-related qcom,apps-ch-pipes/qcom,ea-pc (not documented, not
used).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index d761da47220d..9db1fce6b198 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3828,9 +3828,6 @@ slim: slim@171c0000 {
 			reg = <0 0x171c0000 0 0x2c000>;
 			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>;
 
-			qcom,apps-ch-pipes = <0x780000>;
-			qcom,ea-pc = <0x270>;
-			status = "okay";
 			dmas = <&slimbam 3>, <&slimbam 4>,
 				<&slimbam 5>, <&slimbam 6>;
 			dma-names = "rx", "tx", "tx2", "rx2";
-- 
2.34.1

