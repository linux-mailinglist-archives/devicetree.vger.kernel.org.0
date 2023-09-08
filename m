Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F06479884B
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 16:09:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238698AbjIHOJi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 10:09:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233484AbjIHOJi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 10:09:38 -0400
Received: from mail-oo1-xc2e.google.com (mail-oo1-xc2e.google.com [IPv6:2607:f8b0:4864:20::c2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3E7E13E
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 07:09:34 -0700 (PDT)
Received: by mail-oo1-xc2e.google.com with SMTP id 006d021491bc7-57328758a72so440214eaf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 07:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694182174; x=1694786974; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tBlMch/6WY4dDP6/qYb7ezE/+18tJvWnL93tskFI6Z0=;
        b=V/xnBIOBjwV4jsH/7dzUnFMoEWm2JlR0t209u9b5OQVk/aOcOlcUDZKqOuKJiOZDpY
         uGUW1Q+Jrrh7WgWNi6nGU9xCB8DaTWUBg0hXwovlsJCQilJcVxfYdpyC/qQ4HGryZI0a
         n+3UD70jId7ln418ZtJVUUBkZqlo23jrkZ7+TX0FeXguE5v05jpSo7Rzi/oAPMa5hluf
         y175TEKX55JhwIfl7DEAcm1aysTA3lVZ2XRRwLSbRgu05kUsT26wpR2Efjz9c3w0+bL1
         vQY0ODPvyuP723kMFUoaFUEjf/x1Ggy1oDwFoLLjPs33sKCtTZ4/uusMX7tfKk+x4AOx
         qVzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694182174; x=1694786974;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tBlMch/6WY4dDP6/qYb7ezE/+18tJvWnL93tskFI6Z0=;
        b=kpgcN62fJ0SnDpnU+7EY9jhbHtHOJwT8QqmCPegzr0ZLarx1Yj0tEuX0diPVGlqIUC
         ZDm0bKbwTlkuqo984bYTACP1V71D5WzfSc8jPK/uvdXdzjSvGfKX1jRZ3j1eJ/3iYlvR
         o+Qu8vpd/HwKNzM/up8ZrTnJaCFqtbqJss/f7r4fNqb6mG6MhUJClQqel/ga+xkw2iGn
         txUnpUnKYSQgaqalZ4OKgFiJnLxvJ7/YDf9B/phPSzX3KQTt0hi2LJx3zZJ8sc8OJ7Xd
         emPAaAvSC9hiPxGKgQh3TJyvBgblUQHpnkMUyClNlQP315bJcRvGlXh8OE4Fyca5pV1u
         1/9Q==
X-Gm-Message-State: AOJu0YwctRn+96BJtZ4HGIGilY0mQIVNEcM7xvR7HPFVnHkuv6Qs7qaO
        n3AUk85RXXmRF3+gntsIh+8=
X-Google-Smtp-Source: AGHT+IGlr1ZjxiUcSlhTrVkS979Z48aaAKoKBBNWY7OV7mXf8T9Nlg8QL+304ys1mbfEuGmVKoQVig==
X-Received: by 2002:a05:6820:555:b0:571:1906:47f0 with SMTP id n21-20020a056820055500b00571190647f0mr2928535ooj.1.1694182174114;
        Fri, 08 Sep 2023 07:09:34 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:71e9:644b:bd6f:e558])
        by smtp.gmail.com with ESMTPSA id i10-20020a4aab0a000000b0054f85f67f31sm662669oon.46.2023.09.08.07.09.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 07:09:33 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/2] arm64: imx8qm-ss-img: Fix jpegenc compatible entry
Date:   Fri,  8 Sep 2023 11:08:50 -0300
Message-Id: <20230908140850.642001-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908140850.642001-1-festevam@gmail.com>
References: <20230908140850.642001-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

imx8qm-apalis-eval.dtb: jpegenc@58450000: compatible: 'oneOf' conditional failed, one must be fixed:
	'nxp,imx8qm-jpgdec' is not one of ['nxp,imx8qxp-jpgdec', 'nxp,imx8qxp-jpgenc']
	'nxp,imx8qm-jpgenc' was expected
	'nxp,imx8qxp-jpgdec' was expected

Fixes: 5bb279171afc ("arm64: dts: imx8: Add jpeg encoder/decoder nodes")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
index 7764b4146e0a..2bbdacb1313f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
@@ -8,5 +8,5 @@ &jpegdec {
 };
 
 &jpegenc {
-	compatible = "nxp,imx8qm-jpgdec", "nxp,imx8qxp-jpgenc";
+	compatible = "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
 };
-- 
2.34.1

