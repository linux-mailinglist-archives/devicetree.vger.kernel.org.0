Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E0A43CC837
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:58:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726426AbfJEF6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:58:38 -0400
Received: from mail-qt1-f202.google.com ([209.85.160.202]:34473 "EHLO
        mail-qt1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725927AbfJEF6i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:58:38 -0400
Received: by mail-qt1-f202.google.com with SMTP id y10so9017924qti.1
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=Z6x5CooX+KOT5/OTrrb8SPQO8MJH2PsqtriuzR88xtc=;
        b=aIqzNjao7eGlpDOkBJUo1bOShLQ0zbuy3gRuIGgwxMwHbzVXdUm/tmnBaTcv46rIcR
         eaw7GsfCxzAjSIADv8zxCBZSPfKF7t3HkG5uBqLZqwncZoGs6x02LW9vLTUvFILHXAN9
         djcSKbCA/oCxL4sKnkVHlONRorVo1fku0bH8vL7hh0FaPy3vsZxxzXdaZM+b3FuEBStT
         LAHlL9cvDbmNSOG0kJq9h3oPk0WVgAtwhjebey4QPGImeZHzRhiIbpFi03Fzpe2jCCyB
         pKFWFQZR5eRna6U77eRNcxhioznupjEOFJXichqPmUixpCSWLC1MyFyeR4uIB4UcOsAH
         PtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Z6x5CooX+KOT5/OTrrb8SPQO8MJH2PsqtriuzR88xtc=;
        b=dU2xOJ6tki+c9dYmJsNcGlwJQlgqa0xhJuekcwOazRruIbpyIGwwMyFuZ+49DVaPMd
         bwufeF5fLz8YqtIEtPgfg3qsiRFxstjKdR4F9/nEipQzRaszO4Puo/NlYxMFMMVUnIq/
         bs6iCvjIwP9g0RZp7UXlGQOX1y4NoT+sPJxH/j61rlGeZ30vitVVUqhEumYB+JcFNLvu
         cgUouhgF1yIvbhSVTYEKKY8qCL/Nzzavb2rpmZgwW7pP5XUk6BDzWiE4SjPX13cN2UJ5
         ih8tBliCAsmGAzeG0VKyF7yO278YzBgBW/txezNgX9h5m3CKcr9CuKp+F09EnUbdpe8D
         63Ng==
X-Gm-Message-State: APjAAAX1GEgrfaKscZTkQFT4qPUwpZyKA2cwzcvm9q6TUwItNRuwNSkK
        r9qmWZmLWk1H8qWxl8nTmSod5iojyvIL
X-Google-Smtp-Source: APXvYqx2zBUYSjjB09ua6ZMesuhjXWY6OXHFCexT3WCngq0RnSzyv3lkzrA7ht0WMZDaW3QUwAsVPn3TuIFc
X-Received: by 2002:ac8:6985:: with SMTP id o5mr2262786qtq.151.1570255117489;
 Fri, 04 Oct 2019 22:58:37 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:57:59 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.1.I374c311eaca0d47944a37b07acbe48fdb74f734d@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 01/10] platform/chrome: cros_ec: remove unused EC feature
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

