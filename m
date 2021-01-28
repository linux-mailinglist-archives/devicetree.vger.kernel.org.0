Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90299307D26
	for <lists+devicetree@lfdr.de>; Thu, 28 Jan 2021 18:56:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231367AbhA1Rz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Jan 2021 12:55:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229831AbhA1Rya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Jan 2021 12:54:30 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8196BC06121C
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 09:52:42 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id f19so7411858ljn.5
        for <devicetree@vger.kernel.org>; Thu, 28 Jan 2021 09:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9xirdUoG4Ll4lVtpP53/4UjQ/mMXV3s/T44FiAusFTg=;
        b=HijFpgtDKzCt+F1Vszpyo4UAot2v3Wo7ywl19BCZmF6Jn1zYV92BJIoNi9APoJ5SR8
         pKszdSR2/6VZ0IiW5D6N3OZwYyPp1Fc2Wi8VRc8/H6RRFK2/T1xvtL6MbvBBnx81aUKo
         e17S/ZSA4UDGZqfwP3dghScK2HyDSDUvyd0N/u5zwME+lq4WSLzHMFwbeVGBBNDNfK9P
         vsC/g8N8kXlXWefcBQcJaNkt+kvGTg4CHdK6XqTpvf7MebRIJf0IAFnZ4gUF9YyijdP2
         4cF+Fe6UKf2xbLLTeNf+codZpf0Z4cbZJnBQ+lozrk8Q6pnN/fNXiL8xTQWKbJWF5mvD
         wNjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9xirdUoG4Ll4lVtpP53/4UjQ/mMXV3s/T44FiAusFTg=;
        b=q8SmCmBTEQtWodKlQyJhukJlRVQtILxnA9H4EIbZ6z1CKwtQHrHpfSbRCLChsaZjMw
         jA/j0T6yk2KAZe7pnCgecJV5kaDNL/QDUm1/aDwwNjvvD05wF1tB+CeEfolKzOIYohv0
         un0mZHyolDNs8h0wEtSpeH+mY4G+dMXiX/OSOhaXXxBxGfWuUqBGpTmu1+9d5yi1uXMM
         XCcejNOHNkyNBxmf2VkywZ/78cJBiuTeaRTA9W24mce2VZECvwFne9rgKVzxA3Ys0nGN
         rrJTJsDIJMl4bM2Nc7M1NTzj79kGuI+85l1W9wl1p6jr4HjUWHeC1EIjpVH83tsGOPk+
         nGVg==
X-Gm-Message-State: AOAM5329HC1+mn2Drjg8FYjTz8LXbQoNuWEqQbyx980sFwIWo0mTJ1iY
        KdpH7sV3x4H2n3ukJbrTnWwd2A==
X-Google-Smtp-Source: ABdhPJysn9iMUtZv0ooelD8ZTgrcs6z9oIPbqb0gRaA/8BdgTlXZ/020aKDq/p9mBFGXUP7W9C6wdA==
X-Received: by 2002:a2e:85ca:: with SMTP id h10mr247977ljj.474.1611856361059;
        Thu, 28 Jan 2021 09:52:41 -0800 (PST)
Received: from eriador.lan ([94.25.229.83])
        by smtp.gmail.com with ESMTPSA id w10sm2216119ljj.37.2021.01.28.09.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 09:52:40 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
Subject: [PATCH v2 5/5] arm64: dts: qcom: Add Bluetooth support on RB5
Date:   Thu, 28 Jan 2021 20:52:25 +0300
Message-Id: <20210128175225.3102958-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210128175225.3102958-1-dmitry.baryshkov@linaro.org>
References: <20210128175225.3102958-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Add Bluetooth support on RB5 using the onboard QCA6391 WLAN+BT chipset.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
[DB: added qca6391 power domain, removed s2f regulator]
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 29 ++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index b39a9729395f..c65c13994a86 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -19,6 +19,7 @@ / {
 	compatible = "qcom,qrb5165-rb5", "qcom,sm8250";
 
 	aliases {
+		hsuart0 = &uart6;
 		serial0 = &uart12;
 		sdhc2 = &sdhc_2;
 	};
@@ -689,6 +690,26 @@ &pm8150_rtc {
 	status = "okay";
 };
 
+&qup_uart6_default {
+	ctsrx {
+		pins = "gpio16", "gpio19";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	rts {
+		pins = "gpio17";
+		drive-strength = <2>;
+		bias-disable;
+	};
+
+	tx {
+		pins = "gpio18";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -1194,6 +1215,14 @@ wlan-en {
 	};
 };
 
+&uart6 {
+	status = "okay";
+	bluetooth {
+		compatible = "qcom,qca6390-bt";
+		power-domains = <&qca6391>;
+	};
+};
+
 &uart12 {
 	status = "okay";
 };
-- 
2.29.2

