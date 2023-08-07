Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8DD8772EB1
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 21:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbjHGTbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 15:31:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229851AbjHGTbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 15:31:35 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DCC031715
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 12:31:33 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-3fe24dd8898so42073315e9.2
        for <devicetree@vger.kernel.org>; Mon, 07 Aug 2023 12:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691436692; x=1692041492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eRSwV6Gm+XzxbXgNMBpKpDlEh6gTRS+MFq99dQgncbQ=;
        b=mHrDzRq+wq6uTZHPmwteMcteTqBarR3Nk2/LC+UMcpxDdpyYVB/0FPzO+LDxTTbbNr
         hRhzkXWggtKCLT4xwA7fIp3dNwm5RWOSGd3w4YU41OwbdBx+3TsaQno03l0rK33u9g29
         Mm3pzAcNw4BPYcA6KtUHgbmxynAXxh683LDni4HrDhgv95CoIFLQOyru7phiWKQkGpPI
         LecLAQigg50nsbneHX72Bl9nT/Umvd5U9X6d/NHRYZWJrzCXRsQ0oxSGLsRB6I04PHxm
         pomhLzO6E0p/XZZ9ABl879hBlfPQi9HFO3KNgYy1Nc8E7e3gSGuQk5OWV4X7lV4DBs+G
         oFAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691436692; x=1692041492;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eRSwV6Gm+XzxbXgNMBpKpDlEh6gTRS+MFq99dQgncbQ=;
        b=WZbDL8xG8RNT2+Esjz/QbamjP46Y6SHdUpbWVSS5IE71d6am8KdAmEc4QOWrr7q/0T
         v3Sq1xdJZ6CGMsJRafRfSEs2zTs6yAopnHZmhPlQkjpvv7uf7q9xmWlgQiGjgwiBuXAw
         daOjDJuntdb/ZUlGaJxqqTCCG5+KZOO7LZJdGFZ/aMpaUovBaeT3YoVOZz9KjFGJq5MF
         tiHtJl7oBY1ml7FSFlhJOAgjTSWNBbZlP3WVOAnqx348hJWe0U6zmnCG/B6Nv1bP66Au
         SyEIsw8MVJ4HYjLbNC+i2vnVdCWV2V0aj5PITuNoRh2s5/4+vLlLT9M8TYGHnNbTjaZF
         61kw==
X-Gm-Message-State: AOJu0Yw9UZsr7bCSP5Vx3QX2kXRAb4dyB0m5/qpjU8ayWkzb+ryhR8/E
        cAFJmhBN0vPBIbpcrigWgGcsyA==
X-Google-Smtp-Source: AGHT+IHcrhdGZU6crsuk18nFD4cu1qWw7VPP+T0+AdP+h8J/EgCXLVdYCouqFEEXXaCm890UjwpwOg==
X-Received: by 2002:a1c:740b:0:b0:3fe:5053:1a0b with SMTP id p11-20020a1c740b000000b003fe50531a0bmr4034769wmc.11.1691436692253;
        Mon, 07 Aug 2023 12:31:32 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:b3d6:9e6:79d9:37cd])
        by smtp.gmail.com with ESMTPSA id l7-20020a7bc347000000b003fbdbd0a7desm15985654wmj.27.2023.08.07.12.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Aug 2023 12:31:31 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     "David S . Miller" <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>,
        Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Jose Abreu <joabreu@synopsys.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Andrew Halaney <ahalaney@redhat.com>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 0/2] net: stmmac: allow sharing MDIO lines
Date:   Mon,  7 Aug 2023 21:31:00 +0200
Message-Id: <20230807193102.6374-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Two MACs may share MDIO lines to the PHYs. Let's allow that in the
stmmac driver by providing a new device-tree property allowing one MAC
node to reference the MDIO bus defined on a second MAC node.

Bartosz Golaszewski (2):
  dt-bindings: net: snps,dwmac: document the snps,shared-mdio property
  net: stmmac: support shared MDIO

 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 6 ++++++
 drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.c     | 8 ++++++++
 drivers/net/ethernet/stmicro/stmmac/stmmac_platform.c | 6 ++++++
 include/linux/stmmac.h                                | 1 +
 4 files changed, 21 insertions(+)

-- 
2.39.2

