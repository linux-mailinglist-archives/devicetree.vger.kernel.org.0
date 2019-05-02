Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 95A5E11080
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 02:14:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726225AbfEBAON (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 20:14:13 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:39922 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726209AbfEBAON (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 20:14:13 -0400
Received: by mail-pf1-f194.google.com with SMTP id z26so215182pfg.6
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 17:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=CZXd7bu50ce7AYprUctVcayYE5p6uwU2diY6OgRXDUc=;
        b=z6pk+eo55Wg0ynWzV3ZjcdA3Kid/IP7lJfz5fI+cAMGRt9sxRkZqxePj/p9SIQ1ZpB
         K0qHCExH9cT74vIlKSsYEbRshW+UoIvljUHl2kisgiK6qExYWTdKxCdhtaQiFhcHSZwn
         jFLmE2mFOOd9uf30TUsLOgZJOKczb1GFrt6dUH0gBFjwVGUrylLvepSaQLiJG7orwdyJ
         tWmnlZmiFTav9N7NjtUubSBOvYK7yFWL+pmIF2jKP431HfYXZDtmAcnRpIjnsqbqqXdx
         Lh45qFk+Gndgkm1qw9FgDomCeVlcWvkiTJLkKVBId/RyeDgAzwG1wgZ1d1lCBPPWtnXq
         EMGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=CZXd7bu50ce7AYprUctVcayYE5p6uwU2diY6OgRXDUc=;
        b=OhGsw2wsxxslOknihaGVV6mdBBI0GDrM/Vw1VAIoPTR7zo+RVWIsBeMsIb85rjbbSH
         Hv2w3K0lstu8UqbkfK76S5aMxPHdKyAm0DOM1Ef5H/5s424lKSp+j+bDPIHmGpZdsmdn
         S9sASzM9CBgJz9Fs0YKEsn27Y2cVVsCkeNa1Jjor3QESjyC9SUEEFuX7TWVsFZ9dxz6u
         7hrhdUg3nYNyzkA6mhkn9CD64bouHUUgVeC6/mZmpMOAe8Nv1+boQM2cek4VfZ0I67AL
         uC/8JKiEQVrwhSNGEe/sI8koUcKbloCf9AWieHUdc3o4ynODaRrJQfipcaxCvt56Wl0Z
         f17A==
X-Gm-Message-State: APjAAAVAjmBiKvDgCjUc1JENp5gBxalh0moDb0iG8bPVxcrsedqXMHg+
        VBG4NR8MCPStXw8Z228uSRZo297kEh4=
X-Google-Smtp-Source: APXvYqy62m1OzKj5XM5bSXOmiuRFVcx1Ud9cAHEZC0ysdFyQ7V7XYLm46o1ioGRhjieAxI2CZ5Sr8g==
X-Received: by 2002:a63:dd02:: with SMTP id t2mr830810pgg.434.1556756051785;
        Wed, 01 May 2019 17:14:11 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id z9sm2329695pga.92.2019.05.01.17.14.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 17:14:10 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: phy: Add binding for Qualcomm PCIe2 PHY
Date:   Wed,  1 May 2019 17:14:05 -0700
Message-Id: <20190502001406.10431-2-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190502001406.10431-1-bjorn.andersson@linaro.org>
References: <20190502001406.10431-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm PCIe2 PHY is a Synopsys based PCIe PHY found in a number of
Qualcomm platforms, add a binding to describe this.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v2:
- Add #clock-cells

 .../bindings/phy/qcom-pcie2-phy.txt           | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt

diff --git a/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt b/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
new file mode 100644
index 000000000000..30064253f290
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
@@ -0,0 +1,42 @@
+Qualcomm PCIe2 PHY controller
+=============================
+
+The Qualcomm PCIe2 PHY is a Synopsys based phy found in a number of Qualcomm
+platforms.
+
+Required properties:
+ - compatible: compatible list, should be:
+	       "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy"
+
+ - reg: offset and length of the PHY register set.
+ - #phy-cells: must be 0.
+
+ - clocks: a clock-specifier pair for the "pipe" clock
+
+ - vdda-vp-supply: phandle to low voltage regulator
+ - vdda-vph-supply: phandle to high voltage regulator
+
+ - resets: reset-specifier pairs for the "phy" and "pipe" resets
+ - reset-names: list of resets, should contain:
+		"phy" and "pipe"
+
+ - clock-output-names: name of the outgoing clock signal from the PHY PLL
+ - #clock-cells: must be 0
+
+Example:
+ phy@7786000 {
+	compatible = "qcom,qcs404-pcie2-phy", "qcom,pcie2-phy";
+	reg = <0x07786000 0xb8>;
+
+	clocks = <&gcc GCC_PCIE_0_PIPE_CLK>;
+	resets = <&gcc GCC_PCIEPHY_0_PHY_BCR>,
+	         <&gcc GCC_PCIE_0_PIPE_ARES>;
+	reset-names = "phy", "pipe";
+
+	vdda-vp-supply = <&vreg_l3_1p05>;
+	vdda-vph-supply = <&vreg_l5_1p8>;
+
+	clock-output-names = "pcie_0_pipe_clk";
+	#clock-cells = <0>;
+	#phy-cells = <0>;
+ };
-- 
2.18.0

