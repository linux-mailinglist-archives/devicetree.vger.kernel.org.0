Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D75667697AF
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 15:34:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbjGaNea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 09:34:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230044AbjGaNe3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 09:34:29 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 962711708
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 06:34:28 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-1bc05bece1dso292758fac.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 06:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690810468; x=1691415268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2X5AkvIeuw3Si8nzF5IWhkn073l4i9nbJOtFdnbBqf4=;
        b=J4Da7revIFuKFQitd4aDK4kMbIMFtHM4nEBoJl0OZVgeozOq16KUd1HYjpsRQOq9rL
         zcLWpuMgfMNdZddSTxt77gqpzxxXHU+PxnjomPCCKHVifL+BsAl9XNMKWktg7xIl+HYj
         Yx/uYmwJRsdYLiWSQoSH7I4J4o57vNSv4IS2ylY3qKwtuMsdieCurMu7Vy0LNWeN+K46
         3OPltwu/oNtGzPQwLLaJvJ4Ym6Cu/8GanZnxKDLJqlUuHF4eb+mg52ae7G4gLW/Qg1Nx
         NbwWSB1Y94tpfjS+HgDDseq1sae1ePKdqINcWZ1s49GGIVoWOq/cDkotzOKIzdET4mMy
         /RKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690810468; x=1691415268;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2X5AkvIeuw3Si8nzF5IWhkn073l4i9nbJOtFdnbBqf4=;
        b=MCjCFnwPrm4Mt4fozjZ9XjcCtA+IsDOfDMRNRCBH8onKzW5vzHsynj64JYbti9ebhh
         2HCZVOcFwiNco9K91iz3uKpXGNl0cM2aCLdlkUD83z8bgzuIVSS8EVA4w87OZA0KAzC1
         KeONzqy5V+1RR3ai5/McCT0OiKfMA1nfpDBLghPZjhMBvgXvUna0TAk0EWHqjKjZPnOU
         5odj6cLY7LxH7WUP+8Zwdv2CG4xHK/kws9OFW4fwrDYRGEkElIUZ+fcL67KIwWMvGGad
         pf3EXpY9EhKiwS3+/gYYKPavy3gHUlmcGBC4Wh6qgf+6emxu+4Kp2dxk4T/Puqb7RNRk
         ui7Q==
X-Gm-Message-State: ABy/qLbsNdt7FlcYjp2UpsrW/ITXGNJNxgaNjzXGpsqyNxytIB/gm9L5
        M4nN55vkQse0ASNufM6O5XV9N+M3TPY=
X-Google-Smtp-Source: APBJJlETb3FKivSvcQ/snUtQG8Sk9jToftcYBMdJ++IWgns+o2K8VzHBg2FAJMzJ/MZQTsN8lDgk4Q==
X-Received: by 2002:a05:6870:f70e:b0:1b4:4941:3096 with SMTP id ej14-20020a056870f70e00b001b449413096mr5600134oab.5.1690810467725;
        Mon, 31 Jul 2023 06:34:27 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:fb3f:fd5:45fe:5e7a])
        by smtp.gmail.com with ESMTPSA id t1-20020a9d66c1000000b006bc30d47673sm4059459otm.17.2023.07.31.06.34.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 06:34:27 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] ARM: dts: imx6q-cm-fx6: Remove invalid SPI flash entry
Date:   Mon, 31 Jul 2023 10:34:19 -0300
Message-Id: <20230731133421.1499992-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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

"st,m25p" is not a valid compatible according to jedec,spi-nor.yaml.

Remove it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts b/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
index ffb3b8eeae5d..95b49fc83f7b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-cm-fx6.dts
@@ -263,7 +263,7 @@ &ecspi1 {
 	flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
-		compatible = "st,m25p", "jedec,spi-nor";
+		compatible = "jedec,spi-nor";
 		spi-max-frequency = <20000000>;
 		reg = <0>;
 	};
-- 
2.34.1

