Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4CE7A5BFA24
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 11:06:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230525AbiIUJGH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 05:06:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229886AbiIUJGF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 05:06:05 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58EA84454C
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:06:04 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id t7so8695459wrm.10
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 02:06:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:from:to:cc:subject:date;
        bh=YlOaZ6C3yAJ/aS44zIKSNojaTSxqANNH+S78zy9aQaE=;
        b=TuWsxRhKIorV+7QTvrJDsrcLrBFdKo92O6JaZd68/TjFSsk76qqTpKH/I/6k9IEduh
         IJzMQAlm6SGgZruIFfzYIHAQAF1yaIasb0kcmFlRAdAHsQwfqXA2/n6f8iPeBmJxq9Rk
         VHB907OKAn6fiOPHgA9cStNY29hVxrD98RxkuqZDtG2Iiafk1NGFxRqpd84JjYpwaD44
         iGisoLE+/OOxf+BxmPI4HrLBdO4cRYeWuSz1U2RmZ0E7vx2+yAolwG/2bzHWO4S1VftB
         HHywW/UW6m7s4PFCJzBbrOh0mAJ79avRiOgqbdXV/pY9NIKt0oQw6CkdSsvATRsDfAd1
         7ghA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:message-id:date:from:content-transfer-encoding:mime-version
         :subject:x-gm-message-state:from:to:cc:subject:date;
        bh=YlOaZ6C3yAJ/aS44zIKSNojaTSxqANNH+S78zy9aQaE=;
        b=RfsEjVSy8mQkdMPac9V5YKzXpbevt6N3a8Es0JEDIFjj5TFLdF5CvcRPjRdJjj8Sjc
         3j6421C6Ypl8ZxMYBfGxMKiRKAOA/PCOAVKXMOhrxxw3CM7E+uWUKtRYLd0X9PkeTFsL
         ZKGXlqTPchex/WJhrTa1Uff+zMA3qEHW/NH17YszAOrp39FGWp9XQvCRz0bipK+VrRMI
         K+L95Vl5z4a1eOq8ljw7YrBf2YucbAQsj/tOMPDL98YRUlxJ9OgYfSJxAUnY4/f1j0L5
         5zNERY+o/9RNITmYIHwS8Vmq0+p0M3lwx36gmbCBDAGQQqRCl+Oy7mtJDxa6o/PRkrgM
         Y94A==
X-Gm-Message-State: ACrzQf34tU6eprzO20t1FqHnCKicxHND8rRaQeleCb9OzNQ8iGj7QSK7
        ChKAq1q+ERG7OuWYrCjphOp4POyop7dKHrH9
X-Google-Smtp-Source: AMsMyM42NavANSTAghtyxj3MYsPr2GmPZ07dDOBdJPIoYd0shxRMkSBgdEVFh25V7jOgraUEmSjlMw==
X-Received: by 2002:a5d:6d09:0:b0:228:d897:af3c with SMTP id e9-20020a5d6d09000000b00228d897af3cmr17030766wrq.78.1663751162644;
        Wed, 21 Sep 2022 02:06:02 -0700 (PDT)
Received: from [127.0.1.1] (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id p10-20020a5d638a000000b0022b0064841esm1975482wru.59.2022.09.21.02.06.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 02:06:02 -0700 (PDT)
Subject: [PATCH v2 0/1] arm64: dts: mediatek: mt8183: disable thermal zones without trips.
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-b4-tracking: H4sIANzTKmMC/w3MwQ6CMAwA0F8hPdtklKDo33Rb45qMYlbwIOHf3fFd3gkuTcXhNZzQ5Kuum3XQbY
 BU2N6CmruBAlF40ojrvozLhFmdYxXHvUhbueJvs67jg3dODwo8hTnP0JvILhgbWyo9sqPW6/oD5i+5 iXcAAAA=
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
Date:   Wed, 21 Sep 2022 11:05:32 +0200
Message-Id: <20220921-mt8183-disables-thermal-zones-up-v2-0-4a31a0b19e1e@baylibre.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Amjad Ouled-Ameur <aouledameur@baylibre.com>,
        daniel.lezcano@linaro.org
X-Mailer: b4 0.10.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1663751161; l=665;
 i=aouledameur@baylibre.com; s=20220920; h=from:subject:message-id;
 bh=S7JAPzoUeXRvMPnCB2alosR6eDyieqz4xvRnHA5NCuY=;
 b=odNUw+Emjf+xXwX3bR9Day0u1Ui6ErZ2Qcb7uwlnF81tAHCJZx3R4ZtBqJLKiJU5tfZf08tTiydr
 o0p2IYTLDFg50ovDicFI4xTm7PUsH2cM+bcYaOje1HFyQOeK2Sns
X-Developer-Key: i=aouledameur@baylibre.com; a=ed25519;
 pk=HgYWawSL4qLGPx+RzJ+Cuu+V8Pi/KQnDDm1wjWPMOFE=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thermal zones without trip point are not registered by thermal core.

tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose
only.

Disable the zones above and keep only cpu_thermal enabled.

Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
---
Amjad Ouled-Ameur (1):
      arm64: dts: mediatek: mt8183: disable thermal zones without trips.

 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)
---
base-commit: 60891ec99e141b74544d11e897a245ef06263052
change-id: 20220921-mt8183-disables-thermal-zones-up-6ac720a305d5

Best regards,
-- 
Amjad Ouled-Ameur <aouledameur@baylibre.com>
