Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA03A4DD8E0
	for <lists+devicetree@lfdr.de>; Fri, 18 Mar 2022 12:24:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235080AbiCRL0E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Mar 2022 07:26:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbiCRL0D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Mar 2022 07:26:03 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CAD1770AB
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 04:24:45 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id r22so10904871ljd.4
        for <devicetree@vger.kernel.org>; Fri, 18 Mar 2022 04:24:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:organization:content-transfer-encoding;
        bh=Z+Kq+6G5Kp7CBaNJGxwxplx+5VTjHQeC4d8cUkw/CKQ=;
        b=JHzQHjUvdyDcaBvtEw1z3QqIMQsL4Y6VZJpLsIRrH8glJ3YDPceLP57yspFxkdW72F
         KvI4Z4r5J4QcuLDgZqexHMgLPYMPe+P5oLysidvWWu1sYylceXpIMYTbylS7swcaeXQn
         VAQP8MquBu7Wzm3VCt8CNLGzU9h1+jG+GvwONjB5ZyjU/Q/NqJwXZTsNkE4oOKWpdHpv
         SRZzvgdCNqDHAkBKOgMDWwlXwCCcI+XR9ednq0rjihT4kTVR7JHCcWMLrosW4Up9j45b
         o8/P1UJLoXAb0Mm+cE5eB0DdUhbaxiRcSZ2NM5mjeF/vr0w71GennJDl5wm1tCogJzWz
         BGlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:organization:content-transfer-encoding;
        bh=Z+Kq+6G5Kp7CBaNJGxwxplx+5VTjHQeC4d8cUkw/CKQ=;
        b=XrnCRGufC57BR7ewo5WcRAnbGFcn7/dtSUAmphLN9gBD/prtWo4vN+Yk5ECk/DlpWl
         485/L4CmXnWrd6QlfePRuAW4T+m4gvZOC/7TD34mcOLGRX4j6CWy/3lZ2RRCAxONMsoX
         6f/gACEKkzpzjGH68v+wdJn3SPHeVcm/FDH5PQXIYOwetSJeXiV52/qoIPsgmZYwThHP
         mcbD9zG8Vo/jgOflvdsQD5pcvgxa4eOpez48zBaA7hozTYK9HS9KLxdYN5mqLYzvwbsT
         qBPqqxRv3T8SLfIWNiVZx6H6IRRGG3eE4J5eXWbFg25YxaAcfRXWrppSNzgVGr4CQ5tE
         UO6A==
X-Gm-Message-State: AOAM532nZc0/anyrDjMfWsZWrw56C4ZB1KIM/i86deM8YPBRM5tymyPL
        85/1vg5b+5r0XxG8uVLQI+M=
X-Google-Smtp-Source: ABdhPJz3bxxX9vSRMaLjMPFsbBlt6z7Ia23G3ZI6Kur/Xlha2VtpjA23KDqUtstdaJK3T0GO5D3L+A==
X-Received: by 2002:a2e:b534:0:b0:247:f015:ad5f with SMTP id z20-20020a2eb534000000b00247f015ad5fmr6004450ljm.309.1647602682923;
        Fri, 18 Mar 2022 04:24:42 -0700 (PDT)
Received: from gimli.lan (h-98-128-229-222.NA.cust.bahnhof.se. [98.128.229.222])
        by smtp.gmail.com with ESMTPSA id i9-20020a2e6d09000000b00247ef729e93sm893418ljc.137.2022.03.18.04.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Mar 2022 04:24:42 -0700 (PDT)
From:   Joachim Wiberg <troglobit@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Konstantin Porotchkin <kostap@marvell.com>,
        Joachim Wiberg <troglobit@gmail.com>
Subject: [PATCH 2/2] arm64: dts: power on CN9130-CRB USB port on plug-in
Date:   Fri, 18 Mar 2022 12:24:18 +0100
Message-Id: <20220318112418.285312-3-troglobit@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220318112418.285312-1-troglobit@gmail.com>
References: <20220318112418.285312-1-troglobit@gmail.com>
MIME-Version: 1.0
Organization: Addiva Elektronik
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The USB port on the CN9130 reference board did not register any devices
being plugged in, despite CONFIG_PINCTRL_MCP23S08=y.  According to the
schematics, it turns out the regulator is actually controlled by a gpio.

Signed-off-by: Joachim Wiberg <troglobit@gmail.com>
---
 arch/arm64/boot/dts/marvell/cn9130-crb.dtsi | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
index 893a9be704ba..f7426b0a4117 100644
--- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
+++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
@@ -37,12 +37,14 @@ ap0_reg_mmc_vccq: ap0_mmc_vccq@0 {
 	};
 
 	cp0_reg_usb3_vbus1: cp0_usb3_vbus@1 {
-		compatible = "regulator-fixed";
+		compatible = "regulator-gpio";
 		regulator-name = "cp0-xhci1-vbus";
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		enable-active-high;
 		gpio = <&expander0 8 GPIO_ACTIVE_HIGH>;
+		states = <5000000 0x1
+			  0000000 0x0>;
 	};
 
 	cp0_usb3_0_phy0: cp0_usb3_phy0 {
-- 
2.25.1

