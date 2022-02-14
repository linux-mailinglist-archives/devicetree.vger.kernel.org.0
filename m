Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29F404B4164
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 06:38:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231804AbiBNFhd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 00:37:33 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:37570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231294AbiBNFhc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 00:37:32 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1E694EA0D
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 21:37:25 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id a19-20020a25ca13000000b0061db44646b3so31864517ybg.2
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 21:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=+1SwCE06M0PNqBLEJTg15X5eH7+oSoSSFiekI+9wl9s=;
        b=VtTPVXxfex/1ySP2MQUCDrrLGS4bgo8o9gYa4yfPriMLozUesvzfOHPU9JNcSROXnZ
         3PTCEKlwxO3xEnbzXHfcKoos8ott/okgb3eO4UDDb5Hgq0fnhYoRMEpSqFV4Pk277fJ2
         +Nd5BHsBrYrOtYE1oe1F8NmnJOOYyYSzhBm7iowqdEfANVP0pk9K8G9JaIhlJe7ZekSu
         9kpEwoQssXCR1UvrZQT5zNlJ5DF4OJ8uwRFWNzYIWYAWuZKd0QjWbKpL/zmBkd6fQkMq
         a41bVuN0Wgd7EduqWuld4iSyG2TgCW8/AfcO5jxg3moU1H+YUcIzzZAWiUed0xbe9ykr
         0LPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=+1SwCE06M0PNqBLEJTg15X5eH7+oSoSSFiekI+9wl9s=;
        b=mi03e4JxNk8bKwMN0J6XUPbJYEVn0yliK+54UefttHxe2mCychuIPQKk55CGxGdHNg
         aCNFUmjEqofg2ZgwVKDcpL2m3X3s9BImLpLzKU72uieW6Fal9YJBQTYD7/k2q5blgG0Y
         wBX7fziJINDljS9UtXp4DzY0N6HTlZEExQlU2NbWw5HkxC1JFoOXVF/lEICk/TE5CXfQ
         yWtBuQSNp8E/2SUDVCG+20AkFl1cbW3Bjsu7zdJG9vdnyxaymaW0IncLyteqUA1Z23sB
         PfAQ6HDJ75zdd4+PyjfULo3bRczE9Os+BvR16GKXXkjOtybwXjQecAo/Oualhozf8ibe
         GClg==
X-Gm-Message-State: AOAM533GYEdet0FIDxU9A8///kECcDvdCE3UJjrpxIj2roNfGF5vMp0n
        nLu48jKP6auYdteVIN6TjzMNenyJYlnU
X-Google-Smtp-Source: ABdhPJzLlnCyP8MR7Ka8mTntsMrSfWdMHHSSskLUEwG3JprtOu25ulTVq/KOFZQzyJJoH9evqR6maA8J1aHF
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:f315:f92d:e3d3:2539])
 (user=tzungbi job=sendgmr) by 2002:a25:900e:: with SMTP id
 s14mr10446908ybl.338.1644817044881; Sun, 13 Feb 2022 21:37:24 -0800 (PST)
Date:   Mon, 14 Feb 2022 13:36:41 +0800
Message-Id: <20220214053646.3088298-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.35.1.265.g69c8d7142f-goog
Subject: [PATCH 0/5] platform/chrome: cros_kbd_led_backlight: add EC PWM backend
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     bleung@chromium.org, groeck@chromium.org, robh+dt@kernel.org
Cc:     chrome-platform@lists.linux.dev, tzungbi@google.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds EC PWM as an backend option for ChromeOS keyboard LED
backlight.

The 1st patch reorder the headers alphabetically.

The 2nd patch separates the ACPI backend as an independent option.

The 3rd patch is the DT binding document for the proposed compatible string.

The 4th patch supports OF match.

The 5th patch adds EC PWM as another backend option.

Tzung-Bi Shih (5):
  platform/chrome: cros_kbd_led_backlight: sort headers alphabetically
  platform/chrome: cros_kbd_led_backlight: separate ACPI backend
  dt-bindings: add google,cros-kbd-led-backlight
  platform/chrome: cros_kbd_led_backlight: support OF match
  platform/chrome: cros_kbd_led_backlight: support EC PWM backend

 .../chrome/google,cros-kbd-led-backlight.yaml |  35 +++
 .../bindings/mfd/google,cros-ec.yaml          |   3 +
 drivers/platform/chrome/Kconfig               |  14 +-
 .../platform/chrome/cros_kbd_led_backlight.c  | 218 ++++++++++++++++--
 4 files changed, 247 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-kbd-led-backlight.yaml

-- 
2.35.1.265.g69c8d7142f-goog

