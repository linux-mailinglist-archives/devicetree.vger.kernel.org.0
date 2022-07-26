Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E02E581394
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 14:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238906AbiGZM4e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 08:56:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238881AbiGZM4c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 08:56:32 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF54255B8
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:56:30 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id b26so20054345wrc.2
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 05:56:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:date:subject:mime-version:content-transfer-encoding:message-id
         :references:in-reply-to:cc;
        bh=70sJgJ6M2wTNfwQJ3+bkMBP++3esJkgb8mg1Y3AHAIo=;
        b=uCZGOkTjzgvg0EGIHfkTrXgEILq36uTtM8gTe/90Li/u6m4RWaLWhuE1JMgp4sVdhr
         nBXnHLsXXOSeWLOXJ0FHTchVsF9rcMEgC/i0gCjYVVr94LcSaaLfvzCO7IgEm6rgyvzr
         cHcVisccg3W7PRg2j5JgRfCXS0pURtzJ3xznFjVv9JkQuDji612ViwKLyhfEqURzfe6A
         vtDiOLM5MrqxfyIKhvHxStZnugMbFV0bqOcHCehraaKtBEtpq4G9hPuuQhui/zF0etoQ
         gEZ16hmESIpCnRqhX4ISn5i9n4a/lIjwdW1DzbNJfd5JHGDAKrckY0f1xaUZ5BpCCvIo
         wvbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:date:subject:mime-version
         :content-transfer-encoding:message-id:references:in-reply-to:cc;
        bh=70sJgJ6M2wTNfwQJ3+bkMBP++3esJkgb8mg1Y3AHAIo=;
        b=W1nHYoxhcxOuYEQk13mI/V5hOplfV6kkUTbK3/KE/rxyc7je2kIF348JYratXR1ABa
         kXmhW+ErCZRnPkRy9js/2PTBWIf9xfRr4Atla4HlVd8yoo1+6Hx+e7ZtrXjvHCsr1B+9
         mPyI+j+rxnb2W3OfpWXupX5Qxk8cX5sG7pLuz0A2D9jKfGa4nGWSnNgxPKg5tVTswFiF
         YOW8QmcTyFXTDloI1aBg7xyRvY06QfDTx4f6XKksWc8taNeRaRpQd0H8LVx9jxIaB1lM
         1xzIi11XeHGxlrNXXSB218AcLQkaYigkcNl2dr/Mxm00VH30uBfDxit62ppAiige5tga
         /+lg==
X-Gm-Message-State: AJIora+uQ3sN9MsZVebLMyyt+KyziUgOJM6VLRhNljHp0i9DwgUrdR4t
        Xff6GF2Ktc9D2Y3IvIhQwCiLqQ==
X-Google-Smtp-Source: AGRyM1vh+7xD0uRlVRAT6+8Kk92s+Z9rVWNc12KDQ9vbMZkTR+6hQDfwJmTnKb4erZvbSYKsoe4YNA==
X-Received: by 2002:adf:e192:0:b0:21d:62ee:ef10 with SMTP id az18-20020adfe192000000b0021d62eeef10mr11127350wrb.693.1658840189248;
        Tue, 26 Jul 2022 05:56:29 -0700 (PDT)
Received: from [192.168.2.253] ([82.66.159.240])
        by smtp.gmail.com with ESMTPSA id k1-20020adff5c1000000b0020fff0ea0a3sm14171549wrp.116.2022.07.26.05.56.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 05:56:28 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
Date:   Tue, 26 Jul 2022 14:56:06 +0200
Subject: [PATCH v2 1/7] MAINTAINERS: input: add mattijs for mt6779-keypad
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220720-mt8183-keypad-v2-1-6d42c357cb76@baylibre.com>
References: <20220720-mt8183-keypad-v2-0-6d42c357cb76@baylibre.com>
In-Reply-To: <20220720-mt8183-keypad-v2-0-6d42c357cb76@baylibre.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-input@vger.kernel.org,
        Fabien Parent <parent.f@gmail.com>
X-Mailer: b4 0.10.0-dev-78725
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,MISSING_HEADERS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As stated in [1]:
Fengping has no longer interest and time to maintain this driver so he
agreed to transfer maintainership over to me.

Add a dedicated maintainer entry as well for the driver to make sure
that I can help with patch reviews.

[1] https://lore.kernel.org/r/20220421140255.2781505-1-mkorpershoek@baylibre.com

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>

diff --git a/MAINTAINERS b/MAINTAINERS
index 1de6a8fbf0a8..f2f0696caf6a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12805,6 +12805,12 @@ S:	Supported
 F:	Documentation/devicetree/bindings/media/mediatek-jpeg-*.yaml
 F:	drivers/media/platform/mediatek/jpeg/
 
+MEDIATEK KEYPAD DRIVER
+M:	Mattijs Korpershoek <mkorpershoek@baylibre.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
+F:	drivers/input/keyboard/mt6779-keypad.c
+
 MEDIATEK MDP DRIVER
 M:	Minghsiu Tsai <minghsiu.tsai@mediatek.com>
 M:	Houlong Wei <houlong.wei@mediatek.com>

-- 
b4 0.10.0-dev-78725
