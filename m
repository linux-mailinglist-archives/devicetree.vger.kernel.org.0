Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 988F06296CE
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 12:10:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238099AbiKOLKu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 06:10:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236965AbiKOLKD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 06:10:03 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 380A325289
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 03:09:37 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 129-20020a1c0287000000b003cfe48519a6so3135657wmc.0
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 03:09:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G82XuHX1Kk5zIshKimhHGfXsi81jktt6vDeWQNQiqN8=;
        b=W4/mjbuDk9hhAgOdEMP6kwXQdtXiR0KXEzBfPVJ6pmRP6dqFmqul5GBr/JnWYD3A7Q
         S7yKnABc7ZJfwpGT/HbjrpeHYOOCJ+vovhVIudD9Cw+ylzmBbvRCkxKh+1MLeNjzkGmN
         Ej0uMhUiy2Jys5yW4hwvU6zCZtX3CHaGg4g2Uhty0fLMT86C6a9euHorFXs1mkbAJVbd
         y+WeiU/oHb3jZW7X5asaV7/lFkrYvZTt193R8/6OMcZ8eWYZNauYIgHdqlBXHdJzKV+s
         bWwWlYm1JQjAtBCCLMKuJ/5U8Ud2A80JzVC3+5SXWqanpzK35uB3+AV2lzayaS5k7D5k
         FbSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G82XuHX1Kk5zIshKimhHGfXsi81jktt6vDeWQNQiqN8=;
        b=70n7WOt/vpGgUL9PYlNd6QCeCDbt+BXWu7zO3if9T0uwDxcHeReWIEMaOEPGbIaT/D
         NJdPnCEi+dUMnGpXawFH6vxHdaNfSQwp4adzf+EvMdALrQta3VuFSB5KuxfUl4fazfhF
         baUJJOHlZqVeih4xLL+QON+EwSskHGqv0L54NGRNaOEhH+lLqn/T2YvK4QLgswrtDTAd
         phjThfmBzSPmD4D/6SKd5J+t6WZ0ImxJdb1ZLae0DWNqR6JqofTtjvUn78vZ3d0oU3E0
         fG/qCTCN1Ar+O7TTLpzp0HVSviCwnpUjtpSU+rWuYMRVOvbgj9o46kGY5f234so8HdhW
         q7PQ==
X-Gm-Message-State: ANoB5pmOhIqPUDsmUysJQCWAzYqLxk9hnzTp/6n8RffmeXMaelTlt1ZT
        T2+UNqymW+RRZlMB1pH+8JeVc+8ZMPUSVsUf
X-Google-Smtp-Source: AA0mqf7eJ5JhJjxPH4tgoyzNNLtS6d5OMnpF8oR08lF4YZ7usveRriKUpSW9Xy6i8/i/YLk0Ia3gNg==
X-Received: by 2002:a05:600c:3541:b0:3cf:6f25:a713 with SMTP id i1-20020a05600c354100b003cf6f25a713mr1039612wmq.184.1668510575511;
        Tue, 15 Nov 2022 03:09:35 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id p25-20020a05600c1d9900b003c64c186206sm15480441wms.16.2022.11.15.03.09.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 03:09:35 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v10 0/2] mfd: max597x: Add support for max597x
Date:   Tue, 15 Nov 2022 12:09:30 +0100
Message-Id: <20221115110932.637091-1-Naresh.Solanki@9elements.com>
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

max597x is multifunction device with hot swap controller, fault
protection & upto four indication leds.

max5978 has single hot swap controller whereas max5970 has two hot swap
controllers.

Changes in V10:
- Cleanup unused properties
- removed superfluous comments
- Update description for regulators property
- Fix typo
- Update 4 spaces indentation in example
Changes in V9:
- Update properties description
- update required property
Change in V8:
- Set additionalproperties to false
Change in V7:
- Update id
- Remove empty line
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
  dt-bindings: mfd: Add MAX5970 and MAX5978

Patrick Rudolph (1):
  mfd: max597x: Add support for MAX5970 and MAX5978

 .../bindings/mfd/maxim,max5970.yaml           | 154 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  12 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/max597x.c                         |  93 +++++++++++
 include/linux/mfd/max597x.h                   | 102 ++++++++++++
 5 files changed, 362 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max5970.yaml
 create mode 100644 drivers/mfd/max597x.c
 create mode 100644 include/linux/mfd/max597x.h


base-commit: 6b780408be034213edfb5946889882cb29f8f159
-- 
2.37.3

