Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 667DCCBBC3
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 15:33:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388389AbfJDNdQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 09:33:16 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:41240 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388654AbfJDNdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 09:33:08 -0400
Received: by mail-lj1-f196.google.com with SMTP id f5so6520972ljg.8
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 06:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=35c6WKfWiVzHcoZfDnuVi6Z0edUxk0lXRUfNHbINisM=;
        b=GsEaQ4PAaCg++2pIX8jFuqPCmCG8bW4FnbepiCXMbGjjqMgVq+BZTo5sWrviIz1nm1
         HaZ0oOMcm5OU0oH0Si//o9G1g6UNYV/pOzZ85f+Rzk438Yvx3R2adqlKoUe0QxGD0W2m
         habr3gaCWgS2zCIavFKTIkmpOJqVSPVeh/h6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=35c6WKfWiVzHcoZfDnuVi6Z0edUxk0lXRUfNHbINisM=;
        b=OcBF7WdmqgcxbXq0HsQzLu035E+VE5tT4342jxMXjGqBDhEdqN+UGhN6HIDlZnBT8Q
         5plA42xFsxRkiXSjH6EU39yYzsm/2K6GZPBuoO2tvcT9irjXgR4/DCjEGgKD3PbpRKOd
         ZXU7uX48L+cwm+CJ2oHpunT4UoXP0OzSyurt5vHC790i9UMKuc6ocjDF7qc+K+Kx0uA1
         8dqseKaMU6xbNP3sJUhQ/Zf+ZgRmWe7QZKNUQhDl5fpLH3rp7D1g62l7075CBwdsTntw
         OjYW5dbKDIyHYaEnvITMndyJzlNpkSgO+/fd4Vn170yb2pYFohQThPcjUoIzeUwLM4+m
         QYcg==
X-Gm-Message-State: APjAAAXKGG2W1MUv1J6htlSOt541m2H764dJ2ABgjc1lVaceCDlUd03G
        vZmjLWL0K7zLPufDcQOHzANBnQ==
X-Google-Smtp-Source: APXvYqzJapqdmPdUJMsrzSIurqdBWvVg4OUKJvpEiH2P9BXBMl+o8sCqNS90VSQHpgefK9j1QdikyA==
X-Received: by 2002:a2e:9094:: with SMTP id l20mr9895013ljg.35.1570195987641;
        Fri, 04 Oct 2019 06:33:07 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id y26sm1534991ljj.90.2019.10.04.06.33.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2019 06:33:07 -0700 (PDT)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] pwm: update comment on struct pwm_ops::apply
Date:   Fri,  4 Oct 2019 15:32:07 +0200
Message-Id: <20191004133207.6663-7-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
References: <20191004133207.6663-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 71523d1812ac (pwm: Ensure pwm_apply_state() doesn't modify the
state argument) updated the kernel-doc for pwm_apply_state(), but not
for the ->apply callback in the pwm_ops struct.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 include/linux/pwm.h | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/include/linux/pwm.h b/include/linux/pwm.h
index b2c9c460947d..0ef808d925bb 100644
--- a/include/linux/pwm.h
+++ b/include/linux/pwm.h
@@ -243,10 +243,7 @@ pwm_set_relative_duty_cycle(struct pwm_state *state, unsigned int duty_cycle,
  * @request: optional hook for requesting a PWM
  * @free: optional hook for freeing a PWM
  * @capture: capture and report PWM signal
- * @apply: atomically apply a new PWM config. The state argument
- *	   should be adjusted with the real hardware config (if the
- *	   approximate the period or duty_cycle value, state should
- *	   reflect it)
+ * @apply: atomically apply a new PWM config
  * @get_state: get the current PWM state. This function is only
  *	       called once per PWM device when the PWM chip is
  *	       registered.
-- 
2.20.1

