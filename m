Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 653D11C0487
	for <lists+devicetree@lfdr.de>; Thu, 30 Apr 2020 20:17:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726545AbgD3SRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Apr 2020 14:17:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1725844AbgD3SRy (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Apr 2020 14:17:54 -0400
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54BE4C035494
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2020 11:17:53 -0700 (PDT)
Received: by mail-pf1-x443.google.com with SMTP id z1so204904pfn.3
        for <devicetree@vger.kernel.org>; Thu, 30 Apr 2020 11:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4e5cFjiNfDap07a6Nfxpdl1UXdqOkxC++rr9/Mc9BPc=;
        b=dmGY2UxEwcZyt7nI6u+U0VG13V/t96oiOFdoFGSDon+/un/GuNmXc2KuVJK2BxDNWu
         NeZsQMDtHTLrDWONVOuXyZLiLi+5tBTDJr4eS4zxAs/ADkPYAhLYEsooIhz8My8ARUDQ
         kwpMRGavs4TMkxiYSgnpAqyXIicxgnREO9NcYTJp4CkFwpJAjdEy9X+gMQxybJUVgCg0
         I7uiE007yjKZ41fGk9Xw0vN7lLnB1MTDOFLH0h0TQysitJvEUWFhvUxuIbaAhgEHggen
         YsAGCsTNyELi4I2lURjo0NNQ2WnprWWI/yi++tNaKg7ZB6BvQxBYIrtuqSBpp7uvyujV
         a8gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4e5cFjiNfDap07a6Nfxpdl1UXdqOkxC++rr9/Mc9BPc=;
        b=VDP1tlSiIxU1EAJWeei5gK0vKMaj5eYDQO4y+HbLr4BEVlZHdfFy8/IKzC/tb+nIot
         3tPKPsM8OgLHt0S2jtJHDnITO8ueVICSHvFB/eUaVWtE0vs0rgTVD7MIH5ZYXZd7b3lO
         PNks9BYKzaMjhAqBD/nZI4yyq48F5hP3VngLA7NFzNOY78fRQf7iiQ5ItFN39aYPtViZ
         JHQD8KOKis//egnU0V7JgaedG5Es2KLI6lN89M/1uGd0kLtvFW0PWMiJsPffiihxgwHz
         SupvBaCHhJD9Zk4Ow6mz7JPrub8lS3kqXGsmARUk+fllVbdI0hpSEJFkyiAhAJC59kEG
         he6w==
X-Gm-Message-State: AGi0PuYvyEy4mhW+d5gBclcCz/Ch9NJehfnJCPE+hVymc+woEZXXHZsb
        lx41WgfA5K92EaVKUvKSm2+Nng==
X-Google-Smtp-Source: APiQypLYMpMYYbyXzJla8VvbIOxLhP2i6vpkoVDgCiLbpmpBmrE/HRcq00kHnwAD9Tex0mJyb+jKvg==
X-Received: by 2002:a63:6f07:: with SMTP id k7mr219742pgc.274.1588270672604;
        Thu, 30 Apr 2020 11:17:52 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id 14sm415735pfy.38.2020.04.30.11.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2020 11:17:51 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sm8250: Add TLMM pinctrl node
Date:   Thu, 30 Apr 2020 11:17:16 -0700
Message-Id: <20200430181716.3797842-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the TLMM pinctrl node for SM8250 and reserve pins 28-31 and 40-43 on
the MTP as firmware does not allow Linux to touch these pins.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts |  4 ++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi    | 15 +++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
index 2adb01ea276c..0c6b936be471 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sm8250-mtp.dts
@@ -348,6 +348,10 @@ &qupv3_id_1 {
 	status = "okay";
 };
 
+&tlmm {
+	gpio-reserved-ranges = <28 4>, <40 4>;
+};
+
 &uart2 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 7050adba7995..9867b0da9d8e 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -491,6 +491,21 @@ tcsr_mutex_regs: syscon@1f40000 {
 			reg = <0x0 0x01f40000 0x0 0x40000>;
 		};
 
+		tlmm: pinctrl@f100000 {
+			compatible = "qcom,sm8250-pinctrl";
+			reg = <0 0x0f100000 0 0x300000>,
+			      <0 0x0f500000 0 0x300000>,
+			      <0 0x0f900000 0 0x300000>;
+			reg-names = "west", "south", "north";
+			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			gpio-ranges = <&tlmm 0 0 180>;
+			wakeup-parent = <&pdc>;
+		};
+
 		timer@17c20000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
-- 
2.24.0

