Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB0F662BA44
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 11:54:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239001AbiKPKyw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 05:54:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238008AbiKPKy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 05:54:29 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B95C9EA2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:43:14 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id j15so29247244wrq.3
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 02:43:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YZcB8b5Z3j9vFZzAUVrZnbh7ZZWrhF0/RMOeyG1Wfw8=;
        b=A73xZBjWyzaG/ZPC/8WlqziAsZnllsBcQR6LJluvdGb1h0D8hsmAUvseo+TyQzVUoR
         jOv0yZrGpMdNGOGHxrQEO1b4B5Jt/FLGO8134J/caBJ6k0rAjXEaFKElp0I98N35k7c1
         9gmtwTIc8h7BRXHsutz7r8ylBLYLMlKN8rLSpRMgkJeuRmV7sJrtcSRe/fcsjDuHqZJE
         KrdnGxjJTUBeMWP/6j+8W8WVnek/Ict0br/H0NpEm0SaJ1+pjEN54tKTALbCMvFqMfzk
         Evan6QP+MUcxFT63ocDMl5/BJcB/uSJsxnMRehZsZ7xtDPuLsF8v/0tMwDZWuiH7ljYO
         bAxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YZcB8b5Z3j9vFZzAUVrZnbh7ZZWrhF0/RMOeyG1Wfw8=;
        b=s1YILSTaFIVJUVhAUj76IeDcEkXwA2jPQkMigCMtQ/56Kh2LrChHNlr6sSE9+kw6bR
         VU7MDuRYZhPrw/qFG0J0L8Pp8RnbxZo2Z/fj6fLqz+6Zq2qzXGPqZBV/3uHWv58sGyz9
         9TX+lB1SzXC5YZ6eUikkwzElzV6+Of7bcSMQf/JwrTNTJQZpuLFe2WO9cVXupwFA5+ql
         rmTYbCIOYgfV5/8hBazfpZM7UXJehBnU1uO5cI8iwfpvpGb5PBTx2HueQl9rI3X7grFE
         riN4d11059r6zYBD55sjmP8Y5IvrLJteRgBhe4yCfiQWDOJxLJmHX15hs4TTplmSTYGG
         buMw==
X-Gm-Message-State: ANoB5pk7dL5yeBPNbQkqZMdvYxIRnnxl9J+LUuIl+RS+F+D9ukIYNcS+
        TLDKZtK5imEBRCLwF5507vJUbQ==
X-Google-Smtp-Source: AA0mqf43NM8GvnHTbudKu2+KXY/mGKp4jvKCDHz1SKkriHr+2V42Zh7WTi2ucRmDNgRn2KNAjR6x6A==
X-Received: by 2002:adf:f18e:0:b0:236:b8b9:b018 with SMTP id h14-20020adff18e000000b00236b8b9b018mr13815712wro.596.1668595393326;
        Wed, 16 Nov 2022 02:43:13 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id t8-20020adff048000000b002238ea5750csm18010846wro.72.2022.11.16.02.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 02:43:13 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 16 Nov 2022 11:43:10 +0100
Subject: [PATCH 1/3] arm64: dts: qcom: sm8550: Add interconnect path to SCM node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-1-379eec11d841@linaro.org>
References: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-0-379eec11d841@linaro.org>
In-Reply-To: <20221115-topic-sm8550-upstream-dts-remoteproc-v1-0-379eec11d841@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.10.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Abel Vesa <abel.vesa@linaro.org>

Add the interconnect path to SCM dts node.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 07ba709ca35f..9e00778bb600 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -300,6 +300,7 @@ CLUSTER_SLEEP_1: cluster-sleep-1 {
 	firmware {
 		scm: scm {
 			compatible = "qcom,scm-sm8550", "qcom,scm";
+			interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;
 		};
 	};
 

-- 
b4 0.10.1
