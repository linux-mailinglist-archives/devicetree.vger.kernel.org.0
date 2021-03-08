Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6465233144D
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:13:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbhCHRMj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:12:39 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33551 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230078AbhCHRMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:12:09 -0500
Received: from mail-wm1-f69.google.com ([209.85.128.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJOL-0003Mt-MB
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:10:01 +0000
Received: by mail-wm1-f69.google.com with SMTP id z26so5233859wml.4
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:10:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k4L5ptXi6Ff8KPlgqMtzZ9yjH3MQlq6STx7WRAfv4xo=;
        b=PPP4cmiFBGKq8eALkMAphMLecc5L13WZhVtxgtpbNYNbXub2wjBeYIawzGeF0v5yH4
         55znGp1xOuexqGhgnXUqXnl39qnySaPQFcIg6crdRxtH1E5DzWIekmBU2yrKv0bA5gPD
         UtovegHfW22OZDw3PHVyzEGxg5vqzdUDEDuWmRHanXqj+I0ZAetzX4u/iIigeEFZcDCc
         6dzV/94UKBgTDaD9tDIPIhSTRtxoNxxVuvB9fXJuBKl9b/3sTLl9tv8rYlelHnyj9x2Y
         BSxrhviZkqmhfSVoTi+MEsSgYdrus7HTVyPRxM9X/47oEoZf/OQckez1J30wYL/vyePp
         dLow==
X-Gm-Message-State: AOAM5300PnwnLYTBXNiELWpKRov83LpFGDLa+A6a3aF63vpYq8UiDkwW
        WymhFX228F4L2iZFNldxhaAxgofpwf3k9nRmsrT3vapcUx4xuXXN4xWaAs42wb4UUmBisiwzWi7
        bxPfNhMUS9kwB8wY90cZwfj06dUa6ysN0evODiAQ=
X-Received: by 2002:adf:fe09:: with SMTP id n9mr24158672wrr.104.1615223401335;
        Mon, 08 Mar 2021 09:10:01 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyPagpGsVnOaCHQeGSb/PwYZWcGo1SGrv+aPP1pQ4LRem2ryUxhQF1clMRSwozlnOT1O+X2Xg==
X-Received: by 2002:adf:fe09:: with SMTP id n9mr24158648wrr.104.1615223401185;
        Mon, 08 Mar 2021 09:10:01 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:10:00 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 06/10] arm64: dts: intel: socfpga_agilex: move usbphy out of soc node
Date:   Mon,  8 Mar 2021 18:09:41 +0100
Message-Id: <20210308170945.161468-7-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

The usual usb-nop-xceiv USB phy node should be under root node, to fix
dtc warning:

    arch/arm64/boot/dts/intel/socfpga_agilex.dtsi:472.21-476.5:
        Warning (simple_bus_reg): /soc/usbphy@0: missing or empty reg/ranges property

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
index f46d678ba775..103de0a91e60 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex.dtsi
@@ -124,6 +124,11 @@ timer {
 			     <1 10 0xf08>;
 	};
 
+	usbphy0: usbphy {
+		#phy-cells = <0>;
+		compatible = "usb-nop-xceiv";
+	};
+
 	soc {
 		#address-cells = <1>;
 		#size-cells = <1>;
@@ -469,11 +474,6 @@ uart1: serial1@ffc02100 {
 			status = "disabled";
 		};
 
-		usbphy0: usbphy@0 {
-			#phy-cells = <0>;
-			compatible = "usb-nop-xceiv";
-		};
-
 		usb0: usb@ffb00000 {
 			compatible = "snps,dwc2";
 			reg = <0xffb00000 0x40000>;
-- 
2.25.1

