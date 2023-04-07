Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 114616DB066
	for <lists+devicetree@lfdr.de>; Fri,  7 Apr 2023 18:15:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230248AbjDGQPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Apr 2023 12:15:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230240AbjDGQPe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Apr 2023 12:15:34 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 719ACBDF1
        for <devicetree@vger.kernel.org>; Fri,  7 Apr 2023 09:15:08 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6978a930502so7206a34.1
        for <devicetree@vger.kernel.org>; Fri, 07 Apr 2023 09:15:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680884107; x=1683476107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tpTuABJuvLOAgfLr56f9yhuIoIsl/sj8Up2eQswcjs=;
        b=Ul4khFLZEjqJqt3/D9U6ysnRKXpGNVgwrW85vw8wO/ux4UrDR3YTSX2rLciWzG9UMJ
         9ODgXhpnlHtZCanw2puCQHDJZSf+3azGMrGLFl2/uCm4r2jD4yyHsoOql6rMezB3VDze
         lPnRra2ValawBCFsk1QLkywz4s1UPrWy3/FmkUjqYhphO49dVqvbMvJX9mcdD7NreMkK
         LhNcEsQFRIhfjxJjaVvF2h+u27BTBaRoRs2ZnGwAY1eHJuMyYNRpGJ0Wb0kAD4zcKGr4
         LM62ONIm3kmQSiB3dQph8NojITMrSTmh+Wi4dtdEkYkUprU2VRDV+1uDvaJzLw7izMXC
         vwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680884107; x=1683476107;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4tpTuABJuvLOAgfLr56f9yhuIoIsl/sj8Up2eQswcjs=;
        b=Ojb+0+EILpPNe7pMPrmVR7/ZTNT5C2+6ohClz8nSJLOr4duGatE5WQWREmjqePh6Qw
         A7evDcO3Ro71lZCJOSBDnLkQKeIMsLqLBjSRgcNIlBi2n/Y8CDsk4hbOvufYNrDibERI
         DS079L9xUid9gF4gmIV8PZPbHw+CCQ7TqNCv3EpYUv4Xq35RuNXmNjSsSTLQ8L5Gd3gu
         AV1xXB4n/x6VAmnYEifzfdGOKV9OZNO5WziAKQf61UWZLDvKqeugAWp3uDWwerekCUfg
         +e+ARuz0vpq8szJiR77NKjoUPrs5fIYBqkGBJoyVtxtJt+60r7wPsl85NMfZusPmIfut
         6rbw==
X-Gm-Message-State: AAQBX9dqIPVYqgL1j+W/yihBR0omdo2BrrCc5cEyGrtaAyDvp0/+H/UD
        PIBUz6+kKsOvc1wqe28SYkJxOzrD43Q=
X-Google-Smtp-Source: AKy350asm/LXY8KP+wjg/el0y5RjdDMSz0PJxej4Y7aP8biJo3KejyswK10uanrXJFQqoj4kREs7LQ==
X-Received: by 2002:a05:6830:4112:b0:6a0:b2f3:4933 with SMTP id w18-20020a056830411200b006a0b2f34933mr1754810ott.3.1680884107619;
        Fri, 07 Apr 2023 09:15:07 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:7f0:b380:973d:85ce:575d:c0a1:5abf])
        by smtp.gmail.com with ESMTPSA id q25-20020a9d7c99000000b00690e21a46e1sm1801910otn.56.2023.04.07.09.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Apr 2023 09:15:06 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 4/7] ARM: dts: vf610-zii-dev-rev-b: Replace deprecated spi-gpio properties
Date:   Fri,  7 Apr 2023 13:14:41 -0300
Message-Id: <20230407161444.1682038-4-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230407161444.1682038-1-festevam@gmail.com>
References: <20230407161444.1682038-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
'gpio-miso', 'gpio-mosi' and 'gpio-sck' are deprecated properties.

Use the recommeded 'miso-gpios', 'mosi-gpios' and 'sck-gpios' instead.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/vf610-zii-dev-rev-b.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
index 6280c5e86a12..1fafefec7741 100644
--- a/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
+++ b/arch/arm/boot/dts/vf610-zii-dev-rev-b.dts
@@ -294,9 +294,9 @@ spi-0 {
 		pinctrl-names = "default";
 		#address-cells = <1>;
 		#size-cells = <0>;
-		gpio-sck  = <&gpio1 12 GPIO_ACTIVE_HIGH>;
-		gpio-mosi = <&gpio1 11 GPIO_ACTIVE_HIGH>;
-		gpio-miso = <&gpio1 10 GPIO_ACTIVE_HIGH>;
+		sck-gpios  = <&gpio1 12 GPIO_ACTIVE_HIGH>;
+		mosi-gpios = <&gpio1 11 GPIO_ACTIVE_HIGH>;
+		miso-gpios = <&gpio1 10 GPIO_ACTIVE_HIGH>;
 		cs-gpios  = <&gpio1  9 GPIO_ACTIVE_LOW
 			     &gpio1  8 GPIO_ACTIVE_HIGH>;
 		num-chipselects = <2>;
-- 
2.34.1

