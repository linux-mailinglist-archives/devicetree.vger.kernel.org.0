Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2A01E2F70B0
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 03:42:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729700AbhAOCml (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 21:42:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725988AbhAOCmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 21:42:40 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D13E7C061575
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 18:41:59 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id s26so11045766lfc.8
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 18:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vs1r0AZs3ldhjf+gof6Gcqu5JtaJeiVqg0aeRPk9Wek=;
        b=MchTCeL43TPv0d8h5+AAY2iwuueROyDAj3xcC1b1MvdLLuBmK6WZ7Pu8/g3daVL565
         tJG1hOhZoTb0UEoHUdzUlyjy/1SEKPPL3R5F7irvwkRf5uGBYACJIGZRTUhVHNBA0PAk
         4EYT0YexEHFndthChwJkZVtWaz/9342z9HVXgMnyR7TOhVkryqGfTYmtY9SgaJamSYFO
         IK1PMDp1kJS9elWA+XpP7/zDkQiFNwTI4oX8oki/l7Gzio4hWDIxP9C10M2a51WC8kiU
         c57PzoxRPxGer4Ai/reKAWfQGLgaQreHyG+dy2q37+OuHHjIPpqp52EiCFGDsrc37TqU
         LMJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vs1r0AZs3ldhjf+gof6Gcqu5JtaJeiVqg0aeRPk9Wek=;
        b=mSvsghteJp+095jvMgQIhnQa1vQbdA6iIoD3Xfba5ssP/ujFkGIwnidooxCmwaFnWn
         yed1nMT3ufeoKwEgGyJxO7YEjOWOYOqH61D6EywdZaLGJzgFVtpxRI254ZpY00pC905T
         Qcbj9xn5SU2fqWIMQpO5K5w1znZNikmYeaskHEL08uVU5kHboCEahwasFhe6PNSLJmta
         qhIRkyZDQRaiFT81DkHn91Ll3RYJUGWvRyBbYHaSKJZgurd1KHHr1ubrEKj/Bm2RaA6d
         u75J79fdEIu7KYdOh6ZX0DLNqN5A9C7jqs9JTKDK6csnlaqKR5q6ZyZ8cO3Zz1jztQ5t
         LptQ==
X-Gm-Message-State: AOAM531u2uUym2IwBkwHKbtavWyCwGUTpC91g3ARngZ2dcfGROKBIZaE
        cAKgI3O8TD/6cfja7yL1BX8Q4Q==
X-Google-Smtp-Source: ABdhPJyGmf4gq71vElZ4iwpirRhVnXO+k3CfWmSz8yBzhQtLbbWgM64ChjHqb60un0c19l/66XQRVQ==
X-Received: by 2002:a05:6512:10c9:: with SMTP id k9mr4994841lfg.532.1610678518253;
        Thu, 14 Jan 2021 18:41:58 -0800 (PST)
Received: from eriador.lumag.spb.ru ([188.162.64.106])
        by smtp.gmail.com with ESMTPSA id c14sm729219lfd.186.2021.01.14.18.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jan 2021 18:41:57 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH] arm64: dts: qcom: qrb5165-rb5: enable cdsp device
Date:   Fri, 15 Jan 2021 05:41:56 +0300
Message-Id: <20210115024156.92265-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable Compute DSP (cdsp) on QRB5165-RB5 platform and provide firmware
filename used to boot the cdsp.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index d7799a6fb489..89a1d60e93ad 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -451,6 +451,11 @@ vreg_s8c_1p3: smps8 {
 	};
 };
 
+&cdsp {
+	status = "okay";
+	firmware-name = "qcom/sm8250/cdsp.mbn";
+};
+
 &dsi0 {
 	status = "okay";
 	vdda-supply = <&vreg_l9a_1p2>;
-- 
2.29.2

