Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F7B361784D
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 09:06:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231360AbiKCIGA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 04:06:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231171AbiKCIFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 04:05:53 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFD4C6179
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 01:05:51 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j15so1453140wrq.3
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 01:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TUH7vAgoJUphxioLNXds6rGlOzYEcAircCf1ge6nrIo=;
        b=JoHSfg+vpDusiIbQMrw2c7lVK41imhpUvVnnzZfcvqpsrzG4T0Q1KjGf2p6zQjQmPj
         yWbGEH5Vi8rz0ZIT2QVRv+RC+IfimnGTbeTg3V1oXKGfbboQNN0D6nARkgisZ80zR54D
         bVxBRWNvjoZbcFYB8CJN+RuAytsuC7MNziU8IEBEy5FaSyforP8BbZzeYzzCN7HbE4Kn
         LOJz3qCXXVkDveKbsCOKAP5a+O+1o/oKW9HtGKKC7mc1S33yPwmxiBFCkNFs13eIhTkZ
         CbgY01TT4ioIDfQccbJFkp896Pn9CzEqC6RDJK4IXuKNnuJDql61Iytgqac3SQEjZTEs
         tAqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TUH7vAgoJUphxioLNXds6rGlOzYEcAircCf1ge6nrIo=;
        b=Y11g4y8FXHH9QcOBn1QX10zsK42S8h+Em0Z6VO7tfj3+zgaWiAyCIQIw9XGcR/VBl8
         sX6ICO8pjSzMraH9gn9zTVqbMYZVnlsUXBKXNMLXqbJjZFepaccxyL2v9jJrjDvhfEv5
         UynQjf37fR7mgIvvTGdYHzn5YD7yBCh9X7gepu5ZiMUE2V2AFayi4H1VSK3FVuQAgaWP
         k5AQNiJYjwVnl5bp/6i23uxK/XoPKO+im6BD+RcUPU9cGZxZxyCp/2teYHE9h30KZkXR
         sSvZxdwzyi3//yA9+7pKC5QLPzz8e838JkUqBSDkNZEHkSXhRBn5Z79G1fBGab5A6d2I
         ef2A==
X-Gm-Message-State: ACrzQf2AEwWoXFFpK+wunaA5+kVVbWToklCl0QVVLcrJWACHC62K7SrR
        yYq8tU1/nQngLrKGJJNZXf79i+zEs2beLJpY
X-Google-Smtp-Source: AMsMyM7KT1IwDbASF+AOD1JQpnxdIHTYTJWKjGSBl0HbB6wjIDRRUCZDAoqx6pbgClUwXYzwY4jPkQ==
X-Received: by 2002:a05:6000:808:b0:236:9822:718d with SMTP id bt8-20020a056000080800b002369822718dmr17825381wrb.254.1667462750179;
        Thu, 03 Nov 2022 01:05:50 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id r9-20020a05600c424900b003bfaba19a8fsm402772wmm.35.2022.11.03.01.05.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 01:05:49 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v6 0/2] mfd: max597x: Add support for max597x
Date:   Thu,  3 Nov 2022 09:05:43 +0100
Message-Id: <20221103080545.1400424-1-Naresh.Solanki@9elements.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

max597x is multifunction device with hot swap controller, fault
protection & upto four indication leds.

max5978 has single hot swap controller whereas max5970 has two hot swap
controllers.

Changes in V6:
- Update missing vendor prefix
- Update indentation in example
Changes in V5:
- Fix dt schema error
Changes in V4:
- Add NULL entry for of_device_id
- Memory allocation check
Changes in V3:
- Address code review comment
Changes in V2:
- Update depends in Kconfig.

Marcello Sylvester Bauer (1):
  dt-bindings: mfd: Add bindings for MAX5970 and MAX5978

Patrick Rudolph (1):
  mfd: max597x: Add support for MAX5970 and MAX5978

 .../bindings/mfd/maxim,max5970.yaml           | 164 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  12 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/max597x.c                         |  92 ++++++++++
 include/linux/mfd/max597x.h                   | 103 +++++++++++
 5 files changed, 372 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
 create mode 100644 drivers/mfd/max597x.c
 create mode 100644 include/linux/mfd/max597x.h


base-commit: 6b780408be034213edfb5946889882cb29f8f159
-- 
2.37.3

