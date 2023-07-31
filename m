Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E55227697B0
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 15:34:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231777AbjGaNee (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 09:34:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230044AbjGaNec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 09:34:32 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BDF81708
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 06:34:31 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6bc66583289so259284a34.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 06:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690810471; x=1691415271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f6jiMv0yk6Q9LnJH9ybPEu9DNGYUkcgRySBqiSqo5sQ=;
        b=eyzjQzr9B34DKgoPCsfaG210S0PLniE0LH+m7dbK4xrTGxStahjpE8r94HhOKyZYuh
         HkWGTVGcjWK/c2BYn8oLy7NXT+90HEmGUlFQOSHzdX6RdDS7dEiErAOrvRzKbeerKWsa
         ht+WoXvt3O7sFfmsTUOkNulSqxg5Rqa3zu5MMpB4y+RhWHMBBZMl2xnoS9WcEz1zG4WP
         5P8RTKdaQkp2kjQXGDtuW39FFNrOTRO2FRw1GERT7ruIfG+XMqJVFGSzQNJJV2YBM6EA
         Tix//rqtFKlerg/qZA46t6xsAFMEqcl3RdzbK3vutvty1hiXz2KqOdTuzbi1SMJxXdD3
         sxdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690810471; x=1691415271;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f6jiMv0yk6Q9LnJH9ybPEu9DNGYUkcgRySBqiSqo5sQ=;
        b=f8WWZjSORHqGmXTn9H5nadeRq+L6Tn/gSsUEtpa1/B5zIWQNm9E11UYXzemqhUgQqu
         JgAJ/kBInGl+/NKUoCIcGthkCHYrMj2gFZLmfZr2VUdpUcdgPxda1Kaw0/kdbMe3q5n1
         MGffftTqIupMgbFXGlN21KUb0heahmAat7Zlheax28SZR2YUMRro0h1hyI/o7fTvO6eg
         6QTkngdEo9MgjtSMfvK0TGVGr08v5bg38pQgy6CF2avWC4ny0Nyd1SQZeOn5M2sGodBr
         c36ZOOAOqB89Ku/TZ6iJNhb9j3wCd1Qa/racXEku2NXRwtMR0QR/b+xdTH6zMZMJBR9/
         f2mA==
X-Gm-Message-State: ABy/qLZn/umPTm01KIEResQmWuI0IWacmsnePiIUTr+Xg7anWUEeQ4zj
        N87DONFnMsB7A36o/BSqXrw=
X-Google-Smtp-Source: APBJJlF8S7b9HT/gSfx+/bs3C1Po5UDuWIS8RHwo9ZIzGK0l+lA6zz1748BDlvaG5vjcIp/P74q1Ug==
X-Received: by 2002:a05:6830:334b:b0:6b1:9646:2ea0 with SMTP id l11-20020a056830334b00b006b196462ea0mr5233261ott.1.1690810470414;
        Mon, 31 Jul 2023 06:34:30 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:fb3f:fd5:45fe:5e7a])
        by smtp.gmail.com with ESMTPSA id t1-20020a9d66c1000000b006bc30d47673sm4059459otm.17.2023.07.31.06.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 06:34:29 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 2/3] ARM: dts: imx50-evk: Use generic node name for SPI NOR flash
Date:   Mon, 31 Jul 2023 10:34:20 -0300
Message-Id: <20230731133421.1499992-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230731133421.1499992-1-festevam@gmail.com>
References: <20230731133421.1499992-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Node names should be generic, so use 'flash' as the SPI NOR flash node
name.

This fixes the following schema warning:

imx53-smd.dtb: m25p32@1: $nodename:0: 'm25p32@1' does not match '^(flash|.*sram|nand)(@.*)?$'
	from schema $id: http://devicetree.org/schemas/mtd/jedec,spi-nor.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx50-evk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx50-evk.dts b/arch/arm/boot/dts/nxp/imx/imx50-evk.dts
index 4ea5c23f181b..3f45c01d9cce 100644
--- a/arch/arm/boot/dts/nxp/imx/imx50-evk.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx50-evk.dts
@@ -23,7 +23,7 @@ &cspi {
 	cs-gpios = <&gpio4 11 GPIO_ACTIVE_LOW>, <&gpio4 13 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
-	flash: m25p32@1 {
+	flash: flash@1 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "m25p32", "jedec,spi-nor";
-- 
2.34.1

