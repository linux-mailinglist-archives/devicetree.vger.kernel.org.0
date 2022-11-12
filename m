Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AFD9626AD5
	for <lists+devicetree@lfdr.de>; Sat, 12 Nov 2022 18:27:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235064AbiKLR1D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Nov 2022 12:27:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235057AbiKLR1C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Nov 2022 12:27:02 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78E43186C0
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 09:27:01 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id f27so19231188eje.1
        for <devicetree@vger.kernel.org>; Sat, 12 Nov 2022 09:27:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SW1r5A1hXNoZH6nEqF4dUZL+EuJMyzrztmVIxOhjiNs=;
        b=d0rqWd2ROhCeMqItrY0s6ZyhyL/DkJKtZNMrjKTajV15rFO9E3PatqYtHESnrxlnw9
         Gw66PqLaHesZMl33EA20vXYgBZBL7jPAS19TQBXFfwj644SizU3hRDW0gHqu1lLktCjn
         CprMyumm7jdrZ9ftokGlu1gBZb+6CamVOe+h7b29nae9YBrv0JXIRInfTzu4WIjndUWD
         5YV2/nvgYtijSWhmB2wAabcL0+LmyZhbLhfdx1Zwq7o+3eYXiczmmqdPiLMY3brf0lEN
         hMKfEa+WZkmUd+LPTPLLj2ueVwURV7V1TwUx+BU8p4xfX/qVgJmjpZqzSPfqwW/ojnsF
         ejvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SW1r5A1hXNoZH6nEqF4dUZL+EuJMyzrztmVIxOhjiNs=;
        b=lELU5r4+sZj0xX9BPCCzbKkFp6q8gIiHKKotiIY6ZWPBYF3vLcdngNfbHiNlZu7U4z
         0tkCnZo968VeHl7dGEfPYPmMeNhHi1ORSf6sebKlmwXgVtjrs0pd4GZVmyUv5D0WIjMu
         o4ShD2XeNkC7j1H8gUihsuUNf8rxBHzmxMifkDsauwzYqrwDN3vxxoFO/rIZthj6CDGp
         T2GuehnqjnJ+DCaq4pXxlgN3+5qiQMmkDuYNN+bqevcFPi1bYOItQ+paG29xx97QPCXj
         jzCaGcnmp4N+H0P+qRpQergnIW25aMmier/cums/j5jOgH4Z4qXK5Tn186TerwkXgEFI
         EETQ==
X-Gm-Message-State: ANoB5pmUI4aCow1Gc494dTOyw3jthK4XVZe8bsrbeXLCb9yBWi1dvmgD
        ABBJ2b9cs1E5r1ixmebOcuAupQ==
X-Google-Smtp-Source: AA0mqf6JkadfF0Xg+BNYVPuwe4u3uA3lS9ReUnGIBU4q9V+mI06Y1wKol/KPEGL0ob5VIoacGMfhtA==
X-Received: by 2002:a17:906:7c0e:b0:7ad:2da5:36e4 with SMTP id t14-20020a1709067c0e00b007ad2da536e4mr5352772ejo.680.1668274020022;
        Sat, 12 Nov 2022 09:27:00 -0800 (PST)
Received: from localhost.localdomain (2001-1c06-2302-5600-3861-6a56-0346-9c90.cable.dynamic.v6.ziggo.nl. [2001:1c06:2302:5600:3861:6a56:346:9c90])
        by smtp.gmail.com with ESMTPSA id qo9-20020a170907874900b0078c1e174e11sm2099265ejc.136.2022.11.12.09.26.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Nov 2022 09:26:59 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robert.foss@linaro.org, todor.too@gmail.com, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@somainline.org,
        mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org,
        vladimir.zapolskiy@linaro.org
Cc:     sakari.ailus@iki.fi, hverkuil@xs4all.nl,
        laurent.pinchart@ideasonboard.com, quic_mmitkov@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v5 5/6] arm64: dts: qcom: sm8250: camss: Define ports address/size cells
Date:   Sat, 12 Nov 2022 17:26:49 +0000
Message-Id: <20221112172650.127280-6-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221112172650.127280-1-bryan.odonoghue@linaro.org>
References: <20221112172650.127280-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ports {} address and size cells definition is the same for every
derived 8250 board so, we should define it in the core sm8250.dtsi.

Suggested-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index d517d6a80bdcb..f28a8893d00d7 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3412,6 +3412,11 @@ camss: camss@ac6a000 {
 					     "cam_hf_0_mnoc",
 					     "cam_sf_0_mnoc",
 					     "cam_sf_icp_mnoc";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		camcc: clock-controller@ad00000 {
-- 
2.34.1

