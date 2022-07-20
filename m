Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EE1657B1D8
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 09:37:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239858AbiGTHhL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 03:37:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239946AbiGTHhK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 03:37:10 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8392245997
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:37:08 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id l14-20020a17090a72ce00b001f20ed3c55dso1325733pjk.5
        for <devicetree@vger.kernel.org>; Wed, 20 Jul 2022 00:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ecs-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=3Wj9GT1NdFqQ2oHNWAiuoS6nkINcnSck7GS6eVjAGfI=;
        b=mBMyPU/vqy55XL0Y2xA2hfo6WZDL605Hyj30QJqvh2C6iLY7UuxuT15c2zcoThoqiq
         qxAlvDwK6xKKmEh4MjPJqX3G9K7/iFFph9UdsQY+p2DjnKZ9I09yKhfiB4i03Kwg3I7g
         0rDEMPekkptPA2BevSfliJwThlDsqrlYqaAhPtWsQI41Wf7kh71xdEeBN/OCZMxsw28K
         mVs8tNo0fNvpL+Zp3hj3SvcK7BoqWMhBitlnONJbSsJRvQPxWJsTvRHdS9V5k12c/w9e
         wiWV1gptbrhRP5T+43DOqd4TtieVopZpwAtKB8tn9DVj+NXiLuIXFn+93a9NTll08s2D
         M2Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3Wj9GT1NdFqQ2oHNWAiuoS6nkINcnSck7GS6eVjAGfI=;
        b=BwdextnynrS7035s6GjWZPqQcFLCoX+fY7xAYEkf6HCEoRz5RwwbJxrMvADZhDukj+
         ogT+UEG3ufonVRZm1yyPyWctPY1jZ97FaMySQzuyiP5kW7gjsDGFDGnA3RCOXCRWxnNf
         DSXUTLGZ5lxB1tDeF4WOM8urokOypr+9tCtb9TJY6PQCCQBEscPvp5kURVt78GA799wZ
         zTXpwgGpy0kTUekq0H8GhLRhJmEX+c4UPG8N1DtkwcWwtHGJEd+fu1BKQD6Fje/DSEae
         qmE+gP5dhwHdDm7nfIjx6twQUAjUJgah+Z56Km14nGJ0poqHsInIfsf1uXvl0FzCUEqV
         24IQ==
X-Gm-Message-State: AJIora80gpJAJmp5dpyfySo76sR8iRdN2oT641BZAWod+hG90+ivRzZ+
        J9fvJDL7d4ZaPEPMgfzh4CAAwcZQZF5u/wBT
X-Google-Smtp-Source: AGRyM1tvTO8b4fdoW6z++qQVp4cwEdSv1juNrFsh8iGREXYRTyg52uv5tQrn7+ojavdl2vNb2zlmCg==
X-Received: by 2002:a17:90b:4a83:b0:1ef:de4c:660f with SMTP id lp3-20020a17090b4a8300b001efde4c660fmr3745862pjb.213.1658302627968;
        Wed, 20 Jul 2022 00:37:07 -0700 (PDT)
Received: from localhost.localdomain ([103.104.171.43])
        by smtp.gmail.com with ESMTPSA id s15-20020a170902ea0f00b0016bf803341asm10997748plg.146.2022.07.20.00.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 00:37:07 -0700 (PDT)
From:   Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Henry Sun <henrysun@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: Add SKU6 for sc7180-trogdor-pazquel-lte-parade
Date:   Wed, 20 Jul 2022 07:37:00 +0000
Message-Id: <20220720073604.1.I249596c011ff05da5a95d72fc321e115ef859803@changeid>
X-Mailer: git-send-email 2.17.1
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SKU6 is LTE(w/o eSIM)+WIFI+Parade

Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
---

 arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
index 764c451c1a857..767cb7450c0d8 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor-pazquel-lte-parade.dts
@@ -14,7 +14,7 @@
 
 / {
 	model = "Google Pazquel (Parade,LTE)";
-	compatible = "google,pazquel-sku4", "qcom,sc7180";
+	compatible = "google,pazquel-sku6", "google,pazquel-sku4", "qcom,sc7180";
 };
 
 &ap_sar_sensor_i2c {
-- 
2.17.1

