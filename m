Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F5AF79D28D
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 15:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235637AbjILNoi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 09:44:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235526AbjILNoh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 09:44:37 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38C2C10D0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 06:44:33 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2bfb12b24e5so166311fa.0
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 06:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694526271; x=1695131071; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LqEXetn7S/Qdpis0iF4PB46W2IEBIemF0WMhXfkuJNg=;
        b=WX+dwjclAPwOUZ4WmmxGfCkvvMhyCxYZ5PeCtK7SNBvc3KG7/yIHeJUq9+Mo2hZL/O
         Sb0oCqkwsfNNztN2vBGrQfaypqR+L1WJQWY9hf9r9xJK2TcYRyE5zeWbzQilRxyG6Hbk
         nHMcH7pbcOolTf5nzk908Us1QYPiUKBU25GcAKj++5iw2XVq2q1DjZI7Cmy8B5QrIV0Q
         2ULQscYsJ37nv9LmO53D9f2aIPnE6ToZ9WKjDCBOyDc8VDW1bbaNmQrgd0kxTeZxIHNn
         4/Lcs14pEn4JHEEC4nNPAivU1uG0Kw9cP7BG+LD8Os/2iTqA9KcRe5IdQPeFlirzGonU
         pqwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694526271; x=1695131071;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LqEXetn7S/Qdpis0iF4PB46W2IEBIemF0WMhXfkuJNg=;
        b=K/p32bYe8V4TSM34IQgWxef/CodbFLSAmw8xjeLtN7NE64hMrBkYXOiV2nRO/6b2Nx
         PIKDhBNz9dMi2+4zq6aU9IsJqyrGM/JFxBQ1y/ROAnsGcyrVObR4s2I9R5VjWbFwxP8b
         Qs6izeVkKMqI/NVvBd36KYpcWTs1Bclk7YddFlEBrL0R7ZLT7uGw9+6Jnmx99ByCkJkj
         Pjflc4UIVa1Wk5mcuFvOJ/07Yzf38s20RAFL7yI8v4sgaDGKpmXlKH++MiueipEWD7pp
         scqqnpf4k3Py/OOcPEQSRwLjHaD7nGI0J92CFyZKeBToGyJ7xCAVkZm1GW6ttOeOQl5a
         kClQ==
X-Gm-Message-State: AOJu0YyYMmMYef5jPUSDXKn+CVxkrZtFMOJoX7lLRu790fbHH1WiPq1q
        ral7WiMZ97vfZgWiO2b4ur5OOg==
X-Google-Smtp-Source: AGHT+IEo89uii1zTosruLmOdCqBsm5JCTq0FHFuDWHzgBJ/fnXoADgua8Rk9pZT2u0stjzt78VvlRw==
X-Received: by 2002:a05:6512:3189:b0:500:b0e8:a899 with SMTP id i9-20020a056512318900b00500b0e8a899mr11452651lfe.30.1694526271445;
        Tue, 12 Sep 2023 06:44:31 -0700 (PDT)
Received: from [127.0.1.1] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id y6-20020ac255a6000000b00500a2091e30sm1755020lfg.115.2023.09.12.06.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 06:44:31 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 0/2] Rewrite GPIO LED trigger to use trigger-sources
Date:   Tue, 12 Sep 2023 15:44:29 +0200
Message-Id: <20230912-gpio-led-trigger-dt-v1-0-1b50e3756dda@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAD1rAGUC/x3MMQqAMAxA0atIZgNtnPQq4mBtrAFpJS0iSO9uc
 XzD/y9kVuEMU/eC8i1ZUmywfQfbscbAKL4ZyNBgRmsxXJLwZI9FJQRW9AVHIueY7L4SQSsv5V2
 e/zovtX4cyOn/ZQAAAA==
To:     =?utf-8?q?Jan_Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>,
        Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This rewrites the platform-data GPIO LED trigger to instead
use fwnode trigger-sources to describe the LED used.

This will work out-of-the-box with e.g. device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Linus Walleij (2):
      dt-bindings: leds: Mention GPIO triggers
      leds: triggers: gpio: Rewrite to use trigger-sources

 Documentation/devicetree/bindings/leds/common.yaml |   2 +
 drivers/leds/trigger/Kconfig                       |   5 +-
 drivers/leds/trigger/ledtrig-gpio.c                | 136 ++++++---------------
 3 files changed, 42 insertions(+), 101 deletions(-)
---
base-commit: 0bb80ecc33a8fb5a682236443c1e740d5c917d1d
change-id: 20230911-gpio-led-trigger-dt-922bbe21fa22

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>

