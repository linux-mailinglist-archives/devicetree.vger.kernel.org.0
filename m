Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6914F6B8CBB
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 09:13:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230378AbjCNILk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 04:11:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229592AbjCNILD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 04:11:03 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34C6799261
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:33 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id ek18so27299529edb.6
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 01:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678781366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EycsgHsbwfkP3uIlxZJiJyuiX0jcH/aXlFkrPkIAzpA=;
        b=ltdo31t+YukuF1jA0QDI5UOjDY7Zq41+q9sLSGW58vF+U0OAsNSop9ZBxWw7XT9jVr
         RRkq9ksfmjpyVmYrjijuCs0+o70CQr1kfkj/tI2Pvf60U485d3B6Mg3mXKprOE/luU8s
         hZgIMkdHI6t5fCHzOtm/BuBAyn6xZL7jR/VbtsU2IO55bwVlm0ZN2m+MVMyCS7S+1B0v
         USfH7cGujglIfGeiu8UrWtI5WrR4NLiTirZ7y94uvU2Rinw9zsH6BOPT0zUlc1v48Fm+
         J6hiSm5LzMixH6Lz8W4wn6DsG+22+Z8l+wzVOChZozc6KD+lDiCu9OQQE7z9Si/1duRU
         xO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678781366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EycsgHsbwfkP3uIlxZJiJyuiX0jcH/aXlFkrPkIAzpA=;
        b=O2+QP/PkNgi6JcNooEJlvEHBel9s4OHEQ9+/nn0wz1eF9VbF1EUPv47Wqrm7qNe1k8
         JLeTuGQJbucYFtdcZJPMpHS+cmv+jfxxbgZwQW507gRq7Vdn3lVEgGZILfTk8fEHeOH6
         CpolDc2XtVSCHZis91nxMiNNAPgpc1hJzm4nKAPSZQaq2V2tNBntnYx4uA/nrb9940II
         LEOZRPDTqCvQKQHoOiz8LRrz1f9fNOMsdPsjt2/TuqJDeJXey2x9VoGrCk0ObCYr9GEJ
         QDJPKedKBgzNtE7+iUM2M8oxdFPV9jsioaauBqaGDkKTHpfZqyakXAVMQ7S4FBVJWk/F
         /Naw==
X-Gm-Message-State: AO0yUKUI32s3l5udiqXz6Clt+TZtb2SCsKkRYkj/eip0ZgxiswZ5oh7V
        R40dwl/hPGWhbcZJQ19lwJZgkQ==
X-Google-Smtp-Source: AK7set8gJGAdKEB2as08KnOMNccHrRK4wo2g00p2D9mwzTP5RoHTb8yM9qZAkZEb8hSoU1weuCHi9w==
X-Received: by 2002:aa7:db98:0:b0:4fa:3b3:c867 with SMTP id u24-20020aa7db98000000b004fa03b3c867mr10366202edt.17.1678781366151;
        Tue, 14 Mar 2023 01:09:26 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6932:5570:6254:9edd])
        by smtp.gmail.com with ESMTPSA id co2-20020a0564020c0200b004fce9ff4830sm584872edb.88.2023.03.14.01.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 01:09:25 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 07/13] arm64: dts: qcom: msm8998: add compatible fallback to mailbox
Date:   Tue, 14 Mar 2023 09:09:11 +0100
Message-Id: <20230314080917.68246-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
References: <20230314080917.68246-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MSM8998 mailbox is compatible with MSM8994.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 8bc1c59127e5..65f9b56e1dda 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2490,7 +2490,8 @@ glink-edge {
 		};
 
 		apcs_glb: mailbox@17911000 {
-			compatible = "qcom,msm8998-apcs-hmss-global";
+			compatible = "qcom,msm8998-apcs-hmss-global",
+				     "qcom,msm8994-apcs-kpss-global";
 			reg = <0x17911000 0x1000>;
 
 			#mbox-cells = <1>;
-- 
2.34.1

