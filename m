Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24AF9611A4C
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 20:41:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbiJ1SlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 14:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230043AbiJ1SlF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 14:41:05 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 834641EEA3F
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:41:00 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-13b23e29e36so7226537fac.8
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 11:41:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S/QWdUrpoDZLh0j4C0GXLsHelBZKLzsXC5vrQ1PadXQ=;
        b=Wgxsaf2Rsru3M8eSrCoWXWrgCionlrDnASbc5lqgvZwg9uun0ZgnaSiLlIg29jVBqo
         8Hx0RTXJQw4fl5ESXlFhvMT78Jrcu0w4+/6OfHWXPVx91AM4qoft1HIAK/Fdrr0GlEBc
         0/sBmdcLsx3D8neoBzRlTV3/ncrnm8+RZKRIugu0yhMwE573VJqpZAWAeJYVrTyYpL5G
         Dxr8UrvOg6exXxjAmSImrYnuP5BGE95PqHOH64VO5LfaB+LGW/jOOHTE8ae025A7A+Ae
         vHlUMVNsCDTuKn/fmoEgZ1Cy27grqGsdgQpCF16z8fXhps3Tu4nOn0w/CfHdxVhMmaPS
         arjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S/QWdUrpoDZLh0j4C0GXLsHelBZKLzsXC5vrQ1PadXQ=;
        b=kaeyQX0qeXRfORLkhQH4YNyKtSdJ8Fs8pgYN8A7SIE0OkDZ5LPGIfuq3M0PVMGY1Rm
         VqDvWKXgvCRuXiXnNmisWrahjAY7TfLLn/PQWdk4vVn6e4R2yDdQE5VHyErretyl9rah
         ltz7GjMWJbrQa0qkovjYQHYvyKE8t07ESg/QXxaOGnMljjmwyp8MGZAovw1fOpyV5kAp
         QuEIH8CvApT3Tbx17npry+J0ZZtR6OPtH5fPgDqTV0fC4AXAme8T3JOVyK4FzRQMDMi1
         9rKhF67lGtD4+6UTzp0CQuHd3NA7pNIR8U1gVfLs0NxfkxrdnNrGQHidW6+zGfa06USh
         lkzw==
X-Gm-Message-State: ACrzQf0366psvsreZHOtfHTGsaeHl2NfBMUhVy0s+ZRQ23ayla2NeIPm
        TvaiwQeLard9v9rZLW8jB5R/Ht/UVaQ=
X-Google-Smtp-Source: AMsMyM4EtixCoGnMGFt/ySf74KgfXFP5uO9BIdChyGv4Qii0/JcSmapSzYVdjqh7xM4Yg2bcxsDx3g==
X-Received: by 2002:a05:6870:3452:b0:127:74a6:365c with SMTP id i18-20020a056870345200b0012774a6365cmr9848211oah.169.1666982459561;
        Fri, 28 Oct 2022 11:40:59 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:58 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, michael.riesch@wolfvision.net,
        frattaroli.nicolas@gmail.com, jagan@amarulasolutions.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: add poll-interval to RGxx3 devices
Date:   Fri, 28 Oct 2022 13:40:45 -0500
Message-Id: <20221028184045.13113-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add adc-joystick polling for all Anbernic RGxx3 based devices.
They are all functionally identical in how they work.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 010c6a77a9da..41262a69d33e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -22,6 +22,7 @@ adc-joystick {
 			      <&adc_mux 3>;
 		pinctrl-0 = <&joy_mux_en>;
 		pinctrl-names = "default";
+		poll-interval = <60>;
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-- 
2.25.1

