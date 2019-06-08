Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DC0A73A1AD
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 21:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727569AbfFHTxy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jun 2019 15:53:54 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:34981 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727528AbfFHTxx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jun 2019 15:53:53 -0400
Received: by mail-pf1-f194.google.com with SMTP id d126so3043006pfd.2
        for <devicetree@vger.kernel.org>; Sat, 08 Jun 2019 12:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cj7hwuL+B8dKf3nXFes5L4nsY5TD2nAEfKuZSPiz0+4=;
        b=DqVEQQ0qFsYnIG8uabtLVuOh7gbjeLhQLjWcj40pXUS2k+xV6qp6VnnffBVYswPjb2
         rvpM+JYaQdZBVYAu102qaQJmZ3mTR1psimw70C7ravTtioLbJahthXDnOe3+Jaycbrps
         +y7TBPZc9KhbYPbdE9gQB2ir4EM/C6bW7UznaTAuGfSDhAYWt392APBE6eiZGo7y5YXe
         gEaSneURhJOtAAuh7WNUsyHOqxoLF5xGJ0QRjA3AE99GGPh4LxsUWYAQaN2MsHpMOqlp
         pvVY+Elza90ib9MUUAzgICMPyYoqJZ4doEk1FR2kCXzH8EyQA0NVvSIWTHCclI8xXOBz
         GY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cj7hwuL+B8dKf3nXFes5L4nsY5TD2nAEfKuZSPiz0+4=;
        b=dWtS6yV8tjjHQejBpDCdMJdKCNc89WyTwDRsmVn2htn7O9xWzqxSIClZnu2R65sDW+
         ag0LDjTf2Y03X/+XOpDHuq/iSUpMIdjyUl8Y/wcukOcrfX0nbqmsoxUM9V3Ab511AXgJ
         j7lCUhGWmS4XhcXqmL8Q6tJjhtVnl7kjEgwvYKJISj599wemkSGOeQmYw8/o4BTvQFgZ
         p7flmrQt0ZlhMCfbizlJLkuDyq5pr9qu+WzephTnmQC9WLojiJ5nM589e0JilxcKHf7l
         yoByWi/qFeYeg5toiAhKO47JpQGB1WAyAbI1umWESaz4dPGMxUUOOeRshzsimxOz6+xj
         yTQg==
X-Gm-Message-State: APjAAAUNw6souKKVCk9VcBzrKLCCYauXWDRPuwaFbNWUccKdZpUiIzpH
        hHXzzw6W+aPdl1qsgxlUitgk
X-Google-Smtp-Source: APXvYqwhEKeDmzhGZw7GVFoNhnBsVCcgoLu5WuCEMB4u5SVT61l8StIG8sJJYL+wCtfP9/L0lSmZ3Q==
X-Received: by 2002:a65:6383:: with SMTP id h3mr8674377pgv.452.1560023632862;
        Sat, 08 Jun 2019 12:53:52 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7185:fba9:ec1e:ad07:23ac:d3ee])
        by smtp.gmail.com with ESMTPSA id b35sm6034377pjc.15.2019.06.08.12.53.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Jun 2019 12:53:52 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     ulf.hansson@linaro.org, afaerber@suse.de, robh+dt@kernel.org,
        sboyd@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        thomas.liau@actions-semi.com, linux-actions@lists.infradead.org,
        linus.walleij@linaro.org, linux-clk@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 2/7] dt-bindings: mmc: Add Actions Semi SD/MMC/SDIO controller binding
Date:   Sun,  9 Jun 2019 01:23:12 +0530
Message-Id: <20190608195317.6336-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
References: <20190608195317.6336-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree binding for Actions Semi Owl SoC's SD/MMC/SDIO controller.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/mmc/owl-mmc.txt       | 37 +++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/owl-mmc.txt

diff --git a/Documentation/devicetree/bindings/mmc/owl-mmc.txt b/Documentation/devicetree/bindings/mmc/owl-mmc.txt
new file mode 100644
index 000000000000..a702f8d66cec
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/owl-mmc.txt
@@ -0,0 +1,37 @@
+Actions Semi Owl SoCs SD/MMC/SDIO controller
+
+Required properties:
+- compatible: should be "actions,owl-mmc"
+- reg: offset and length of the register set for the device.
+- interrupts: single interrupt specifier.
+- clocks: single clock specifier of the controller clock.
+- resets: phandle to the reset line.
+- dma-names: should be "mmc".
+- dmas: single DMA channel specifier
+
+Optional properties:
+- pinctrl-names: pinctrl state names "default" must be defined.
+- pinctrl-0: phandle referencing pin configuration of the controller.
+- bus-width: see mmc.txt
+- cap-sd-highspeed: see mmc.txt
+- cap-mmc-highspeed: see mmc.txt
+- sd-uhs-sdr12: see mmc.txt
+- sd-uhs-sdr25: see mmc.txt
+- sd-uhs-sdr50: see mmc.txt
+- non-removable: see mmc.txt
+
+Example:
+
+		mmc0: mmc@e0330000 {
+			compatible = "actions,owl-mmc";
+			reg = <0x0 0xe0330000 0x0 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cmu CLK_SD0>;
+			resets = <&cmu RESET_SD0>;
+			dmas = <&dma 2>;
+			dma-names = "mmc";
+			pinctrl-names = "default";
+			pinctrl-0 = <&mmc0_default>;
+			bus-width = <4>;
+			cap-sd-highspeed;
+		};
-- 
2.17.1

