Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4961268C0BE
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 15:57:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230421AbjBFO5c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Feb 2023 09:57:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230473AbjBFO51 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Feb 2023 09:57:27 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5064027985
        for <devicetree@vger.kernel.org>; Mon,  6 Feb 2023 06:57:19 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id m2so34940156ejb.8
        for <devicetree@vger.kernel.org>; Mon, 06 Feb 2023 06:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvpJire9Oix0QZVP0x0MsRm7055RqWG85WNJGR1ah78=;
        b=FhbKMLoNFUAWgn+KHQ69RJuJ/z1JEUNsDQLrN26ILh2sf38Q3tVGNkFLuWo7zm3hH4
         VLLg21KcCOr24lh65lsSoa7CFwvGDQg42Xs4nYoAgezqd74ZEifIf7d99YOwT2POgPxu
         j04Uzj4TeRpRGz/s1hUBFsC0C6dM0EcH5wEgBez56Xx15AdyJ/h91W2KsUEBWywAiVoO
         wx63kmm1nCsonj4IV3MCPAY8NJPyJylDJZEps7dYSqUZT3dHnoOkB2IbRt5G+ZvIOmf+
         7DNnzBJwmUc79kb6U31NzTmt4lWLA3gS4hqhDcw2RKrAyNwORB1EVwHdF44tBgTWs+gc
         Qpbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rvpJire9Oix0QZVP0x0MsRm7055RqWG85WNJGR1ah78=;
        b=7lkb2GcdlAFtlJzGISQggtVWKhGVbpYTmMgVc6VFUfWmjUVzvTqm7jUnCjnjeuGMAl
         +Q7xirw4hsuIpeu5iWqWEN7SN80sNFxuom0LXgAAd/q47UuljtfSlQy9enHSCOE574X6
         5kMYIpftsYJECHiPdiL6z/9sEs12W2QxKSy5JTGKsf5+i9E/UQKm15hc8UkKS9qvlq8l
         iWggtaQGwL/AFRlLdwYyI5jmmtgbWniv3IoaXIRzUNEhrve3t/Q1ZMJkoeVgXuMthzkp
         1yQZrv11WHdJcEtrXh9eC7+6+j/VQTroa0jKwPzT2rUja+oF8ZVtHtcSXWpb/wrbWk5J
         6yLw==
X-Gm-Message-State: AO0yUKXoA6HIMF2OJQSisZA/zgnfAvk9XVSeW8/6M7fwzGayma6Or6cJ
        kqFpVBC4/tfnPnAtYdSMmQ+2sg==
X-Google-Smtp-Source: AK7set/BbBwZ2tUdJQcmNpQqX0iYCeNQD2U/sxj9vmbzbl37IVzdRVXDEFmvzjMIvEIWKes98WxnkA==
X-Received: by 2002:a17:906:4b57:b0:885:2eb5:68a5 with SMTP id j23-20020a1709064b5700b008852eb568a5mr17647451ejv.66.1675695438882;
        Mon, 06 Feb 2023 06:57:18 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id gw1-20020a170906f14100b0087bd4e34eb8sm5495533ejb.203.2023.02.06.06.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 06:57:18 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH v2 8/8] arm64: dts: qcom: sm8350-hdk: enable GPU
Date:   Mon,  6 Feb 2023 16:57:07 +0200
Message-Id: <20230206145707.122937-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230206145707.122937-1-dmitry.baryshkov@linaro.org>
References: <20230206145707.122937-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the GPU on the SM8350-HDK device. The ZAP shader is required for
the GPU to function properly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
index df841230d1b7..5e744423a673 100644
--- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
@@ -284,6 +284,14 @@ &gpi_dma1 {
 	status = "okay";
 };
 
+&gpu {
+	status = "okay";
+
+	zap-shader {
+		firmware-name = "qcom/sm8350/a660_zap.mbn";
+	};
+};
+
 &i2c15 {
 	clock-frequency = <400000>;
 	status = "okay";
-- 
2.39.1

