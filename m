Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9116062F3D9
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 12:38:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241349AbiKRLiD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 06:38:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241632AbiKRLhy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 06:37:54 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ED422DCE
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 03:37:53 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id g7so7790980lfv.5
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 03:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3mt4aslduK706Qp98iDLCILch28O0Le8Egwa1Tmvqt8=;
        b=HzKXiZ0ZbmZCn3ai4fVvgn8NVeP0CaNXASXbCFV0T3a9Nm7p3y0KdfnpsrT835i8AA
         unhl+WH1X5Rkr+R9frxgLjDB2cqff4QK7eyeFo+PFipbCVLQmoNhzWDIQAgV7Nyzx1qB
         VpdwjHnvRGyY5q8LpbnCD8HkxxYb7uu61DoczTUD2a8kSi5+eY5kPkEHxrtLRU+B6cEZ
         OtW4jKWGhzOeblaX/Zvj5/eDJ0dTKg4Do6yDdEP4eLBBybPDNNtLB+tDeDUyudwoafST
         BF4obwrEmIJrIRi2gaLDDcSjhhromkkaeBKX/LW0TQ+5+G7O6tdfEqakFu9QWkTbeeAY
         KSZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3mt4aslduK706Qp98iDLCILch28O0Le8Egwa1Tmvqt8=;
        b=eZZB0SB8I63qVWhpVTaIyFTrqsLQ9wd6ve8LPvi8tOVTWSsoZ648ZhVY3lc2n/RP8c
         +sLLt2I9K0t7nVFd9lr91T8cqbZDUlWtKRTHWZY8qsa9zJgyYZ1hgCuf6wFlh4GCY/mp
         Kb2AUD/FQGMtM/5Z6ScsUlfaaNaKDy4QXNBdwHuu+viBceaaKZM28ZVQED2L3KkMyWlO
         MuuEGorr7DQZcZKNOo9opyH+aC+MEkFCtvx2oF9JNEbS/prwEep0xqMf2Tuqw1Ces5rt
         kSABHVVgGPbQLIwKZcwCV3NP2i6JgOnH84IZW4RxW7/2jS3LrX32/dqZLUYSfM7YvrN5
         bV/g==
X-Gm-Message-State: ANoB5plJxhklvPS9xcB+YLSidaHebTOWQ4ZAG0f1KnhxZ5l17yrbUnqL
        HIz5cuH2saclaSnWkktjOiiBwA==
X-Google-Smtp-Source: AA0mqf7VJP+Fhvc2f8Qt3aTz6xkpSv+0bDqfC1/Hlj2NHJVRjwSp6rwdvLmK3PGlkGjQpkM/sg8FMw==
X-Received: by 2002:a19:7107:0:b0:4a8:e955:77e7 with SMTP id m7-20020a197107000000b004a8e95577e7mr2166974lfc.573.1668771471497;
        Fri, 18 Nov 2022 03:37:51 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q5-20020a2e2a05000000b0027765fd616asm622483ljq.20.2022.11.18.03.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Nov 2022 03:37:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: qcom: sdx55-mtp: add MPSS remoteproc memory-region
Date:   Fri, 18 Nov 2022 12:37:47 +0100
Message-Id: <20221118113747.56700-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The MPSS PAS remoteproc bindings require memory-region.  The MPSS PAS
device node is disabled, but schema still asks for it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55-mtp.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-sdx55-mtp.dts b/arch/arm/boot/dts/qcom-sdx55-mtp.dts
index 9649c1e11311..6f8909731faf 100644
--- a/arch/arm/boot/dts/qcom-sdx55-mtp.dts
+++ b/arch/arm/boot/dts/qcom-sdx55-mtp.dts
@@ -229,6 +229,10 @@ nand@0 {
 	};
 };
 
+&remoteproc_mpss {
+	memory-region = <&mpss_adsp_mem>;
+};
+
 &usb {
 	status = "okay";
 };
-- 
2.34.1

