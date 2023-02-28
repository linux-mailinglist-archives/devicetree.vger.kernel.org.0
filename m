Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C859B6A5AFE
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 15:44:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229534AbjB1Oop (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 09:44:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36524 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229744AbjB1Ooo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 09:44:44 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC5E025951
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:44:42 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id i28so795963lfv.0
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Eyw69WHDo/aNgq8ucEO88oZi/ZgNTy4uduI0sLz9Tbw=;
        b=KUPQU5Vr4ey+jenFBPzUHM7j9MRcRmM//JZl1MLMKEvPgmoUNiJxTZxvTk/KqG4s95
         czFqjQzMvFIZWxWVtTufDbIoywWchkPsi7nUwv7CHGpfs0j7mPMyMMJXmiGd18rBtbKi
         f1I6MF3FVZ72stifEorT+VwKN4D5KlkxAuYmD3cR5iL1mXeFi+B/ZAI58GFvpXpTGwvJ
         PD1kJBA0PNLbukDvv/lg3qow6siLcJrW9w7DrfBAHURfEDMXet0TIOZDsVgLR83bLv77
         URZas3gZTliExy3VvBgHrqSF909hDzQin82+HsMuVTzALRflneQ2VAuN5l2DKfNowcDB
         DxPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Eyw69WHDo/aNgq8ucEO88oZi/ZgNTy4uduI0sLz9Tbw=;
        b=zH+7GQ9lhWL5N1q4AczU0pcGZoEVopEqVY70mk9XPGj+VmUIrVTt0+2nqnBjbJoW7w
         GYcJw1OgTAF+9+iWz9Rb2F3ct+M30j/LXe91ym2An4x/h2WdOoctEKHiSSYe/cgue4iJ
         qZMK7aak/RiV0Mq36L2zOBJlpl8HK+COlQ9UzPydqhXT7MaSKMkX8mxtn5VtyIMaVgKN
         VEuQv6y3T019ZK9r8iKmR/FuD0AliIcVSzkCCVxmy0LkYmq6oAj0ay32+mx95EUs8Szy
         FCWpPRTkwmRXi1usBlkoN/OqoO7guj37i/q+FlKhrZZwNKt5cDY5hhq6aJhwdSm77CW8
         Ha4g==
X-Gm-Message-State: AO0yUKXoIS4AOiNqasFBcHYkD33tWDwSlx9xpRTAMRfEcwap+kdRp43M
        beeGbyod3SUrhgw8eYFm2Y4=
X-Google-Smtp-Source: AK7set8WFwJnFUyExfO14nF6JsQt5ahm6iXTQNHZUAnuXDFcQvsgagqcrtt7gFDImT96/zu7lzvJLA==
X-Received: by 2002:a05:6512:12c4:b0:4db:5123:c271 with SMTP id p4-20020a05651212c400b004db5123c271mr3896722lfg.29.1677595481228;
        Tue, 28 Feb 2023 06:44:41 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id b10-20020a056512024a00b00498f67cbfa9sm1365554lfo.22.2023.02.28.06.44.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 06:44:40 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 3/3] arm64: dts: broadcom: bcmbca: bcm4908: fix procmon nodename
Date:   Tue, 28 Feb 2023 15:44:00 +0100
Message-Id: <20230228144400.21689-3-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228144400.21689-1-zajec5@gmail.com>
References: <20230228144400.21689-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes:
arch/arm64/boot/dts/broadcom/bcmbca/bcm94908.dtb: syscon@280000: $nodename:0: 'syscon@280000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
        From schema: schemas/simple-bus.yaml

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
index 1240fc5fb08c..f4cf0f835db7 100644
--- a/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcmbca/bcm4908.dtsi
@@ -260,7 +260,7 @@ phy12: ethernet-phy@c {
 			};
 		};
 
-		procmon: syscon@280000 {
+		procmon: bus@280000 {
 			compatible = "simple-bus";
 			reg = <0x280000 0x1000>;
 			ranges;
-- 
2.34.1

