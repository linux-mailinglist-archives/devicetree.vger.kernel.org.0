Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D05D46321FC
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 13:29:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbiKUM3v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 07:29:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230223AbiKUM3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 07:29:44 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63AB427B3B
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:29:43 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id z4so5032790wrr.3
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 04:29:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qjSeS005UQ5ZO0KT6/w85LwsSdKiXAQUVmbgaFh4T/E=;
        b=MII8aOSKSfsTMEl4KK2fh0Pgr6CSyuNNO7aIUnsX2QMqGSVUJR2AJlf3i0Twu6rLHt
         YdpMg07od2c9W0bHpumvhjz5DltfE2xcJKERPiMj7bJrYbLn5qMixCydeQPrHE3rdqRv
         VVx1uUmKtZ3SbZs5z0vnTBB2ZSsESe+37D72ts+cMTha0+pA7spU7Qc9N9ipLem/BCmu
         j5bXJI7Q/AMuIKPZc5rL14URMogUaecESoLpJcgqr6JunvLZumr+STRYqGLc2c17X8tm
         R61g2+QMyO+mCWBYWzgXQL0VaQH+mj/CiZtbms3B5YAfVpi+HK/Vly6NKOp8EFLBpC0C
         JMjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qjSeS005UQ5ZO0KT6/w85LwsSdKiXAQUVmbgaFh4T/E=;
        b=BkBp6R2xr5NKpbOFTUgzzJq4T60GWeNzijZyV1/IrDg/eZHuF5GLwAaSizbhTBBdxn
         6asy/tDklRsfygnp7yPVaK5Xt8ec9boOWzQZr1HXfmFjbRZWOVQeqAG5u4tGUZSg0ARb
         2nDW2E0wKKXksKDoi1hXQTDIuFxUnEQZuuct8xDUNcce1IrUkglYsEvapu138X055mPZ
         s6ACSCXhtTSzqsgOxrZSa8QkohPs7oQZXfDYAzHh/BYYY1CyDwgDNWqYNPUAq+L4bxoO
         tBW2kTHRWraI6iRWxMtmOiqM55B232K9kqNWtw/jalu0jpB+SCd4PgYAh8s4bj1dyPPR
         3csA==
X-Gm-Message-State: ANoB5pn7TXjnBDZE9a9/84CyPNLazkeihkl+abeiflj5+doCEtt4uGCb
        6xSeu9qw32b1JpqTG25oR6J+1r3n33jl23UG
X-Google-Smtp-Source: AA0mqf48P4Gsc00ilVeHi7rZ+7eqT+DPFSgIIq7gyuFeWpxsDaQkpcwKUKcA6SFXvqcrsKDa5QrnQA==
X-Received: by 2002:adf:ed4b:0:b0:241:d4c2:e741 with SMTP id u11-20020adfed4b000000b00241d4c2e741mr3046832wro.628.1669033781714;
        Mon, 21 Nov 2022 04:29:41 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id dn12-20020a05600c654c00b003cf6c2f9513sm13929015wmb.2.2022.11.21.04.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 04:29:41 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v7 0/4] Add devicetree support for max6639
Date:   Mon, 21 Nov 2022 13:29:28 +0100
Message-Id: <20221121122932.2493174-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These patches adds devicetree support for MAX6639.

Changes in V7:
- Split the patch into
 1. add dt support for max6639
 2. Add pwm support
- Ad DT property min-rpm in fan-common.yaml
Changes in V6:
- Remove unused header file
- minor cleanup 
Changes in V5:
- Add pwms support
Changes V4:
- Fix dt error
- update comment
Changes V3:
- correct fan dt property name
- remove unrelevent changes
Changes V2:
- Fix dt schema error.
Changes:
- Add fan-common dt schema.
- add dt-binding support for max6639
- add max6639 specific property

Marcello Sylvester Bauer (1):
  dt-bindings: hwmon: Add binding for max6639

Naresh Solanki (3):
  dt-bindings: hwmon: fan: Add fan binding to schema
  hwmon: (max6639) Change from pdata to dt configuration
  hwmon: (max6639) Add pwm support

 .../devicetree/bindings/hwmon/fan-common.yaml |  47 ++
 .../bindings/hwmon/maxim,max6639.yaml         |  93 ++++
 drivers/hwmon/Kconfig                         |   1 +
 drivers/hwmon/max6639.c                       | 460 +++++++++++++++---
 include/linux/platform_data/max6639.h         |  15 -
 5 files changed, 527 insertions(+), 89 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
 delete mode 100644 include/linux/platform_data/max6639.h


base-commit: 27fea302952d8c90cafbdbee96bafeca03544401
-- 
2.37.3

