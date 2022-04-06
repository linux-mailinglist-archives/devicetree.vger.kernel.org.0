Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 201674F68CB
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 20:19:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240052AbiDFSNP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 14:13:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240163AbiDFSNK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 14:13:10 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 159D412985B
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:50:29 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id h19so3001887pfv.1
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 09:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ElIDyEfWm0NLb325CUldpOG/323/DcoKYpxnTGj9mDg=;
        b=DEFU0XCJJrDs1lpYQRMwMGHIlnlCltDlhl3XinTZomSnJMaldQqEubd+hRUW2+3wBB
         IiRFx5+LmXw9yer02zZBmXZx86VWpf31r/b4V40bAWnEdwia+DXAL727nrnhLwO4wKa0
         W/MxrmRV9VK0W3sncI6gbuo60vgTrTg/tpf6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ElIDyEfWm0NLb325CUldpOG/323/DcoKYpxnTGj9mDg=;
        b=XOAWoW81mKi9jh98tB1Rj6vajYdeRZ8MgM1Lr2rgjRx1rjFY7uVq1xCWyuiiMQuYZV
         zwSk+FStQGchmhx9e68oRw3x0U2q+j1ulKbC61jJOe8iUbkB1wuXnUMxIB9CWGqpLoEp
         dfV6BjLQ3VK11iFjkey/VceXh4q+U3YrJk1d4M/BEe1hnfKBr2hdSjPPiH1gcoLaR/Re
         pdlQ4gFM/eV+Tfk1k/4TQxPhCMZFpJfZGSekFkqzYW0ZDfhPw/Or+Kr3feoB1iBNH9Qh
         nv7dqGnoxP52XGhlxDPlMs+Od2e0rig9TbqJYUzTued90n0hAGnJR8a3zBhA3cuTtupC
         XcjQ==
X-Gm-Message-State: AOAM533Iiv4MeRlwT14xLIKvuGXCu4fmj/XA2QdzQU7vu/YUJs+387+p
        oeZC8BQMxBvjJzQgE9R+Jxiqog==
X-Google-Smtp-Source: ABdhPJxZFbRGDK/wziWpEehlgBfHtsEl3sLXu9a2TNNouZl/yalMWJb8Ujf3sKYCSCrlTpWoLsxeVQ==
X-Received: by 2002:a05:6a00:1828:b0:4fd:e0e5:6115 with SMTP id y40-20020a056a00182800b004fde0e56115mr9845652pfa.52.1649263829402;
        Wed, 06 Apr 2022 09:50:29 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c9d3:469f:91e4:c022])
        by smtp.gmail.com with UTF8SMTPSA id x6-20020a17090aa38600b001ca2f87d271sm6286474pjp.15.2022.04.06.09.50.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Apr 2022 09:50:28 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v4 0/8] Add settings for precharge and internal resistor
Date:   Wed,  6 Apr 2022 09:50:03 -0700
Message-Id: <20220406165011.10202-1-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.1094.g7c7d902a7c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For Semtech sensors SX9324 and SX9360, allow confugration of the
pre-charge resistor (9324/9360) and internal resistor (9324).

Fix register name spelling mistakes first and set default value properly
for sx9324 internal resistor register.

The 9360 changes are independent from the 9324 changes, but they are
very similar.

Changes since v3:
- Rename reserved field as _RESERVED_
- Fix invalid string matching with match_string()
- Fix cut and paste error in device tree bindings.

Changes since v2:
- use -ohms instead of -kohms, as ohms is a defined unit in
  dt-schema.git dtschema/schemas/property-units.yaml

Changes sinve v1:
- Add kOhm Unit, add a new patch to fix invalid register setting.

Gwendal Grignou (8):
  iio: sx9324: Fix default precharge internal resistance register
  iio: sx9324: Fix register field spelling
  dt-bindings: iio: sx9324: Add precharge resistor setting
  iio: sx9324: Add precharge internal resistance setting
  dt-bindings: iio: sx9324: Add internal compensation resistor setting
  iio: sx9324: Add Setting for internal compensation resistor
  dt-bindings: iio: sx9360: Add precharge resistor setting
  iio: sx9360: Add pre-charge resistor setting

 .../iio/proximity/semtech,sx9324.yaml         | 19 +++++++++
 .../iio/proximity/semtech,sx9360.yaml         |  9 ++++
 drivers/iio/proximity/sx9324.c                | 41 ++++++++++++++++---
 drivers/iio/proximity/sx9360.c                | 12 +++++-
 4 files changed, 75 insertions(+), 6 deletions(-)

-- 
2.35.1.1094.g7c7d902a7c-goog

