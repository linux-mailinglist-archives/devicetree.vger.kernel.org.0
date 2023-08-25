Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEE81789168
	for <lists+devicetree@lfdr.de>; Sat, 26 Aug 2023 00:09:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229671AbjHYWJL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 18:09:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbjHYWJB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 18:09:01 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B88CD2120
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:08:57 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2bb97f2c99cso21013631fa.0
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 15:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693001336; x=1693606136;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1DdLoqClMFF2EEiXQ3TopWzMqOLDE24CSNMXs6aJ1gg=;
        b=GhWtmrb+CQEAIDZ1AArYhTM3vMZrU0b79W5B9D6vleeV7Fh13tkpXsdT2sgoJpCWk5
         qE+8+Gt/9rdltki26K9cxMbk99zvXO6DITYJYjhaByjm+gErIlY0+FZNkuCDe92PW3es
         V1MadJ4zOU7qggCqYvYPbDPXLen77j0MteO/Be2j/Q1fWOGtaRgJknIe6fr0ypAXrCGU
         4X2EMlGI25c0ppsxnm5NofXxZ5ycgUHsf+1qbSLhEpqL+09+Y4r3dILqCYOtbUx+Kd39
         NmocFo4jvqBFWe6rzuGXP0mhaYTc02wavti/c36W15X1WgJ7yMvMZZSj6WPjR0OQugia
         pegA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693001336; x=1693606136;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1DdLoqClMFF2EEiXQ3TopWzMqOLDE24CSNMXs6aJ1gg=;
        b=ZZebioRM6//vRcQOanjffnSPtwqrbIYiXfpm1RYNovKOWjO3eiQ2yR3L28vIerxknU
         RnmKrXckrDEtx4ps43gMC6a/UcV+59C2Mtt11tzp5O82noPZns6aTNy5z+fI1QEgeZKl
         FF8GVAT9mj9uEL0kzvM7LKB6KhKW3dhJGOX6dCJj5eVt8iW1QN17cXNCoDHFg/rnbp4j
         FnwxIfBkNWJymXosLOR1MqsLXlw9H/Isbev7Z2WzW+VFJ7Ff1szwWODQ8iioEwolrwYX
         Ok7dB+kOkhOhfGnr2GszPk7PGZbzrL31QNLdxd14HPvvRmzYjdYM+ccgbpzD1FSYjD+v
         5O0g==
X-Gm-Message-State: AOJu0YwbMSUAoURPVrSi3zs+rL6QUNI/picU3kvyfNgXSrgXB/iZvTXL
        aKBdGxfYLX2ES5glxFv2D4tpkA==
X-Google-Smtp-Source: AGHT+IGmvBqafYKaP+PzahP0GFxKhZanJ3vdr71FlGSfFCcyYQujvvLIeCC8q3tG9jWZRIrMy79opQ==
X-Received: by 2002:a2e:a201:0:b0:2bb:9894:c3dc with SMTP id h1-20020a2ea201000000b002bb9894c3dcmr13832514ljm.4.1693001335993;
        Fri, 25 Aug 2023 15:08:55 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u16-20020a2e8550000000b002b9af8422a8sm494951ljj.130.2023.08.25.15.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Aug 2023 15:08:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: qcom: sdm845-mtp: fix WiFi configuration
Date:   Sat, 26 Aug 2023 01:08:50 +0300
Message-Id: <20230825220854.1655162-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the host-cap-8bit quirk on this device. It is required for the
WiFi to function properly.

Fixes: 022bccb840b7 ("arm64: dts: sdm845: Add WCN3990 WLAN module device node")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index b3c27a524742..1516113391ed 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -716,6 +716,8 @@ &wifi {
 	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
 	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
 	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
+
+	qcom,snoc-host-cap-8bit-quirk;
 };
 
 /* PINCTRL - additions to nodes defined in sdm845.dtsi */
-- 
2.39.2

