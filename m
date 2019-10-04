Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F24BFCBBC2
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 15:33:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388703AbfJDNdP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 09:33:15 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:44348 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388389AbfJDNdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 09:33:09 -0400
Received: by mail-lj1-f193.google.com with SMTP id m13so6499593ljj.11
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 06:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=enjD7GinjPEmXbD794v1TL8qB8AXAn8TuqNGVlImRwo=;
        b=cVOCOZBfFV4/Q55ikZfbm3e6RfV3oQtgU+vNCBrhPnWHW0yMoE/YOhCTLpEuSkzPyt
         p/jSR/BxvhMiDKgCkwbGaaribeHJHsoJnVzAtd0w3FmfMc8fEw6xUkR16/spC40jUK7j
         aqmMH79uB6vD7zvJf5xhJIjmux8oZvPGm4juI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=enjD7GinjPEmXbD794v1TL8qB8AXAn8TuqNGVlImRwo=;
        b=AIzn6fy9QnuvS6AEs1nBEzdrJH/n0zm546RY2SQF0xr4mSrf6+Ub11FO4pdeiHeV1S
         8dltKQ4M0r8GNHaF+qc+MfYKN2VtorWnLLDyB54Rx1Vqxo3tzSPZ+JagaOdprrCITFYq
         rHkK40Khu+2bmnqa5laGYfJ1fEwtlfcZyH+FnhRQOnTBG7vbfPlptNx6pTCGTlp9WpLm
         HGcqHwGNtP1KC6sUnaHZv13GHnizmpz/mzRk+XTdbNW5/se9VeCwXCYuqyv4y/iTVEiF
         UuRzRqcwWHQU7aQp7o3ucUc38coKrNrDEIZ/3a8YZhKE07es92NypICIJ8y8Qvt6rMVM
         Of6A==
X-Gm-Message-State: APjAAAUUVAS3Uus4HN/xs6TVKPZhX6ySW410gtfdt9HPh7DBT4QUct5S
        KagozLZWvQSeVG0mv0nqUhuHew==
X-Google-Smtp-Source: APXvYqzZiPqBZ6nH+PAoIMx4rztRtbFWWqjLzLXZv4d3HV/oeGtcTwju/gptKDUYmHusErUAOSz6bA==
X-Received: by 2002:a2e:9585:: with SMTP id w5mr3871975ljh.220.1570195985888;
        Fri, 04 Oct 2019 06:33:05 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 06:33:05 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] pwm: mxs: avoid a division in mxs_pwm_apply()
Date:   Fri,  4 Oct 2019 15:32:06 +0200
Message-Id: <20191004133207.6663-6-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since the divisor is not a compile-time constant (unless gcc somehow
decided to unroll the loop PERIOD_CDIV_MAX times), this does a
somewhat expensive 32/32 division. Replace that with a right shift.

We still have a 64/32 division just below, but at least in that
case the divisor is compile-time constant.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 drivers/pwm/pwm-mxs.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 57562221c439..f2e57fcf8f8b 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -33,8 +33,8 @@
 #define  PERIOD_CDIV(div)	(((div) & 0x7) << 20)
 #define  PERIOD_CDIV_MAX	8
 
-static const unsigned int cdiv[PERIOD_CDIV_MAX] = {
-	1, 2, 4, 8, 16, 64, 256, 1024
+static const u8 cdiv_shift[PERIOD_CDIV_MAX] = {
+	0, 1, 2, 3, 4, 6, 8, 10
 };
 
 struct mxs_pwm_chip {
@@ -71,7 +71,7 @@ static int mxs_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
 
 	rate = clk_get_rate(mxs->clk);
 	while (1) {
-		c = rate / cdiv[div];
+		c = rate >> cdiv_shift[div];
 		c = c * state->period;
 		do_div(c, 1000000000);
 		if (c < PERIOD_PERIOD_MAX)
-- 
2.20.1

