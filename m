Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E788971364D
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 21:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbjE0TuX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 15:50:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0TuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 15:50:21 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C08EBE
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:50:20 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6af8a21556fso441799a34.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 12:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685217020; x=1687809020;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1+QKkLvPlArK2gSbu5Ik2xBAtiRfUGbDWqHbCMB1lDI=;
        b=IVx1Fb1zOJOl4Wrgr/2DtIyilLE10Gl51EoiylADKs1e6XWdbIng3ffBe693buQCYQ
         Usu/yKZjNpZpvdFbSNbOfK7kn3+UjCWmTqEm6xu/9l/NOjqhSn04UjAdK8CYzxHYRhTW
         D85yYEwjC+CVcqWtGC8+9guGMSBCssV1tzeGDUHG5HEaLe9etI9Yv/eZZEvxwOxGP2wz
         hJDmuww4k00rZdcqgNLf4BM7ZVceWwcNxqjwGwKxELQRdYZPGrMRPrIoT1hHnEpcxJPM
         1fDs2k3iobdfCBtwGis28YI9J391XXjPPrg4T0YEQOGAsWgvMdEGff5P1hmKRVLnbo0x
         Mr9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685217020; x=1687809020;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1+QKkLvPlArK2gSbu5Ik2xBAtiRfUGbDWqHbCMB1lDI=;
        b=PGy5TvDo6mCVRpdcHg7jXySbn9iQsndWDCNq5Ge2QT/0khcILCx8XnC+kOkPGc2Vrl
         D2Pnso3frZyeY3AiGZj4QXynEoS50911b+eCPH0WQOb/dtefbu5dJhS4UPZKdMVaxUdn
         F8zeFA2+E6VaQGsAJYd9EnEKPmod7pjuegCBe8QA3v3YTBcegWFjQaO0Lvljvp/eJhXE
         isBWn90IQqN6vq+nXETL7jiOkHrnr0xr0qEfePA1cB8dJ4kzBFgQMuZq32gTue0lki6X
         198XRN/XZjGAf0X8LJJle+n/7kiZKrBFeTgTCFJXNfUWKw3W1Qryl809brbdyAeoLgUR
         NAGw==
X-Gm-Message-State: AC+VfDxMcVFADruVTr2pqyJ0tLhNjfJwZ+iSFDU2K99Gw64TPQHvAF0U
        Yp8kD+ACP4ub2CaUVHtyNyw=
X-Google-Smtp-Source: ACHHUZ7ce9Ef6DSZ4lh7VmeE0Luy+exuu831sRo/nPZSwLl+s8yyyo70+pFwsOQEgRUNVis74p+hDg==
X-Received: by 2002:a05:6870:b40d:b0:192:6ef5:2523 with SMTP id x13-20020a056870b40d00b001926ef52523mr3494932oap.3.1685217020080;
        Sat, 27 May 2023 12:50:20 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e287:a09b:c5f3:bedf])
        by smtp.gmail.com with ESMTPSA id s4-20020a056871050400b0019ea8771fb0sm3035044oal.13.2023.05.27.12.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 12:50:19 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/3] ARM: dts: imx6ul-ccimx6ulsom: Remove unexisting PMIC supply
Date:   Sat, 27 May 2023 16:50:05 -0300
Message-Id: <20230527195005.398815-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527195005.398815-1-festevam@gmail.com>
References: <20230527195005.398815-1-festevam@gmail.com>
MIME-Version: 1.0
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

From: Fabio Estevam <festevam@denx.de>

There is no "vcoin" supply output provided by the PFUZE100 PMIC.

Remove it to fix the following DT check warning:

imx6ul-ccimx6ulsbcexpress.dtb: pmic@8: regulators: 'vcoin' does not match any of the regexes:

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi b/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
index b5781c3656d1..fe82f0b6bbda 100644
--- a/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
+++ b/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
@@ -157,11 +157,6 @@ ldo4_ext: vldo4 {
 				regulator-min-microvolt = <1800000>;
 				regulator-max-microvolt = <3300000>;
 			};
-
-			vcoin_chg: vcoin {
-				regulator-min-microvolt = <2500000>;
-				regulator-max-microvolt = <3300000>;
-			};
 		};
 	};
 };
-- 
2.34.1

