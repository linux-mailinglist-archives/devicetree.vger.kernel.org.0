Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3813C595C58
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 14:55:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233728AbiHPMyZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 08:54:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233883AbiHPMyO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 08:54:14 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D57D06C763
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 05:54:08 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id e15so14841329lfs.0
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 05:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=1IH7B3mi1MTbFS+LeDFHpaT7zx3wiBQvuaRcBxdVuRo=;
        b=nq1FEcM1Fl+n2g4Dk5813nNha6A33EZsIhcjgxIjdnAyFHTEMS5wpUnK0pa1RVUJ5D
         T5g342auYl9WCqB27frm86cg91ltD41k7jTIYWvdH/JZyk0BnWne26qS5omNsVDwZ2BX
         CuGW6R8egpV28EhdrtkgrJcDLVU+l9SQyM9x12ebXRrUvM+iw/sRvdtQdRWiRfQi/Cmq
         g6LCHh1Lnk65LeZBDLNJFfqyEo/rBbStJjMi/3beiKK8MzeFieVU/EOP6p3W/iNNh41n
         kAHHAy99ynnxfPsdHhEOYUcC5hUIpzcrCIFmpLfICl2VvNfJQdgkWInlCam48wSsZiC7
         f2IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=1IH7B3mi1MTbFS+LeDFHpaT7zx3wiBQvuaRcBxdVuRo=;
        b=qz0GxuoWI0ngGbdiHtV4sCg0qBmG2+y03n55DrAjL4fiwpr2hgwui+DBFNM0IwvhJK
         9KnQgjvrl2ckJrYssITVZC6edoL9hhCkKWJ59ghOVBD5T8mxBSNKHuSz2gYYS2739wuB
         EuHdReyzaDjPSw5ByuzmGgS20Q786IOuhaeIpPeuA5rToKsCP40HB0SoFUoKTbJ6GILq
         75Yzgh0mpZb1V6Lt1b8rQBDW9z4RLRUnMCYewVkYk+XQIbUl/D/s3oORAjCDbXqumrWv
         h6KxsB7nn1TK6VM07blZ//G/4FnW6CX7sgl5BxLcHbxEyTSrBBMTYucNp2M/hSxwNL2j
         DT1Q==
X-Gm-Message-State: ACgBeo2ZkMr2x3+ScHeWUeMUVNVZy1tvP6cEFwB21BAItivVXlJ4RN/G
        pGMZZYkK3SvrMBltjDXr6TbkEA==
X-Google-Smtp-Source: AA6agR6oboi5sC04C6dSA7fQ74tbpieyMz1Gpa6GynsxwgFWJp96ETbL1R/IQkYsBziMZ709izXb1A==
X-Received: by 2002:a05:6512:219:b0:48b:18fb:377e with SMTP id a25-20020a056512021900b0048b18fb377emr6873129lfo.177.1660654447235;
        Tue, 16 Aug 2022 05:54:07 -0700 (PDT)
Received: from krzk-bin.. (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id q11-20020a056512210b00b0048a7d33e0f0sm1379144lfr.261.2022.08.16.05.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Aug 2022 05:54:06 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] iio: MAINTAINERS: Drop Tomislav Denis
Date:   Tue, 16 Aug 2022 15:54:00 +0300
Message-Id: <20220816125401.70317-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220816125401.70317-1-krzysztof.kozlowski@linaro.org>
References: <20220816125401.70317-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Tomislav Denis bounce ("550 5.1.1 User Unknown").

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 1c2eaaafa110..5a72b303aed5 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -754,14 +754,6 @@ L:	Dell.Client.Kernel@dell.com
 S:	Maintained
 F:	drivers/platform/x86/dell/alienware-wmi.c
 
-ALL SENSORS DLH SERIES PRESSURE SENSORS DRIVER
-M:	Tomislav Denis <tomislav.denis@avl.com>
-L:	linux-iio@vger.kernel.org
-S:	Maintained
-W:	http://www.allsensors.com/
-F:	Documentation/devicetree/bindings/iio/pressure/asc,dlhl60d.yaml
-F:	drivers/iio/pressure/dlhl60d.c
-
 ALLEGRO DVT VIDEO IP CORE DRIVER
 M:	Michael Tretter <m.tretter@pengutronix.de>
 R:	Pengutronix Kernel Team <kernel@pengutronix.de>
@@ -20280,13 +20272,6 @@ M:	Robert Richter <rric@kernel.org>
 S:	Odd Fixes
 F:	drivers/gpio/gpio-thunderx.c
 
-TI ADS131E0X ADC SERIES DRIVER
-M:	Tomislav Denis <tomislav.denis@avl.com>
-L:	linux-iio@vger.kernel.org
-S:	Maintained
-F:	Documentation/devicetree/bindings/iio/adc/ti,ads131e08.yaml
-F:	drivers/iio/adc/ti-ads131e08.c
-
 TI AM437X VPFE DRIVER
 M:	"Lad, Prabhakar" <prabhakar.csengg@gmail.com>
 L:	linux-media@vger.kernel.org
-- 
2.34.1

