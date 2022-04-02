Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 474CB4F0586
	for <lists+devicetree@lfdr.de>; Sat,  2 Apr 2022 20:40:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358782AbiDBSmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Apr 2022 14:42:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355340AbiDBSme (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Apr 2022 14:42:34 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A4F54E38B
        for <devicetree@vger.kernel.org>; Sat,  2 Apr 2022 11:40:24 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id k124-20020a1ca182000000b0038c9cf6e2a6so3288450wme.0
        for <devicetree@vger.kernel.org>; Sat, 02 Apr 2022 11:40:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0FPva/xF5QWD9GuBZmkDF4zJMJFtPU9JUPVfss7wEgA=;
        b=ym9CBYRNlyZUQNjyGH6kpXABn67E0eal9leUt0QBhtZJdtqSMbgGeiV/CddHZXUdC0
         ID54p5tpITSPgdAblO4RlC59G3ujo3NQ0rGx5ajrOD5yJBVSa6CFTw7QFkhQWtu9hore
         4JzBqhTFPf1ER5ByfUq1LHOo8rYtIDP3e7yx9hiYbDGZSFApvo2ldzAdrBtKv/OBSobR
         5kqQuxxzDL7zPwcPVecA7KnpkrF85KdoH01R6RKK/lxZjm/dwB6Zzxqyk4v1G5uZ+YJz
         DTv3AgnB4EgDFkZQB/BjXLkZF8JuYhEScdwx1k/nNcU9S6hfvZO9P0BGTlJPmGKMwlyR
         uMpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0FPva/xF5QWD9GuBZmkDF4zJMJFtPU9JUPVfss7wEgA=;
        b=xnrjVBLy1FFdQDOt9WqK4D/PAs/uoAWeSrJwDmZ9VugOBzA7/EC1O8LNVJQYZTR7OA
         x+0h5Ajwj0CQq6aIEDY4qMhEidaB5g8SBbx0UglfZnBwZeyUn6c+zuAWqhGRIYWuC/bv
         DfmOOYX7d0eVwdK/xBvxY6wIVzTqg/DPck0bG3g4Vv2THPxeimDH0T3fRRXnrY6gSSLm
         gROoZGHdnbB96EWel0xtygiJsxEGu4VVcoxZudZJZ4OWL5LPegk88Rjpv26nBSmJ7qnU
         P7BiEDmdWN61vvWv8Uj0fqVf7jgyyFxO4naftvza8ZW/bQh26A8ZSqsl68uwmLBLj2rr
         45ug==
X-Gm-Message-State: AOAM531cjaIO/6j7iB+iNJSlfLXf/ETTvzbN9J+LDNliyeZPuuHtHimG
        G94m4URp63YX0aZ7vfjQRbeoQw==
X-Google-Smtp-Source: ABdhPJx+KbBUbfRJ/ITpnVRFc2VmBD3YtSvxiiWpGf1VKRS5lRLH2IYG/4eg9+kE+v7xzJ1zuIayKg==
X-Received: by 2002:a05:600c:2244:b0:38c:a3ff:ef67 with SMTP id a4-20020a05600c224400b0038ca3ffef67mr12853149wmm.122.1648924822405;
        Sat, 02 Apr 2022 11:40:22 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id m20-20020a05600c4f5400b0038b5162260csm6760502wmq.23.2022.04.02.11.40.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Apr 2022 11:40:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
        linux-spi@vger.kernel.org
Cc:     Kuldeep Singh <singh.kuldeep87k@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 5/9] ARM: dts: qcom: msm8660: disable GSBI8
Date:   Sat,  2 Apr 2022 20:40:07 +0200
Message-Id: <20220402184011.132465-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220402184011.132465-1-krzysztof.kozlowski@linaro.org>
References: <20220402184011.132465-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The GSBI8 child node (I2C controller) is disabled, so as parent GSBI
node should be the same.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8660.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom-msm8660.dtsi b/arch/arm/boot/dts/qcom-msm8660.dtsi
index a258abb23a64..47b97daecef1 100644
--- a/arch/arm/boot/dts/qcom-msm8660.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8660.dtsi
@@ -212,6 +212,7 @@ gsbi8: gsbi@19800000 {
 			ranges;
 
 			syscon-tcsr = <&tcsr>;
+			status = "disabled";
 
 			gsbi8_i2c: i2c@19880000 {
 				compatible = "qcom,i2c-qup-v1.1.1";
-- 
2.32.0

