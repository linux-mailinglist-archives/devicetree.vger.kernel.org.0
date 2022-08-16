Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D202C59554C
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 10:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233056AbiHPIbs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 04:31:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233482AbiHPIbC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 04:31:02 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28F6313068D
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 22:49:58 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id f22so12114158edc.7
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 22:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=5ijnosVd1DyjaZS2JH847SXKpSrhi2E7u0Gbv+lXuHQ=;
        b=FPSJuUqLJHA+5sb2JYrTVJppGipcWn3Adh9TtEtku8dHSEb3+kLVWv6MhrS7EusS80
         YWunlzx4YJFd/lt+SiLpPVN5a+kG/X/EY76Agzmq8hNlA59/7JNTWDzNGkzs1Zu5C95/
         Un1PAINpCkqU08QF/Zp76ISm/oHQRCdyBaDVlB8W4v7D2/q/UbtqP/O6OIPgpJ2koKB0
         qH2asvBD0mIxIAtuxnJ+j2ZV/WozEPSQ5zGifzXgP2oq6nDQtPPln71gE6lIdygNd4lW
         q/d3SShr/tt6xMzqTOVyXTWve0wQAs6jQBXJDsrClEbNP9KAbypEYfxRd5InuvSPa6ye
         CLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=5ijnosVd1DyjaZS2JH847SXKpSrhi2E7u0Gbv+lXuHQ=;
        b=w/R38y8e8SB1iUWkhn5G0j7CoHWhlzsg2OVUr9AB9ukJ1c3U84WgALTc1YxyWglxAk
         0EhAX8vr9zqa7xAClc1Sdj6HU++T9MLb7T5YGU+Sulb9xFjLG7DpR0+nxRfY1ccNr7Wj
         YMb1Tp2MvkYbDPoUDW/DMr9N+MVBt9JAwLbdPVYtKhDQIOij77dBaJEMBHpnnFtzdtVk
         WVJOb4T+ol1IKP9E/JTULRAQ5YJalcSB5UfZjZBGVxVBPBKMC0woe4toaTT5KPxR9slv
         ucA9zk8ilaILd5O2ulaLZT9qbVPAWCHRrs9HDZuuJ2ntMYcebIsPFjhFyxW0geob2a/P
         XBKw==
X-Gm-Message-State: ACgBeo3zBmAuaUvDquMBctwzVTXzsuBk7yE9JDxHOZqDvYRC1r9aAJlG
        K9WWK8W+aORU/CRe8B8vwNv6Emu2yNLoSiUd
X-Google-Smtp-Source: AA6agR4LYNdi2/YijS8dZKaMp/eFjD7ovaqrRxxz9mkwspujWGJ3V9LMg+7uUIKKPU0aPBFiMnbKxw==
X-Received: by 2002:aa7:dbc5:0:b0:440:b0d6:7586 with SMTP id v5-20020aa7dbc5000000b00440b0d67586mr16828340edt.85.1660628996722;
        Mon, 15 Aug 2022 22:49:56 -0700 (PDT)
Received: from fedora.sec.9e.network (ip-088-153-019-247.um27.pools.vodafone-ip.de. [88.153.19.247])
        by smtp.gmail.com with ESMTPSA id d20-20020aa7d5d4000000b0043c92c44c53sm7797054eds.93.2022.08.15.22.49.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Aug 2022 22:49:55 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        linux-gpio@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] pinctrl: Add Cypress cy8c95x0
Date:   Tue, 16 Aug 2022 07:49:13 +0200
Message-Id: <20220816054917.7893-1-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Cypress cy8c95x0 pinctrl support.

v3:
 - Update DT binding
 - Fix direction mask calculation in irq_bus_sync_unlock
 - Set can_sleep to true

v2:
 - Update DT binding
 - Support output pincfg through DT
 - Always expose all GPIOs and ignore ngpios property

Patrick Rudolph (2):
  dt-binding: pinctrl: Add cypress,cy8c95x0
  pinctrl: Add Cypress cy8c95x0 support

 .../bindings/pinctrl/cypress,cy8c95x0.yaml    |  134 ++
 MAINTAINERS                                   |    6 +
 drivers/pinctrl/Kconfig                       |   14 +
 drivers/pinctrl/Makefile                      |    1 +
 drivers/pinctrl/pinctrl-cy8c95x0.c            | 1381 +++++++++++++++++
 5 files changed, 1536 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
 create mode 100644 drivers/pinctrl/pinctrl-cy8c95x0.c

-- 
2.37.1

