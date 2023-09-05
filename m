Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B104B792ED2
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 21:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbjIET0B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 15:26:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240160AbjIETZ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 15:25:59 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C2921709
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 12:25:29 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-401f68602a8so27940765e9.3
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 12:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693941926; x=1694546726; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ca2eAe6pvMNyR6imFqpBniy7ICyAfe/hANZLQ25/e0Y=;
        b=efCeBcOqegql7z2PqQvmjHrcUU8YZG/WRM5DTNRPApkjut8woq3Vyo7YG/xhfUDe4B
         iUvYoY4m9ewdhd9ayUzLnLEeerCXmSCHw2Ri9rYUJUXC6a/fMoxvhZfJg+OOpbq9sYJ5
         1HnAhwwHnAtRe3DrLQ506YOhu34FzcJZdUPmKRjmT43Hm5tOEQYCreyJRk0UKFyduiFF
         ourOam+orCgn6uoroOjU6//X+IlbCLVowhZqCs07zoK7bfRbjkwsCWlY3P2hssP8t32U
         nKf8CUvRI2Kd6b/rfFEjoUcTHPUYgVOmLZeQGH1+Nctpwc2xbyCu7YosXj7UEn81V6Hc
         PBKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693941926; x=1694546726;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ca2eAe6pvMNyR6imFqpBniy7ICyAfe/hANZLQ25/e0Y=;
        b=QtWZLhbHlRgz8pfz/U1swH6/G4IypgnnWhPCDc32pEnSLy+Czcik/ZXvLYo8wjZWXu
         vVYPaq6LzQYBdKC83RYiqjXcZ71KlSpPx8CAjwI3yDgqDmaxqqguYJ/CjIjasW1rjOGH
         JOH2HSV4mJ6wkqrfE7dTZWbQL17mHBJ+DCbNnL8YXKh8gNVF2PCRK8yNp2KEcR1+suqv
         OONu/aoQlTdVt83gP7xd9ooHYnYWSB95BRPiTQ/CuOSsnTOvcTDRX2KINdgJhXVhsMkT
         N6UST0ssKCoKAPQgKB0fRt4ZIyl6e3odYElm64bZMWMNE2RJ4FcHMopVoQiJEHZLw596
         gyTg==
X-Gm-Message-State: AOJu0YwM2s+M28oocvnIHnBuDwjmCFRqEHH3lWDj0J2iefnP06Zjqaxr
        qx8uXVTk0fjaBInkMD9VU3Kxp4PZ8Pe7hqXdIZo=
X-Google-Smtp-Source: AGHT+IG+oCDVe1qnz0Eh4bx1Aac6LkewwnuG8hvHtmfCrkF0hc+vfTNz3AZGaXnbaYCTFMaA43jutg==
X-Received: by 2002:a17:906:304a:b0:9a2:139:f45d with SMTP id d10-20020a170906304a00b009a20139f45dmr267866ejd.43.1693930768881;
        Tue, 05 Sep 2023 09:19:28 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 01/12] arm64: dts: qcom: sm6125-sprout: drop incorrect UFS phy max current
Date:   Tue,  5 Sep 2023 18:19:09 +0200
Message-Id: <20230905161920.252013-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
References: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Neither bindings nor UFS phy driver use properties like
'vdda-phy-max-microamp' and 'vdda-pll-max-microamp':

  sm6125-xiaomi-laurel-sprout.dtb: phy@4807000: 'vdda-phy-max-microamp', 'vdda-pll-max-microamp' do not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
index 272bc85f1719..90b5f22ea9dc 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts
@@ -406,8 +406,6 @@ &ufs_mem_hc {
 &ufs_mem_phy {
 	vdda-phy-supply = <&vreg_l4a>;
 	vdda-pll-supply = <&vreg_l10a>;
-	vdda-phy-max-microamp = <51400>;
-	vdda-pll-max-microamp = <14200>;
 	vddp-ref-clk-supply = <&vreg_l18a>;
 	status = "okay";
 };
-- 
2.34.1

