Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14350782392
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 08:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233375AbjHUGVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 02:21:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbjHUGVI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 02:21:08 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53F02BB
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 23:21:03 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-51e28cac164so8323819a12.1
        for <devicetree@vger.kernel.org>; Sun, 20 Aug 2023 23:21:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1692598862; x=1693203662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mn9vY9W+FoZ8cXmC3nMa6Br0w/qf2GCy/Tgkao40fn0=;
        b=TLErXHG1/JZxhAD8uDmLdNAaoX2PTSWqURIE4mrfbvySMsRgoFTO5CRn3wvA77zOVd
         HpZKmbHJu5TMQJ8y6xb9v2E6yqHJnIYOj3IZLVbGSTjL0UlxNwcqcCG7fJhI8PCDcYDq
         ymm1M+9a0mYZLTTQoykq8TKGKv8r9WE1ELJRBOw5zum/+tsLT6x4FBmf+yIlFQbfCi0y
         U/TtrDVhVAG+uHi5zw3zv4wRDHDLfnSL9AXJuaPxMzeWd91Luh3XpMCI+5lRfbwMHbRo
         WOYdtmpQLpuzGHLzFKuRgzTJTw56PjVHB5U5vBBrpcNh2xJH0ciAZ6tZNvXsLQu6C82F
         FDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692598862; x=1693203662;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mn9vY9W+FoZ8cXmC3nMa6Br0w/qf2GCy/Tgkao40fn0=;
        b=Ek4CzgD7KwKV/AauW5ieys03LHO0GEG9o+xEU+6frJYTwDS2ct2mQq5lf7I2U6M/pf
         MqXTpa6h3p4xrO/bTuU40zXTZlhqmyhaJPAG/tl8wkXF1iI/CF02XCn5gkQV3rn/Air/
         YY8ZZVLlEyeZjRBaZQIF/kXmDBit8bvSc1uUFYCIC66029CBk9kfvNAdBRNy60eTjEHG
         3t0rwVpR1N64YZonUkJ3/QtPDGqklor5eCZwbcU1bWgzFHBxpG5GQcUV0X1RohZIuOQI
         FMENUrIzTonQfPGxvGFpf0hUJF2OYjwChqJJs9qHY9sc2xeh+piUKC7u+kAJ2lUj3cwg
         nOmA==
X-Gm-Message-State: AOJu0YzeUG4uNScMmOsmGUPAqSmVKB2yshhH2tsOWrgQeEqE4ckAs/AZ
        BkOcHjcrrWhwVLBtxHS33wPrgw==
X-Google-Smtp-Source: AGHT+IFrzl6yPLdebGbLjXFtJEl0orSQXRt5UT2/XYLZljLBkzBgmF1PhnVWFbcXzua6YHWkSZsRcQ==
X-Received: by 2002:a05:6402:3447:b0:51d:95ac:22ed with SMTP id l7-20020a056402344700b0051d95ac22edmr6633103edc.1.1692598861811;
        Sun, 20 Aug 2023 23:21:01 -0700 (PDT)
Received: from fedora.. (ip-095-222-150-251.um34.pools.vodafone-ip.de. [95.222.150.251])
        by smtp.gmail.com with ESMTPSA id c4-20020aa7df04000000b00523b1335618sm5455003edy.97.2023.08.20.23.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Aug 2023 23:21:01 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-i2c@vger.kernel.org
Cc:     naresh.solanki@9elements.com,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [v16 0/4] Add support for Maxim MAX735x/MAX736x variants
Date:   Mon, 21 Aug 2023 08:20:20 +0200
Message-ID: <20230821062027.2631725-1-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v16:
- Fix comment style
- Remove copyright

v15:
- Clarified VDD usage on PCA9846 which has two VDD pins

v14:
- Added comment for interrupt support

v13:
- Fix dt-binding
- Fixed nits

v12:
- Add separate patch correcting interrupt support in dt-binding
- Fix typo in commit message
- Make vdd-supply non optional

v11:
- Fix dt-binding example

v10:
- Small updates to dt-bindings
- Make vdd-supply optional
- Drop MAX7357 enhanced mode configuration

v9:
- Fix 'then' not aligned with 'if' in dt-bindings
- Split enhanced mode configuration into separate patch
- Add MAX7357/MAX7358 register definitions
- Rename config register defines
- Update comments and explain non default config being applied on MAX7357
- Check for I2C_FUNC_SMBUS_WRITE_BYTE_DATA functionality

v8:
- Move allOf in dt-binding and use double negation

v7:
- Reworked the commit message, comments and renamed a struct
  field. No functional change.

v6:
- Fix typo in dt-bindings

v5:
- Remove optional and make vdd-supply mandatory

v4:
- Add missing maxitems dt-bindings property

v3:
- Merge dt-bindings into i2c-mux-pca954x.yaml

v2:
- Move dt-bindings to separate file
- Added support for MAX736x as they are very similar
- Fixed an issue found by kernel test robot
- Dropped max735x property and custom IRQ check
- Added MAX7357 config register defines instead of magic values
- Renamed vcc-supply to vdd-supply

Patrick Rudolph (4):
  dt-bindings: i2c: pca954x: Correct interrupt support
  dt-bindings: i2c: Add Maxim MAX735x/MAX736x variants
  i2c: muxes: pca954x: Add MAX735x/MAX736x support
  i2c: muxes: pca954x: Add regulator support

 .../bindings/i2c/i2c-mux-pca954x.yaml         | 46 +++++++--
 drivers/i2c/muxes/Kconfig                     |  6 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c           | 95 +++++++++++++++++--
 3 files changed, 132 insertions(+), 15 deletions(-)

-- 
2.41.0

