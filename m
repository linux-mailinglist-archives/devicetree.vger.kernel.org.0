Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0FBA26FF738
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 18:30:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238856AbjEKQaI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 12:30:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237852AbjEKQaF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 12:30:05 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 428485255
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 09:30:02 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-50be0d835aaso15703528a12.3
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 09:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1683822600; x=1686414600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ipOv2lztUzpLia8FmCYNvL1mLniDnk8nXmCSG+X0J6w=;
        b=xt1Jv0vMM3GWMt/w/W4P/jCAMzVqz5EqcBowbMxBB9cBqXG2B+K6xhz7SZQeSwCc5X
         UMHpbsoxmqOMD0raFtsg6fgVAzGX/mZ1oV0BaURSO9VUpe0NescAmsH7sv9Yc0tU79L0
         n/OSvxy8OZlA0Y2Bn6JGPjncWRe9XdT2AwrW3tZ36xv7RTnxtZTGFb2PxK9Bfn6yVIe/
         I/R/YCdwXovv5+J7ss7P5W4+QyFeCRUb3eQ7ZJL7s1ovSYRjJ0eIQQEjkIOjBHoCrdKL
         MY7+49yxdvGuZPXETSukKamrl5kl83R53x7+V8Gif5sAW94F3UCUzAaBCowdygV9xr+D
         TcFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683822600; x=1686414600;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ipOv2lztUzpLia8FmCYNvL1mLniDnk8nXmCSG+X0J6w=;
        b=XgUQ5ewrI5SRB8VsKcsUZHSnf5LnHMe4f/TE0/MGYqvn823k/LSVrlMRulanwxdxrm
         0L8DrCEGquXz1qz7XkGaWuc4+Sh9R9oR9Hxudn8NaXTIhbIsw6lfSkzAry+Okm32vbIZ
         jCQAruBRt0YwqEX4sI2cy6FEXa5Wi/47OYg8K+lRFbcaSnRAZa8kWnzY55lnZYWKzp2p
         hlcY79NTjOY8aZrQl6WmLo6qiJfTi+0gAHcu1Q6lx0TU0Ym5LV7iFsWX5vhxiwA+DZYX
         Uzl+ioomlCHe+6OtyikVavWoEWESQSV6wsxS3R45bmf4np9fCZADbVo7V+v7YTa+1StQ
         2lmA==
X-Gm-Message-State: AC+VfDx6htjnhbh6ALld27vbdVKCL7ETFIDo0jup2NYU5LBIvnbHMEkZ
        23Ho8/Ktvd5gRQVjzteknPHAOQ==
X-Google-Smtp-Source: ACHHUZ71vCZhPm0J+A82RBrrcLRhb73jCbw1vM4RDGGiQs0XT+d7oMG4cRq7D0dAHglYWdk0gMnkNA==
X-Received: by 2002:a17:907:97c8:b0:961:b0:3dfd with SMTP id js8-20020a17090797c800b0096100b03dfdmr21636902ejc.7.1683822600785;
        Thu, 11 May 2023 09:30:00 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id v9-20020a170906338900b0094ee99eeb01sm4209935eja.150.2023.05.11.09.29.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 09:30:00 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Thu, 11 May 2023 18:29:22 +0200
Subject: [PATCH v7 02/11] arm64: defconfig: enable Mediatek PMIC key
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v7-2-98cbdfac656e@baylibre.com>
References: <20230203-evk-board-support-v7-0-98cbdfac656e@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v7-0-98cbdfac656e@baylibre.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=794; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=XRrfEG0c7tdATqVetaOHCMByxAwwh3eKuEexDzWoT4w=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkXRgEyGh8t+VYV3zOirZOn0tC3DjrKpnJLxYko1YW
 Bq6EnwGJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZF0YBAAKCRArRkmdfjHURT0pEA
 CLX38j2rbyHDohHodWsCHwexPBGtcNM7UgcjV+YqDjeR0JggLVNNi3rwWwaAFxwEVuaoUaqabO928E
 ABCx+0HNpjYuyPy159sF2+wPt5l5BmJ5U7NjOqgMb86wpsWC2a9eT1i/zcI0J/Ht7yXLUIQBfzwRao
 NK1qnfn2cQnj9Agql/EloZzYTpmIno5IqZv60w7rMYHoaeXOrA7v/NVed5ttpDi1iFvi6wGxmTZLls
 fhDhDthJ3lNLV7+wKMW90z/wCUS0CS/iexiDJKPI5EjuIxNgYEIYY5TwfFQmau3YiVofUiXRvf3ojP
 jQWPCKY4oyvwLv9na/6uB5VG8PUxJUzWBbdHSnEjws61Mp1rXfI0qm8NiUowKdPZBRTsuDgWM7LXXG
 W7dJBmA6XdRAPiGC1/F511rPbED7UAen+YFNBRaHN14Ev95kqDrl8XI2FdIa4qXHNoOFkr1BV+R41I
 UJDbCHqLjWkA0lYjlwabmrSrJdrbd5e0OnwYnHhI//oPALeh8ZvoNPoR7NCt/nZ5HwDQzHRjhRift6
 xwS1Ly9Oc36JkeKSWJhV7BzELCmw9tFA8OkHFgu0ABCXrSItDzMS73Lb43UxAgI2i0bxEaEBHa4nCv
 /AQQhO8fb9J/c+wxpUB6nu7vVg5rJBHo5LMyFA4qGyL8OB0vPZbZq9tHbF2Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Mediatek PMIC devices can manage Power and Home keys (buttons).
This patch enable the driver which handle the 2 keys managed by the
Mediatek PMIC.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index ed3fca298314..0db8293f477d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -413,6 +413,7 @@ CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
 CONFIG_KEYBOARD_IMX_SC_KEY=m
 CONFIG_KEYBOARD_CROS_EC=y
+CONFIG_KEYBOARD_MTK_PMIC=m
 CONFIG_MOUSE_ELAN_I2C=m
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m

-- 
2.25.1

