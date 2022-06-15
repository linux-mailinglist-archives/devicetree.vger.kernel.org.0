Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 566F954C4D5
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 11:40:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346869AbiFOJj6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 05:39:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234780AbiFOJjY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 05:39:24 -0400
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 582AF40A2B
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 02:39:14 -0700 (PDT)
Received: by mail-pj1-x1036.google.com with SMTP id y13-20020a17090a154d00b001eaaa3b9b8dso1509725pja.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 02:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ja3EqjN7N3wjkxeGuFVn5Brj3OCcnua+aSOiaQe4d38=;
        b=Dl6wspIqN1HwQv+xanGbY5aahQSjQUwlXUwZZrlw7ZsOmHfqQ+C82WMcs9hILlP2J7
         A08MpVrb4Xc124CZe2D49toRajJ1auXhphFK1rOZSQmsvxoY2ciSH7k7+Z6fkM7fz7Tv
         53bTfCSTORaNt5pw+0wYQZY8oUsa8h68+R1dg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Ja3EqjN7N3wjkxeGuFVn5Brj3OCcnua+aSOiaQe4d38=;
        b=oVPtmLHNWyc/DnuGerqrBpbQbA83/DD9Rs2Iji60v33hOgmCZmEcH3KhvBK8MFmygh
         2nClZ+JJDFKcf4U1cBf+0CJVDKSZXw0lDN7XffJfjA81mjEmzAq8UgcFs85uQw0vR3hl
         D2uWKGvnqWDeaUHwuoYgH78o6p4DymfxaM5uFfJaCIYeIC4RiDtzawTT1NesndBGjJNs
         bZ+177yDqbEfSB2hOg4i9ufNaNLNMWmIEWnDydU1QeaI7HpJ6jVxqiJVD0C4CPX3cxiR
         qmXweI733GMlA1+9ZoteGziLgHYAgNPIWXGndHKx6wloXSuzHYfyVEZZzVDlNn1fiS2v
         T2cA==
X-Gm-Message-State: AJIora8uGX8xc0eudzpem5L2Nmob9gq/NjXLil9FnLJWfZOZzx2rlcza
        wdwFXOEyabDkzuDngkEgberSA3tE1X3waXY1
X-Google-Smtp-Source: AGRyM1ttjP1JHhgada/B2uAxCQZnmdni3+xYfYipiH7otAjGeZI2YHcaZGJM5J6ZNWQ53JQTvClPJA==
X-Received: by 2002:a17:90b:3b8a:b0:1e2:f1da:bf9b with SMTP id pc10-20020a17090b3b8a00b001e2f1dabf9bmr9184899pjb.77.1655285953507;
        Wed, 15 Jun 2022 02:39:13 -0700 (PDT)
Received: from localhost.localdomain ([183.83.136.224])
        by smtp.gmail.com with ESMTPSA id jf17-20020a170903269100b00163f183ab76sm8662543plb.152.2022.06.15.02.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 02:39:13 -0700 (PDT)
From:   Suniel Mahesh <sunil@amarulasolutions.com>
To:     Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Maxime Ripard <maxime.ripard@free-electrons.com>,
        Christopher Vollo <chris@renewoutreach.org>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Cc:     dri-devel@lists.freedesktop.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@free-electrons.com>,
        linux-amarula@amarulasolutions.com
Subject: [PATCH v2 0/2] Add R16 Vista E board from RenewWorldOutreach
Date:   Wed, 15 Jun 2022 15:08:58 +0530
Message-Id: <20220615093900.344726-1-sunil@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
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

This patch series adds the R16-Vista-E board from RenewWorldOutreach based
on allwinner R16(A33).

Patch 1/2 adds the dt-bindings for the board.

Patch 2/2 adds the board with the following below features:

General features:
- 1GB RAM
- microSD slot
- Realtek Wifi
- 1 x USB 2.0
- HDMI IN
- HDMI OUT
- Audio out
- MIPI DSI
- TI DLPC3433

It has also connectors to connect an external mini keypad.

Suniel Mahesh (2):
  dt-bindings: arm: sunxi: Add binding for RenewWorldOutReach
    R16-Vista-E board
  ARM: dts: sun8i: Add R16 Vista E board from RenewWorldOutreach

 .../devicetree/bindings/arm/sunxi.yaml        |   6 +
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/sun8i-r16-renew-vista-e.dts | 361 ++++++++++++++++++
 3 files changed, 368 insertions(+)
 create mode 100644 arch/arm/boot/dts/sun8i-r16-renew-vista-e.dts

-- 
2.25.1

