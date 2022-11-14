Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD788627ACD
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 11:42:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236427AbiKNKm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 05:42:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236260AbiKNKmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 05:42:44 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DE9E1A22E
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:42:43 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id h12so12572801ljg.9
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwpc0rIre8uNuN1eJy4uWlPjk12XVzk5gyvKFTUgULo=;
        b=DZ/LwzMZf2PIHMWmeoXKs++TRDuiAWQu7+6fgTvJrNeiG2WvOJ/a8F5SRH1cGzCQn7
         ruxcuTpeC7YLCWSPtWFXkYtRBwzoTG3fSXaqFTeTpiDeQbK9w3JhziRAe7sKQOYU2S6y
         KBQx02fnt2+vqM+j2bBg5h1+cGjo7MjjIRAMAhpQRRmWLjivFg+3NV8n/+NaMgn29tLo
         QqDYAF5Q2ZxG5rzfF2ULflzWzHHtuV/MP+8ZoG5TtAaYcODL05Gdf8ZHPgsq0YsslmaP
         DkwxrqOBVmUFbeiyGwph4rEkRazwNc+AZWLduBmb2dnCix8sQYBNv5pPR7XYf7JazThx
         RjZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mwpc0rIre8uNuN1eJy4uWlPjk12XVzk5gyvKFTUgULo=;
        b=Yhh86x5Bw8/4AuDtQYeSm7OsYtq2Ca9g6bnCuBJF5yFQEnOmHbNPAWXTWbRKY0Tq02
         6IQGqVTnwCbXmNVxOmVJ4pDaJne85sFTgugxMXOLSIlvS8vSvC8HwhM5EjH5sfvBd4i4
         Ye+njPdUdp4vCx//KtKrjBe7zJqMq8ukiIYZY0xP0cEsAUP5pQU9mHUnTqBEvCAIRbKE
         6SENaTMxlLazHXPRcOsEnxI2V2rLUKdn60F8ieCJWBvFsI4Luc5XKxuOJdJG8vntGp6E
         LyWbUNskA86Lmm/e3T1Otu+NkXibq9BbQkA1PjBE4IfmD+BUnxi94k3yVf9rtCAnbv8l
         4xRw==
X-Gm-Message-State: ANoB5ploQC0kj19cPuJfG6zApS2630sbVAKzOtx70OtmFc2zY3ykNAIy
        sPBgqixLmnTqhIbYpk46c6ydTw==
X-Google-Smtp-Source: AA0mqf5NaYl+cRLXDuVIrB/BACVOK/rrxmhegHtMvxWI8yh5jU6TNj5lFzRK9sLMcm0hdoGWmiMStw==
X-Received: by 2002:a2e:8711:0:b0:277:92e:976c with SMTP id m17-20020a2e8711000000b00277092e976cmr3679269lji.306.1668422561463;
        Mon, 14 Nov 2022 02:42:41 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id bs21-20020a05651c195500b0026c4e922fb2sm1946486ljb.48.2022.11.14.02.42.40
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 14 Nov 2022 02:42:41 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/9] arm64: dts: qcom: sm6375-pdx225: Enable QUPs & GPI DMA
Date:   Mon, 14 Nov 2022 11:42:19 +0100
Message-Id: <20221114104222.36329-7-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221114104222.36329-1-konrad.dybcio@linaro.org>
References: <20221114104222.36329-1-konrad.dybcio@linaro.org>
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

Enable QUPs & GPI DMA on the Xperia 10 IV.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
No changes since v1.

 .../qcom/sm6375-sony-xperia-murray-pdx225.dts    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
index 450d4a557df1..6a0f4c0bf7ad 100644
--- a/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
+++ b/arch/arm64/boot/dts/qcom/sm6375-sony-xperia-murray-pdx225.dts
@@ -65,6 +65,22 @@ vph_pwr: vph-pwr-regulator {
 	};
 };
 
+&gpi_dma0 {
+	status = "okay";
+};
+
+&gpi_dma1 {
+	status = "okay";
+};
+
+&qupv3_id_0 {
+	status = "okay";
+};
+
+&qupv3_id_1 {
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <13 4>;
 };
-- 
2.38.1

