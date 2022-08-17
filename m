Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0AE48596F71
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 15:19:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239787AbiHQNOx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 09:14:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239788AbiHQNOk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 09:14:40 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFA8E4E84E
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:14:33 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id w5so18962249lfq.5
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 06:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=6hkmj/RZGZV2ubSm7Y6EYAIQdJcarVin5p0NjjE8aKM=;
        b=LuJ/DuHx4XaFQtsZbUlL5O+XQwKTuYuMk1wiqb2amgN7AammjIOHIC0tBnk4Wys2Ea
         PIFR30NaUfWwcbUKlW0Cn7JUiQILZXgSb7N4S0M5y3CYgFbmVj4IekoVv4rMmnPUp8++
         VFOvVJV8pSa+Kf+lKGjc03HE62HpnYzTeAtq4Ukp4tfcgpqYBsV18zQSHSJ9vBbCov0z
         uxEM/UwcXaIYlLxJLzFXFZTC08y5t45MuJkCHEHxHzu/W07vV0jqz5S4Zo748TYDibyz
         HhjwhTQxCCw8Jry2oJUV3JALsJMo2em/tfd7Wf+qy+4kWqQe7czpjwF3Y3W2bbD8SgKM
         3DTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=6hkmj/RZGZV2ubSm7Y6EYAIQdJcarVin5p0NjjE8aKM=;
        b=JbUXsmUwgUn8+p8PMDzvcQVnviPhIhQR9PdhXPQcNl+j6AvRS8oH52UCKAFVQB1nkt
         Ur13ZS+Ig9AsV6UJ+L+XacrIAX6EtdWdmJCdYNCmjG9yNH25W5iUmQMNUxFPbtq+z6Bj
         E6hcC7irX4T6xcJmyfLTYC3EeP34Xrk364s3Vh3tlC+aX6ZqZkPZnYOs1K15rbByIkQ3
         RqUtD0NAPLPfiD1gEfDSBI8ZPaw+chIvSVEaTCepPem23Qe/ImytmLxa/YsTwLwiBGLQ
         hM5y4UiUYeEfoRomSR4myf8SeTzV2DoAj+cw2xwN7sOYTwU2PlUc1vCz2GjXsi3t1iHh
         2uAw==
X-Gm-Message-State: ACgBeo1oP0Q65+EgN6xKQz9LHTwO+ltFhU194vZaWgNPIKF7YlPc6ENB
        hgsYGpU8tN7cEFbrYxBHnMRLrA==
X-Google-Smtp-Source: AA6agR6uz6PgHJJgHSkUYGIHiHszn0Dz+54GDEd24Jx76kQfPHB9W+lxiMZ+hmy/E2YYJ90MXmVbyg==
X-Received: by 2002:a05:6512:3e1b:b0:48b:6ae:ce4d with SMTP id i27-20020a0565123e1b00b0048b06aece4dmr8496799lfv.142.1660742073304;
        Wed, 17 Aug 2022 06:14:33 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id k1-20020a2ea261000000b0026182f31aa0sm1411307ljm.1.2022.08.17.06.14.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 06:14:32 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 08/12] ARM: dts: qcom: msm8974: add missing TCSR syscon compatible
Date:   Wed, 17 Aug 2022 16:14:11 +0300
Message-Id: <20220817131415.714340-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220817131415.714340-1-krzysztof.kozlowski@linaro.org>
References: <20220817131415.714340-1-krzysztof.kozlowski@linaro.org>
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

TCSR syscon node should come with dedicated compatible.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 8baca2a77717..0a9f252c88a7 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1234,7 +1234,7 @@ tcsr_mutex_block: syscon@fd484000 {
 		};
 
 		tcsr: syscon@fd4a0000 {
-			compatible = "syscon";
+			compatible = "qcom,msm8974-tcsr", "syscon";
 			reg = <0xfd4a0000 0x10000>;
 		};
 
-- 
2.34.1

