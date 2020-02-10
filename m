Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 077B71573E9
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2020 13:07:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727662AbgBJMHb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Feb 2020 07:07:31 -0500
Received: from mail-wr1-f65.google.com ([209.85.221.65]:43520 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727632AbgBJMHb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Feb 2020 07:07:31 -0500
Received: by mail-wr1-f65.google.com with SMTP id r11so4102718wrq.10
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2020 04:07:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YJAqrsEVC7Ekr/URFS4yzXVcz6M9nFcDb80ARG3rIgM=;
        b=PfNkBn3UuJhxiOWb3aj4wanPHWVp9XtdYGN6NfAJMzbkSIF7NAJJIkFo8FA3S+b3MO
         NQYy6aWz3Lbj6qi4fnoYiLuBQ5ZhsZt0kZP9fpcUGZ6vRj4POlPeYmyzVnr4PfxXJqN1
         Ph374vpGJQNTy4aTV32qf/DbA93ofj0hP05aLqPbTKLwLldShTVGENfn1YeqG1WK7qLS
         B+Tfc3+JvFIa5QFi+ntyAJ+dlKXkUzTeQHOxnyxV+QmiyskZVvAoG95heAPIjp78HFDt
         uJprhIxDJNU93xzVP2cgua4XG581nXWaagdVQznhNxz9I+2Nfjn6Lm6b3I6865eVPwlr
         nacg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YJAqrsEVC7Ekr/URFS4yzXVcz6M9nFcDb80ARG3rIgM=;
        b=WSpFnZgqbZaBAQ56t8kk1V21BCEAyv3O/rXOt6djUBZ1rzqLiN28XhRLvOiaHElgQk
         rKaUGWsIFgqynXdws0lzsPoWU6fvSX1dF4j26ZyHByYyoW5PYNjYQl/TtNoA8mY77LsV
         fEHYo7iAkEPrgF28p4ChLkpWFowKAcSuL1ncIzElIrIN3alzdke3d6TjJ9jVrPNeSW/T
         e/SP4LM5uxGkJvzsi2Za7zmd5OAYRPYD4PxKgUj4zjP7az7zcUqoBVJI6GNAkifzFSei
         pctJMfon/zCxpd5X4KbbPaBd+8zITpWIeflYaJXuftPEN6xyA4PzmIRlsOUl5Ev1E8mh
         qa3A==
X-Gm-Message-State: APjAAAWiYW/7AuVEBLFWn3Dra/j8nQo3Si17S9emRgZnyo5Jr5wExNcU
        Q6th2sqRs+saBoZtzJIHjGpx9w==
X-Google-Smtp-Source: APXvYqwSKDoRdPspygko2oEkUZgUoMMd2zIHMed2NPqd2qqb2IGVmkSGSqG6xQbYjovFrI/O1hlrZA==
X-Received: by 2002:adf:f58c:: with SMTP id f12mr1655330wro.22.1581336449216;
        Mon, 10 Feb 2020 04:07:29 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id i204sm293124wma.44.2020.02.10.04.07.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2020 04:07:27 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        gregkh@linuxfoundation.org, jackp@codeaurora.org, balbi@kernel.org,
        bjorn.andersson@linaro.org, robh@kernel.org
Cc:     linux-kernel@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH v6 07/18] dt-bindings: usb: dwc3: Add a gpio-usb-connector example
Date:   Mon, 10 Feb 2020 12:07:12 +0000
Message-Id: <20200210120723.91794-8-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210120723.91794-1-bryan.odonoghue@linaro.org>
References: <20200210120723.91794-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A USB connector should be a child node of the USB controller
connector/usb-connector.txt. This patch adds an example of how to do this
to the dwc3 binding descriptions.

It is necessary to declare a connector as a child-node of a USB controller
for role-switching to work, so this example should be helpful to others
implementing that.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Acked-by: Felipe Balbi <balbi@kernel.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/usb/dwc3.txt | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/dwc3.txt b/Documentation/devicetree/bindings/usb/dwc3.txt
index 66780a47ad85..4e1e4afccee6 100644
--- a/Documentation/devicetree/bindings/usb/dwc3.txt
+++ b/Documentation/devicetree/bindings/usb/dwc3.txt
@@ -121,4 +121,12 @@ dwc3@4a030000 {
 	interrupts = <0 92 4>
 	usb-phy = <&usb2_phy>, <&usb3,phy>;
 	snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
+
+	usb_con: connector {
+		compatible = "gpio-usb-b-connector";
+		id-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
+		vbus-supply = <&usb3_vbus_reg>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb3_id_pin>, <&usb3_vbus_pin>;
+	};
 };
-- 
2.25.0

