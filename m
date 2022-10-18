Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07E3A602EE4
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 16:54:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229710AbiJROyH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 10:54:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230187AbiJROx5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 10:53:57 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF7EDD9948
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 07:53:56 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id l4so14058030plb.8
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 07:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:author:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ats1U1GKP5ySkCQcFs4Bt8DbrtP8aKLYh292IozDhn8=;
        b=ZrAC8O0zV5XMJISD0nU0tmntzsIrWrAzLhnfv5ntWDNrY7cSWrniEMtWh+1pQO10RM
         uNRQ+npKwnQKBo6GzbbSHzgC0vJuS+JkQ/7nRUmu4JiVvUqvHwyrzQyqYt4/Zkc+/e5G
         Jynopflmt053WmFJqqnt4OTJXn22409fjaW4nMlJwKyGWhj3CHH5Mrb6Q1h0lqQYmJva
         JCqhXJ/2iWzCOVVykBWZrEvrAFJRToY2tRA5XZtREZlT35McytzE0zUW75YUjbU5AmnS
         BN5j14tVCdMht0slkxfFokS/XUjlDgjb/GOQlFqq68LYccaTFjRrloWE8ZQ2zFFe3L/9
         T/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:author:mime-version:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ats1U1GKP5ySkCQcFs4Bt8DbrtP8aKLYh292IozDhn8=;
        b=t6Pum2rEj2d7bUCnYFxt9qNZpnbUV4so9kTN7uhDyz5IaSOFancp5rNSzEEyecJt+y
         JeA0EPnjzbTW9Kzea8hbN/5bsobNgJnFxBjYdMBuBOZGj7ikrFXGcqqKQNrCo4ZW6iV0
         0S/U1p9YPw9XCwMwIfU5N6K9mIaQex7guw2eTpSW9mr2rTm4OcfDfDSulUdlWUigtjAd
         +h3SQURkV4df1SQpg69U2Vpyv7uw2XnxITi9K1923q+jJ2MBKK27Ng4qEGO8nH+JrB/G
         p80EPkMaLlkc4+BqkhFkM7OSn5zQInW+z5oTaVdsAUvblz0K77jEXBOgaiGK+3xDdfVz
         /b/A==
X-Gm-Message-State: ACrzQf2ebU0l9vhdupsfwgikqnRECpzFIhBF4k6Rwqsvp10/SM6Jlwfr
        hRTWsW3yl4ob0n9mcSC9aOuYUA==
X-Google-Smtp-Source: AMsMyM5ba3pgVFa5RG65wrHNrhugFZ9F6QITUf4ry3gX63r7xh5Fhx5Am+itfgaWnxIuhaT9gWXx+g==
X-Received: by 2002:a17:90a:2bcb:b0:20a:ea55:32ef with SMTP id n11-20020a17090a2bcb00b0020aea5532efmr39655500pje.59.1666104836204;
        Tue, 18 Oct 2022 07:53:56 -0700 (PDT)
Received: from localhost.localdomain ([122.171.23.186])
        by smtp.gmail.com with ESMTPSA id q3-20020a170902a3c300b001784a45511asm8775248plb.79.2022.10.18.07.53.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Oct 2022 07:53:55 -0700 (PDT)
From:   Amit Pundir <amit.pundir@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64: dts: qcom: qrb5165-rb5: Disable cpuidle states
Date:   Tue, 18 Oct 2022 20:23:48 +0530
Message-Id: <20221018145348.4051809-1-amit.pundir@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Author: Amit Pundir <amit.pundir@linaro.org>
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Disable cpuidle states for RB5. These cpuidle states
made the device highly unstable and it runs into the
following crash frequently:

[    T1] vreg_l11c_3p3: failed to enable: -ETIMEDOUT
[    T1] qcom-rpmh-regulator 18200000.rsc:pm8150l-rpmh-regulators: ldo11: devm_regulator_register() failed, ret=-110
[    T1] qcom-rpmh-regulator: probe of 18200000.rsc:pm8150l-rpmh-regulators failed with error -110

Fixes: 32bc936d7321 ("arm64: dts: qcom: sm8250: Add cpuidle states")
Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index cc003535a3c5..f936c41bfbea 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -251,6 +251,14 @@ qca639x: qca639x {
 
 };
 
+&LITTLE_CPU_SLEEP_0 {
+	status = "disabled";
+};
+
+&BIG_CPU_SLEEP_0 {
+	status = "disabled";
+};
+
 &adsp {
 	status = "okay";
 	firmware-name = "qcom/sm8250/adsp.mbn";
-- 
2.25.1

