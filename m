Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CB3F466516
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 15:18:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358532AbhLBOVg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Dec 2021 09:21:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358485AbhLBOV1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Dec 2021 09:21:27 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95D3BC06175C
        for <devicetree@vger.kernel.org>; Thu,  2 Dec 2021 06:17:43 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id u3so71910524lfl.2
        for <devicetree@vger.kernel.org>; Thu, 02 Dec 2021 06:17:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xL4c95uqByU7J08CZiX/XHP0HZvf8gLdVWZxGCtbXXU=;
        b=sNtnipCEgRSiLyzcUP8nFO9lRdlmoymw3vEn4BMyNF2Qlb3qCHcsbrNRTDtIotwsbk
         dgKrbHfLwx7xyqYusZx6jqNhnL4bSHgI39IUNpwZ7PO5C8I2gon15ouXdd26seWkKq+i
         qHSfftUIF7oqv2lldD/ceoB7lC4es7JZ+hr38SPSjHCbxpo6HbXswfzISrZf4MM4dLea
         GcjvXp4rsJB29zomsNlJk49ubLNW+IC+HXLOiQyNWp5UcCBf1O2AhwU2dkt073LEk0mN
         V4Jst+VJYdvQ3k6tLkRh9Y2EXFWTRWV4a6AzFGAbYeOLwT3zikEdBnS8G5ZY3/IiEyu2
         S/aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xL4c95uqByU7J08CZiX/XHP0HZvf8gLdVWZxGCtbXXU=;
        b=oGyKQD4QeXABKWJKp4CERvcTH0DE7W4VJM+q3b/mVVBWvOA21iBJTI7S7U2asghKkP
         xPbvCEf+h4ouaXZKxOQJ1AbGpvi7UIAJpTIf9dCYJt/UgVfKQLU1SSls7LMyBIEl3N1w
         dOB+rdh/GlXlKy8uVvoIlQLNTkTQOVgIDcfBiPvoezENIZrwWMnPDL8E88MIdTLsmOsQ
         P3x6xEif6zQMZURpyifSAsOATyruFy2L68PsAWq0dxnTOIPEa1+su0GbeQsvxW4IIEc7
         mLQAOKdP3apTJ8BUcEVRq8JQEXXT4LX1CUIrtqEvetsI2Mv/HVzcHPPAGw2peGl/f3vF
         IeHA==
X-Gm-Message-State: AOAM530+rUm4uE5CelONUJBbfh7KeFwDiaqJFo9tx6EeFELhx+ozAp5M
        XP6z31kZYmBlw+jYOHMvFcIiHg==
X-Google-Smtp-Source: ABdhPJxwS1ZJE+rFkAabfyXdoekK/hRmTaui1SVyA6I2RXczyk8lcIdqlWOM+2va9OgJViM5c4GlPQ==
X-Received: by 2002:a05:6512:3213:: with SMTP id d19mr12392700lfe.519.1638454661909;
        Thu, 02 Dec 2021 06:17:41 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Dec 2021 06:17:41 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     Bjorn Helgaas <bhelgaas@google.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v1 10/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 host
Date:   Thu,  2 Dec 2021 17:17:26 +0300
Message-Id: <20211202141726.1796793-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PCIe0 host on SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index 30ebafe9c6d2..017b0120c5d9 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,6 +346,10 @@ vreg_l3h_0p91: ldo3 {
 	};
 };
 
+&pcie0 {
+	status = "okay";
+};
+
 &pcie0_phy {
 	status = "okay";
 	vdda-phy-supply = <&vreg_l5b_0p88>;
-- 
2.33.0

