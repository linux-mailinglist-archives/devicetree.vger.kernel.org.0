Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD27CCC8D7
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 10:55:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727318AbfJEIz3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 04:55:29 -0400
Received: from mail-yb1-f201.google.com ([209.85.219.201]:34617 "EHLO
        mail-yb1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726134AbfJEIz3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 04:55:29 -0400
Received: by mail-yb1-f201.google.com with SMTP id w18so7122378ybq.1
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 01:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=Z6x5CooX+KOT5/OTrrb8SPQO8MJH2PsqtriuzR88xtc=;
        b=n7m3APz3VUmQOXs0/g4RrvMfgMp9zLlAp50+h5iGUOJDdIGNVoELmoQQwqXgw7wxCe
         mAc5ZlhoRfcl7+7u6oPp/saujThzylOJvAUDiDpi0qt5LUGmIZaVnhp1gRSsVBPJivMf
         4dMG5Iiq/z1MlhjqabU3uWNupHbTtjrAOHbjWaIXTOwstYe05Hei2e3EaC8Uk6FHOO9k
         POOshi0egRMG/7rLuoFOvTbuDOow5vUYCeB+wmHGBwS+0CtsWgb9i7Nhrmd5KCG/7GNj
         nr6fG+BNT8qbAhJi2B8qDE/sEVnAVKH8PmeDY6Yrb9UI/VA7g+NLF+8G9K3c5x1s78sR
         mv5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Z6x5CooX+KOT5/OTrrb8SPQO8MJH2PsqtriuzR88xtc=;
        b=qD7iFlg2wU3o7FrWpeR10YrZ0FVaFpi+svpjB0RYdx+9Z/wD5TcOpCtWdR17K1a+kp
         J91Ab69HRGwhHSrRgDfpfEY0BLJwcg+KZM6ylJFIRVPn2CDITyPAqQO8nKz7/FxbKGwo
         Jo2I0nAaVKV//VLN8baN1a3mAQo4IoELGiGQgr8fmqUmzc+RJQuF6UIHwFsa+lQrBb2w
         7hc9fY4TAo4vGZcKVCffMf1lLKrXXHDLyBbhm389PZmmrScp0u5lbRwfDE6euKoUMinp
         K+vhBLm1wruvgDQqoZQyHHv8VDswqjHcjUmbHn/IwnnwdGJiSdWUJ7yisEr9/0vL+iac
         jD6g==
X-Gm-Message-State: APjAAAWk1eiuQv2TuSisPkCjBNNY1f3d75fa8+w7WxH4t+PWF983GjbH
        pb9jeLw+/iFEKOuVaF25HHXlTWLHeR7l
X-Google-Smtp-Source: APXvYqweytEHeVNLbY+AIyEYtjZfnoblLM6j7sVR3Tqp1Z6jD2P2BOgGSKO13eEdqXR8jgTDuHgLfSW2CsPt
X-Received: by 2002:a81:db13:: with SMTP id u19mr7898490ywm.160.1570265728291;
 Sat, 05 Oct 2019 01:55:28 -0700 (PDT)
Date:   Sat,  5 Oct 2019 16:55:00 +0800
In-Reply-To: <20191005085509.187179-1-tzungbi@google.com>
Message-Id: <20191005164320.01.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
Mime-Version: 1.0
References: <20191005085509.187179-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v2 01/10] platform/chrome: cros_ec: remove unused EC feature
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove unused EC_FEATURE_AUDIO_CODEC.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 include/linux/platform_data/cros_ec_commands.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/platform_data/cros_ec_commands.h b/include/linux/platform_data/cros_ec_commands.h
index 98415686cbfa..43b8f7dae4cc 100644
--- a/include/linux/platform_data/cros_ec_commands.h
+++ b/include/linux/platform_data/cros_ec_commands.h
@@ -1277,8 +1277,6 @@ enum ec_feature_code {
 	 * MOTIONSENSE_CMD_TABLET_MODE_LID_ANGLE.
 	 */
 	EC_FEATURE_REFINED_TABLET_MODE_HYSTERESIS = 37,
-	/* EC supports audio codec. */
-	EC_FEATURE_AUDIO_CODEC = 38,
 	/* The MCU is a System Companion Processor (SCP). */
 	EC_FEATURE_SCP = 39,
 	/* The MCU is an Integrated Sensor Hub */
-- 
2.23.0.581.g78d2f28ef7-goog

