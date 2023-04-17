Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4CB06E4126
	for <lists+devicetree@lfdr.de>; Mon, 17 Apr 2023 09:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230514AbjDQHgu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 03:36:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230430AbjDQHgO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 03:36:14 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5282240F4
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:35:01 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2a7ac8a2c8bso11307171fa.3
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 00:35:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681716898; x=1684308898;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AMqVD+3rNvnx6wycjLK+d68DyXUgEvodKiq65GmNOi4=;
        b=VSafXWaJQk5u/FI8j9UPOZlAe9n0WSpnMJpLt3SRhT9K18bCQ7Im9xcWTXPByN7Zl9
         VqT9juuxX2hm4f1t4YFSeysrPo2AADZDGwe4UtR+VyEosQy3rttCGRqT+twIFlzRTkXy
         i8WtzWg5B/Iuzo96FjqGJfLTcpRIIzKqafuhcia5eQZzjpen5KcjHtWZd7oljqXx7HBe
         jb9r+WYe0Wxph3wWPhrnYtElHpnj/avztQG6hpSC55eqEn8Qng+LEGQ4iHVOzRTIxl44
         MLxd6mJYw9wLUc6H2NLvh0RsmYlyU1frRr6C95ga/nkJefNVmY7tGPQPrWYkBuFidBUy
         Zjzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681716898; x=1684308898;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AMqVD+3rNvnx6wycjLK+d68DyXUgEvodKiq65GmNOi4=;
        b=jlE7DBuQR4BdV4YvO/DwaQZZQNWgtq8TX/prAH/QvCZRjH4kCRt0b6qk0qAdWlWDq6
         OWIVv6eqRUj4ITcDWii/BtH8WWSZ85rMAA1NRz6+s2DWWkhTOWrWDNoRbM/riPKwKJ4l
         3KWdNYUxl4ZoXuBcyGOSPfKPzTdmH5lQQk1c8FlyWideyclopjraLv1aWaso8dbliIr6
         sLqKDdBixEA5NhPLVr1uzC4qMe+h5mKuJEcyGiJ6M0R7c99hk9KKrw2xXPzJA2CKSj9W
         5pRPF3mR3q74+F6R4OatluXhqgg65ttCeeI/tzoAYxmUhU2Jwzb62dT8myoNJeld6olq
         YukA==
X-Gm-Message-State: AAQBX9dqHgCiiWSC/67BqH+mx3NBLzPvDaXy1ZZwoLPM4DRkuDntEE96
        /I+Goj5IHylgJtGhmc+uq80DrQ==
X-Google-Smtp-Source: AKy350aYV/xU5PmdvoOcCCFGTSvSEGtsMh2RodTK//IpQa9ROYy7I79t+SCOqr5Tqb0DPZ6x4ScBJg==
X-Received: by 2002:ac2:454e:0:b0:4dd:a61c:8f74 with SMTP id j14-20020ac2454e000000b004dda61c8f74mr1929741lfm.51.1681716898007;
        Mon, 17 Apr 2023 00:34:58 -0700 (PDT)
Received: from [192.168.1.2] (c-05d8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.216.5])
        by smtp.gmail.com with ESMTPSA id w15-20020a056512098f00b004eb2f35045bsm1956275lft.269.2023.04.17.00.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 00:34:57 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] SRAM dt binding and fix
Date:   Mon, 17 Apr 2023 09:34:55 +0200
Message-Id: <20230417-ux500-sram-v1-0-5924988bb835@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKD2PGQC/yWNQQqDMBBFryKz7kASNcFepbhIdNRZmJYZWgTx7
 k3a5eO/xz9BSZgU7s0JQh9WfuYC9tbAtMW8EvJcGJxxrelswPfRG4MqccfB2zD44PycOihBikq
 YJOZpq8nfpKrW9SW08PG7eozX9QW2fGp0egAAAA==
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds a DT binding for the U8500 SRAMs.

This patch series also fixes an issue with pool labels that I
saw on U8500.

I suppose SRAM patches will go in through the SoC tree, I kind
of feel that SRAM is a SoC concept and the driver should
actually be in drivers/soc...

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      dt-bindings: sram: Add compatible for ST-Ericsson U8500 eSRAM
      misc: sram: Generate unique names for subpools

 Documentation/devicetree/bindings/sram/sram.yaml |  1 +
 drivers/misc/sram.c                              | 10 ++++++----
 2 files changed, 7 insertions(+), 4 deletions(-)
---
base-commit: fe15c26ee26efa11741a7b632e9f23b01aca4cc6
change-id: 20230417-ux500-sram-961796726db4

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>

