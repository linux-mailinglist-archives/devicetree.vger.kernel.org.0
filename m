Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D3A36474E5A
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 23:59:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235132AbhLNW7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 17:59:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235047AbhLNW7K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 17:59:10 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF1DAC06173F
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 14:59:09 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id l7so30614702lja.2
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 14:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uIA3ifLQZgBvpxUOMDtRJH8f89HJ9IrhQ5upk51MF9Q=;
        b=Hbk81jbBWzzZySvKhC2/9pPEMJi0e0d5HTobngzvbXKIhB6NXmauh4Wgij1d+aLaeL
         k9qn/bxmtzqbSz6+tngDb1kexxJ6bXiNmJ4ao6ZxGih3nHjrENR98B6DDx1GOJuzvPcq
         76yP+xijpmyLSP68BC4VZ38vDVriAd9/58rPlSP0ZXYHvJbw6UnZ3sIZE6cnlr13dRfF
         AbHoBLETCChx8NbRdOltD7QPXsNraFJxFCGGJgeKW1ZY50xQI41sYlZKLbmq5k327+59
         Yhgj8a9pQ6LB8WwONBvDLec2jJQy9+CEmJaM/ZicTnQ/YrnogAnaqlhSeBgaoAwjGt9O
         uBmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uIA3ifLQZgBvpxUOMDtRJH8f89HJ9IrhQ5upk51MF9Q=;
        b=M1jL2BOqPdIDZCBAPl9zU+Xub6rDNbfg/bEYAvzQMmCbg5lgcfzwaT7zkXX1vVkTxY
         zQ6c2mi7XuqaGKNnIfDScImDjSKGbUXb0+Mm+fM/G3Pa2fAUq0pbqk+9XL3FU+THWm+x
         V3m3TjR7HcrEG+NWH25pMwVyayJEss99pmSqEKgYOzM42d8tXTNJjMZw29ENeo9jQRMG
         8GiwP3GAYG4WLwpr+mkHgWX2DhbBZiPCNACNxfseAt9D7BcoV+Phn2u0EsAn35QiGesG
         uMRy8Winx1/Z53328BvBg1zSWF3T1E/2LdTr9QQrGHDxT6qfbGNnw5LGyP4oTRsXMWhW
         Yo0A==
X-Gm-Message-State: AOAM532pQJRbP6E/NiffshNTKUF3BA6XiY9IJ46o8V0pkl6FjwL726kN
        sipP4vcUH1vKBrErUpnsbxnggQ==
X-Google-Smtp-Source: ABdhPJyccFBgO1amcfDH5C00rIP1MKZeIJ1ovoQM577J+Iu6wGkMn8SG3pvsIUlqNJHgJ2nor2iYjw==
X-Received: by 2002:a2e:94e:: with SMTP id 75mr7375813ljj.494.1639522748100;
        Tue, 14 Dec 2021 14:59:08 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Dec 2021 14:59:07 -0800 (PST)
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
Subject: [PATCH v4 09/10] arm64: dts: qcom: sm8450-qrd: enable PCIe0 PHY device
Date:   Wed, 15 Dec 2021 01:58:45 +0300
Message-Id: <20211214225846.2043361-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable PCIe0 PHY on the SM8450 QRD device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
index cd74b97b9018..e02d3c86e365 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
@@ -346,10 +346,20 @@ vreg_l6e_1p2: ldo6 {
 	};
 };
 
+&pcie0_phy {
+	status = "okay";
+	vdda-phy-supply = <&vreg_l5b_0p88>;
+	vdda-pll-supply = <&vreg_l6b_1p2>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
 
+&qupv3_id_1 {
+	status = "okay";
+};
+
 &tlmm {
 	gpio-reserved-ranges = <28 4>, <36 4>;
 };
-- 
2.33.0

