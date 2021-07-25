Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2A723D4B44
	for <lists+devicetree@lfdr.de>; Sun, 25 Jul 2021 06:02:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230260AbhGYDWD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jul 2021 23:22:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230162AbhGYDV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jul 2021 23:21:59 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A673C061798
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 21:02:29 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id z6-20020a9d24860000b02904d14e47202cso6430434ota.4
        for <devicetree@vger.kernel.org>; Sat, 24 Jul 2021 21:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=orrTlR1e5ArvDErw47DwuFZ1ar2lNFZjVJ9JvZPgiW8=;
        b=kopwAIC3KiN5sXTVUjiHSr0li0+n7LFh+IXMJE69HuHuEUlNZRM6gDyIFhbh7Y1wG1
         Al4V5iAYMPmr8ocizfYqNh/9C9ylTr2QL0O2mf9Uq/AnwrgRrVCF6Jn5cE2acBw6rt2i
         hwv94VNhy6HH2IJvPV3a31oztBcj26bnjTx7BIINt8XkXut3I304FlQ1rpXCuWytn2RU
         +sDLI/CJjZNWZqB3t7U7JtnmU2E5W6qL7LThj45Ne/jlTqTouC6UbixdW0DA2SIJF/Oj
         Pfo7MP1/fzg3Rgu9tMm2Bc7PzIuzwuEg/OePzj+N/Ep+9wpHnUiZolhYF99syQ+7mHqP
         TD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=orrTlR1e5ArvDErw47DwuFZ1ar2lNFZjVJ9JvZPgiW8=;
        b=pz093Rd+N1ziSl6Z5G8NKNc6RMtiq16Vyqa7fvlvwKYAz4d3xDYIlzum/+KZAy6Ggr
         swNyNM6fb6enevzOOrxPGGz/hRCtkugz+jdTfOADEBQZ/1pIod6bwn3PazrhvjQRu60+
         Vj7XB88TeotWvXsmU4+y8JIAddDFzyQQPLr5PTYXL9FErDbTO4dByY5P2EVekL126HDL
         szkibcoqiQKpcyZ7r8sYhEVG66XfZyeo2ybJRfXtrxnKxRWksNG0J9o8uoY4CkSI+fB8
         LGVtwtr7ik+IfZeuqAiC8zijpuO3eEpzIg+VTWZNXfSXQobx/K/LoPCrrLmd1iuVw2q4
         56zA==
X-Gm-Message-State: AOAM533j1aEFmNm7dxCao/R4r6b80MvtQxEEK8mAHAqFafxpeprHgfI9
        DECf0Qmz9goVAoRs2TpGlaDmng==
X-Google-Smtp-Source: ABdhPJwqjFvCZTbT7aln3g5NxlKjHCP2fTz/s4KxT7O4V4+3AH2dGm+KOGUYA0tuEmp3a+bwQarPOg==
X-Received: by 2002:a9d:6848:: with SMTP id c8mr7881086oto.364.1627185748341;
        Sat, 24 Jul 2021 21:02:28 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q20sm872910otv.50.2021.07.24.21.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jul 2021 21:02:27 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] PCI: qcom: Add sc8180x compatible
Date:   Sat, 24 Jul 2021 21:00:38 -0700
Message-Id: <20210725040038.3966348-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210725040038.3966348-1-bjorn.andersson@linaro.org>
References: <20210725040038.3966348-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SC8180x platform comes with 4 PCIe controllers, typically used for
things such as NVME storage or connecting a SDX55 5G modem. Add a
compatible for this, that just reuses the 1.9.0 ops.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/pci/qcom,pcie.txt | 5 +++--
 drivers/pci/controller/dwc/pcie-qcom.c              | 1 +
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index 3f646875f8c2..a0ae024c2d0c 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -12,6 +12,7 @@
 			- "qcom,pcie-ipq4019" for ipq4019
 			- "qcom,pcie-ipq8074" for ipq8074
 			- "qcom,pcie-qcs404" for qcs404
+			- "qcom,pcie-sc8180x" for sc8180x
 			- "qcom,pcie-sdm845" for sdm845
 			- "qcom,pcie-sm8250" for sm8250
 			- "qcom,pcie-ipq6018" for ipq6018
@@ -156,7 +157,7 @@
 			- "pipe"	PIPE clock
 
 - clock-names:
-	Usage: required for sm8250
+	Usage: required for sc8180x and sm8250
 	Value type: <stringlist>
 	Definition: Should contain the following entries
 			- "aux"		Auxiliary clock
@@ -245,7 +246,7 @@
 			- "ahb"			AHB reset
 
 - reset-names:
-	Usage: required for sdm845 and sm8250
+	Usage: required for sc8180x, sdm845 and sm8250
 	Value type: <stringlist>
 	Definition: Should contain the following entries
 			- "pci"			PCIe core reset
diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 8adcbb718832..3906e975d6db 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1597,6 +1597,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-ipq4019", .data = &ops_2_4_0 },
 	{ .compatible = "qcom,pcie-qcs404", .data = &ops_2_4_0 },
 	{ .compatible = "qcom,pcie-sdm845", .data = &ops_2_7_0 },
+	{ .compatible = "qcom,pcie-sc8180x", .data = &ops_1_9_0 },
 	{ .compatible = "qcom,pcie-sm8250", .data = &ops_1_9_0 },
 	{ }
 };
-- 
2.29.2

