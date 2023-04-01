Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 730726D3486
	for <lists+devicetree@lfdr.de>; Sun,  2 Apr 2023 00:08:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230162AbjDAWIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Apr 2023 18:08:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230168AbjDAWIP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Apr 2023 18:08:15 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1ED7EC5F
        for <devicetree@vger.kernel.org>; Sat,  1 Apr 2023 15:08:13 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id z42so26613612ljq.13
        for <devicetree@vger.kernel.org>; Sat, 01 Apr 2023 15:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680386892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lCFV/JZY4vdJPFM0WDvkY95TY5KbxeGsCW3ncDsaCxg=;
        b=C0ul0wXf7+xeK2qdVL8Ws7RwyDQRnKIYtJNobpH/wINGuYSejJ4F5YP0xUDN9lG3v/
         DflFxTvJyT4/OwPlh9GaVRHNbba9i4hEtCPUgz15HD105KK4KFhV9/eWqrR926h2R0vY
         4o6wpfBSk3796RSXy92xVzR8sDZcmSRb1OzmgdsFC46pj4c4vNA1GTWoqdjIJdmDndLa
         KatTf2GARa08mPPHVzzarjgOQw7qMoytSNesvmYTlv0/gwKvMQ9EQxySqnultSFLXw8z
         hONJOF20A/6KkTggNOhpVD+pu1bDB/XP2zXl/PEbqDIJ5JGKO8zbCivlPZh/sPseIbTs
         5e1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680386892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lCFV/JZY4vdJPFM0WDvkY95TY5KbxeGsCW3ncDsaCxg=;
        b=n+bJeYGKlv08GDVUfjXOWuWw6HlvVbbKI2RQyAYolxVuJbAGX4Igtmh3Z9rMZnETB4
         9p1jTOi4dctApmngXq6uVVXLOgwvR/xfixEapPbmN2NmcOb5z0d7rVaq2kt8N0PTzMXx
         RM2T6SOsj0oLjgJV8IldQAKwlvdQnmafBhJ+Und4BK1THgXjHdrB8Gozh4SriPg/mIQ7
         hZef/0TN5MaugdnVeNWQFPmtBfqYTX3MC7cSs1ySbo7O0jwKB+VGYXjUQ/MOEAwayMNh
         nbQau8JBb/w3TEdCJT2C9raPG9htdtk/sk+WF2F7teX9I5Czto+0oWU/A+Iuxy0UX7DH
         RcQA==
X-Gm-Message-State: AAQBX9ep4Es66KGDICbjjHP2a4jw2poXvQ9/6JL0G3hyZUdLyEZhgsz+
        Y4HMih39WCOn3B6In5vDJfpEYQ==
X-Google-Smtp-Source: AKy350bi3qN8U/Vnkt+r3pGLwSjBAcc3BB5h9Y1pZ1zP5WtZbk5JGLAH3ZgR2sfvxKsKrxLgZlDgaQ==
X-Received: by 2002:a05:651c:8c:b0:29f:4358:7142 with SMTP id 12-20020a05651c008c00b0029f43587142mr9092105ljq.47.1680386891905;
        Sat, 01 Apr 2023 15:08:11 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k17-20020a2e9211000000b0029bd4d0d3f2sm997590ljg.33.2023.04.01.15.08.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Apr 2023 15:08:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH v2 01/22] arm64: dts: qcom: pm8350: fix thermal zone node name
Date:   Sun,  2 Apr 2023 01:07:49 +0300
Message-Id: <20230401220810.3563708-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
References: <20230401220810.3563708-1-dmitry.baryshkov@linaro.org>
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

Correct the thermal zone node names to remove the clash with
pm8350c.dtsi. Remove unused labels.

Fixes: 7a79b95f4288 ("arm64: dts: qcom: pm8350: add temp sensor and thermal zone config")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8350.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8350.dtsi b/arch/arm64/boot/dts/qcom/pm8350.dtsi
index 2dfeb99300d7..9fb963df4b41 100644
--- a/arch/arm64/boot/dts/qcom/pm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8350.dtsi
@@ -8,19 +8,19 @@
 
 / {
 	thermal-zones {
-		pm8350_thermal: pm8350c-thermal {
+		pm8350-thermal {
 			polling-delay-passive = <100>;
 			polling-delay = <0>;
 			thermal-sensors = <&pm8350_temp_alarm>;
 
 			trips {
-				pm8350_trip0: trip0 {
+				trip0 {
 					temperature = <95000>;
 					hysteresis = <0>;
 					type = "passive";
 				};
 
-				pm8350_crit: pm8350c-crit {
+				crit {
 					temperature = <115000>;
 					hysteresis = <0>;
 					type = "critical";
-- 
2.30.2

