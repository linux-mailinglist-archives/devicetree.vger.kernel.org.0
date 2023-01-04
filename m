Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7F965CF5D
	for <lists+devicetree@lfdr.de>; Wed,  4 Jan 2023 10:18:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239068AbjADJSh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Jan 2023 04:18:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234396AbjADJS0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Jan 2023 04:18:26 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80508193D9
        for <devicetree@vger.kernel.org>; Wed,  4 Jan 2023 01:18:25 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id i17-20020a05600c355100b003d99434b1cfso15733524wmq.1
        for <devicetree@vger.kernel.org>; Wed, 04 Jan 2023 01:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bN8XVVZkj16v6WHZrteMUDPZ2TN7xZCFce+h63e15xc=;
        b=QQ1J5URi+4jJf2t6zKBsd7fDgkNAbS9uPiGjuKNNU+89Z3zxQbn0gyZbFqmZB8Y8ZF
         UuOMZOO5WMDOZsz/dMzCjnQco+7kE3698qzCy6B8D9pf3tv3V4BPldl0eT/XKNfpInWe
         tZHbD4IUZqKbuPCd2ntrHqKm0wzKz7t4bxNy3cPBZDuS7hqs9Y2iq6al6YBXLslGdlgg
         ZaHes+GqUZjWcwtTl1vP8Dg82s6wxWNEtDwBAMwVP2n5I+olevMub5uoKhmWeAdWePlC
         GOgfWCUiieIAhMu3f4LSkfzfmAOyY6/QJQALPy3Vv6YmDaUfPYtXe92NxcrfDz/U+pqD
         c/Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bN8XVVZkj16v6WHZrteMUDPZ2TN7xZCFce+h63e15xc=;
        b=SYfbmqOSkic85KfJ8PM6O2FuBLBsg8s5txlQ3s53HbVMbAOkHjx4fX/hFd5ajRcORI
         1C+t7k+OSkOQv+ejSxr7I6Oxt2kmy9+cjocs1TfJgX3TLuGdlrsaMBl6ScjC6KSbMPaj
         n6yKzBGdcOA1AiDu8w02Lfr7VFO1h6jYGRFQYMpyOs39kimouwb4PGhHD4gU9qINGC/8
         skPstb4ySvSJ8SnjeJqBVZMWO7j6I9g8oddiIBl/bOA9KxP5fkM79eHWKPwVG57au0K1
         0oeB8zMjZsjUvnuvRJt0x1YHSv7Z4rwlDBGhGp5kA4wUWlAbTabEo2EsLpDyF+YHdERT
         wiXg==
X-Gm-Message-State: AFqh2krGFaKvk9V4cj8IMunPnYD/kYKXgm0/ZhVwQ4Dy7fUXKbXRs9Bm
        GvY505MBZtaQ3z3zVQhISGE9XDyucYmy7KG+
X-Google-Smtp-Source: AMrXdXsuEyxmpXRoNsPvLLlB5OMM+wH+Aa0KXq81KgY/JaPJpGP1VVJYSbKzph3Mfxx7cnOAYwBUpw==
X-Received: by 2002:a05:600c:512a:b0:3cf:8957:a441 with SMTP id o42-20020a05600c512a00b003cf8957a441mr33779804wms.12.1672823904105;
        Wed, 04 Jan 2023 01:18:24 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id k6-20020adff5c6000000b002a01e64f7a1sm3488656wrp.88.2023.01.04.01.18.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jan 2023 01:18:23 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 04 Jan 2023 10:18:21 +0100
Subject: [PATCH 2/3] arm64: dts: qcom: sm8550-mtp: enable display hardware
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230104-topic-sm8550-upstream-dts-display-v1-2-aeab9751928f@linaro.org>
References: <20230104-topic-sm8550-upstream-dts-display-v1-0-aeab9751928f@linaro.org>
In-Reply-To: <20230104-topic-sm8550-upstream-dts-display-v1-0-aeab9751928f@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable MDSS/DPU/DSI0 on SM8550-MTP device.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
index 8586e16d6079..5b7e301cc2a2 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-mtp.dts
@@ -359,6 +359,28 @@ vreg_l3g_1p2: ldo3 {
 	};
 };
 
+&dispcc {
+	status = "okay";
+};
+
+&mdss {
+	status = "okay";
+};
+
+&mdss_dsi0 {
+	vdda-supply = <&vreg_l3e_1p2>;
+	status = "okay";
+};
+
+&mdss_dsi0_phy {
+	vdds-supply = <&vreg_l1e_0p88>;
+	status = "okay";
+};
+
+&mdss_mdp {
+	status = "okay";
+};
+
 &pm8550_gpios {
 	sdc2_card_det_n: sdc2-card-det-state {
 		pins = "gpio12";

-- 
2.34.1
