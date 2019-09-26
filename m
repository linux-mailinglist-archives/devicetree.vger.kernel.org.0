Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48117BFA39
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 21:41:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728685AbfIZTlx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Sep 2019 15:41:53 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:41344 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728487AbfIZTlx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Sep 2019 15:41:53 -0400
Received: by mail-pg1-f196.google.com with SMTP id s1so2089192pgv.8
        for <devicetree@vger.kernel.org>; Thu, 26 Sep 2019 12:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vCdvhJK5Y33A40LvwlOqP+c9oV7vBA4MZOHiplNr5PI=;
        b=jNq5HnLzdx9zDeXvjADUPS3hRpiC0NWfwCYgLSypfyj6AYhkTHrvoAV00tYwQ8uJGh
         nr8RCILo8J0q3uv+krJ/04dCt5OyVCcou0yvOJH7imD18oaypEtYZxZbYPzdiyTARz0b
         N+cOdPC0H/3TtVke352JCWaVl7LyJdyqMCVA8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vCdvhJK5Y33A40LvwlOqP+c9oV7vBA4MZOHiplNr5PI=;
        b=hQcUI2AFEkhqPqNImtWLGBtw78oMpjVMJVpDF4MfVgU/dY6+JZBlvq0VxCTVJBbX1V
         mgqH2uLiA0weGFKY+ULrnT3bfJ61xuuVr4/Kq24Q35cTikwDw6bwWVJ6f8MmG8iv+C9R
         R/obIKwUwjl213aOqX7TM9mdtxeHWUpPAcbfwWq8n1OdepqJwmc80/c8coN8yOtLK8db
         ZbD7aXHwSXXVnHFhMvRwLBUZuZYqvWKeEqhJkMoJZOHn5cFuv9FoHV9ixEgAN5IJbsnh
         dP/sqye4mv2oZPQsrZ4flnf+7bQM1pPijIMoC/bwwoSUZXhLFgMBZcILn0Rnk/UAEp8N
         KpXA==
X-Gm-Message-State: APjAAAV4T/9tPT4WSBHx0FVxzJkaxDQLXDgc4fIQrgNs7PE8PDJ0oYxo
        0PbY24PQWJ9DQvNyXJ80LjYKYw==
X-Google-Smtp-Source: APXvYqw7IM64AyswWgfGemWVQ/MeMyINgZpNzkZliB4f0D+or4raoPAglmEcQy3+09YYJ77Bb/tupw==
X-Received: by 2002:a17:90a:850c:: with SMTP id l12mr5561826pjn.9.1569526912255;
        Thu, 26 Sep 2019 12:41:52 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id 8sm2986363pgd.87.2019.09.26.12.41.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Sep 2019 12:41:51 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Marco Felsch <m.felsch@pengutronix.de>,
        ckeepax@opensource.cirrus.com, zhang.chunyan@linaro.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH] regulator: Document "regulator-boot-on" binding more thoroughly
Date:   Thu, 26 Sep 2019 12:41:18 -0700
Message-Id: <20190926124115.1.Ice34ad5970a375c3c03cb15c3859b3ee501561bf@changeid>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The description of "regulator-boot-on" was a little unclear, at least
to me.  Did this property mean that we should turn the regulator on at
boot?  Or perhaps it was intended only to be used for regulators where
we couldn't read the state at bootup to indicate what state we should
assume?  The answer, it turns out, is both [1].

Let's document this.

[1] https://lore.kernel.org/r/20190923181431.GU2036@sirena.org.uk

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 Documentation/devicetree/bindings/regulator/regulator.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index 02c3043ce419..4e67fb41db6b 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -38,7 +38,12 @@ properties:
     type: boolean
 
   regulator-boot-on:
-    description: bootloader/firmware enabled regulator
+    description: bootloader/firmware enabled regulator.
+      It's expected that this regulator was left on by the bootloader.
+      If the bootloader didn't leave it on then OS should turn it on
+      at boot but shouldn't prevent it from being turned off later.
+      This property is intended to only be used for regulators where
+      Linux cannot read the state of the regulator at bootup.
     type: boolean
 
   regulator-allow-bypass:
-- 
2.23.0.444.g18eeb5a265-goog

