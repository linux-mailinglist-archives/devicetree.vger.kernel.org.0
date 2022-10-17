Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4914601DCE
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 01:47:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229828AbiJQXrF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 19:47:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229793AbiJQXrE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 19:47:04 -0400
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com [IPv6:2607:f8b0:4864:20::82f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A21B37C1C8
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:46:59 -0700 (PDT)
Received: by mail-qt1-x82f.google.com with SMTP id r19so8778340qtx.6
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 16:46:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jPs91Vx1W9fG2lCg/tk7Xp1czEvOoCNoRLxtOgz+ygM=;
        b=c83jwx4+AyS0RAwo7UqYo1fihPHgcpmiA6fpL1QztlsykHkxGSKS6vYyn/2T7WfLQ1
         opvk6sd767C0Kj+ITdOk+B+tyWpMQ1KuL3k+ophyJIA/dtXgkM9FioN1mxtIaXqyiVMz
         Q3eEwTwF9gY3MEW/XVEDJiKYy/cO/8cS+oz2Scu14uO8imQ1vcn14mXbVtX3occ76MiF
         mm8one6j4XVee40YYYPzxCX7btwmCKdFt84mSNcvn2KLR9gKVB5frQPalNjXc70/lEIT
         0OCr4PrWVieo1SjCWbhgWo6iYoVJ1mxfKitpGrdwKcG1q8shFL+14tzMNkLSZrAYJ4yt
         wyOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jPs91Vx1W9fG2lCg/tk7Xp1czEvOoCNoRLxtOgz+ygM=;
        b=uTumhsePm84NZp+GYP0Z0UNpz+RTWABopx4WPgPBaqb8nVYIDqWXqOk1X9C5IsgpUK
         Ivy6DxCi8a3IfTjETiYXVEYc11RlEP7l1evvuW+Df50qDcDU7hm8Vi9mur32P3KUZcLo
         4Hnl6ZQYoQiJSrx67DpjOtNPvLocwmfMEgHHz3l5K68N/mWrBE4BkfcNFeXNgAvdjXkS
         zR6AGUPGmKZcCnoPdj+2Jv0COHfKtfmxg8H2nf+XFgfHq4wwzSZNf8FTEMWMIapTVspY
         cZvaewq87YwyhOu2YCB/So+TzcCpdE7zCQi8CbeEMJkm6JE6i7P4q6gdTFGtScHoov9T
         GKCg==
X-Gm-Message-State: ACrzQf2lfSVhudd0yBDt+srZa7/hK6ANUEnW7QVOKxWxAx38De89FhfF
        75MUNwHALjFuusOAdRmgX9yg5w==
X-Google-Smtp-Source: AMsMyM76DV33t+oqE2Y4ARVGxnPrNa5ShCi62G0GXm9HG65LBgwS6mynNp7blDnetlaKKYBNk3Mdqg==
X-Received: by 2002:a05:622a:245:b0:39c:c512:d1d8 with SMTP id c5-20020a05622a024500b0039cc512d1d8mr88352qtx.157.1666050418836;
        Mon, 17 Oct 2022 16:46:58 -0700 (PDT)
Received: from localhost.localdomain (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id r19-20020a05622a035300b00398313f286dsm858120qtw.40.2022.10.17.16.46.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Oct 2022 16:46:58 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/4] arm64: dts: qcom: msm8998: add gpio-ranges to TLMM
Date:   Mon, 17 Oct 2022 19:46:50 -0400
Message-Id: <20221017234653.55506-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Qualcomm pinctrl bindings and drivers expect gpio-ranges property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>

---

Changes since v3:
1. Add Rb tag.

Changes since v2:
1. None
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index f05f16ac5cc1..2c4acf227253 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -1056,6 +1056,7 @@ tlmm: pinctrl@3400000 {
 			compatible = "qcom,msm8998-pinctrl";
 			reg = <0x03400000 0xc00000>;
 			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-ranges = <&tlmm 0 0 150>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
-- 
2.34.1

