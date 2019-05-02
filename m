Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 930591109E
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 02:20:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726194AbfEBAUT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 May 2019 20:20:19 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:40386 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726349AbfEBAUC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 May 2019 20:20:02 -0400
Received: by mail-pf1-f194.google.com with SMTP id u17so220116pfn.7
        for <devicetree@vger.kernel.org>; Wed, 01 May 2019 17:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=E3Sj1qJb0z4ITNAEehqfID3UnkAx5s/XXWNjkKffQfU=;
        b=zEpyg9pbCcfkvwFW2lmkHaYw4yyiwzQL+VAJlGltUoQXTJpPE5AFN2bRZntv/Ka7l8
         5MvCCEp1tfaTmDKpy5J+tD2ONsTTPuJ5qVu9DeGAZ+wDBBXfKyBpMwsFcVNVuzTgdOOz
         yJ9d/A2FJ6gyMgXOKKfMjmNcBz7LFRiEL+wUpDVX7KPqMl0EDqZjjiAxG012mulIwjVs
         82yBANyzLl1OSZdyQv9TXoSJVXXu8+n8nhYdEpCPDo/08voTOwWgNb1RE668luqwxHVz
         aXH9ZeBXmWnvTB3wVZTkI0VtEqkxe82nPd4IjwwXOpg0AsHZ1CgH5ihCzjWaxBfsGsuz
         KLiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=E3Sj1qJb0z4ITNAEehqfID3UnkAx5s/XXWNjkKffQfU=;
        b=gDkHZqg8HwpK3I5lsTl2GGgE8DpGutdKD/Y9p2NPAhPnZcv68RmEwXLKrqAfhZR9Ii
         LoJDUrVasoO/Tc7JXJKvyLc/rtdA6cANO1lF5L8y/XffpGyq+Gl7A1G803IyPKd74uUo
         GobI7GcP9NG1xcsLXspn9zucLyfJqgl1FP5JkSlvhABVKhzqOjnMqPFocgqZShgA0obT
         Wn7Wzpn6IQcQgqtmbBYz1Sp5ZG1ox+5qs3TK4gFfpS4uA50bC3zqfgRVl+0xYlSSXU5n
         Bp5awSpm46ZMP7MmdKwJsdLv+GsPGV71wxNxPOovEJHIQEfq/Xx17dg/ADquaZDOOWuO
         mwRg==
X-Gm-Message-State: APjAAAX9IKY6XrHGN/lkJndYPmwp+TZ634J2udoiAo1dkHCucQnZDKLo
        3mgeh16g3kiDEmFbbdShV1Qu9g==
X-Google-Smtp-Source: APXvYqyuKZju222vPHwWFWzBfL0wmEdkJgGIUuUpI5WGtfe21pDlwonXurw15SfiKQKXw3bnYyb5Gg==
X-Received: by 2002:a63:ed10:: with SMTP id d16mr816767pgi.75.1556756401822;
        Wed, 01 May 2019 17:20:01 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id s198sm36927534pfs.34.2019.05.01.17.20.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 May 2019 17:20:01 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: PCI: qcom: Add QCS404 to the binding
Date:   Wed,  1 May 2019 17:19:54 -0700
Message-Id: <20190502001955.10575-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190502001955.10575-1-bjorn.andersson@linaro.org>
References: <20190502001955.10575-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Qualcomm QCS404 platform contains a PCIe controller, add this to the
Qualcomm PCI binding document. The controller is the same version as the
one used in IPQ4019, but the PHY part is described separately, hence the
difference in clocks and resets.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v2:
- None

 .../devicetree/bindings/pci/qcom,pcie.txt     | 25 +++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index 1fd703bd73e0..ada80b01bf0c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -10,6 +10,7 @@
 			- "qcom,pcie-msm8996" for msm8996 or apq8096
 			- "qcom,pcie-ipq4019" for ipq4019
 			- "qcom,pcie-ipq8074" for ipq8074
+			- "qcom,pcie-qcs404" for qcs404
 
 - reg:
 	Usage: required
@@ -116,6 +117,15 @@
 			- "ahb"		AHB clock
 			- "aux"		Auxiliary clock
 
+- clock-names:
+	Usage: required for qcs404
+	Value type: <stringlist>
+	Definition: Should contain the following entries
+			- "iface"	AHB clock
+			- "aux"		Auxiliary clock
+			- "master_bus"	AXI Master clock
+			- "slave_bus"	AXI Slave clock
+
 - resets:
 	Usage: required
 	Value type: <prop-encoded-array>
@@ -167,6 +177,17 @@
 			- "ahb"			AHB Reset
 			- "axi_m_sticky"	AXI Master Sticky reset
 
+- reset-names:
+	Usage: required for qcs404
+	Value type: <stringlist>
+	Definition: Should contain the following entries
+			- "axi_m"		AXI Master reset
+			- "axi_s"		AXI Slave reset
+			- "axi_m_sticky"	AXI Master Sticky reset
+			- "pipe_sticky"		PIPE sticky reset
+			- "pwr"			PWR reset
+			- "ahb"			AHB reset
+
 - power-domains:
 	Usage: required for apq8084 and msm8996/apq8096
 	Value type: <prop-encoded-array>
@@ -195,12 +216,12 @@
 	Definition: A phandle to the PCIe endpoint power supply
 
 - phys:
-	Usage: required for apq8084
+	Usage: required for apq8084 and qcs404
 	Value type: <phandle>
 	Definition: List of phandle(s) as listed in phy-names property
 
 - phy-names:
-	Usage: required for apq8084
+	Usage: required for apq8084 and qcs404
 	Value type: <stringlist>
 	Definition: Should contain "pciephy"
 
-- 
2.18.0

