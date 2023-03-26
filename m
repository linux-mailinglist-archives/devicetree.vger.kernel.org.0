Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 180D96C9662
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 17:58:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232329AbjCZP6E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 11:58:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232314AbjCZP6D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 11:58:03 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D79E1FDD
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 08:58:01 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id r11so26238918edd.5
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 08:58:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679846280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aYOnbd65ZMVMyBamYVDcq7Y/EACmYDA3qRE/woxxd5s=;
        b=wXMRhSORoKKHJmBy3FY0Vd7V7+0iVV1N9ID0BnZCcaAdZ9NqdkL68Kv/e+aixryMiM
         JQWrzmUA6IIFMrUH2DuJcrGk9YZv9sXV11Ok5j6JgoayZ2ieYpUBFex+cJJGRsajbj47
         sskMb6IU7ZFtbbvAj2AbG7enIPRtKbQmL1T+26z3/Rvay7BU9q9ez7pigXSvcpwm/yOB
         YB2iEkoAKbjJEt6GCvQff+d7nezu/hZDFbq/Xe7KuggOWBZPHMVT4SykZ+mkJFD6Ymw2
         XXXxfwOEGXXDtxAEmEcXbU1X+oqErUECE/Up4wQUUWrd5/To/d09kLpqNozGdJADmrub
         Qy2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679846280;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aYOnbd65ZMVMyBamYVDcq7Y/EACmYDA3qRE/woxxd5s=;
        b=mlhEt9WXMDhWgV7PKYQQsCLPk5f1Jfx9zlH6LsCcVNvRi0VyMvBNBm9mU4iEcgf8xj
         ePhEjkfol0F2fX2fL6HsDQtHmZ0GjF7hALB6IZS4D9m5hp3LMCi6E/X5LpeGrNOtleRj
         8F3AadTKGr4Q+4j0bsiPaNlBxZVeeF14KMV4OQQZTU1vEysTKkEOrKUjEuawwRvGK65O
         1FyQVrkAKLNBeUMdq93hZkr7SKPwTo35ABDBYjNGHEAtIValgZ/Rd4+hr1ngpJylKzum
         v3aHfjpnGXFnQzquGKKaoqt0Ly5N+3d716RkzRoaC+hxS78f2unlXIZA9haF6wFUei7j
         1d8A==
X-Gm-Message-State: AAQBX9fuIB0yv9OgZcw0zOnvUfBsw3H8rpwiWMRJCQ7dzofEXu8spT+5
        dbUhl2UjY0NcUwKnkaPnm7DyZw==
X-Google-Smtp-Source: AKy350Ytuys/RozkMEfaoJ3wGs4XEEmvrM4LRY3Dms9LwDpswZ6CJSlBWlH389G6x1N8q1aLTlePxQ==
X-Received: by 2002:aa7:d784:0:b0:500:50f6:dd30 with SMTP id s4-20020aa7d784000000b0050050f6dd30mr10019745edq.15.1679846279923;
        Sun, 26 Mar 2023 08:57:59 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id q3-20020a50cc83000000b004fc86fcc4b3sm13705502edi.80.2023.03.26.08.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 08:57:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/11] arm64: dts: qcom: sc7180-idp: use just "port" in panel
Date:   Sun, 26 Mar 2023 17:57:46 +0200
Message-Id: <20230326155753.92007-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org>
References: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The panel bindings expect to have only one port, thus they do not allow
to use "ports" node:

  sc7180-idp.dtb: panel@0: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'
  sc7180-idp.dtb: panel@0: 'port' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180-idp.dts | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-idp.dts b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
index c3bdd3295c02..fcabbc6a897f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-idp.dts
@@ -312,14 +312,9 @@ panel@0 {
 
 		reset-gpios = <&pm6150l_gpios 3 GPIO_ACTIVE_HIGH>;
 
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-			port@0 {
-				reg = <0>;
-				panel0_in: endpoint {
-					remote-endpoint = <&dsi0_out>;
-				};
+		port {
+			panel0_in: endpoint {
+				remote-endpoint = <&dsi0_out>;
 			};
 		};
 	};
-- 
2.34.1

