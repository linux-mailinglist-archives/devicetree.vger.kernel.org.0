Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D101711BD0
	for <lists+devicetree@lfdr.de>; Fri, 26 May 2023 02:56:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231691AbjEZA4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 20:56:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234435AbjEZA4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 20:56:14 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42F6A12E
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:14 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6af8ccb491cso68982a34.0
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 17:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685062574; x=1687654574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+SDi0Cxjvln35BirHU6xcxXtrU/mPiM2KjmyA9SEUhc=;
        b=d3u3THmTcUVdB+nbuA9WctuTQORy7aZ9rnvUXib0lbE6ZRnshL4aLu684BO5r+/2K2
         TOa+dl8Wnj3CtZxoFUxPtkToBs4ilkxhHUSrhQzdcdpaB5zwV9+8vkWROqtbe8uc7DfI
         n4uSTUZXLdrt9+TKiakxkk114gr6K4UU327RLhpIsM7C0tMzAnVlQipHfHyC/emDufVO
         GFAwpmh08Pkm6SIIwkl+QZK6fCXmijGUEF8TKU11RfkBU4gzKo74oE0oq5leGNu4tAHf
         3yqoEMRCof9AAQlxOmWJZgYlONofPRq9aKFIPoY9E/uNrgctVTjrLCKOztYED0kLCGQh
         M+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685062574; x=1687654574;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+SDi0Cxjvln35BirHU6xcxXtrU/mPiM2KjmyA9SEUhc=;
        b=fgvzUQrPuaPWzoZgKFPZYQVg3aNGaHX81FainnJiWw8tmlJMZnqTEz4gV3eI1vmsYV
         1/2uUgqAnZtUFDvQU7Ad/hN7QOGjnGsgkurIWg8eug7TLZWBB9WbLiyJETk0uCZz5OxB
         VCSPtTYKUIffL7ZIzw8b4K418ydPL3iMAV8pPgcK6+7ttLGAYHhla2NLenhlOj/yntR5
         5RwXta03e/pM4QZnTBkrh7Ehu3Goyqd9RBHMRHHWSC452z7lDUKrs6ZWRGJJftBm5ZM0
         yhv0GLaQKSwbSWdYXMu5LmdMSn5d3dfOLX842GUZsQHgFhP8ANc/x9rZEBIMrCpsM4qj
         3Pdg==
X-Gm-Message-State: AC+VfDzz/AxoEbzR6aPlmi57LEeRdmKMyeNu71IhjC7L0BQavTxX2h5b
        0KFgN/TzU4XMBPcpjTu96ztHx93ZNZQ=
X-Google-Smtp-Source: ACHHUZ7y2qyef2jgNyXx7Q5w2xJ7tanlqwGsp4TzgN9N2VewsWoY1LlF/wRhF2MCrCJcs6pvX8KuBQ==
X-Received: by 2002:a05:6830:6a07:b0:6af:882c:491d with SMTP id cz7-20020a0568306a0700b006af882c491dmr589327otb.1.1685062573955;
        Thu, 25 May 2023 17:56:13 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:39e7:25d2:1c33:e74])
        by smtp.gmail.com with ESMTPSA id c15-20020a9d480f000000b006aaf3e81baesm1242318otf.24.2023.05.25.17.56.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 17:56:13 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 11/15] ARM: dts: imx6qdl-icore-rqs: Use the mux- prefix
Date:   Thu, 25 May 2023 21:55:25 -0300
Message-Id: <20230526005529.150418-11-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230526005529.150418-1-festevam@gmail.com>
References: <20230526005529.150418-1-festevam@gmail.com>
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

According to Documentation/devicetree/bindings/sound/imx-audmux.yaml,
there must be a "mux-" prefix in the audmux port nodes.

Add the "mux-" prefix to avoid devicetree schema warnings.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi b/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi
index ef3f88c3615f..d339957cc097 100644
--- a/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-icore-rqs.dtsi
@@ -118,7 +118,7 @@ &audmux {
 	pinctrl-0 = <&pinctrl_audmux>;
 	status = "okay";
 
-	audmux_ssi1 {
+	mux-ssi1 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT1_SSI0>;
 		fsl,port-config = <
 			(IMX_AUDMUX_V2_PTCR_TFSDIR |
@@ -130,7 +130,7 @@ IMX_AUDMUX_V2_PDCR_RXDSEL(MX51_AUDMUX_PORT4)
 		>;
 	};
 
-	audmux_aud4 {
+	mux-aud4 {
 		fsl,audmux-port = <MX51_AUDMUX_PORT4>;
 		fsl,port-config = <
 			IMX_AUDMUX_V2_PTCR_SYN
-- 
2.34.1

