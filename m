Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42DE1713679
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 22:51:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229634AbjE0UvL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 16:51:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0UvK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 16:51:10 -0400
Received: from mail-oa1-x33.google.com (mail-oa1-x33.google.com [IPv6:2001:4860:4864:20::33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED136CE
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:51:04 -0700 (PDT)
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-19e74f68e5fso194406fac.1
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685220664; x=1687812664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N2CUU8oXZ/mnJ+KkanrS1TwZe0J5xwZ3lM0WIMXBgRs=;
        b=Qbfpm5DIUT31cqOGw3H+5HJXP4jXp2xcUIX+NyILJ9/do0S69jfuZ0HGPTQHCp4+Bu
         k0WzSJJDMtbATEvLC3ROuxboaXpkujZttXdbwYScWlrkaQxV6Jfetf7OHok1G2uwcFYw
         xsJgJXgaaXupGV6JHgXPAC7kTHiMDCIAg4yKIFTNiDqRxlqkduEzXV4CYJ/Vqt/Xqi5Y
         2M63tY2nNmjZZ1ucrlthcfRuzLoyUjcl2so8dj7XPGeR1Zi9OQn+harrgG7+yISHDqAw
         ft3t9GPY6GSihkn5yY2T7YzDECYomgw/VtWzGA1ouIWMtcIBLOxl5s8Js7+ZJ7fOqa++
         Bntg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685220664; x=1687812664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2CUU8oXZ/mnJ+KkanrS1TwZe0J5xwZ3lM0WIMXBgRs=;
        b=IbPYw2ufeTzG1NIVoJpQcMq5L4fYjwd1MTu20z4vSHzpAZZ26ewp9Zx3pP0wf+3t8L
         Rpz+Oy28G/Cr+BhDMTrdW25ylKrgJpgIkPNOZZAv3bh5voYY8X2yJtSJrq0UUT00U4ao
         F1ceNjB6r2gIfq8zT0TTM8oBCKdNX3zUcwrku5qkf8CCX057TWKAx+CJxl6MudGKZWRk
         ZLyFDNZGWm4pNxaJtMX4zvVD/QMUtIzPgo26q3M+Fp/8Vwm0Yl4kw3aQMyjpvpfHLl+3
         Pn2FCXsPKdf9adMB7379jDpPFCFFYXF/rbmk6TYUiPbYHlVQP+5O7YrhDOMmtRSKdMLR
         8dRA==
X-Gm-Message-State: AC+VfDwbcb4LOVIed5Rgch/4a5M57Wl+r/rFOE20E9t29CRPdycSYtxz
        Gm9sI2FArRSrvdBIiAREQsc=
X-Google-Smtp-Source: ACHHUZ5dXS36/rJ7bTXTlrWWRdmvOafap796qCcgQaQtUJJIdtBs9ISLtrZEpbvNWxijrjvD/Qw2uQ==
X-Received: by 2002:aca:a98f:0:b0:397:f428:c2c6 with SMTP id s137-20020acaa98f000000b00397f428c2c6mr2617423oie.0.1685220664255;
        Sat, 27 May 2023 13:51:04 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e287:a09b:c5f3:bedf])
        by smtp.gmail.com with ESMTPSA id v131-20020aca6189000000b003941c3b9f0dsm3106458oib.41.2023.05.27.13.51.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 13:51:03 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 3/3] ARM: dts: imx6ul-ccimx6ulsom: Fix the "coin" regulator name
Date:   Sat, 27 May 2023 17:50:48 -0300
Message-Id: <20230527205048.418360-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230527205048.418360-1-festevam@gmail.com>
References: <20230527205048.418360-1-festevam@gmail.com>
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

As documented in pfuze100.yaml, the correct name for the regulator is
"coin", so change it to fix the following DT check warning:

imx6ul-ccimx6ulsbcexpress.dtb: pmic@8: regulators: 'vcoin' does not match any of the regexes:

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Keep the node and change the name from vcoin to coin.

 arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi b/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
index b5781c3656d1..7d1a391431bd 100644
--- a/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
+++ b/arch/arm/boot/dts/imx6ul-ccimx6ulsom.dtsi
@@ -158,7 +158,7 @@ ldo4_ext: vldo4 {
 				regulator-max-microvolt = <3300000>;
 			};
 
-			vcoin_chg: vcoin {
+			vcoin_chg: coin {
 				regulator-min-microvolt = <2500000>;
 				regulator-max-microvolt = <3300000>;
 			};
-- 
2.34.1

