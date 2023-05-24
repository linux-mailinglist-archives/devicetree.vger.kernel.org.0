Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ACB470F0B8
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 10:30:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235031AbjEXIau (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 04:30:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233663AbjEXIat (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 04:30:49 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C60459E
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 01:30:48 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3f42ba32e24so5675295e9.3
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 01:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1684917047; x=1687509047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GFkeXmTsUMY8GSw8DO1YxsHt1wzgz+ONEfDUI+8GUAE=;
        b=Ky164TgIAjXoNCRewjAvpvhOJ4Fq2aqesYTLjaP4MsCdZWaK7nNI1q4ACUHyf0yARP
         khE4z1B4Wq3htHoGGiNu+1mMFFRKUkdv/98piGwOHRcsYTzoseEHnt4dQ+gSAMSTXTSb
         1j75EhptJA+nEMLiybke6sENFCRCPbdkvcEZISCZtt8Ps/JPEsyGSZrxNu9oMC0r5Ecz
         9O72t84s/Ms51QhGIloJa0e3TS2IsckqzZwn1CpJz4yOfg0/yCZbJbjr8Q0u71l0fRdV
         HudbAm0rHClx0bTFzAbc85WUmKaoTxiHzJUYrkQYS5aT4NIx1ofDL7RZIuX5kDA6y4nB
         IbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684917047; x=1687509047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GFkeXmTsUMY8GSw8DO1YxsHt1wzgz+ONEfDUI+8GUAE=;
        b=NmLm+far9DeHkIJhNHs0Vb7Rtqgmr+V41c37dYsApD9r+ubTxRrfHcCmJxEKYWYYPs
         3LveQARTfNqvyU2TqdaFbqodIL/jZtWA2XNb3lnDQOsL4T9J1y6gTVClN3R58WhOL2XF
         GCbk2Y6RXUfnXtu6x//hh0Xk0K4jqgF91DLlQCQRki4zrkQkP+WBWHRZq6WeqNmxYqd+
         L/+X46CFEJltWzYTsl291widj4/WQdXrRR4zB9p+zuTIDazD6IV+aTpm/IB+vmYIf8qB
         TsvYbupJ137RuzIs0YGc4+aIWF82B07oNSoPPUBKDDqEAgcUddbvwLVeGDoXz66GHew2
         wewQ==
X-Gm-Message-State: AC+VfDzE/3hql0JOXKp0Hq2YCU8jz5ypH9bD/8QBjMEjbXVygfsFvzja
        1sv1r9LAgWqVI1MeT6FnnbUG7w==
X-Google-Smtp-Source: ACHHUZ6JqNOn6TctkUQ6E/Zh8dcU2trBSmopBqGdD7CTtYD4boZi1njHtt373XgOG0bq+Mr+DhVFKQ==
X-Received: by 2002:adf:f80d:0:b0:306:4613:e0f0 with SMTP id s13-20020adff80d000000b003064613e0f0mr11012487wrp.68.1684917047325;
        Wed, 24 May 2023 01:30:47 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e0a:55f:21e0:9e19:4376:dea6:dbfa])
        by smtp.gmail.com with ESMTPSA id n11-20020a5d484b000000b00307c0afc030sm13871832wrs.4.2023.05.24.01.30.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 01:30:46 -0700 (PDT)
From:   Julien Stephan <jstephan@baylibre.com>
Cc:     mkorpershoek@baylibre.com, khilman@baylibre.com,
        Julien Stephan <jstephan@baylibre.com>,
        Andy Hsieh <andy.hsieh@mediatek.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: phy: add PHY_TYPE_CDPHY definition
Date:   Wed, 24 May 2023 10:30:30 +0200
Message-Id: <20230524083033.486490-2-jstephan@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524083033.486490-1-jstephan@baylibre.com>
References: <20230524083033.486490-1-jstephan@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add definition for CDPHY phy type that can be configured in either D-PHY
mode or C-PHY mode

Signed-off-by: Julien Stephan <jstephan@baylibre.com>
---
 include/dt-bindings/phy/phy.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
index 6b901b342348..a19d85dbbf16 100644
--- a/include/dt-bindings/phy/phy.h
+++ b/include/dt-bindings/phy/phy.h
@@ -23,5 +23,6 @@
 #define PHY_TYPE_DPHY		10
 #define PHY_TYPE_CPHY		11
 #define PHY_TYPE_USXGMII	12
+#define PHY_TYPE_CDPHY		13
 
 #endif /* _DT_BINDINGS_PHY */
-- 
2.40.1

