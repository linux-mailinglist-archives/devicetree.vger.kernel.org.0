Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E8646CD560
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 10:55:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230190AbjC2IzI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 04:55:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjC2IzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 04:55:01 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 468541721
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:54:59 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id t4so9615868wra.7
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 01:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112; t=1680080098;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ATWUkGY0rkoW9/CgGtrKNQxtJXv5++4UqGKLRPMmmVc=;
        b=wKa5VoLbY7nZX4cerBA9g8o4pUyxKCPIJIME3KqZsAumyefKFx8aAQ+nGC1395e4PE
         B1pcFgd7xfWku94gLvFznFTP+QzmmQfQiz8y/WJIUL5EKMtHEunDZUrHu2rFNWLXUOO6
         SOQFqIq//36Wg9uSl5n+xmTln/9luQ2LnQF1JxUUNsrbDT9jogl7vKt1u7e9XN7AGCPf
         C+OEEVLsrYqLW3EpqwiflyNNuu/ZymqIXSs34fmCMt8XtKeRtqp6MxMLOWv9L28Emla+
         cl7sgX/NAp6E6xFQyKFKDKnXCjaAWNUlLt4gaRQHJV+5fG0JxeOnIE5fcwh0CqiljZWF
         GCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680080098;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ATWUkGY0rkoW9/CgGtrKNQxtJXv5++4UqGKLRPMmmVc=;
        b=SigD9ilvNXwfO8Ed/9cdhHfT0cF+WC9tWF+Ivadot5WAwtpMnuWCHcUEGJ9mZyBmXk
         s6d5rm2vVjfAFqOVC7PemPNmutKSz6D1GVgILOipty9oukE+sj5dmZ+6PBmNJKR8nVhr
         Az6OXuOPPqk4eHwstCoDeMQ2RtZKnxiksT2mBifixBkcgYzN2oGgBohFdZJvK3oTLYzi
         EylyVAxLs3KS2v6CUpxL4oIfsap0OAjcdany55LVHgheFtwR5vMAZ/fL2JR0ZS2A7qK8
         0Cdb+NqBN4aO327+pz2DtD2N2vvy4g3pEZZ50PRsZJvwFgEvFyWSm31EXREihQDOuKcV
         C+VQ==
X-Gm-Message-State: AAQBX9dlJrTn6Xg02ni4Am46kZXAYmjhP2L+UqQA4GN2kMj2JdJFqKTh
        XcN3tHSe/Ip26QdKTRJfazbkqA==
X-Google-Smtp-Source: AKy350aD7dfmZtKemoDfCOm5oTETwMGjJVGeCHKT3vQmUYIgv0Np0HEcosx9I8CiYzMLzgDaEnddWg==
X-Received: by 2002:a05:6000:12c3:b0:2ce:9f35:b645 with SMTP id l3-20020a05600012c300b002ce9f35b645mr15049960wrx.20.1680080097870;
        Wed, 29 Mar 2023 01:54:57 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id f9-20020adff989000000b002cea392f000sm29571964wrr.69.2023.03.29.01.54.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 01:54:57 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Wed, 29 Mar 2023 10:54:25 +0200
Subject: [PATCH v3 04/17] arm64: dts: mediatek: add watchdog support for
 mt8365 SoC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v3-4-0003e80e0095@baylibre.com>
References: <20230203-evk-board-support-v3-0-0003e80e0095@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v3-0-0003e80e0095@baylibre.com>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Wenbin Mei <wenbin.mei@mediatek.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org,
        Alexandre Bailon <abailon@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        Alexandre Mergnat <amergnat@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=821; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=QWw6AuO2shkl2dPalo7MxCcSu2KRputIkXuJ7S5BNfA=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkI/zb9aiKCXO3WjnS4Jzc9orwThsawpM6+5AvhCw3
 uT/rndGJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZCP82wAKCRArRkmdfjHURUscEA
 C3BCoiB89zg0rGX4zcsJjxIlnfLUjyMtrPg6P84qHNav8VWSmY9dB6RwEpkeolivmgiWGfGsGNMKPI
 OvbWpmyaj8AAF+zkKplkQohHDbAWD81okOPsZrvbCZkTzXsZhzy4AXH+fikAL6OqAukvfha9u3sIgS
 I6GOb8j5amSlQ1gu21eAut0qU/GRxIJ+iHuFbx1KJy99gGjmK9Sx3B3ydgJ3gOOE15A9ZNexkP56Np
 WFRtqWL9LdV2uEEkrkqYtQYC3tQ4rGcb9oIN4uZYIORDpjWCQDQwu/kLinsmBPpI3dk/srNSTvBGd7
 oTkprslDVgGGrle5qQl53S01N5nCQQCZFEPWyAt4Etncfxdel76vkGMl50VTOQKaT1IxWrttvAxKP3
 1OC7rb2dKIGOdLot6Ce0FjM5F6mX/u099bmTytolbmiRwegLnTIB1UeAy5U1eYHlduFVxQj26OPCCT
 bpQJtt+cJZ43YhkbuhetiDcOxyzifsP2rg3cRndIkyPWxIBMK7ENG1OCaVpFIw5WB9wSmrXzg0taGW
 ZpCerhJW0zIlXk+CkuBv+UXIIZhYY+g2bmgKNxtaPzrDEHswNtH3N62VdoUt3fRVnwL3c2K871dwTK
 5XtqHYbKr0kxCRGaerSCp7pgNul8OXTjQboc3p6yCHntgXkUbaae/Xlw7IRA==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=0.0 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add watchdog support.

Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8365.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8365.dtsi b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
index 553c7516406a..e018df6844f6 100644
--- a/arch/arm64/boot/dts/mediatek/mt8365.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8365.dtsi
@@ -162,6 +162,13 @@ syscfg_pctl: syscfg-pctl@10005000 {
 			reg = <0 0x10005000 0 0x1000>;
 		};
 
+		watchdog: watchdog@10007000 {
+			compatible = "mediatek,mt8365-wdt",
+				     "mediatek,mt6589-wdt";
+			reg = <0 0x10007000 0 0x100>;
+			#reset-cells = <1>;
+		};
+
 		pio: pinctrl@1000b000 {
 			compatible = "mediatek,mt8365-pinctrl";
 			reg = <0 0x1000b000 0 0x1000>;

-- 
2.25.1

