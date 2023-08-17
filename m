Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D79C077FA17
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 17:01:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352496AbjHQPAs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 11:00:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352687AbjHQPAP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 11:00:15 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 665F7359B
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 07:59:54 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bcf2de59cso1009886466b.0
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 07:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692284387; x=1692889187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jyrnYd+/grcDQWPBP5YRxE3h8w3O63U4ojbQQv8+188=;
        b=i8FbFHOG1mmFj7PIdrs6Zmo5zyhxgDtP2ATKD8llf4JJfnMx7olqSqs+54+VgSSKlo
         J2oO8jVUS+elgWtZxpzcG8A53UMIypAcb7xJfBARwXOwtaRQpBpMcIxq5yIplYJAoKWt
         P1azHtVrokAvSW1fGaO69NqqtMo62ut9prYyWQqEybIM7yGealQUycmM28RpwAgVzYNp
         CBN0dZm2e8nxsNELv9aHp5yEd70V8jVxipzWI+pmn2QqiXUQ20phD1fbXHppYwifwS+o
         Fy8KNZ1Z/8y0DCPcqYTCLc/lBZExIxGTRe6K4gAYuvxmADo17shmuGBJ2vqSJUxhGClO
         2VYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692284387; x=1692889187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jyrnYd+/grcDQWPBP5YRxE3h8w3O63U4ojbQQv8+188=;
        b=lsUVKdOOSOzUPng2PsLREi0Ruj7j/JLMSWtD0Sxi/zIQxuQQ6bSsAqkCxzF+Pg+j9X
         +5h/hOXTI0EtlJFVWT57KMSCB/kDwOZquD7MDTSUXGrzF4aIedlg5u6jnmuxKkeIbQgy
         A/QukKwWnFoJpAKmDSaymjpMyvluUnTjf7y28gsQ0HECND1HE8422gk084QCU2sX2aBg
         iZy8Z8BMzbb87lKYpBiRWc/ZlSK9aPjU8JW5TohOPg1Cu2CGFwTWyBxBIg6zw84zYrS2
         k/FQV6sjzAKXq6XHZMYpMupy/+KgmiGEKdrZ0ofrIadzAoyGMevqWKWZ+q91VvzaqbVY
         m5rA==
X-Gm-Message-State: AOJu0YyWenhaGXaO/9Lbn/jnv56ItFcpA2xG43ji9GylU0uHuC3QmVe2
        mAS32Rl2S4Wzd7gMd56vVxp4yw==
X-Google-Smtp-Source: AGHT+IFrDXU9RyQ2b51UNFwD8gODzimUQlViN1buaLRaNRS/xBOehnJnNWmJk7sJ/VfKKwLbM4dG8g==
X-Received: by 2002:a17:906:31cf:b0:99c:5623:a2f1 with SMTP id f15-20020a17090631cf00b0099c5623a2f1mr3775578ejf.48.1692284387650;
        Thu, 17 Aug 2023 07:59:47 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id lj9-20020a170906f9c900b00988be3c1d87sm10233557ejb.116.2023.08.17.07.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 07:59:47 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 4/4] arm64: dts: qcom: qrb5165-rb5: enable DP altmode
Date:   Thu, 17 Aug 2023 17:59:40 +0300
Message-Id: <20230817145940.9887-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
References: <20230817145940.9887-1-dmitry.baryshkov@linaro.org>
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

Add displayport altmode declaration to the Type-C controller node to
enable DP altmode negotiation.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 3bd0c06e7315..c8cd40a462a3 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1423,6 +1423,13 @@ PDO_FIXED_DUAL_ROLE |
 					 PDO_FIXED_USB_COMM |
 					 PDO_FIXED_DATA_SWAP)>;
 
+		altmodes {
+			displayport {
+				svid = <0xff01>;
+				vdo = <0x00001c46>;
+			};
+		};
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.39.2

