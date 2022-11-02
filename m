Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E67EE615E7E
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 09:57:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230366AbiKBI5o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 04:57:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbiKBI5n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 04:57:43 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E8D41D66F
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 01:57:42 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id y16so23450471wrt.12
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 01:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y0ELtJUswTvsICDd6pZhg8WvDye9Yaac1O9iQirvkEg=;
        b=DIFxcmOONUfY6UOrohpypSzx/M6HiWntfS1ud2CyQ1Cu1KnLGuFpzMSNPDmxyl8lLE
         EKTjbZBjbi76OJFKA9OjDb6Bpjot8t3jZL+D1fia+yVU+G0UM+o7Vcbz5AM3fIzDGCsr
         GdO8yy5J8rHVo2ASSCFjcxrxovoNEuUoKbE+avyzzfw4gP6tj6gs/QgxWOCJ7dWk7Zv2
         RIvMbW6+NlUTS4k+AWgOpmjdByS5Wshd3nc/IKgzcZgaD2bcNiw3vpUzvvcCmxoKVaay
         P7T5do3nOGdlQQkg5ifDlNQmzrooWLR91BLZTAwo2+U26evkaJqPy4TALy8Fy8+4J59O
         xdkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y0ELtJUswTvsICDd6pZhg8WvDye9Yaac1O9iQirvkEg=;
        b=SeDQEkOW86ybGxnTqkFLjlMFsVsus9DSYbbgbg+W9ys/KMgcl9oSJ7/9/yPMhXBDGT
         KzAVamv6j12t5ulGx1I1zlKYO5CAZ2jc26CoSppsM2EyH4SP6+ZdGs6wrYxtOwbnPzRO
         47ZJ2HS0NiDDErY/wcyeklKnYlxLF5Uy9pkmC12vDMJX+ydEdqAdwp18T9zCIlK/YO5T
         M2s9ZEVa5VmJ/ORsHELe14p0gwQ3EpZgVN75qCSOZ/dFfVpACLxkagFJJwFUQG5O01Ek
         +DSH3C898D0cTA/r58DsE3KypjknuoQjT35euLtjfHnkCRMXG0xEVrpZv9EH9KN5eAol
         iboA==
X-Gm-Message-State: ACrzQf0DgndT9MMhHS74exzSQtLb8senRaGdbpCD11SbADibk2SbhB5I
        t11Uwrdo5l3dpHm+8Ey+ZU1j3jgmr3hCe4Nd
X-Google-Smtp-Source: AMsMyM4OySBELR8wmC30iThcmfAktQx0ysmaLB233M/5BopHdkwBb0QhclPwTDRdl+QL3X/rddaRpQ==
X-Received: by 2002:adf:b612:0:b0:236:5d1f:143a with SMTP id f18-20020adfb612000000b002365d1f143amr13907460wre.364.1667379460895;
        Wed, 02 Nov 2022 01:57:40 -0700 (PDT)
Received: from stroh80.sec.9e.network (ip-078-094-000-051.um19.pools.vodafone-ip.de. [78.94.0.51])
        by smtp.gmail.com with ESMTPSA id j39-20020a05600c48a700b003b95ed78275sm1290176wmp.20.2022.11.02.01.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 01:57:40 -0700 (PDT)
From:   Naresh Solanki <naresh.solanki@9elements.com>
X-Google-Original-From: Naresh Solanki <Naresh.Solanki@9elements.com>
To:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Naresh Solanki <Naresh.Solanki@9elements.com>
Subject: [PATCH v5 0/2] mfd: max597x: Add support for max597x
Date:   Wed,  2 Nov 2022 09:57:35 +0100
Message-Id: <20221102085737.599100-1-Naresh.Solanki@9elements.com>
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

 .../devicetree/bindings/mfd/max5970.yaml      | 164 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  12 ++
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/max597x.c                         |  92 ++++++++++
 include/linux/mfd/max597x.h                   | 103 +++++++++++
 5 files changed, 372 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/max5970.yaml
 create mode 100644 drivers/mfd/max597x.c
 create mode 100644 include/linux/mfd/max597x.h


base-commit: 6b780408be034213edfb5946889882cb29f8f159
-- 
2.37.3

