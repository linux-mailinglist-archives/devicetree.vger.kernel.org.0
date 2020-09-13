Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9847B2681CD
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 01:04:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725970AbgIMXEK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Sep 2020 19:04:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725946AbgIMXEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Sep 2020 19:04:07 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DE1EC06178A
        for <devicetree@vger.kernel.org>; Sun, 13 Sep 2020 16:04:06 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id lo4so20541680ejb.8
        for <devicetree@vger.kernel.org>; Sun, 13 Sep 2020 16:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9SldZtCk2q4nsXGS7xAt+YvKP+JMD0RBd/7nndQ7OzQ=;
        b=xGYPnpkOvjV2guhiQLfbAkzC/7YNuCzGUhPdX8zeH04ezPUD9aZl3fN1vWZJUU9+3H
         un9+d62uLxDQklFkXGKGBVt+aBq558OFOSEeL1mewIn/2ltoz8wrbRMNiq7Oz1VVGCkN
         l2NcUeZT64lVwLnJdoPdGrdfaxHSeQWIdKA3jn/Meo5aMBxpwLW3di+WhePRRbYj/zlg
         i+ivxcDQY9xCoZFM3maEt58qGAk4nFjRolpgCGRMOKkcsQrIazsISN15bJN/hWzH/4Kt
         9ZF+eDCI5fSFdKKwJGyPMne985PfgZi7D2R7hcsabYIrCf2PiUAZNlEvc4DlhX8HFBxr
         rawg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9SldZtCk2q4nsXGS7xAt+YvKP+JMD0RBd/7nndQ7OzQ=;
        b=kEgH0L2O1DTwKhzbPoWsbSFN+nlQGhBpc3S8K9uNLCxHBiM5cTuRjYE0guCUBaEW2K
         KKsjLeDLJPbxiDpr9DTXw/tsGYlFt7gfBKjyS4qIcE9ncH9AFX8WwGPXn33bQmqovzwS
         i/l2YjVBvok9TJBbZh0Y+wGrHjVVZYlKdhINRqWYBke9zpG3T4cVq+tQMAd38pHSRLlh
         AdxQ0Bkwr7pqN/3d6B0TtMpT8m8uUZIfZ+iMj+Ycao+XSc5XE02Y+v1lBJJbxF84Ths9
         Abwp9wGEiFd7ZSNugROTe1IOQ+3YGrVBAFMcpyOvmlE9CG4rLN1rcoPosDEhWmqcSh8R
         uiCA==
X-Gm-Message-State: AOAM533tgXPiph1PiB2Y9NufyBi5zMAFPSYllLNot7DIHyOPm5Q9fO6L
        m1zirgJX90oGdxElbNDKC9divA==
X-Google-Smtp-Source: ABdhPJymLIzw6wH0ol290j3Ilni2SshdpfYbKIN/B8glAUUXu/TzNoFjW+VT/pdj29EtJ9S1cUY8jw==
X-Received: by 2002:a17:906:a207:: with SMTP id r7mr12092932ejy.32.1600038244812;
        Sun, 13 Sep 2020 16:04:04 -0700 (PDT)
Received: from localhost.localdomain ([2604:a880:400:d0::26:8001])
        by smtp.gmail.com with ESMTPSA id jo26sm6280761ejb.120.2020.09.13.16.04.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2020 16:04:03 -0700 (PDT)
From:   Drew Fustini <drew@beagleboard.org>
To:     linux-arm-kernel@lists.infradead.org,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>, linux-omap@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Haojian Zhuang <haojian.zhuang@linaro.org>,
        devicetree@vger.kernel.org, bcousson@baylibre.com,
        Jason Kridner <jkridner@beagleboard.org>,
        Robert Nelson <robertcnelson@gmail.com>,
        Trent Piepho <tpiepho@gmail.com>
Cc:     Drew Fustini <drew@beagleboard.org>
Subject: [PATCH v2] pinctrl: single: fix debug output when #pinctrl-cells = 2
Date:   Mon, 14 Sep 2020 01:03:07 +0200
Message-Id: <20200913230306.2061645-1-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The debug output in pcs_parse_one_pinctrl_entry() needs to be updated
to print the correct pinctrl register value when #pinctrl-cells is 2.

Fixes: a13395418888 ("pinctrl: single: parse #pinctrl-cells = 2")
Reported-by: Trent Piepho <tpiepho@gmail.com>
Link: https://lore.kernel.org/linux-omap/3139716.CMS8C0sQ7x@zen.local/
Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
v2 change:
this is a fix to my prior email where I referred to #pinctrl-cells = 3
which is incorrect.  pinctrl_spec.args_count is 3 but #pinctrl-cells = 2
https://lore.kernel.org/linux-omap/20200913224746.2048603-1-drew@beagleboard.org/

 drivers/pinctrl/pinctrl-single.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index 5cbf0e55087c..f3cd7e296712 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1033,7 +1033,7 @@ static int pcs_parse_one_pinctrl_entry(struct pcs_device *pcs,
 		}
 
 		dev_dbg(pcs->dev, "%pOFn index: 0x%x value: 0x%x\n",
-			pinctrl_spec.np, offset, pinctrl_spec.args[1]);
+			pinctrl_spec.np, offset, vals[found].val);
 
 		pin = pcs_get_pin_by_offset(pcs, offset);
 		if (pin < 0) {
-- 
2.25.1

