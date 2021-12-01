Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C6C14644BA
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 03:06:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345519AbhLACJX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 21:09:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229918AbhLACJW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 21:09:22 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94590C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 18:06:02 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id f18so58737641lfv.6
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 18:06:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YGmw0uPE0WwJKnfuLbCFZzX2SHEBSEZmfzKbbjU/aPA=;
        b=Oa3nsaOEANtdIxiAm25G9UBwmj964Cq3KkGbd62RexQqDkGuOQgWMkqdy0mkKwdfAj
         1NL4NzeisVMY4XEpsRfOwHUW3yoZczNP5hRcJdEmXdlCq8ERm8J8mICcJrDqvz7b15x0
         ZuklhPH9oz0I8NM161bwjMF/GiQdwObOLw/Om8AzXee5l0PHdtKmotKZ3w2TGVbx/aPK
         giDH6QGVJIOKGhkSQEbgjZH+d1JVkmnIhWHYhAfs+N9Xhf1dIQUyktRo4bI1wnEkRVOd
         R0q3RM/FHf2Lgr6nf1CEiU6Kr7mtD8UJo/yQ3hks3meODRX8YPEAcAckHQBlS8WRXZFd
         NiWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YGmw0uPE0WwJKnfuLbCFZzX2SHEBSEZmfzKbbjU/aPA=;
        b=Cs0BrgVEMnVizj2ZD0MuaPh+4FX4AJaMgtV2YJ2ffe+BWOJUiJBRrBnvCKFqwOgjvN
         v6dCVo6T+k7OLmQWr1ONJXK2ON7OKOc53/k1o1TPg1hpkME8wfObYHE2fODAjiYQwsWu
         LFN+nXCtAoBgOKM8EBnnqHuFKY+RyQYFD0gEiW6owP8OMzwBlOH1YJEEYFPwGq1li6DP
         TFOhp2zPKy929wlH1IfQ5YiQ9SQIL+a/0I4Pjzm2JxNcr8gmnA9q8tXfrvGUIwSo416n
         NP5nPHpdq3t3E50fWoJmPevWPtAIAqkn+syDob/tt/VTTRuwd2a/kvoowqumOhtk2qmq
         qGmw==
X-Gm-Message-State: AOAM531njUCHibhna+q545FS6h9cc55qdL1MrYgEu71BSttqNE84FpjZ
        SaSGuAkS1r9Qv09K8It9r+i/j6yxnUV9Lg==
X-Google-Smtp-Source: ABdhPJw4xU9O8YcuScTLYEPfmINbiiQUs0wc2HfjRbGvdhFNmdv2S5bxPIoBY2ajv6sa+GZUg2oQgg==
X-Received: by 2002:a05:6512:2506:: with SMTP id be6mr2890722lfb.597.1638324360904;
        Tue, 30 Nov 2021 18:06:00 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q1sm1905627lfo.255.2021.11.30.18.05.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 18:06:00 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: msm8916: fix MMC controller aliases
Date:   Wed,  1 Dec 2021 05:05:59 +0300
Message-Id: <20211201020559.1611890-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change sdhcN aliases to mmcN to make them actually work. Currently the
board uses non-standard aliases sdhcN, which do not work, resulting in
mmc0 and mmc1 hosts randomly changing indices between boots.

Fixes: c4da5a561627 ("arm64: dts: qcom: Add msm8916 sdhci configuration nodes")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8916.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8916.dtsi
index c1c42f26b61e..8be601275e9b 100644
--- a/arch/arm64/boot/dts/qcom/msm8916.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916.dtsi
@@ -19,8 +19,8 @@ / {
 	#size-cells = <2>;
 
 	aliases {
-		sdhc1 = &sdhc_1; /* SDC1 eMMC slot */
-		sdhc2 = &sdhc_2; /* SDC2 SD card slot */
+		mmc0 = &sdhc_1; /* SDC1 eMMC slot */
+		mmc1 = &sdhc_2; /* SDC2 SD card slot */
 	};
 
 	chosen { };
-- 
2.33.0

