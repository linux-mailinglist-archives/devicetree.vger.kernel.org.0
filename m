Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 678CF524D6D
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:50:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353967AbiELMti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:49:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353949AbiELMta (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:49:30 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2194F24E001
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:22 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id s11so2303888edy.6
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0ADwZV9MCiaFxJJZiEcHrqujdjNo6qrms2LEfpU/gHI=;
        b=PFvdrNnXwl9nu+KiX1MZiA60g3VI/3cgK9ffJXtnjoyIFo+aWWLqlIz2wEI+9IJXRH
         97NRon/PgO4wVUAPXK05W0WIa6koKhhMswOevkSzkn4EjcDHwtxZAmf969f4Mqzwxyf+
         PhLA7TFu5FXdzeeJ58/vswD+1aJ2lHrSID/06RocdNhLcMJ18Y/O4DKEUCm8EVx3Orc8
         4n9mZYvDQ5ucdBRsfI1Q05cCdEmJfF3q8a+d1dk3+qufg3vG6OqmAIfD8Jqv/R1+hb8j
         jxAKlofC8+Ayu+Pp1RdbQsoD96PBsQUH6dmZQOxVSZMQi6sQPw6iskM22R682za3bco5
         EUBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0ADwZV9MCiaFxJJZiEcHrqujdjNo6qrms2LEfpU/gHI=;
        b=a1HgvqHQ3CfN16CYbqHpy9IyJMX9VdOK1iRkCS+bN43X50Hoi6D9UVyJ+GHjdgXcbZ
         r3cFRmwhCEFasyTbQz1zCX7gdULqRXd0er31zYRZCaSUfUEnU5k/+A7xjtYRJJYy3bqM
         rCKFeM8+1RoJZyKdYFBfHI7lMJ4SouQmPH5kF9UBCyy/FCs6sjSwcKqCYvtErnxSvb/I
         EO2tlOQIuoX6RtH98WLwQ9Y10DhoaUXETvXIv7UCKJwQ+hR4pnT+2xih8/twq7WwY8X/
         NxKs17vCmByx0vIFy+2+v3oOkH1Q6GzKrbSO1oicvrEg4UCdMpwD/yG+ja4ER7OYR4Ha
         r3wA==
X-Gm-Message-State: AOAM532J2nJgg2ZPtddbmC6oajOcBbeRe14GD7XBLMR7/+iVQFQsdq/M
        VodMAf1LNw0HsmVCUiqF2mJOkw==
X-Google-Smtp-Source: ABdhPJwV6fpHJAGCTW7VjN1pW9I5wnImmn+B4Z9Rh5yb9zQU6kHaBPG7pnnrOtf9uM5Zo0DjER0AZw==
X-Received: by 2002:a05:6402:28b1:b0:425:c39e:b773 with SMTP id eg49-20020a05640228b100b00425c39eb773mr34284372edb.237.1652359761709;
        Thu, 12 May 2022 05:49:21 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-58.xnet.hr. [88.207.98.58])
        by smtp.googlemail.com with ESMTPSA id h3-20020a170906828300b006f3ef214dc2sm2109475ejx.40.2022.05.12.05.49.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:49:21 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 07/11] arm64: dts: marvell: uDPU: remove LED node pinctrl-names
Date:   Thu, 12 May 2022 14:49:01 +0200
Message-Id: <20220512124905.49979-7-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220512124905.49979-1-robert.marko@sartura.hr>
References: <20220512124905.49979-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Using pinctrl-names requires the appropriate pinctrl-0 property, otherwise
it is not utilized at all.

Since its not required, just remove it.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index f216777acacc..b89c7455612d 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -28,7 +28,6 @@ memory@0 {
 	};
 
 	leds {
-		pinctrl-names = "default";
 		compatible = "gpio-leds";
 
 		led-power1 {
-- 
2.36.1

