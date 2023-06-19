Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EDA03735C89
	for <lists+devicetree@lfdr.de>; Mon, 19 Jun 2023 18:56:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229654AbjFSQ4b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Jun 2023 12:56:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231792AbjFSQ4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Jun 2023 12:56:07 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABA94E73
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 09:55:54 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-76246351f0cso273488885a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jun 2023 09:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1687193753; x=1689785753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=02ex9dynad7/XUY+dlyZ9Dy+Ty8yFfkoa+wDDDcORT4=;
        b=YzxNxTebOFYlTFL51X7nJT30TNgU4PiJI3oAXNKpaje/NRKO2icJqflPfMBSAZJ6i3
         OHWZQODNE+AQthkwQvh6wifkeLMPNYy6DrCMxCsLI9g9I4gj5Z2cjBa9q2Z+WKRFjS/K
         kPKskESPfzqTnpr7Z2Q1nogXg/gayNFcIC1xs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687193753; x=1689785753;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=02ex9dynad7/XUY+dlyZ9Dy+Ty8yFfkoa+wDDDcORT4=;
        b=CTXYqvFXbn2Sda5afjW3Bqk0QSqtSS1Yoo/93XyQQ5DVIUw6QiCUiUqch9V8G0YAC7
         3gJ8OTQo1V2g75E1kJ0hm//SKHkUSM79675bo/x5d4KheyC9alSHrcQDZfpNnvjQ9DEu
         /o92YeNByyL8nz7EhY8KxW5oDd317Qom6oN19CyBXGUKAQ4xMjoHbaNk4F54t+ogZibE
         jgwKLhcqGi0J+HvAOOOZv0M5Fd1WsYrZrisOTiTnZG2qKLsnWxg8plZcDs2AbGKrDmnR
         QM78/EplIuiFPOC30e9zVzXJhIp+ydZbVJO38EAN7gTcqMqjGUiPC6G13cbGyvHXylmk
         5liQ==
X-Gm-Message-State: AC+VfDwcrna/aANfjDQm7zR2CXg7LTjuUzrbsBgI67xrzPGxNSP5nDVc
        WtWmKGUqWaAmZwoJb81xrIH4oPXT3Adb7MeeV6Q=
X-Google-Smtp-Source: ACHHUZ6VMOy+ibhPH27kT6T6fKcdSaiSXMS43r0itplOStAT+QipHlyzI7gsHs5ngqrDqP1JB9G8KA==
X-Received: by 2002:a05:620a:6582:b0:763:a1a9:3fb7 with SMTP id qd2-20020a05620a658200b00763a1a93fb7mr1421965qkn.26.1687193753766;
        Mon, 19 Jun 2023 09:55:53 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.pdxnet.pdxeng.ch (host-79-25-27-4.retail.telecomitalia.it. [79.25.27.4])
        by smtp.gmail.com with ESMTPSA id p23-20020a05620a15f700b0075d49ce31c3sm109103qkm.91.2023.06.19.09.55.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jun 2023 09:55:53 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Philippe Cornu <philippe.cornu@foss.st.com>,
        Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        michael@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v4 5/6] ARM: dts: stm32: set framebuffer bit depth on stm32f746-disco
Date:   Mon, 19 Jun 2023 18:55:24 +0200
Message-Id: <20230619165525.1035243-6-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230619165525.1035243-1-dario.binacchi@amarulasolutions.com>
References: <20230619165525.1035243-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The board uses a limited amounts of RAM. The added property halves the
memory footprint required by the framebuffer.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/stm32f746-disco.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/stm32f746-disco.dts b/arch/arm/boot/dts/stm32f746-disco.dts
index cda423b6a874..36612b4c2504 100644
--- a/arch/arm/boot/dts/stm32f746-disco.dts
+++ b/arch/arm/boot/dts/stm32f746-disco.dts
@@ -142,6 +142,7 @@ &ltdc {
 	pinctrl-0 = <&ltdc_pins_a>;
 	pinctrl-names = "default";
 	status = "okay";
+	st,fb-bpp = <8>;
 
 	port {
 		ltdc_out_rgb: endpoint {
-- 
2.32.0

