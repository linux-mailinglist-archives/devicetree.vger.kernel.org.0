Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 779906781CC
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 17:40:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233320AbjAWQkE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 11:40:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233317AbjAWQjD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 11:39:03 -0500
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210042CC79
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:38:47 -0800 (PST)
Received: by mail-ed1-x52a.google.com with SMTP id s3so15277808edd.4
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 08:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i0xrDD3xcfCowjDtQONef23ZJknmqB0wlCixYluZ1Ys=;
        b=oaNwH+5XMsUaiNgWPF1Xozyst4lLtwAKhefYSdsFRfIniE5Ysxs+EzM0IFFqp2iVjz
         GlVnAzXgzb5LIY2D0Z0cflIQ17g9BvkTyNQ3ZJs8ukS05lKySphB2t7KG2k2HPStC2wv
         3U37/HoUIL0bfq2GUy46VpOA7M7HsTEo1RMykJnjqS6bLOUZ0wrK0X9aBT1K5B6pNbBW
         lnhbQ4uB0RzBsU48esTxGSzGrcNRL0RiSRbjpTjjrf1uA47TfOfTySE08BH3C5apMl3T
         C/RIpXE7a5pjxhd1WoFKvQHuipgDpcl3YewCyZkFXgqZ5/nX3QGKMJtvMXZ5zIm2rlWT
         awIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i0xrDD3xcfCowjDtQONef23ZJknmqB0wlCixYluZ1Ys=;
        b=Drw3FaBWE+8sJgdsHtfvdMCNF2ucwY49GLtJdTlywZvZ5iAjnzasj9f8prRIluWlFO
         /hF81k8A4vUmkrfncgmGo4OUdn3Xq5JFJH9U3i7VGwLs9xC8QbQ8JwnwDFXT63IWxCxK
         /BOwHce/ySUXeTn9q2miyHsov8wW86a9uo747AVNF9ZQ9w+srj0rhARO0e4sYkLtDO4Y
         cEMt6SxoHivhnbAu4gQUGcQ8FNo0ps7ien4aOBUiB1Ahyj992NuAp4Krn9yYldfr7KBf
         +Y0lX4+YCe5Dfuv9FHsS2uqAC0v99RdhZrWm5xXWsm1esR15ypjc+TWw55ND9G6pyQjB
         ythw==
X-Gm-Message-State: AFqh2koSuHWvYs3NZgE70AxWVS0n68tnDPHh58/RfChI5/DOcMVxwceF
        7L43nR75IppS3011RnSYcj30/w==
X-Google-Smtp-Source: AMrXdXvtlhTYRpcRpSv2FajCyFKah6jQMJf8lvOVuXdoEzYk1bbjlbdfDNwCy1YucoGj8rGb8pC/xQ==
X-Received: by 2002:a05:6402:f05:b0:49c:d9c3:ca74 with SMTP id i5-20020a0564020f0500b0049cd9c3ca74mr29108363eda.13.1674491926273;
        Mon, 23 Jan 2023 08:38:46 -0800 (PST)
Received: from c64.fritz.box ([81.221.122.240])
        by smtp.gmail.com with ESMTPSA id lb25-20020a170907785900b007c00323cc23sm22198562ejc.27.2023.01.23.08.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 08:38:45 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-serial@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, tglx@linutronix.de,
        maz@kernel.org, lee@kernel.org, linus.walleij@linaro.org,
        matthias.bgg@gmail.com, gregkh@linuxfoundation.org,
        daniel.lezcano@linaro.org, chunfeng.yun@mediatek.com,
        angelogioacchino.delregno@collabora.com,
        allen-kh.cheng@mediatek.com, nfraprado@collabora.com,
        andrew@lunn.ch, gtk3@inbox.ru, sean.wang@mediatek.com,
        zhiyong.tao@mediatek.com
Subject: [PATCH v8 8/9] dt-bindings: serial: mediatek,uart: add MT8365 SoC bindings
Date:   Mon, 23 Jan 2023 17:38:32 +0100
Message-Id: <20230123163833.1007181-9-bero@baylibre.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230123163833.1007181-1-bero@baylibre.com>
References: <20230123163833.1007181-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding description for mediatek,mt8365-uart

Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
---
 Documentation/devicetree/bindings/serial/mediatek,uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/mediatek,uart.yaml b/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
index fe098d98af6ee..303d02ca4e1ba 100644
--- a/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
+++ b/Documentation/devicetree/bindings/serial/mediatek,uart.yaml
@@ -45,6 +45,7 @@ properties:
               - mediatek,mt8188-uart
               - mediatek,mt8192-uart
               - mediatek,mt8195-uart
+              - mediatek,mt8365-uart
               - mediatek,mt8516-uart
           - const: mediatek,mt6577-uart
 
-- 
2.39.1

