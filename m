Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 014DA6C9678
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 17:58:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232580AbjCZP6b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 11:58:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232578AbjCZP6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 11:58:11 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CBB64C10
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 08:58:07 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id eg48so26111547edb.13
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 08:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679846286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5oFwo4L+TIJv2R5IVOvnMPXoseaXu9lKbQdTJK30VDs=;
        b=jf++4HlYZO0T+jKocmegItNVCEHGSyEdWBgRM+aQIvt/YbIKVGP49hEFuyGyFDhbVy
         8rjQts3n3J0O3J9njxsc/TM3VaikkggUo/HpBTRzaM06Y1p2pMPK3v0QV5jt1ZAxDJrM
         vQonzUmxa2jaoXYBY2Qhq1v3kYJPzXrNgbGBmlpZDLM/XbfvoG9w0QbpJ2DmShUw3iNP
         3O13JaKQL4GJf8o+0c47e2y2TIOgjtj6DLr7Od9KsOrqlTg+7hGi9XMP1RLBI0Dx3dtR
         aqTII4x9+MWallE0lI9D9dFMPqtw9aCI9R9yuKXqC8fvV7d7f0/uOk5CdlegaNKWmb2A
         La3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679846286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5oFwo4L+TIJv2R5IVOvnMPXoseaXu9lKbQdTJK30VDs=;
        b=CzqCvH3rrT4jmZWJlU6Wd3zEv0RIMfORcFlKZO3ZKIiLkvQzDv3htVKosEREgohDB3
         uRwfrNyeztiPyCfroAzY9rzakKQc9c+ZFPK1XWwEf3xCkHwBraI0Ety9OxMfic+R3lsD
         /+HNxQuFjwGnx7J1az+yeqnbXb/yXzQicQGf0EmAxTyuMnOI5MaGSAToAcI3XBwD+lGF
         /i34KpmOukW244zC1FP5r0xOkdaQF53eyys/GefkrZSWXmpd/+qKwFp5bI00qDrKcRwI
         tNc4xqEPYIBADPOaHTuERjmH+1gmlMf2c8TVrkNuM2/c1eV/fFi0YZ/jhkPXEMWQ/8DZ
         Jdzw==
X-Gm-Message-State: AAQBX9f9lKeAvTIuZyYOZxmn5xg8ibSYH/jAzfnxQgFUagNurpqw0nq3
        38md73zgIIgu09Hl6cR1/pMAvPdda93NIlzeENo=
X-Google-Smtp-Source: AKy350Zcv96asGrO6i96CRg2Dngd9B7NvuEmsHZJRcgIBGA2lZt5CCVxqcfpja+L/n6mykzni0E8ag==
X-Received: by 2002:a05:6402:204c:b0:500:2cc6:36da with SMTP id bc12-20020a056402204c00b005002cc636damr9570372edb.19.1679846286694;
        Sun, 26 Mar 2023 08:58:06 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id q3-20020a50cc83000000b004fc86fcc4b3sm13705502edi.80.2023.03.26.08.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 08:58:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 11/11] arm64: dts: qcom: sdm845-xiaomi-beryllium: correct compatible
Date:   Sun, 26 Mar 2023 17:57:53 +0200
Message-Id: <20230326155753.92007-11-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org>
References: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Tianma FHD panel is supposed to be used with fallback compatible:

  sdm845-xiaomi-beryllium-tianma.dtb: panel@0: compatible: ['tianma,fhd-video'] is too short

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
index 8e176111e599..e9427851ebaa 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-tianma.dts
@@ -10,6 +10,6 @@ / {
 };
 
 &display_panel {
-	compatible = "tianma,fhd-video";
+	compatible = "tianma,fhd-video", "novatek,nt36672a";
 	status = "okay";
 };
-- 
2.34.1

