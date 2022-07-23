Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0F3D57F17E
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:45:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238585AbiGWUp4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:45:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238725AbiGWUpz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:45:55 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1316610FE1
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:54 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id bh13so7091344pgb.4
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y2X4hBgWJ5M3qcpU2Yj23INzw0af6N00euO3mnLniHU=;
        b=vQz45ZqcsffyC1SskJaeS+KSyktsNS9Qn3Ay4JgjPWJzB7+P14ug5wFF8HoxLaT+qH
         6iRpgUGAGYU+RJZf2IR4624qznEwqecQLmDnyeS2IoruPQd0cWVLC15PKRybvW0IxUIf
         d5oah9D9MC4GGXF91Th6itXySGXUGdWYBBfs98rPThudtjEYHjZQUj4V5IuRhOU18iTX
         nUS1jWjmuE8UFuHTuuSOa6XMKOACxKtrnxsBtczIbVGSZui5G6gPHp/oQPGRZkn+0eLV
         x1u62jXmlCXoi+jtTbqCr9dDeW2x2f7K3Mg+dpUTeWd1I5hGdpuvcBuY6EFB7X0b2aYx
         zSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y2X4hBgWJ5M3qcpU2Yj23INzw0af6N00euO3mnLniHU=;
        b=xA3y9+7vqto8X07O3bmkhUjpYHic17qq45Jg5rXjlGwRqlBuoO/hLnrIDEtTLyPCKX
         mcfEp7E1hm/wqcFngRm9KgegueeWxuL9ntDxgCn5KEcVJzl0hnFWxlhnpHqIOq8M8zhR
         LzxakcaAVJTTuAR3JICAYqTGkzjTmiCAvvF7AZrJ0nQfvhoS4oDFeC52RXqTRkrzdyUl
         5eSfqiMZMwU9WAkYDKtWbcygOhKRJs1dbrbl7G2HyJxiBsMm9DBiFiSHShTcgJeWCCtK
         zBUGjtN9EhhKDHbaJ7PkQJKCSCkHGuSgv6loo2GRCUNQdWmpHrysAvXQfbTo6gyUuXbI
         OXuA==
X-Gm-Message-State: AJIora8EchjYA3iKlRpX8hPkj0DkqoQPRfzCowlJvl8DCvh5ydzRzkg3
        GoijR2VfzrnLBbMPgZt9rd8Rpw==
X-Google-Smtp-Source: AGRyM1tTjCYloHNRD4pj5g9L0ejn2QlFQY4tvRYYRXez7E6lEaXUUk6JKXxPvsNRbV8uKedhaLcIIA==
X-Received: by 2002:a63:551:0:b0:419:9286:56 with SMTP id 78-20020a630551000000b0041992860056mr4888343pgf.267.1658609153512;
        Sat, 23 Jul 2022 13:45:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:53 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 22/22] ARM: configs: Add RV1126 ECM0 fragment config
Date:   Sun, 24 Jul 2022 02:13:35 +0530
Message-Id: <20220723204335.750095-23-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/configs/rv1126-ecm0.config | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 arch/arm/configs/rv1126-ecm0.config

diff --git a/arch/arm/configs/rv1126-ecm0.config b/arch/arm/configs/rv1126-ecm0.config
new file mode 100644
index 000000000000..8219c2d4d794
--- /dev/null
+++ b/arch/arm/configs/rv1126-ecm0.config
@@ -0,0 +1,3 @@
+CONFIG_RTC_DRV_RK808=y
+CONFIG_COMMON_CLK_RK808=y
+CONFIG_ROCKCHIP_SARADC=y
-- 
2.25.1

