Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26E2126D674
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 10:26:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726408AbgIQI0p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 04:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726399AbgIQI0l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 04:26:41 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46620C061756
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 01:26:41 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id d19so759609pld.0
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 01:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Oi8lbN5PJDRQE+iSBWgwU9oDc6wIuFWvYfEWRaH/5pI=;
        b=M9H5ftN4oUtIuuJDpSKHEGjzTr2hAZfkTMzi1TYBt5HhoiYhKLQdpODJqOWZGu7KPO
         Qfh5YBhZ+xCfhBsQq0Z4wl+T3e4zywr675DlkDjpNs8/KUhYhYVMIv8n0wEU0V4kmaGX
         p+uDT85RvLumaoRSR+CjQaxLsoBPVcSjraQgWeSCWTgeHmKIgwTF/a0WQHwFzNOIN3Yq
         nmpaLDAEt63oFVY8dGVgOEzDP0GzqtXR9yIL4ic9Rs2tC3RWLdjU/dDhJi3kDOjPFvGH
         bqv3Lx3mTYbKoyKhMIoFqQBFeEC6QS8+cTQTGHo6Dx8TMnVB1i+aFGf8EYtJt+QEAssN
         KWcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Oi8lbN5PJDRQE+iSBWgwU9oDc6wIuFWvYfEWRaH/5pI=;
        b=UlquEmDqoXlDt0vUMqQxBbZ7MXaxocjxjW+MP0QdiHLCxZV/1toSndbME/5pi6VqKh
         DM80X+LH8xMmhH5DltfYWOWjZGQnDuTZ0ubeU8Edl/DklXb49EtOdVb1zi2cw3GIXJH5
         Pxqk0AsXL3vHQeDqXJ8xWbAc6gKPN1vxtDKGliiV+rFCbGjoEPc8gwC5xj0ogLgsIHJo
         NBsN+8DmVrrnfdfvWLnNx/1okZi8GSRjNGcSJycWt9u/yEF7cmHUY3MCcyso9k7R2P8f
         dm2E2D5mXBHVu8YwzrIgNAGIl8ZAV8WDcGXbBBY9y4Zx4GPxgmJD0CfuYO1XOT4ADAzu
         cDsQ==
X-Gm-Message-State: AOAM533Ejkaj3cSr4e0qjJp+QZU+XjXHC/yrveGS5bNyzRmjW3lf2KXZ
        AMVqEyqOakSUusoDmAuW2KBw
X-Google-Smtp-Source: ABdhPJxyAvFUcLLGLA+PHHamxiaJgNx9inQLxxyB39a/BJ6NeF3R8QCWDEDUgz3MUXumpKfbrCmZHQ==
X-Received: by 2002:a17:90a:160f:: with SMTP id n15mr7325454pja.75.1600331200762;
        Thu, 17 Sep 2020 01:26:40 -0700 (PDT)
Received: from Mani-XPS-13-9360.localdomain ([103.59.133.81])
        by smtp.gmail.com with ESMTPSA id g129sm8233194pfb.9.2020.09.17.01.26.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Sep 2020 01:26:40 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dmitry.baryshkov@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: qrb5165-rb5: Add USB support
Date:   Thu, 17 Sep 2020 13:56:22 +0530
Message-Id: <20200917082622.6823-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200917082622.6823-1-manivannan.sadhasivam@linaro.org>
References: <20200917082622.6823-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

RB5 makes use of the two USB controllers onboard. USB0 is connected
to the Type C port and USB1 is connected to USB3.1 HUB which exposes
following downstream ports:

* 2 Type A ports
* 2 HS/SS ports on the expansion connector
* USB to LAN device

Hence, enable these two controllers with the required PHYs.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 46 ++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 1528a865f1f8..e020013c1add 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -684,3 +684,49 @@
 	vdda-pll-supply = <&vreg_l9a_1p2>;
 	vdda-pll-max-microamp = <18800>;
 };
+
+&usb_1 {
+	status = "okay";
+};
+
+&usb_1_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_1_hsphy {
+	status = "okay";
+
+	vdda-pll-supply = <&vreg_l5a_0p88>;
+	vdda33-supply = <&vreg_l2a_3p1>;
+	vdda18-supply = <&vreg_l12a_1p8>;
+};
+
+&usb_1_qmpphy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l9a_1p2>;
+	vdda-pll-supply = <&vreg_l18a_0p92>;
+};
+
+&usb_2 {
+	status = "okay";
+};
+
+&usb_2_dwc3 {
+	dr_mode = "host";
+};
+
+&usb_2_hsphy {
+	status = "okay";
+
+	vdda-pll-supply = <&vreg_l5a_0p88>;
+	vdda33-supply = <&vreg_l2a_3p1>;
+	vdda18-supply = <&vreg_l12a_1p8>;
+};
+
+&usb_2_qmpphy {
+	status = "okay";
+
+	vdda-phy-supply = <&vreg_l9a_1p2>;
+	vdda-pll-supply = <&vreg_l18a_0p92>;
+};
-- 
2.17.1

