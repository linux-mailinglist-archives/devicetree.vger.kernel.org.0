Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 488406C52CE
	for <lists+devicetree@lfdr.de>; Wed, 22 Mar 2023 18:42:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbjCVRmB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Mar 2023 13:42:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbjCVRl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Mar 2023 13:41:58 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B4DF5CEDE
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 10:41:57 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id o12so76140257edb.9
        for <devicetree@vger.kernel.org>; Wed, 22 Mar 2023 10:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679506917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EycsgHsbwfkP3uIlxZJiJyuiX0jcH/aXlFkrPkIAzpA=;
        b=oOOdA2lOyOmYOUdtWSLSAIyHjr5kpHIgxtlWxccADdz2ubXhjDSL7BFgXX9atffeXf
         AuGTbgU/HHht3gi6BpFmsApx17pU8O8aJxLcqS3lnal4yFOGjYuDpdoAbzBJFhoPjF9p
         bfQF1iiv/r3BDhDJpChpREZOPcLBFNy6806JoaVGK+WuW5zQ908RMAdq9YJgoXTzWzRs
         iL5RJJyP2A6LZZBtmn+m60q0UNgF8Z+k/9oBBM02UAyIuefm2ZxjtY1ZQVeoa+m1r8vW
         W8aIURWf5mkxR0VkaEHF5Qe8rbzieUSaympz7MBYDN1bjIwpEroD9N24k6DEd8yBlGiX
         RJMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679506917;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EycsgHsbwfkP3uIlxZJiJyuiX0jcH/aXlFkrPkIAzpA=;
        b=wzfG64KFOgixp6CpSskMoXcj3FdxsA0Q9I7mTcwFyG9Ot2hf/B+B3QNwq4JcDTrUQX
         Da7KtEajA9JCvkSySjbmYY9IX2h0qcJE5Xj9p3vk1ogWpe1ZYhGgjoJMAivf5d7xIESp
         VcSkgEDV7SOP6jqGx5o3VKO//Vqfcr4xQvPC65nfOVbG6gEY8XhMkq73mMJFE1kH/aT/
         qP+U0fr5Ug7cgrtuM4rJEyq/9cn7l7HVzVGr4rZgpPB5IY5+VfNxUExPzkwiUTmwe2N0
         MMknzwGou9+Wgdtewzv7cCxcEfoqj9bGDrv2PJxLF6osDYNrAmW1sAbE6MZbLtIWmmH2
         YfOA==
X-Gm-Message-State: AO0yUKWrbi2e6CeqbMLCN5AjeLL9aDJVSt8uwu0ibaa2vWgrBsPlSkfF
        EWvDdQLTXgSlvfj9yHohieip9w==
X-Google-Smtp-Source: AK7set+cIO72rBk3+kd2tSMYlRvnAmQVBCtbYXOTpZWM6qTT+DOe3SBhASfIaY61QNwHd6eutgu53g==
X-Received: by 2002:a17:906:eb8b:b0:884:930:b017 with SMTP id mh11-20020a170906eb8b00b008840930b017mr8816260ejb.60.1679506917143;
        Wed, 22 Mar 2023 10:41:57 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:5050:151b:e755:1c6])
        by smtp.gmail.com with ESMTPSA id jx3-20020a170907760300b00930876176e2sm7548088ejc.29.2023.03.22.10.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Mar 2023 10:41:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 05/11] arm64: dts: qcom: msm8998: add compatible fallback to mailbox
Date:   Wed, 22 Mar 2023 18:41:42 +0100
Message-Id: <20230322174148.810938-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230322174148.810938-1-krzysztof.kozlowski@linaro.org>
References: <20230322174148.810938-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
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

