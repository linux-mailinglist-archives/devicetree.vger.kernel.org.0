Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2721F23499E
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 18:50:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733149AbgGaQt6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 12:49:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733055AbgGaQtB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 12:49:01 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F408C061757
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 09:49:01 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id j8so19933127ioe.9
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 09:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fYfRtRWNJl9Yn2hyI+uBsjOjqoFWT79cyClOPwpH2dg=;
        b=GdIxWKBq8Nx+RFYfACUl5CdLRHgJ6yNDGaMOR99XLu1RRGcn+vTrIQHXoXHfT+jB4M
         LKMiZicp1+wFftkxIX7jZ7mmdXgJS/u0/P9hH4kdlLf3bPzyjSdttsBlwv5U1gphcgEm
         ydtGzFYm7eWucSJ12u01u+mFTDkKbrkwA+cL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fYfRtRWNJl9Yn2hyI+uBsjOjqoFWT79cyClOPwpH2dg=;
        b=eV1k7QfD14OcoFmuUDQrtSjQaX2O15B8ie3CR9adliL0X048paDvl5VVBB8rAKRmM5
         G0EiZcMVJUaAadkS/aR2B+jnpx61HqWZFkTJhKoVtgar7q+cBr4x7DN30gbwE/2XYr6/
         Pfe8DiFu/D0TM+GsTZIaEFtfBUoUJBv5vYEcovfXiqYqPJt+0IMb8bt9rgsMWT5We3Oy
         OtuJi0P4XBqDT2ma7TKlgs19S4U5toGkMzpWKL8DNliTi9POdysgxz3eolHcu+Qv7XlV
         O09Kjsje3oYo9RF+BzDs41HMhztuVRHI184b48OsBXeBtsS8ZHFvew1UAqLCDZkC5YhV
         bUzg==
X-Gm-Message-State: AOAM531DwHg5Guun+vqd/rGkY3t+tqgGh3P75EVIMuUqTEEEl/yJZrB0
        H0Q0zMz5f/ev564v+ungrpqDI+0n2JgsXQ==
X-Google-Smtp-Source: ABdhPJzwwlzQZYE4CzsXOSXHfiJmZOY3GnLWv89mBk6yUE97mxpy9XhELrZ/P6leUhKFdeIKJCsR3w==
X-Received: by 2002:a6b:f911:: with SMTP id j17mr4297683iog.96.1596214140314;
        Fri, 31 Jul 2020 09:49:00 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id e84sm5122083ill.60.2020.07.31.09.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 09:48:59 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Daniel Campello <campello@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        Stephen Boyd <swboyd@chromium.org>, linux-iio@vger.kernel.org
Subject: [PATCH v3 03/15] iio: sx9310: Fix irq handling
Date:   Fri, 31 Jul 2020 10:48:40 -0600
Message-Id: <20200731104555.v3.3.Idbfcd2e92d2fd89b6ed2e83211bd3e6c06852c33@changeid>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
In-Reply-To: <20200731164853.3020946-1-campello@chromium.org>
References: <20200731164853.3020946-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes enable/disable irq handling at various points. The driver needs to
only enable/disable irqs if there is an actual irq handler installed.

Signed-off-by: Daniel Campello <campello@chromium.org>
---

Changes in v3:
 - Moved irq presence check down to lower methods

Changes in v2:
 - Reordered error handling on sx9310_resume()

 drivers/iio/proximity/sx9310.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index 07895d4b935d12..c7a27c21c20cd1 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -323,12 +323,18 @@ static int sx9310_put_event_channel(struct sx9310_data *data, int channel)
 
 static int sx9310_enable_irq(struct sx9310_data *data, unsigned int irq)
 {
-	return regmap_update_bits(data->regmap, SX9310_REG_IRQ_MSK, irq, irq);
+	if (data->client->irq)
+		return regmap_update_bits(data->regmap, SX9310_REG_IRQ_MSK, irq,
+					  irq);
+	return 0;
 }
 
 static int sx9310_disable_irq(struct sx9310_data *data, unsigned int irq)
 {
-	return regmap_update_bits(data->regmap, SX9310_REG_IRQ_MSK, irq, 0);
+	if (data->client->irq)
+		return regmap_update_bits(data->regmap, SX9310_REG_IRQ_MSK, irq,
+					  0);
+	return 0;
 }
 
 static int sx9310_read_prox_data(struct sx9310_data *data,
@@ -382,7 +388,7 @@ static int sx9310_read_proximity(struct sx9310_data *data,
 
 	mutex_unlock(&data->mutex);
 
-	if (data->client->irq > 0) {
+	if (data->client->irq) {
 		ret = wait_for_completion_interruptible(&data->completion);
 		reinit_completion(&data->completion);
 	} else {
@@ -1011,10 +1017,11 @@ static int __maybe_unused sx9310_resume(struct device *dev)
 
 out:
 	mutex_unlock(&data->mutex);
+	if (ret)
+		return ret;
 
 	enable_irq(data->client->irq);
-
-	return ret;
+	return 0;
 }
 
 static const struct dev_pm_ops sx9310_pm_ops = {
-- 
2.28.0.163.g6104cc2f0b6-goog

