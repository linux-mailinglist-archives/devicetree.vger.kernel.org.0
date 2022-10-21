Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F5B2607AA6
	for <lists+devicetree@lfdr.de>; Fri, 21 Oct 2022 17:29:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbiJUP3F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Oct 2022 11:29:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230022AbiJUP2s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Oct 2022 11:28:48 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0751527A892
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 08:28:01 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id a14so2573873wru.5
        for <devicetree@vger.kernel.org>; Fri, 21 Oct 2022 08:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZMvv/9EZgWOQakQsn6xrZ9z1b0ZA4IEi0wTJMnNSZUE=;
        b=FpfMDBOPa4ysB4TJzV9Xloy6cQKQmPKwhHx8zbpa5ngdvDMc/iy9AZSDunJFRWcv8d
         fxIdaMWEvlulbrXyyubNUXL+qdfSxW22yXwWvpzwmj9RT9LG9/tS3V5Jd17ixrqgitKi
         MDKHQJwlemtSGbmwmGTmg25zu1oq6Z5c0Jtof58Bfpd9YUJ369xqvKm2lSJOr4SmQ/5u
         gyLBJnLKqsAMWFibGl0AeBu0l8tyOUJeuzFRDsMUCIG9Q/sFgtKwNSOPNRlwxkmrEfPE
         kjrJRrQm9puc2eLpKjMkBvrphwro9D353Npx+oHZ0Rh7z7v4nlhAkqLajtHJaXmSi83G
         WJkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZMvv/9EZgWOQakQsn6xrZ9z1b0ZA4IEi0wTJMnNSZUE=;
        b=CTWY9tcAM0fNmHUCFKQyKIJ/g+F04E9IXMrpZScjMQ+ZJQSi6G2pnQpEiqiODmDjCe
         wdTxNtzqy6EAPwshI8i0RgQSVNyKGAF/7Y3xZKn165diEaSIHLTxc+zTzKApe29JvYM1
         8ahrh5xQZ4JlTsXJpgVAa7LP7WW92Y8kMXgE2z4T8KYxVykBXjw4PxIDZsQ436vHnDjM
         sv6lG1J54OeBaih/AqZIg6wC3FGvNAjSuDAgdH0QJEBUZuRJf84t1HERMTg3fadnzpIo
         E3ptqGxcEppz0bI34zCgn6gdEYbsnP4vDGig95NO0C9q5On0J24j+2hIYiuwPJ55AtGz
         nv/Q==
X-Gm-Message-State: ACrzQf3EAYNyUt5S4GikjetmRbiIdK9z5yAh4VwCloiyRKSfOSTJYTVx
        xILWZCzqNbFwkxf821bd6MxgBg==
X-Google-Smtp-Source: AMsMyM5nHh/hh6ZpLi4L0jbWxv9dMiTSmN2yBVSlo1Pp9Xv8lBvtrWl4ih7SSkNj6obFU2UI7BFYiA==
X-Received: by 2002:a05:6000:2a7:b0:22f:bb40:83f8 with SMTP id l7-20020a05600002a700b0022fbb4083f8mr12728324wry.288.1666366080288;
        Fri, 21 Oct 2022 08:28:00 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j8-20020a05600c1c0800b003c6b7f5567csm10706169wms.0.2022.10.21.08.27.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Oct 2022 08:27:59 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 21 Oct 2022 17:27:57 +0200
Subject: [PATCH v3 5/5] arm: dts: qcom-msm8660: align RPM regulators node name with
 bindings
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221005-mdm9615-pinctrl-yaml-v3-5-e5e045644971@linaro.org>
References: <20221005-mdm9615-pinctrl-yaml-v3-0-e5e045644971@linaro.org>
In-Reply-To: <20221005-mdm9615-pinctrl-yaml-v3-0-e5e045644971@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Node names should be generic and new DT schema expects RPM regulators
node to be just "regulators".

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8660.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
index ddce7d64ba99..432bea52bfe9 100644
--- a/arch/arm/boot/dts/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
@@ -471,7 +471,7 @@ rpmcc: clock-controller {
 				clock-names = "pxo";
 			};
 
-			pm8901-regulators {
+			regulators-0 {
 				compatible = "qcom,rpm-pm8901-regulators";
 
 				pm8901_l0: l0 {};
@@ -495,7 +495,7 @@ pm8901-regulators {
 				pm8901_mvs: mvs {};
 			};
 
-			pm8058-regulators {
+			regulators-1 {
 				compatible = "qcom,rpm-pm8058-regulators";
 
 				pm8058_l0: l0 {};

-- 
b4 0.10.1
