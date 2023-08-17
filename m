Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC2F877F0F3
	for <lists+devicetree@lfdr.de>; Thu, 17 Aug 2023 09:11:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243464AbjHQHLY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Aug 2023 03:11:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348360AbjHQHLF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Aug 2023 03:11:05 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1F0C2D40
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 00:11:00 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bfcf4c814so977235966b.0
        for <devicetree@vger.kernel.org>; Thu, 17 Aug 2023 00:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1692256259; x=1692861059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=10hrN69GNW7jEsK+iBtlLYcIuc/Ievar3/OKjhX+0P4=;
        b=cYAqRqrFGqxtx5X++EX/SpDAvNsuRgefS9Ues4JEL15GQFDrFph+1a6Foy6xBSieyN
         cjSO2ZKEAypjLOiPVGTtD/gQPi5oWEFyF8c/BYoYMAujD5VK4VvLEfGby3pJ6hIS0u+N
         EZLVvf/96s3aA9hOB9OuStKj9KfTzq21Ws6cSTB2IP17Z4QbMgKpU/6K3XCr2+6QYFzP
         IQX1NJOJ6jqgCEXo3OjG/JA2QRBlBDLjpdeCZYABzakGcMItmza1o2O2vQS0J0fsttat
         lO9TwyzzYCGIefo4uqmylK3KPSdYVTl1T0eond1gPEb6dZHdarjtKXR1UW0jXKbv7qnk
         FNEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692256259; x=1692861059;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=10hrN69GNW7jEsK+iBtlLYcIuc/Ievar3/OKjhX+0P4=;
        b=b+SgJZ4f4rSTe/2sed0L22tai5GzVVPWGRTBI9OpVGymCMvF5T3W0r55wr1m6sw+0Y
         cT59lX052lNjsGqeQhC7jemqPWvLEHSHq0vbdBkeTqYutgxxd6E9ria/49RSI1zvWjDy
         K/TDOSwql1jUh7i51qmc/FIK/CopOyDKxmGsMMhFuNBXFYbI8f1ZzdmvoVv2Eoa+A1HG
         ptn+0erzoHTt+QdDTDAOEFSwY6pLJXmEX9/0YtRJvuUWT7yvjTHQK/YXwnUhXo52nvqm
         YJNklZFv1T/Uh2ek2WZtZjbTCNeyjgKI9QEQ4eg0rf1UvA4yqVzDknOT+VAjlx34jT86
         1teA==
X-Gm-Message-State: AOJu0YyzNe6phGlV2OKSD4Z/Mk3sVx00WVidMlrtzRYbEgcW5awbt75l
        aWo4edVOunC0cRxDE8PbDVHNWm1/kbrqN/mNX8p2qg==
X-Google-Smtp-Source: AGHT+IEhSMzhYE0v4cwo8rnXfYnPMUytVW1oTxHU6/vvXlqg+cUZxbuDSTMTgUa3lnrofuowlLqbpg==
X-Received: by 2002:a17:906:5195:b0:99d:f6e9:1cf8 with SMTP id y21-20020a170906519500b0099df6e91cf8mr3781695ejk.20.1692256259251;
        Thu, 17 Aug 2023 00:10:59 -0700 (PDT)
Received: from fedora.sec.9e.network (ip-095-222-150-251.um34.pools.vodafone-ip.de. [95.222.150.251])
        by smtp.gmail.com with ESMTPSA id qn17-20020a170907211100b00992b510089asm9674361ejb.84.2023.08.17.00.10.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Aug 2023 00:10:58 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-i2c@vger.kernel.org
Cc:     naresh.solanki@9elements.com,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v15 0/4] Add support for Maxim MAX735x/MAX736x variants
Date:   Thu, 17 Aug 2023 09:10:49 +0200
Message-ID: <20230817071056.2125679-1-patrick.rudolph@9elements.com>
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

 .../bindings/i2c/i2c-mux-pca954x.yaml         | 46 ++++++++--
 drivers/i2c/muxes/Kconfig                     |  6 +-
 drivers/i2c/muxes/i2c-mux-pca954x.c           | 92 +++++++++++++++++--
 3 files changed, 129 insertions(+), 15 deletions(-)

-- 
2.41.0

