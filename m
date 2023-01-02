Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4109A65AF01
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 10:48:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232573AbjABJr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 04:47:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232151AbjABJrM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 04:47:12 -0500
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97B22EA6
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 01:47:07 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id x11so4256889ljh.12
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 01:47:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fWt6kd54Z0gLEXZL1SvKfagVss+0HGpzmbYASSuZzM4=;
        b=nLObRgAb4Su8YYFugvped1y9PaiF0d7wFekFCmK7ADboHuBZcV2JRP6zZG4mHuvhF3
         HBG+KH9xGDRzwrf9eQ00Sj4DqvaRQHBbnpgo9RPJZorWZXooHjY0ZMjcosKmmw+3UBIz
         ZFTk/5yA0vW5MW5HqQipuKR03tNq7bdR6C36l26cPWj1y4DqDZ5uR712k1lNCVWw4184
         TcsdWqBuv410AYU5pPKzf7jjXCm1bSNcMNspVUIs0feFS5hL1qABEh6CPEs+5gICg5Qk
         swp9g5qxDmRYD82oHdIo7fhPU4bcz29Qqr20U6yo+BcczyYPkX+gLh6wK/1ZOfqIpH03
         Q1cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fWt6kd54Z0gLEXZL1SvKfagVss+0HGpzmbYASSuZzM4=;
        b=MY4riUFXUSQAAGtjjWuwwUEiVxCtZhgHG7U7o8wMPHlg2rq39SB4oqm4QiH4IvAK9b
         IVvq56tAGlpuz9vp/OcRmxFMMVycA7OASshWJngmC9yDcuwVfgoPpynnjJeNsksF9leH
         UiCa1uLkGWzWuxyHiZb4dadS5DVLPxNkQYaLKtEwTleAkcu2+fKqp7h5v4TcX9ix+uqD
         vMQiOviv8MF9G4vheVxwoW1e1WJGZ0TcNRsfm7zsdJ+W0FNt77P8P/zN5tQCrjXV1mM2
         Tfe5WKRutwl5Bfumppbl2m1D2fCgpWBF1wX/iNOB9s3hPdCqX/nOLEvIU5p0jmpbgg2Y
         aGFQ==
X-Gm-Message-State: AFqh2kpkJYzCVyfrjGyIGLGUp8cerlP8yR9bclK1vqCNw9CgntiV8q7U
        lA4AUgQPVkoDvbJB6u+e5vsn5A==
X-Google-Smtp-Source: AMrXdXuXfXdY+c7+K/v+YHsrrFSlIpto3zezLZxwKJ6keE+m+Q+lzoa20vPXg2bBeUtwGixjMQRmLg==
X-Received: by 2002:a05:651c:d4:b0:27f:f740:824a with SMTP id 20-20020a05651c00d400b0027ff740824amr244030ljr.11.1672652826015;
        Mon, 02 Jan 2023 01:47:06 -0800 (PST)
Received: from localhost.localdomain (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id x11-20020a0565123f8b00b004b5adb59ed5sm4382143lfa.297.2023.01.02.01.47.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 01:47:05 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 16/17] arm64: dts: qcom: msm8994-kitakami: Pad addresses to 8 hex digits
Date:   Mon,  2 Jan 2023 10:46:41 +0100
Message-Id: <20230102094642.74254-17-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230102094642.74254-1-konrad.dybcio@linaro.org>
References: <20230102094642.74254-1-konrad.dybcio@linaro.org>
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

Some addresses were 7-hex-digits long, or less. Fix that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
v1 -> v2:
No changes

 arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
index f3d153c34918..3ceb86b06209 100644
--- a/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8994-sony-xperia-kitakami.dtsi
@@ -163,7 +163,7 @@ &blsp2_uart2 {
  * mainline Linux.
  */
 &cont_splash_mem {
-	reg = <0 0x3401000 0 0x2200000>;
+	reg = <0 0x03401000 0 0x2200000>;
 };
 
 &pmi8994_spmi_regulators {
-- 
2.39.0

