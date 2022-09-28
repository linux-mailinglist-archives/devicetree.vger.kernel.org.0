Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DB625EDFFE
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 17:20:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234242AbiI1PUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 11:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234650AbiI1PUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 11:20:39 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE03857BD2
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:20:37 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id k10so20894465lfm.4
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 08:20:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=8gAb0vttvsZ8wRV0w5Eu2WIvLvAPbZHBztrbwSwM8vY=;
        b=xgs6vT8teutOSFqb0VQposP83OTGki/PknCXsIbr5xGNEZGDaOfRYMEyn97Ilvol+S
         +LRGnzc51DCEPl3tfFTHWxUwiAemmxvdNqC5yP95YW9o6ZrUqNQzAcHQupC5o5ky7OQE
         dIN+7/+x+rvTQxTs76tT/7GVSd3nh+QgBDAj+B7YJJ6+pOe6bB7zpm7rQRS1a4U/h4d4
         3cuMvVAi9sCxqw0zHYFSxHJSaLw+XRyscJ0FNeGWuLTQ/GK9d1TJ1zsyeVOGR0ffgsN9
         BwS8g7Z2/UkpYKC3lEKwS+EXytz+d55aNonu54ly7MTu8PaeVBQNfE3Xr/mU3KY7m6x/
         7NHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=8gAb0vttvsZ8wRV0w5Eu2WIvLvAPbZHBztrbwSwM8vY=;
        b=l4c/a1bxc1q2Xb6b3PtwF0e+/zQ9wKWFkUL3kN2wSYuueNkq2h0W/BBwgAInRc4Y9S
         UGNIm6VmnUn3o1nXjcjvRo99U0y+l340VximHGZ1XgW8BxUkTgafvzNJco5Dy+roE5Tb
         0U96kkaXN1KjOyHcNOi9IxYqIIJ1OfeAVvFPs5GKQphSz1yj4xcG8FJ0mwzaVbUdyKyD
         50/HyXsn0K5G9r1SKnUyS+h1oxk6x8HxsojyyB0ikYgaSca6z0grtFrj0oSdWwQNMect
         paT1oJECQsVzOyGVdx1UF2/EzmEKLruPZHmsi2HQn6Y/AK74rUILNWRFk6GKWd3wVQGH
         blgg==
X-Gm-Message-State: ACrzQf1A7kbTtMAotRwS/VxnJabMVUrX2oi7YCOQUPiQ/WQTqq+zl/W0
        tufaU/MmhidUajPNLjW21P3ZdQ==
X-Google-Smtp-Source: AMsMyM4bMv8X2l3axxRXBvUc+yU6M49iZMEsYIEYQjPgxc8If280c7PBFJL+iGRW+647aZKCgEPsng==
X-Received: by 2002:a05:6512:6c3:b0:49a:d227:1b5b with SMTP id u3-20020a05651206c300b0049ad2271b5bmr13138341lff.386.1664378435773;
        Wed, 28 Sep 2022 08:20:35 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v2-20020a056512048200b00497a41b3a42sm503023lfq.88.2022.09.28.08.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 08:20:35 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Steev Klimaszewski <steev@kali.org>
Subject: [PATCH v2 03/11] arm64: dts: qcom: sdm845: correct slimbus children unit addresses
Date:   Wed, 28 Sep 2022 17:20:19 +0200
Message-Id: <20220928152027.489543-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220928152027.489543-1-krzysztof.kozlowski@linaro.org>
References: <20220928152027.489543-1-krzysztof.kozlowski@linaro.org>
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

slimbus uses address-cells=2, so correct children unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Tested-by: Steev Klimaszewski <steev@kali.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 9db1fce6b198..2264bba69f84 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -3841,12 +3841,12 @@ ngd@1 {
 				#address-cells = <2>;
 				#size-cells = <0>;
 
-				wcd9340_ifd: ifd@0{
+				wcd9340_ifd: ifd@0,0 {
 					compatible = "slim217,250";
 					reg = <0 0>;
 				};
 
-				wcd9340: codec@1{
+				wcd9340: codec@1,0 {
 					compatible = "slim217,250";
 					reg = <1 0>;
 					slim-ifc-dev = <&wcd9340_ifd>;
-- 
2.34.1

