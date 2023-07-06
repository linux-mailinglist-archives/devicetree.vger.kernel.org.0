Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 520A574972F
	for <lists+devicetree@lfdr.de>; Thu,  6 Jul 2023 10:16:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232942AbjGFIQI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jul 2023 04:16:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233391AbjGFIQH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jul 2023 04:16:07 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4EF491726
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 01:16:06 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-98dfb3f9af6so48522866b.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 01:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shruggie-ro.20221208.gappssmtp.com; s=20221208; t=1688631365; x=1691223365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K74+bMhHCvWhymjIs0u9DKIZz/UhylbMWE8utWtKfGo=;
        b=eVeIz8XEevGCBQiKJbnkroU2JVeqRd/LnF3UPy9nCay/6KpcKdsPWaPYHxvOhII/Eq
         48HFXlnakNKq9keJTen76es9MF8iCNF2McZbAJuJZErshUwEHvB6CLDmbm9VkSm1eRQc
         6DpnAfgx+xvTnO7BmWEtyjONvjeOdctuc8+TiCqknCcN7IfdakMfsVthQSi60THpdGj4
         Xz9KPDeKyR8mW3aAokMK+znF1fz7o2oXrRzkjHB9bBCX0OETu5IuWXFsU8MfMzf9fK/p
         +F6bTv5L/5aJdoCj3qoWT6zy9nEYX5N5yVmNUTj42+RfP3jBum1xheRjHjb30jkt3obf
         d+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688631365; x=1691223365;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K74+bMhHCvWhymjIs0u9DKIZz/UhylbMWE8utWtKfGo=;
        b=ZGoj4SFqy49FfJppyNK3mBDJj2LSdNs5Y99mZvk+FlvJ2MnWTba/iCGR1C3V8ku5wy
         Y6rnv505IQfJdIGkxPp2WPJIhU7r8EQjnRd6rauzBia8J2WjsavDpUK8SrGzUu212J+C
         qlnu1yI4P27sXMsO6zmMKogb67W1C56hhNXwxYVFhBTjDpY89UXCbKHFRdC9a+sFY2GG
         rOPlL1PCsYQdYFN5MZo2x97AvL2Uj6ki/PuqRi6Nm0U1L6K+Vn1C+5Gz5uwg0/0fJBN2
         YOIvidB42KjCC0TrzY8vnkyaGaF5zeNjcfmk0EO8TXtHtgIRehkISpOXeVnLZoTKaSoo
         apUQ==
X-Gm-Message-State: ABy/qLY0hbpHiG9K6jDssZ2fpvsdZ62MxAFvgGR/DwTQGZujiRYSfTkw
        TrNiQ2nemfzW29Qsr0JJiGsXvg==
X-Google-Smtp-Source: APBJJlGjgUEPmlKSXTAEJ2NVftvifEbaWoT+wyc9GTLi2HTneNUbqf8qB4UdzUVmEnNbTa44PQmYLw==
X-Received: by 2002:a17:906:b846:b0:992:7295:61c9 with SMTP id ga6-20020a170906b84600b00992729561c9mr810149ejb.69.1688631364600;
        Thu, 06 Jul 2023 01:16:04 -0700 (PDT)
Received: from localhost.localdomain ([82.79.69.144])
        by smtp.gmail.com with ESMTPSA id m8-20020a17090607c800b0099364d9f0e9sm478096ejc.102.2023.07.06.01.16.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jul 2023 01:16:04 -0700 (PDT)
From:   Alexandru Ardelean <alex@shruggie.ro>
To:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
        olteanv@gmail.com, alex@shruggie.ro, marius.muresan@mxt.ro
Subject: [PATCH 2/2] dt-bindings: net: phy: vsc8531: document 'vsc8531,clkout-freq-mhz' property
Date:   Thu,  6 Jul 2023 11:15:54 +0300
Message-Id: <20230706081554.1616839-2-alex@shruggie.ro>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230706081554.1616839-1-alex@shruggie.ro>
References: <20230706081554.1616839-1-alex@shruggie.ro>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For VSC8351 and similar PHYs, a new property was added to generate a clock
signal on the CLKOUT pin.
This change documents the change in the device-tree bindings doc.

Signed-off-by: Alexandru Ardelean <alex@shruggie.ro>
---
 Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
index 0a3647fe331b..133bdd644618 100644
--- a/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
+++ b/Documentation/devicetree/bindings/net/mscc-phy-vsc8531.txt
@@ -31,6 +31,10 @@ Optional properties:
 			  VSC8531_LINK_100_ACTIVITY (2),
 			  VSC8531_LINK_ACTIVITY (0) and
 			  VSC8531_DUPLEX_COLLISION (8).
+- vsc8531,clkout-freq-mhz : For VSC8531 and similar PHYs, this will output
+			  a clock signal on the CLKOUT pin of the chip.
+			  The supported values are 25, 50 & 125 Mhz.
+			  Default value is no clock signal on the CLKOUT pin.
 - load-save-gpios	: GPIO used for the load/save operation of the PTP
 			  hardware clock (PHC).
 
@@ -69,5 +73,6 @@ Example:
                 vsc8531,edge-slowdown	= <7>;
                 vsc8531,led-0-mode	= <VSC8531_LINK_1000_ACTIVITY>;
                 vsc8531,led-1-mode	= <VSC8531_LINK_100_ACTIVITY>;
+                vsc8531,clkout-freq-mhz	= <50>;
 		load-save-gpios		= <&gpio 10 GPIO_ACTIVE_HIGH>;
         };
-- 
2.40.1

