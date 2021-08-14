Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41EAC3EBFC0
	for <lists+devicetree@lfdr.de>; Sat, 14 Aug 2021 04:31:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236555AbhHNCcF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Aug 2021 22:32:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232651AbhHNCcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Aug 2021 22:32:05 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE6AEC0617AD
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 19:31:36 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id a62-20020a254d410000b0290592f360b0ccso10902048ybb.14
        for <devicetree@vger.kernel.org>; Fri, 13 Aug 2021 19:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=lHPa9dZiexJU0+NOxYBxT/1rFTgtrFkEMcMwrwajn2A=;
        b=uYB/2nOgOCsf8449dDt1lFr3eHG/CEwEiDffrr4WD6KbfpAOWpAbVS0RVrqBcNHA5M
         sqMv9cscfS4i8eJK/E93Q/vk6EsUCxeEiZAppyMHe4I803jFiWN6cprf53b2seOHT3fs
         Vaw+G26a1P4t+w3IOTLXBhFOOE3X6/d9msIrulz6BW2szKMEB1CyrN3exXd0H8EjsMor
         +Vz42GHMLU7/W6idWpVtQJuE2UUwIN59ECYK1heWrihSg+uaW2YVg1RFkILFSaazfEJ+
         d9MlBf8EDthGUY7Ms7wALv/0zjShetKKKPW1ZwiemYNhamtSy7EZeLLWE4JiNgLsUSH/
         I0Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=lHPa9dZiexJU0+NOxYBxT/1rFTgtrFkEMcMwrwajn2A=;
        b=jJmy6X5pbHYOd3OsPuK8pbTG11qtUmhYOxw59+P+g7ZwHotTFXOVjaGDRftBjtl0IK
         REwRHyDnRKl1eP68G8TrfkZZ4/EjeMyitbbt7cRjLubO9zKjmNeNKViCdRCZn1EM0mcK
         7iowZl4/kIKjLgxJtcssl2IBvXJCdF98PVplHuHPiBEn3UH6RWLULLlLVIbZbjCWTKJZ
         QsxqSkLVsSa/2c7HHXLEDLVGDX5Lk81iDrBtHujZ9LQfKQ5ae4AJUEKk7ZAUvzxw1LbF
         Fu2zmtTZmjXLnTZBykh4te6CK9w9TGfzlirZQGQ5O24TzzzCUqMOArwLF+jq9qDu3sAY
         zlPg==
X-Gm-Message-State: AOAM532P+zMflWFXtyku11IsHMoS7Lu6FxvCeCodTRP3lZxZ5b6ALNvD
        IHaqmWiyRiS8PS10E7aDgii82pCQZskraSw=
X-Google-Smtp-Source: ABdhPJyhJIjk0Uf7wAZcoSKUtIrElyRpf3rTcpyVfpCoxjffZLzN04D0UeXyhghBHuZU7EYz9syKrIsJ+yA+9u8=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:55f9:6fdc:d435:ad28])
 (user=saravanak job=sendgmr) by 2002:a25:b21f:: with SMTP id
 i31mr6557931ybj.403.1628908296136; Fri, 13 Aug 2021 19:31:36 -0700 (PDT)
Date:   Fri, 13 Aug 2021 19:31:29 -0700
Message-Id: <20210814023132.2729731-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.rc1.237.g0d66db33f3-goog
Subject: [PATCH v1 0/2] of: property: Support for few more properties
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>, kernel-team@android.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a series only to avoid merge conflicts. No real dependency
between the patches.

Saravana Kannan (2):
  of: property: fw_devlink: Add support for "leds" and "backlight"
  of: property: fw_devlink: Add support for "phy-handle" property

 drivers/of/property.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

-- 
2.33.0.rc1.237.g0d66db33f3-goog

