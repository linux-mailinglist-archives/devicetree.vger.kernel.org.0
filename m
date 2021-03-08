Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 972EB33143A
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:11:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230446AbhCHRKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:10:37 -0500
Received: from youngberry.canonical.com ([91.189.89.112]:33323 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230457AbhCHRKH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:10:07 -0500
Received: from mail-wm1-f70.google.com ([209.85.128.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lJJOP-0003Sw-Me
        for devicetree@vger.kernel.org; Mon, 08 Mar 2021 17:10:05 +0000
Received: by mail-wm1-f70.google.com with SMTP id o9so2284708wmq.9
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:10:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PW2gwp+ApGkfA4Yw2lCHp6cW3AKSzP0k9Br5Vr8VeB8=;
        b=KFkXMwH/8IYDja/OQxgXqVdtVVydo/oNASyfKvi8SUxnRZyCBFHUgj4hcDzZIRihpe
         Kgx6oTl2NHCH1O2hxZ60Gx/BqO7Jmm5YjpK1Xz6E596M0/GcfGJJim8Wm9MPEWQVExv3
         8A0uvr2fIdhNIjswKJH4jegb0KcHkrLU01gUAy4gquCCGfE1FR8hYWy/HarKrQojvxS+
         ZJLaRKbGc4Nlg72SJv+5r4z+ChJPURSPDTzYTXap/1O5AtuRL+fsYP17dl9QW+jSrC87
         XWQLN9QIN98a+m4IFoHNgClYI85M1ERY8IzFAqWI2VxK9AqZYDRGwdNHj4CxdzrFzQBU
         wjTQ==
X-Gm-Message-State: AOAM533YFUyowdR6pvqmMcBrkFCAwVMIFzNj33sMVyDuTo9yF8nxaT8W
        vGtnO/hvLCPt6gOF7HK/4VWd/J0AZjiZk67es6JpbjdfoAjYPD/0cSvDQ94ctH6ua8QCKpMyyn3
        psBrMWeplU6QqOGeMbTMEw+DvAIocDNUUlvQjgzQ=
X-Received: by 2002:a5d:4688:: with SMTP id u8mr23783110wrq.39.1615223405495;
        Mon, 08 Mar 2021 09:10:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyngFHucjuFwjLrIfUgXmRE9UU0tfjT6g7o8cF8UxJ/wVkfhO8iMRULHVDy+UA6+IGoMpCOwQ==
X-Received: by 2002:a5d:4688:: with SMTP id u8mr23783090wrq.39.1615223405390;
        Mon, 08 Mar 2021 09:10:05 -0800 (PST)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id c11sm19568762wrs.28.2021.03.08.09.10.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:10:04 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, arm@kernel.org, soc@kernel.org,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND 2nd PATCH 10/10] arm64: dts: intel: socfpga_agilex_socdk_nand: align LED node names with dtschema
Date:   Mon,  8 Mar 2021 18:09:45 +0100
Message-Id: <20210308170945.161468-11-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
References: <20210308170945.161468-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Align the LED node names with dtschema to silence dtbs_check warnings
like:

    leds: 'hps0', 'hps1', 'hps2' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
index 58a827a5e83f..cc2dcabf34e3 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk_nand.dts
@@ -20,17 +20,17 @@ chosen {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led0 {
 			label = "hps_led0";
 			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps1 {
+		led1 {
 			label = "hps_led1";
 			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps2 {
+		led2 {
 			label = "hps_led2";
 			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
 		};
-- 
2.25.1

