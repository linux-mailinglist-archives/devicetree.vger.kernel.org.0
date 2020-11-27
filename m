Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A26232C624C
	for <lists+devicetree@lfdr.de>; Fri, 27 Nov 2020 10:56:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726719AbgK0Jz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Nov 2020 04:55:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726417AbgK0Jz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Nov 2020 04:55:57 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B351C0613D4
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:55:57 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id v14so6250196lfo.3
        for <devicetree@vger.kernel.org>; Fri, 27 Nov 2020 01:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aMtoWeMWHvc6/ZtjQjyHL53GwuZxoULh8/VicAMR0S4=;
        b=zBgYUoi+Wp+Zkjr9yc/EFdEGWmMetrUqD71QhqJ4mybzbhfkXi+IHX3GDTgcJVG6LJ
         oetTDTA1Qa9V91Ukphg90T1k+O+X4IVhP+mtLeKEXcCLU3+NCpdcgqhgSVcfc7+dhHha
         wP71Rhs5IVJ6Td/kHHolO3SYutoMaByAsa2jjG5pxYiW0Ia/7Bz/yHDCVW4CQg+c2nCp
         yZLvVv3ICikrYkS/0meeuPpSH+SUzKhxyrArFxp2cSAtoYlT9ZvuBvRIfu2lrbd2sevm
         aZJxWs1CE2xcZjQZciremtzHaRLBi/PdG/PDmLRqZZP14ZURXDleP5ZFASsPyt9sGZnM
         FZpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aMtoWeMWHvc6/ZtjQjyHL53GwuZxoULh8/VicAMR0S4=;
        b=kS4Hm5EzQ3Hc9F9Plnd2LxRfyW1OEsFREFiggNO0FHe9Kjz92OvBHqvTsbghYUDj3i
         hFiusSRNdwyZ3p3KG6pGWQZwY6q+q2jZ/yYeldWo8NZ4/C1GFCciMlem1LSs4bYmr5qK
         g0fc+LL1UZfAtguBXMe+TY7ClkMUdpjtq73BVAsxPFPqkJcKJWk0oqafBiWxNIgu6FoV
         nWVrr+31cYxB5+wmrYLcMkzPsDrz0TEar26PaQXd3iyJ6+iynvOtTMLzCoGJRvcjiVRd
         Rxd1k+pfPHW39RXfO0b9HcYy4VaZZzPcifeaYinh10SylZ+LLD55wDNnKmkyjvROuTm2
         pgLw==
X-Gm-Message-State: AOAM532uhfwnjDJel2SE/YImle9N23B2pakwv48wz3yxDRui6G+idT9x
        brlmv90s3vjr4ZP+aONsfS5lDQ==
X-Google-Smtp-Source: ABdhPJy2Cvm3ldW+DDIKuYbC7MW3KOeuwxbQyyQ68/1/nR/6Gv+/fRy8ENzU3+nlTkJDmwd544HffQ==
X-Received: by 2002:a19:228f:: with SMTP id i137mr2809626lfi.477.1606470955564;
        Fri, 27 Nov 2020 01:55:55 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.79])
        by smtp.gmail.com with ESMTPSA id x25sm628477lfn.99.2020.11.27.01.55.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2020 01:55:54 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 4/7] arm64: dts: qcom: sm8250-mtp: add gpu/zap-shader node
Date:   Fri, 27 Nov 2020 12:55:45 +0300
Message-Id: <20201127095548.128217-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
References: <20201127095548.128217-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add firmware configuration for Adreno zap shader on sm8250-mtp.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index dea00f19711d..b5a474ee008e 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -358,6 +358,13 @@ &cdsp {
 	firmware-name = "qcom/sm8250/cdsp.mbn";
 };
 
+&gpu {
+	zap-shader {
+		memory-region = <&gpu_mem>;
+		firmware-name = "qcom/a650_zap.mdt";
+	};
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <1000000>;
-- 
2.29.2

