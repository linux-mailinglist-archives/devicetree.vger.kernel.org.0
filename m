Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 813DF62CCBE
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 22:36:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234469AbiKPVgn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 16:36:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234191AbiKPVg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 16:36:28 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DB5112605
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 13:36:22 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id cl5so32229664wrb.9
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 13:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=To0SGhju10/tNZo+ykbCXk5at3KgpKIkkD0Iu7gHoH4=;
        b=AixU5wYbRtIAnMucvUFSxQvpTrTou7lJDR4gMEhy0v+Zn+BFpo3B0aT7ezYBMZGwJF
         6PKCVl64S5OkxiciJXq3ZfXg83YjD+zJStTGFfL3522p3YCqg1WdqVfQVI8Tn0XGYMZq
         RrTxdbCtqE25j4NpzurCu/Uf4K+hfUiI6HMdynhJ60yF2cypfxRPJW/eMsxW+tv1EEuz
         QQCFZ9p6hoaPdo9Ny7sUI5420Fpopsoi9YqEKz22eib8Hvr/Tqe1nMScxOK0kpunwpFt
         LbOBmO2zvP6JMBTT4DkzYDEmw/f0Lnr2HCe58lAsS2iYD5lb9AiHbhQS8+9jge3wwx5+
         ix9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=To0SGhju10/tNZo+ykbCXk5at3KgpKIkkD0Iu7gHoH4=;
        b=2n8GIHKFdKnSV4xF43rFjM56KSc3Atk378JwtHdNs3CZGkG3SSAx9bmoMDkVXIayLB
         q2hlwGRrk3ZQokYvwdwc1qKZDBvht511S1CSUF9YxEsCQc+LbZSmRUerxqYB83KpZ/Mg
         4sH2iQ3tl3jXDliD5NyMNegGXjqBuuEPxHyoDU4kLb1jadAUqJbmzZ3mw6jN213gCkXp
         Gzfqz6WfyQSkgXbia3V9tgGdsnUD7VR8QTdOHY0EldQdQF9xVzaWTlNxM+5NMi2cDkCH
         gj5lvgNE7R9JnrLQqkWP8AqvhPcf5l2Ojo85BXCoIVrQ5Z+0i+FWyLdtHeEg8+3zdaNI
         4UQA==
X-Gm-Message-State: ANoB5pk2maBliICCgbXkj9/rowwEdffLLy5ApP3vVDBrRIDMzsuUekix
        iQGD9CC455d76fbePbCJ0A2NTISQX2XkDg4P
X-Google-Smtp-Source: AA0mqf5Oe1ZaI5eG6YmRfi66xfOvKBFlUNac0sPPM5XqKjZc9bT/15KZpwPH1rrp4lqL8Yi0lJrTmQ==
X-Received: by 2002:a5d:5913:0:b0:236:e0d:9ad with SMTP id v19-20020a5d5913000000b002360e0d09admr15216920wrd.692.1668634580668;
        Wed, 16 Nov 2022 13:36:20 -0800 (PST)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id fn15-20020a05600c688f00b003b47ff307e1sm3133045wmb.31.2022.11.16.13.36.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 13:36:20 -0800 (PST)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>,
        Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v6 0/3] Add devicetree support for max6639
Date:   Wed, 16 Nov 2022 22:36:12 +0100
Message-Id: <20221116213615.1256297-1-Naresh.Solanki@9elements.com>
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

Naresh Solanki (2):
  dt-bindings: hwmon: fan: Add fan binding to schema
  hwmon: (max6639) Change from pdata to dt configuration

 .../devicetree/bindings/hwmon/fan-common.yaml |  42 ++
 .../bindings/hwmon/maxim,max6639.yaml         |  93 ++++
 drivers/hwmon/Kconfig                         |   1 +
 drivers/hwmon/max6639.c                       | 460 +++++++++++++++---
 include/linux/platform_data/max6639.h         |  15 -
 5 files changed, 522 insertions(+), 89 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml
 create mode 100644 Documentation/devicetree/bindings/hwmon/maxim,max6639.yaml
 delete mode 100644 include/linux/platform_data/max6639.h


base-commit: 27fea302952d8c90cafbdbee96bafeca03544401
-- 
2.37.3

