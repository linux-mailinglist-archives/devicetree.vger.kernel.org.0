Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04B8E3C64D5
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 22:17:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235392AbhGLUUl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 16:20:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234644AbhGLUUk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jul 2021 16:20:40 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9903C0613E5
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 13:17:50 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id a18so45709983lfs.10
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 13:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=phystech-edu.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Rf/oy5V65atDUasHDpnT+GK9n0vIPf+l+Loy9PHEV2g=;
        b=L/LG0kiF9dQI5UYt03bUxC7db1G5mmL+zYogzrm0PTQpzCqJ0uOzPzrA1yBTDlUnHz
         Jpr5PYMzj0PHfeqWpQ5bNtX9glzqZC3nHSlYtIJSZjFZ+upR2lbNc0Bj5ptCvxj2E1MR
         RqexC9iCpP/UJEGdtL3o4wmJq2nle9+4svKtHWS8yC5G73xziKtVBi4wnAHYH+12crAV
         LgQJwndM1uaheql9aWc0jYm8tHQ4seYUoPFuRzTtQhLQzIO9dG6fGQt1zic/chZUihRj
         cCOts+iZafOz/VsQM9OyodwsaqxNwtbnDrY3qb6zEkh1Vq2jZaLndzM7vOZjy+szgjkQ
         /mLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Rf/oy5V65atDUasHDpnT+GK9n0vIPf+l+Loy9PHEV2g=;
        b=OZCapfwWnJ5bVopTzrEeuNfTuku+AAHmDw25pKddo+Ar1xPjgkJvtWHwAXP/G6fQw5
         +pX2uY1mN+b5TWzXuRUbUBklStsb0WPBQjs/KIWSt7Xpj2j6KbSPQORi1JQhl7A4W5/3
         qR+Cvp90+9sZ2IRbhHIIRu0LMJpy5UOVSSSlT32Ai52Mr3LKHJ1QywgOqIYoziPwvI4B
         T/KTifSLJiw2gmIomHd6xSMv9xdsFCEvs2R5mzoIW/Hrt5KmfRqiIgidZXEM5VTlg/bv
         Z1NbCeK/qi90fMiJRyycpt5l7p9itJKzTdFn2zwkJPqxb/9QGGufz+PRuUY1TtIEiADe
         L6gA==
X-Gm-Message-State: AOAM530A//zjCe8xcFKu6mikDH9uBFijzDSTPiTuEAK3JLK0oRmK4rYq
        GjCZlKs7svOaXXU1awz4VX6oMg==
X-Google-Smtp-Source: ABdhPJxCVPVINOvfBCrr5N+3NDAEy5lpwqjAIrHaYAzlV0oZuwGc8C5fQ5lsfWwgKXJsxv9hLu7lJg==
X-Received: by 2002:ac2:5e67:: with SMTP id a7mr417425lfr.450.1626121068917;
        Mon, 12 Jul 2021 13:17:48 -0700 (PDT)
Received: from 192.168.1.3 ([2a00:1370:810e:abfe:9c62:44e3:b0ab:76fd])
        by smtp.gmail.com with ESMTPSA id p16sm631455lfr.122.2021.07.12.13.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jul 2021 13:17:48 -0700 (PDT)
From:   Viktor Prutyanov <viktor.prutyanov@phystech.edu>
To:     sean@mess.org, mchehab@kernel.org, robh+dt@kernel.org,
        khilman@baylibre.com, narmstrong@baylibre.com
Cc:     jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, rockosov@gmail.com,
        Viktor Prutyanov <viktor.prutyanov@phystech.edu>
Subject: [PATCH v4 0/2] media: rc: add support for Amlogic Meson IR blaster
Date:   Mon, 12 Jul 2021 23:17:30 +0300
Message-Id: <20210712201732.31808-1-viktor.prutyanov@phystech.edu>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this is a driver for the IR transmitter (also called IR blaster)
available in some Amlogic Meson SoCs.

Viktor Prutyanov (2):
  media: rc: meson-ir-tx: document device tree bindings
  media: rc: introduce Meson IR TX driver

 .../bindings/media/amlogic,meson-ir-tx.yaml   |  65 +++
 drivers/media/rc/Kconfig                      |  10 +
 drivers/media/rc/Makefile                     |   1 +
 drivers/media/rc/meson-ir-tx.c                | 404 ++++++++++++++++++
 4 files changed, 480 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,meson-ir-tx.yaml
 create mode 100644 drivers/media/rc/meson-ir-tx.c

-- 
2.21.0

