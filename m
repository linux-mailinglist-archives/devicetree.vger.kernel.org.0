Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C35EEDA4E4
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 07:06:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392242AbfJQFGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 01:06:46 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33346 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389109AbfJQFGq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 01:06:46 -0400
Received: by mail-wr1-f68.google.com with SMTP id b9so722704wrs.0
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 22:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=NliZFeQ9c/Qq6fBGMoYFeWbfIFjnCeTRD5spAgl/f4s=;
        b=dRUemVlFgZXe06Iwa1cQ+/QjBSoPreZqwAKc8O46K1uwcJqYL9kpym/A6G3uZ7Wt/g
         fF0/XTNYYLnvn4piLEjhJaaEbbs8dh/6vkQufKzNzGb1FrBOaKadnvHCSyoAz2c8r18z
         j3wyPn4tDVMdJMRLBAySsH/LOLg0XFCU+bzoBg7PzCTtHA04gH8Bu33+vSs2+ifUZq6a
         9qrMbPI/0AMXGrQQ0rUetL/vHr3YwsIBoM/B4Blsu/rQt7vyRHPscg3AD9XpeglZaBuZ
         +MiMMBcu0EXQ6eUCy6ST7rlZnvR4jp6t2mbGp4UHWtWKJXzhMRvVfaMOOF+r6cqp6kJc
         fIqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=NliZFeQ9c/Qq6fBGMoYFeWbfIFjnCeTRD5spAgl/f4s=;
        b=J/k3WXkItNBazdaKUO70eR2KC4Ab5AFqwH6fwRzB4Rp108LPA5pPe6agT8J5yEkTDu
         MbPgNlV0/kUyiACELr5wvSzLket9aW29CzeOF4N3H8qR1eqdfJrz0QxrYLpFhN2ilbsb
         LVuXqUWRO7Ob4e9jIBTuE8IvGucMAxRtz0YnPeLAEPPMFk0dOVEVXTXH2aK3+t3sqd60
         apgM7wdVIpXzaoPk8d3QkJWzKxaqFckFC2y9pMQwhzG8/5jgY2hqbAJDbuYDpK6tL0sN
         XynBa9ULPoFn2066ZQTYYvMWK2plqs7z/PQwTslsvwrQ4tJ4b4n2EVnsG3/Qod6xMLis
         t1iw==
X-Gm-Message-State: APjAAAUXg+Q+5aARi91uFuLW1+7ZbGJeYKWuiQprmX61lqXlzSyG5K/w
        yeuwV3kTW1HKAyUjxnq6XRsJfA==
X-Google-Smtp-Source: APXvYqwpWPAmMJBUo0MsFvw9uiPvopqY1tScgpI01QQMpwwHyjbjfcGVRkmhS52RZk9CEfhYTAjmtQ==
X-Received: by 2002:adf:fe81:: with SMTP id l1mr1128594wrr.165.1571288804371;
        Wed, 16 Oct 2019 22:06:44 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id b5sm1010762wmj.18.2019.10.16.22.06.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 16 Oct 2019 22:06:43 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 2/4] MAINTAINERS: Add myself as maintainer of amlogic crypto
Date:   Thu, 17 Oct 2019 05:06:24 +0000
Message-Id: <1571288786-34601-3-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
References: <1571288786-34601-1-git-send-email-clabbe@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I will maintain the amlogic crypto driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2120c74f476a..59e360ca9fe7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1477,6 +1477,13 @@ F:	drivers/soc/amlogic/
 F:	drivers/rtc/rtc-meson*
 N:	meson
 
+ARM/Amlogic Meson SoC Crypto Drivers
+M:	Corentin Labbe <clabbe@baylibre.com>
+L:	linux-crypto@vger.kernel.org
+S:	Maintained
+F:	drivers/crypto/amlogic/
+F:	Documentation/devicetree/bindings/crypto/amlogic*
+
 ARM/Amlogic Meson SoC Sound Drivers
 M:	Jerome Brunet <jbrunet@baylibre.com>
 L:	alsa-devel@alsa-project.org (moderated for non-subscribers)
-- 
2.21.0

