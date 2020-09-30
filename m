Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69D6327F0BE
	for <lists+devicetree@lfdr.de>; Wed, 30 Sep 2020 19:51:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725372AbgI3Rvc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Sep 2020 13:51:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36156 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730044AbgI3Rvc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Sep 2020 13:51:32 -0400
Received: from mail-oo1-xc41.google.com (mail-oo1-xc41.google.com [IPv6:2607:f8b0:4864:20::c41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A41BBC0613D0
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 10:51:30 -0700 (PDT)
Received: by mail-oo1-xc41.google.com with SMTP id g26so721733ooa.9
        for <devicetree@vger.kernel.org>; Wed, 30 Sep 2020 10:51:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x+f7BiFjDcEDxXFaCSJ99BZco4Ifg1L6EBbZcOFvnW0=;
        b=Tjo5bueIAl+YDaXQLfjHBsvP2PoT4OLmNlcC8xwkoQH/VR1hvMl7i49v/9KgdlGYAn
         K+EPBZKlnqCsEWjW9J0VQYCpcb1MkZiJX5YM8I/dgwwFG1OlzdkTdzMmPlhxMR6bKtOm
         glqau5EHXF0wVVACBnxT/XX5X+nIsn50LfD0Wp42IlCXali/Ys55JD6CXmSnUvbpkV9u
         kblc+yKAA781zQqkLnNIP6BfrM78D1/LF0+h9fEhrkWcQ5kEHqDD0gT2odKSrVWsOCf3
         4y3Pwa6P8b0/r2hahzmw00WFbLNFZcx2pBwEUNshnFnGqEz7CJRbQv/AccBDHTKFauoy
         +lGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=x+f7BiFjDcEDxXFaCSJ99BZco4Ifg1L6EBbZcOFvnW0=;
        b=TpgsyP8yVHwhbGORzAqtRl5yJC7i++qCz3Hk9Z3mSVr1sLEMlqR9xgdiFWMDj4QflE
         j/c4WAIGw3ynvKeviBYkeSdq6JNGRabnApjc05Z6qY9mTUsvfAKAqHUf2+MeRDs3azVr
         jatKRCLr3xPUVel2akfmyqTEEIzIKUZp/rNrMeVv3HHNLtEgp57Mgglv6hPIgpAMoJBc
         XsjHAIgzc50r0nmNNuVlVaVuXy8F5kN1FiPMDOSux1BKI+fA71h/PBDPOg4LBJaBu7k/
         CE+/nEX3bgdMInsrJM0Eq4+uQkwv0W5fkch/51JHIE2jXcpDhjVctercLA9Z33iwDWt/
         vi5w==
X-Gm-Message-State: AOAM530xbvuaoiUhCvPrYH7NccSE7oyQW7cKVA1dElUp73B3OfLccqAY
        bmiVkucZpoQ3BN0LzgvppboOxQ==
X-Google-Smtp-Source: ABdhPJx6+FOJ8Sbrdh3dEoSm+MMGjJn5gdkjEoss8V0I6jvvphZMyBw9mR4SxW7UOFzuQbn1x5gTUQ==
X-Received: by 2002:a4a:95f1:: with SMTP id p46mr2629057ooi.93.1601488289996;
        Wed, 30 Sep 2020 10:51:29 -0700 (PDT)
Received: from x1.attlocal.net ([2600:1702:da0:ff40:985b:42bd:cfe:59b7])
        by smtp.gmail.com with ESMTPSA id f194sm469873oib.44.2020.09.30.10.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 10:51:29 -0700 (PDT)
From:   Drew Fustini <drew@beagleboard.org>
To:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Jason Kridner <jkridner@beagleboard.org>,
        Robert Nelson <robertcnelson@gmail.com>,
        Trent Piepho <tpiepho@gmail.com>,
        Christina Quast <cquast@hanoverdisplays.com>,
        linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-gpio@vger.kernel.org
Cc:     Drew Fustini <drew@beagleboard.org>
Subject: [PATCH v2] pinctrl: single: fix pinctrl_spec.args_count bounds check
Date:   Wed, 30 Sep 2020 12:48:40 -0500
Message-Id: <20200930174839.1308344-1-drew@beagleboard.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The property #pinctrl-cells can either be 1 or 2:

- if #pinctrl-cells = <1>, then pinctrl_spec.args_count = 2
- if #pinctrl-cells = <2>, then pinctrl_spec.args_count = 3

All other values of pinctrl_spec.args_count are incorrect.  This fix
checks the upper bound instead of just the lower bound.

Fixes: a13395418888 ("pinctrl: single: parse #pinctrl-cells = 2")
Reported-by: Trent Piepho <tpiepho@gmail.com>
Link: https://lore.kernel.org/linux-omap/3139716.CMS8C0sQ7x@zen.local/
Signed-off-by: Drew Fustini <drew@beagleboard.org>
---
v2 change:
- correct the description as I had previously been mistakenly using the
  term #pinctrl-cells instead of pinctrl_spec.args_count

 drivers/pinctrl/pinctrl-single.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index efe41abc5d47..5cbf0e55087c 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -1014,7 +1014,7 @@ static int pcs_parse_one_pinctrl_entry(struct pcs_device *pcs,
 		if (res)
 			return res;
 
-		if (pinctrl_spec.args_count < 2) {
+		if (pinctrl_spec.args_count < 2 || pinctrl_spec.args_count > 3) {
 			dev_err(pcs->dev, "invalid args_count for spec: %i\n",
 				pinctrl_spec.args_count);
 			break;
-- 
2.25.1

