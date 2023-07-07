Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C14074B0EC
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 14:32:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232627AbjGGMal (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 08:30:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232570AbjGGMak (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 08:30:40 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 095222139
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 05:30:32 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2b5c231c23aso29105521fa.0
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 05:30:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688733030; x=1691325030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=inhVw6e4Q9ddaoZo0733sYa5ABh3cj99XWicDlFL0J8=;
        b=iS3I4RRDKKQDUR5KVYwdIk59LzwosQixQvzwHs9Az5vPYz+sIzaNLk7XVV1PDsLLNS
         2O1cjlxmn+V6zd84e7eci/+6pokoPaveCZWD4dh++U9+yAGav6s18RwMU2AqKewdMl01
         6W653cQeKOhkw8Fj7FuW/GMf6DijdAUPhJggTbaYsitvDvlOOV9dD2jojHnlBnJ5X51+
         95zi74BZl9E/VG3+kN7pZwgTsmmcPxpmhovhjmgApVjg47yg8OHcadjTnzFuD4KBXM01
         LHFalsXVoir1PAROVmhXCfd71fR5oNDYQ2B9BhzVcj5sDse4XoD3esQ+9oV3Acla7TmL
         Wqfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688733030; x=1691325030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=inhVw6e4Q9ddaoZo0733sYa5ABh3cj99XWicDlFL0J8=;
        b=NJ0+zwRXa4kX88TL6qTW2hTZkidjvk2/nz6FK1khjscFfeYmhqkRz3BCX8Ux07e0W1
         0UZNp9nQN2wqF5wULozp44Qt2yywircoLQBnrdpTUZmaksOUQrbeypQ162mI8MlgOQqY
         Jyuhu4V7xeeE2/XC/r3mUGXT7dZXhBWaGCaPnk2CI/7SIrwfor1QE219IWepxBfrHAVC
         4kBSYU+Cjc/HJ70rBa52tMlEoRoHpNBu6Bzo8dz4T8teisgO5m+GQJGFOUG1oOmiFLT6
         HEAeiQKmZmLbi8GQF9ATJC6/dbMAtXc8IKHpvJXLEfb18E/VTfU15BMztEudMAvwWQr7
         PsVQ==
X-Gm-Message-State: ABy/qLY1qZaAtBoDjEY4xzl+m/dx7kXhRTZTr3LxTgKg8Lc2e/ruDsL+
        1jKyd8hQn8EnI82jEaENWACZCA==
X-Google-Smtp-Source: APBJJlH1KET23/8d2OCdFO837yIRhU6Bhpw62gPSeCNa/Y1/3b6xgMMa/izRXrkuBDREqW8yECHPtQ==
X-Received: by 2002:a2e:3a05:0:b0:2b6:e196:68c4 with SMTP id h5-20020a2e3a05000000b002b6e19668c4mr3838534lja.39.1688733029996;
        Fri, 07 Jul 2023 05:30:29 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id l5-20020a2e8685000000b002b6ee99fff2sm756803lji.34.2023.07.07.05.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 05:30:29 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>, linux-iio@vger.kernel.org
Subject: [PATCH v2 2/8] arm64: dts: qcom: pm8350: fix thermal zone name
Date:   Fri,  7 Jul 2023 15:30:21 +0300
Message-Id: <20230707123027.1510723-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
References: <20230707123027.1510723-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The name of the thermal zone in pm8350.dtsi (pm8350c-thermal) conflicts
with the thermal zone in pm8350c.dtsi. Rename the thermal zone according
to the chip name.

Fixes: 7a79b95f4288 ("arm64: dts: qcom: pm8350: add temp sensor and thermal zone config")
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/pm8350.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/pm8350.dtsi b/arch/arm64/boot/dts/qcom/pm8350.dtsi
index 2dfeb99300d7..9ed9ba23e81e 100644
--- a/arch/arm64/boot/dts/qcom/pm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/pm8350.dtsi
@@ -8,7 +8,7 @@
 
 / {
 	thermal-zones {
-		pm8350_thermal: pm8350c-thermal {
+		pm8350_thermal: pm8350-thermal {
 			polling-delay-passive = <100>;
 			polling-delay = <0>;
 			thermal-sensors = <&pm8350_temp_alarm>;
-- 
2.40.1

