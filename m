Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 549EA37C871
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 18:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232948AbhELQIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 12:08:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51462 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233179AbhELPvI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 11:51:08 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43D80C061761
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 08:26:53 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id i128so13124758wma.5
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 08:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qo9U0GYt6DMr0n2/j17Wlk3nBr9MEvK6tP9ZxY2RR0c=;
        b=Eby89UI0IAG4vUd4hCA4VLnkKIT10UJ9/FY4KM9dxGiMIRkb4azADDaexbelr6k5sx
         XaoSmEef3ysKxVIHnzOPRMNZThU27cJ1GKGBtGyEnQgOi6a8607JtxknevpszcKNRFhD
         uh2JvmBFdIhylyI33YepaRx/D71R4ORs1oIGMx5pmmB+hsVh8C7V0Oc2V5xofLGv8qjZ
         s9GMae2bTFsdZSx/9JlBQON45QdycONzsC7ZWHtdrgSO5qVrUwNupo2xBe9D01gHvGoj
         x/djK7Vu3wNSbhop6bSEW02MjHafRJq97BhcTFUO4I1ZRn+3moKhxnVMZFibQpkmW/zC
         uEDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qo9U0GYt6DMr0n2/j17Wlk3nBr9MEvK6tP9ZxY2RR0c=;
        b=CPr4tYjEL9NYjwxsN+jexEIU8quWpaXtWLFzJYiT0qWxCytXD7CVgrFn4+2dH2QuUO
         h44+zGw/M5X3ikYyJ5CcgkVM6VUIrUqNuTFAqQdPLx+4hssGe97kCggFKgZynp6PdbWQ
         R7qSBCko2O8ZYvbxuNsOdoaBo+nafQjdD5tPy38EpAp2EYZuawmcvbhPJWisdMSt69a/
         VeawBhcG/oGjxBBXdftr0FHkz9xihQhwPprV89U81uUCyDUxe/wbeT34R0rxHA2+jbCk
         Gd5yzgQqLO6+ZDgG1mJfx6zDkRIbE0iwyIBieGZcL6Q4Anc+Dvz++iwzuHN/wJfaN5pm
         jP1w==
X-Gm-Message-State: AOAM532hqwqrI73RFypvED5DI1e1tbt17XVytE2iMwkZ/YlfITpcxGrs
        Xpsz3PXljG0HMhKNi23+UkrAxQ==
X-Google-Smtp-Source: ABdhPJxK4OXOZyM8UmJPCc+lhHTTxoneOlyV6LIU6uC/nUXyW+Iz1VKA97tGwMOkipkrPdSRylyeZQ==
X-Received: by 2002:a1c:e408:: with SMTP id b8mr8749252wmh.85.1620833211941;
        Wed, 12 May 2021 08:26:51 -0700 (PDT)
Received: from mkorpershoek-XPS-13-9370.home (lfbn-tou-1-1465-169.w90-89.abo.wanadoo.fr. [90.89.34.169])
        by smtp.gmail.com with ESMTPSA id b7sm30931256wri.83.2021.05.12.08.26.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 08:26:51 -0700 (PDT)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-input@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>
Subject: [PATCH v2 0/3] input: MT6358 PMIC button support
Date:   Wed, 12 May 2021 17:26:45 +0200
Message-Id: <20210512152648.39961-1-mkorpershoek@baylibre.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MediaTek MT6358 PMIC has support for two buttons: PWR and HOME.

The interrupt logic is a little different than other PMICs from the
same family:
for MT6323 and MT6397, we have one interrupt source per button
* for MT6358, we have two interrupts lines per button: the press and
* release interrupts are distinct sources.

Initially, this series contained both mfd and input patches.
To simplify maintenance and review the original series [1] has
been split.

Changes since v1 at [2]:
- cover letter title prefixed with 'input'

This series depends on [3]

[1] https://lore.kernel.org/r/87tunpw339.fsf@baylibre.com
[2] https://lore.kernel.org/r/20210506153718.256903-1-mkorpershoek@baylibre.com
[3] https://lore.kernel.org/r/20210506094116.638527-1-mkorpershoek@baylibre.com

Mattijs Korpershoek (3):
  Input: mtk-pmic-keys - use get_irq_byname() instead of index
  dt-bindings: input: mtk-pmic-keys: add MT6358 binding definition
  Input: mtk-pmic-keys - add support for MT6358

 .../bindings/input/mtk-pmic-keys.txt          |  5 +-
 drivers/input/keyboard/mtk-pmic-keys.c        | 56 +++++++++++++++++--
 2 files changed, 56 insertions(+), 5 deletions(-)

-- 
2.27.0

