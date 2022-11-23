Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7987D63583D
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 10:52:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236704AbiKWJw1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 04:52:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236881AbiKWJvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 04:51:44 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 217EE1CFEF
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 01:48:51 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id y14-20020a17090a2b4e00b002189a1b84d4so1354041pjc.2
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 01:48:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rWRmeeyqa9WI4jmwUmuk/cmr2MhYhWIGDdJ7im7Y/jM=;
        b=Zq3w/pCFVSkeds/S7tM/ej34T2gQ11JPDxqpR08a8+PiqvqKJhu6W3yFnR5/6+cXHD
         o+G3IcZU+KtRZhqQi15n1MIshQ/aAqFpm/FoI3M/iGWi0D3lp3u3fpZA1QGhLqaVryds
         gpLv6WGgF+PkoCX5FPGgJ9dHzg5q4J/wuHbqw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rWRmeeyqa9WI4jmwUmuk/cmr2MhYhWIGDdJ7im7Y/jM=;
        b=F54OtgxOLFcCSNe3AzClhb6tlQ/tca52Rw5NwfHY4khGF+inRB0mVWo5HoyK4fxBtc
         +cGzPktkHmpN2w1EHcrE01hLxczQAkKZ57yKBH1HEMYb7IamXqeszWHA78g2cx/v/y2K
         dt2za3bsuzs+RrGRmGT/18JWSCf+oWHmaplPY17l+RT/q5hCxfZoR6b2jTKM/mb7MGHv
         g5QLjHk6a/yT+ojE5otxZmTUouCWFZ1MFDvnip29Ye9Cg6wVmMmML7IL322K+uxxH4rM
         JmjQeR1n+WNccYCFrnLRSQnk8NTxLrw/Phm+h3sPIe/m8YgH4ngLtCmkhAbQ+FgT+VOR
         9t8w==
X-Gm-Message-State: ANoB5plA3J+WzDfAtMPYwEGuyQ8h7VmT17poRQ4D10cVzCfR7bmXf6PC
        oBmb0A0K57b1I84XKrjJO0qTVQ==
X-Google-Smtp-Source: AA0mqf5OILxDB8mH1chCpvbV3aeqCVitrWAYOXWWamwFP/EkzOlbg3pFAyMMj1dT/GHoyxOqmuKvsw==
X-Received: by 2002:a17:90a:c7c8:b0:212:d9cf:5696 with SMTP id gf8-20020a17090ac7c800b00212d9cf5696mr30079385pjb.237.1669196930569;
        Wed, 23 Nov 2022 01:48:50 -0800 (PST)
Received: from localhost.localdomain ([183.83.141.79])
        by smtp.gmail.com with ESMTPSA id k16-20020a170902c41000b001869f2120a4sm6524670plk.94.2022.11.23.01.48.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 01:48:49 -0800 (PST)
From:   Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Robin Murphy <robin.murphy@arm.com>,
        Chris Morgan <macromorgan@hotmail.com>,
        Markus Reichl <m.reichl@fivetechno.de>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com, Da Xue <da.xue@libretech.co>,
        dsx724 <da@lessconfused.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH 1/1] arm64: dts: rockchip: increase spi-max-frequency of nor flash for roc-rk3399-pc
Date:   Wed, 23 Nov 2022 15:18:27 +0530
Message-Id: <20221123094827.250657-2-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com>
References: <20221123094827.250657-1-abbaraju.manojsai@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Increase the spi-max-frequency of nor flash from 10Mhz to 30Mhz,this improves the
flash raw write speed by 0.9 MB/s to 1.6MB/s and the time taken to write is
get reduced from 36 seconds to 20 seconds.

Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Signed-off-by: Da Xue <da.xue@libretech.co>
Signed-off-by: dsx724 <da@lessconfused.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
index 2f4b1b2e3ac7..8fd808a0df85 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
@@ -735,7 +735,7 @@ &spi1 {
 	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <10000000>;
+		spi-max-frequency = <30000000>;
 	};
 };
 
-- 
2.25.1

