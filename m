Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3CAD6112F0
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 15:36:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230468AbiJ1Nf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 09:35:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38412 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230340AbiJ1Nf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 09:35:57 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2509F7AC36
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 06:35:53 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id y69so7909765ede.5
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 06:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mind.be; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WSwQM4r3Aloa2EOq8rU0uP3kNCarhDXB0thjIbc77xg=;
        b=STyBewDO/7n9ft69SvCHqaswoHQvZFRM3ljBu+AQ9E6wq3TtWYkWUMcr+eiu3te4+S
         oIhlMd2D9UcNJ6mi9XJk2mqIzApoFYoKjMbM88SfD8kRmNogMRGMZoOgHJ1llBQ0bpXl
         weTsPE4Syk7c1GQffwixdScJufTiulEPVRlKx1bI/N09XwMTOHyoFKo5TXZ1+a1S339g
         suMm3HROwfKIj/2ACxboL+ThNqSaF6bk6q3NLZ7fJHIQTs+RVon+IoKK5eNosi2um7Qn
         f3wqQUE9RSyasQCicPx044wTuwhQNvFE9i3qMrqHi4yGa0MeSBAzR2C8mWjWxbISEu6Q
         TdTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WSwQM4r3Aloa2EOq8rU0uP3kNCarhDXB0thjIbc77xg=;
        b=OaVARq8zbhqP0DzIPAnmC4yLTGJaGhup5PZl9yRZAcC134TuPwCCTikyAS/pQsFPa8
         5bvH0v2JSYKQzZ8pCW1UsefSXFWVb+DfPkmh6Rmt92G5FOErQwGQiI5saNDPrqqJupDA
         VXiQXo+O3QrjYjMq2wq0uxkoMSaLhib6AtUZXGWuzefJ0o22jg6xIbNXJDqa5HjwxoYS
         4tVZKiauIb5WFVeXeAh1bqyJYpteOMxtrroyRvuN5bbjJUOYlMBz6nTAseCOt4pClj4t
         8HMtg39oSidqZDbumAerDybgbkQYK8vLTCbty4nUzXrEX+Vtme0EuYVYF6UMis0UP5s4
         MQJw==
X-Gm-Message-State: ACrzQf0k6MaZCVDQu3itqNuBkMN95IoxaNc5I1p4+AClNR5sQXh9Rb2y
        2fKGxt8tO5n9+kN2KrOh10fD4A==
X-Google-Smtp-Source: AMsMyM6LVAkBeUbJXuZCHehVOHMks5GfyGlenLV/x11aGi6VugERXZO0ftYFMJ+FIrvXED9FlWuYKw==
X-Received: by 2002:a05:6402:1941:b0:457:13a:cce9 with SMTP id f1-20020a056402194100b00457013acce9mr51736950edz.265.1666964151837;
        Fri, 28 Oct 2022 06:35:51 -0700 (PDT)
Received: from dtpc.zanders.be (78-22-137-109.access.telenet.be. [78.22.137.109])
        by smtp.gmail.com with ESMTPSA id mf7-20020a170906cb8700b007aa239cf4d9sm2190907ejb.89.2022.10.28.06.35.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 06:35:51 -0700 (PDT)
From:   Maarten Zanders <maarten.zanders@mind.be>
Cc:     Maarten Zanders <maarten.zanders@mind.be>,
        devicetree@vger.kernel.org,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>,
        linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
        Pavel Machek <pavel@ucw.cz>
Subject: [PATCH 0/2] leds: lp55xx: support disabling the charge pump
Date:   Fri, 28 Oct 2022 15:34:57 +0200
Message-Id: <20221028133501.95833-1-maarten.zanders@mind.be>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A new option in the devicetree "ti,disable-charge-pump" disables the internal
charge pump. This can be used to avoid current flowing into the Vout pin when
an external supply has been connected to drive the LEDs.

Maarten Zanders (2):
  dt-bindings: leds-lp55xx: add ti,disable-charge-pump
  leds: lp55xx: add option to disable charge pump

 .../devicetree/bindings/leds/leds-lp55xx.yaml     |  5 +++++
 drivers/leds/leds-lp5521.c                        |  6 ++++--
 drivers/leds/leds-lp5523.c                        | 15 +++++++++++----
 drivers/leds/leds-lp55xx-common.c                 |  3 +++
 drivers/leds/leds-lp8501.c                        |  5 ++++-
 include/linux/platform_data/leds-lp55xx.h         |  3 +++
 6 files changed, 30 insertions(+), 7 deletions(-)


base-commit: 5f52a8ba7e91215c3d046d298fb328d1b9f7897d
-- 
2.37.3

