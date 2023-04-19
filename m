Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9758D6E835F
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 23:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231822AbjDSVT0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 17:19:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231880AbjDSVTQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 17:19:16 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D0B461BE
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:14 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id kt6so1869939ejb.0
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 14:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681939153; x=1684531153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9QPvfE3NjcwvEgxYvM974qTypUj2hewodk0hJUiEGis=;
        b=o2xxMKhWf7lWXAKvLMPYpYa9jd9z+qLzCkDp7GvQdEWIHj+9MDcxa12pwWIm1eBrs2
         Ne3sj9YVMhgu+MrEsGz02xFn+5F1aJk687yJwcuayI4c+oTuxVeuqHrIkDpwqU93MOSK
         ZVeGnC5e/yqN1SetdB+6fRb4Jii51ykVtTETvdm6bF2UddM+MwkojQv61uvhk32AIGjW
         O08GsgtqHHQA60UTKF5V6M+PmXnvwrfjLUYgqONwfNKbnDjr7cOsyOqhsp/79t2yQIu/
         iPB68hF/bEEfM8jwebIc3PRffVZ99xmo0822Gx5zvpuyMNltT5X/JDvB+m1xjV2LxLpH
         xgyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681939153; x=1684531153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9QPvfE3NjcwvEgxYvM974qTypUj2hewodk0hJUiEGis=;
        b=FzlLaqo7zPjIiH+8cvHHlfcEr6G+b0uZpMSh/nMY12OJJTa32HGdMG4mGGTo1VVF6Z
         zhdW5neBodL/UiGJtiAIuVdC1k5/0SjNIk3aYUgc36oVdTztnJZhR0ZSqcmRsMek9Uwr
         hI9ht52HBmnGdTKItMZPB6rSkDXCQDVeluxKTDcPVhiGqQW3IpJEJf5dItkXRvkNihbn
         uv5+BBBckoO9BoPEf/hzF09GSrUNodesbsTZ/e0qkI8HJjpukXa1hPWY4cq3RjK8D7n4
         iHKN+ys7CA9Zig+5TTHzzELR6y2cF2yt9NGRPDv+GfVxtPBYlVoLXR7W7MPhDG41Jim5
         1G1A==
X-Gm-Message-State: AAQBX9dDD6OKiqBrHPdDslc0TufcKCFIGfRzDiFI3OTJYIJQKPJm/K4d
        uyGnLUx+Fw1Xn2SPTR3XuTsmAQ==
X-Google-Smtp-Source: AKy350b6pQG2ZfnAcvVvCyj5MtEONQUY+beQxcRcapPPUIKC9wEkO9dClvWpBalXDQCHuvNkvhNndQ==
X-Received: by 2002:a17:906:dac8:b0:94f:968e:4c00 with SMTP id xi8-20020a170906dac800b0094f968e4c00mr10645057ejb.31.1681939153551;
        Wed, 19 Apr 2023 14:19:13 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:976c:1d6c:6ed0:8935])
        by smtp.gmail.com with ESMTPSA id a12-20020a17090682cc00b0094f109a5b3asm7092739ejy.135.2023.04.19.14.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Apr 2023 14:19:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sivaprakash Murugesan <sivaprak@codeaurora.org>,
        Todor Tomov <todor.too@gmail.com>,
        "Ivan T. Ivanov" <ivan.ivanov@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Luca Weiss <luca@z3ntu.xyz>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Adam Skladowski <a39.skl@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Robert Foss <rfoss@kernel.org>,
        Andrey Konovalov <andrey.konovalov@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Molly Sophia <mollysophia379@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 09/18] arm64: dts: qcom: msm8996: correct camss unit address
Date:   Wed, 19 Apr 2023 23:18:47 +0200
Message-Id: <20230419211856.79332-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
References: <20230419211856.79332-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Match unit-address to reg entry to fix dtbs W=1 warnings:

  Warning (simple_bus_reg): /soc/camss@a00000: simple-bus unit address format error, expected "a34000"

Fixes: e0531312e78f ("arm64: dts: qcom: msm8996: Add CAMSS support")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 30257c07e127..25fe2b8552fc 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2069,7 +2069,7 @@ ufsphy_lane: phy@627400 {
 			};
 		};
 
-		camss: camss@a00000 {
+		camss: camss@a34000 {
 			compatible = "qcom,msm8996-camss";
 			reg = <0x00a34000 0x1000>,
 			      <0x00a00030 0x4>,
-- 
2.34.1

