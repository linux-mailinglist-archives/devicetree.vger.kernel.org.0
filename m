Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C8D533D90D0
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 16:42:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236686AbhG1Omk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 10:42:40 -0400
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120]:42788
        "EHLO smtp-relay-canonical-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236663AbhG1Omk (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 28 Jul 2021 10:42:40 -0400
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id D3EFF3FE72
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 14:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1627483357;
        bh=I1PKEMwXuF82cGlAevCPYveDll1B9ZxnvL7Av9RVEa0=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=fDOoCA/wwBv4aFg4tVD6a3qPMsSS6HzGJtyzw+AB9TKVvIa9o6U4vpUBokH7gFC88
         N3hSgIbDCxZ5mi+CgK7xoZ2YJ6e03LUaPe11fyvg6yZ3FoDvb/ajKAFMEVxARVWZCs
         1IYv3faYMlKs8eSYvdKf4GtiJY3zp+6JQgc4lrUpAr972fcS4nkzxAV+2XQ4/yJEi2
         sUqFf9L0kpNCw8o4aU6lweActDtHG96N0fH4MQuzOFvIPOJ6hy7YhO41qbbuadHRf+
         0s7Lf96lvu5XgnCPxNL+nex0uuZ5IrP04y+mAOSp+uKmtWUOB/E4h3sFv9vKdE80pH
         AVCibPpJLJJsg==
Received: by mail-ej1-f72.google.com with SMTP id lu19-20020a170906fad3b029058768348f55so912686ejb.12
        for <devicetree@vger.kernel.org>; Wed, 28 Jul 2021 07:42:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=I1PKEMwXuF82cGlAevCPYveDll1B9ZxnvL7Av9RVEa0=;
        b=pSsOKiGXUex5FYGj6HS1wPzEAZmBOBIxKFpaWRnXjv5eeqzMYUk2+uncbOObC1mVuI
         F9KyVWD2mIYGZ8kIKDR4e4r5F9Bs9rzeC2XQm89B4BiwtWleZb1QSH/MBBoNGAZrZTif
         uV4IzyjDOFw8vUDU3xAuebNbX3QKZxXe+6t2PYFirshKC1wiSiKxqEDPzvjjIGq6QhDw
         Vdtb1FFgio0+maGt8Pk+hd7eRXResA55vjDec5W9AMscfeMcgHVCQ5O253HL95LJtTho
         H7GqW4l2xrN+6e3lj1Z5NQmdK5pAY0bBAbi1nngzKd96bjBwTkWkXqD8MjZhUjpvE9rF
         yOYA==
X-Gm-Message-State: AOAM530jFt6x6wyJkYlHMcN+cBgl9eIdHEP9bjttNjanW67X+U1Yglvw
        G3UaYYk+NT4RgsOp3u9R2FNtBUV8W4q15bwvnD3DeNMWMwrHwsx8Fl57dOvOsxu6HMo5zzkdByU
        tZHHUHjVNaCJntE9aOM0xcW8oAqMXFU3wqewSaQ4=
X-Received: by 2002:aa7:c597:: with SMTP id g23mr186026edq.340.1627483357633;
        Wed, 28 Jul 2021 07:42:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxlzVaR6Q3zwsFWtnXgHfb0bnEN67CBw95glR9J9AzgAsrKT/4ZsPZqnlvood7OLi4vWzsLSg==
X-Received: by 2002:aa7:c597:: with SMTP id g23mr186015edq.340.1627483357490;
        Wed, 28 Jul 2021 07:42:37 -0700 (PDT)
Received: from localhost.localdomain ([86.32.47.9])
        by smtp.gmail.com with ESMTPSA id d19sm2683676eds.54.2021.07.28.07.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 07:42:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 0/3] of/gpiolib: minor constifying
Date:   Wed, 28 Jul 2021 16:42:26 +0200
Message-Id: <20210728144229.323611-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Minor constifying of pointer to device_node.  Patches depend on each
other (in order of submission).

Best regards,
Krzysztof


Krzysztof Kozlowski (3):
  of: unify of_count_phandle_with_args() arguments with !CONFIG_OF
  gpiolib: constify passed device_node pointer
  gpiolib: of: constify few local device_node variables

 drivers/gpio/gpiolib-devres.c |  2 +-
 drivers/gpio/gpiolib-of.c     | 16 ++++++++--------
 include/linux/gpio/consumer.h |  8 ++++----
 include/linux/of.h            |  2 +-
 include/linux/of_gpio.h       | 15 ++++++++-------
 5 files changed, 22 insertions(+), 21 deletions(-)

-- 
2.27.0

