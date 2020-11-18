Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9311C2B7E41
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 14:25:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725772AbgKRNYv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 08:24:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725747AbgKRNYu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Nov 2020 08:24:50 -0500
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com [IPv6:2a00:1450:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 467BAC0613D4
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 05:24:50 -0800 (PST)
Received: by mail-lj1-x241.google.com with SMTP id h23so2289355ljg.13
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 05:24:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sf7iw1vRC2+5on7WfIhb3cFwX4Uhno0qgSzggLB8p1U=;
        b=gTxBh8N9KTNM19K72rWbGcXOvIkWZ2ibhFy4sGZcsQsQIa1UG6CgmJkizymaQHzI91
         h4zrXnDQ4iyuSWZyPbuEWpJMqKblryWaQabg/NF+s+z9LB0O8nq9iK6ecdDSdXKr/c3q
         xIWApRbWeHDJnyCrHtBN4cYGANz/94cIcqnuNhAAA7QIAK9S/kyW4CSRZSRYZWXtMVHA
         vXhZSqEYSAUUMZMi0t1pLbrHdm94kpi5TEZtFa6emoX8sjCNX3woMGPBYHBV6O48uCk+
         OB1PGnobe+JswAtaTtDgrWTzCrYVTwNzIT7D9jdhBzttypWHw8Oqjwywlv/pp+5ULX7g
         NUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=sf7iw1vRC2+5on7WfIhb3cFwX4Uhno0qgSzggLB8p1U=;
        b=s31h8gdtfCs6Px7ZYJ951ExszBj/+k7MrMK7DJxCB/lH2+xlWJ7FJRPgfWgrriN7I9
         Dosvhd/VtBSUbe3jPxSVOIwwxojfmueywmEu84ROq7oV+VkhbDu0znPe26r6/VmGOuZ6
         gBvZ+MZvwmfS98Yl7rZiN8IHb3CmNxHejulQQ1sR3NGlOysoDZEG8D/YR51WTO6dDOST
         6K8cVAFAXfAkBuwV0PhYtRamxsX52OcuLrwfKetLFbXzZZiclF/XSDez/vcHLXJ9vv8C
         Ek6uQoKeC1g4fgW3Z4VnmTg2GPbhrw+UOvj3zHsRwnkjII2jegiY4HJBfUd+lIXubZPe
         lN8A==
X-Gm-Message-State: AOAM532gJnDVOPYbT7keEVpmoh6so2w78lM516BLLo0ZYTk+Dq1vr5nv
        tP/Ojxd8wwerlmmbfI0kpDk=
X-Google-Smtp-Source: ABdhPJxTjeul7nr/pUTWY1mHfy3xUaW4RzzaA+ev1NAI3qbmnlD+4LZvfJY0kD1YZfrGCNAyF/U2JA==
X-Received: by 2002:a2e:8753:: with SMTP id q19mr3741507ljj.188.1605705888814;
        Wed, 18 Nov 2020 05:24:48 -0800 (PST)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id m67sm3262522lfa.285.2020.11.18.05.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 05:24:47 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 0/2] reset: support Broadcom's PMB
Date:   Wed, 18 Nov 2020 14:24:38 +0100
Message-Id: <20201118132440.15862-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

PMB is Broadcom's old reset controller. Later it was replaced by PMC
which is a wrapper around PMB.

It's still important to support older PMB as:
1. It's the only reset option on older devices
2. Sometimes PMC may be unable to handle device reset and PMB should
   be used as fallback
3. Some devices may be configured not to use PMC at all

I'll get back to working on PMC later.

Rafał Miłecki (2):
  dt-bindings: reset: document Broadcom's PMB binding
  reset: brcm-pmc: add driver for Broadcom's PMB

 .../devicetree/bindings/reset/brcm,pmb.yaml   |  51 +++
 drivers/reset/Kconfig                         |   7 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-brcm-pmb.c                | 307 ++++++++++++++++++
 include/dt-bindings/reset/brcm,pmb.h          |   9 +
 5 files changed, 375 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,pmb.yaml
 create mode 100644 drivers/reset/reset-brcm-pmb.c
 create mode 100644 include/dt-bindings/reset/brcm,pmb.h

-- 
2.27.0

