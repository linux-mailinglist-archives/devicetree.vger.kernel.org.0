Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B11E2234987
	for <lists+devicetree@lfdr.de>; Fri, 31 Jul 2020 18:49:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387452AbgGaQtX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Jul 2020 12:49:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733298AbgGaQtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Jul 2020 12:49:15 -0400
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com [IPv6:2607:f8b0:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A354C0611E1
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 09:49:13 -0700 (PDT)
Received: by mail-il1-x144.google.com with SMTP id y18so17431697ilp.10
        for <devicetree@vger.kernel.org>; Fri, 31 Jul 2020 09:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AU7itzG3fOE6KUAsG0umiG6Zq2Rv0f3naycGhvQ89PE=;
        b=kc0NekPMGwS8K5ELb4t/cdoHr1nkTenMQzPABWn1cr20jAKOBFHBDXblbGi6/jlMab
         VvSoBIhoIeTnIDM9vklyuvivHkIuYLqbId7OIn6jCXkdD4u5xyhzFQH0rZGF1GAkGGFH
         PBQrxlHmjdyXVhHklFI9m+Ls05bQCyarvnS7Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AU7itzG3fOE6KUAsG0umiG6Zq2Rv0f3naycGhvQ89PE=;
        b=VCItk5NHtb06VuR+XiWG/pdz8PvkljXcweXoqYmbjANIfm3FxTvjdkMo55qm/P4VHH
         OMGsn2ETeMgENTiXEeSFOky4zXb+QVXaEtsjKKSDFQBjKFd+UVptHKY73az46Ivn8dBS
         T6uX0tcomCG6hESU7H4E+Wk7LtXfm90HzIyIv0Tyg4ky8rbX4LOfBJr038mW7HBGDJ2+
         7BcGynC1ghj8gOkT++X1OQsDh25EHtprVe6doVpn4wXTnictWxDwsZ7Q3m/RaCwdko2G
         KsxAYjMegZ2zjlItSyOoKERqj4Apj4AO+WAKpgfxzU4iwpFKNSxDpIQPbCx7VVxLcbC9
         vKjA==
X-Gm-Message-State: AOAM531i7LHe3VBBRaCg3HSX6MsMtdJ38xl6Txd0qIVOHE0mPG5fQhZQ
        Z3MJWtdxBXdxL5NGgfcHvhCZi+prLBNb8g==
X-Google-Smtp-Source: ABdhPJxy4WksgY5qoSLQIw0LnwfLVyLP2ng0Hl+eFA1fDlDDKYKjg4LCq/zbc/IBIuRgoUPxRHLFUQ==
X-Received: by 2002:a92:4a09:: with SMTP id m9mr4783559ilf.79.1596214152801;
        Fri, 31 Jul 2020 09:49:12 -0700 (PDT)
Received: from derch.Home (97-122-92-59.hlrn.qwest.net. [97.122.92.59])
        by smtp.gmail.com with ESMTPSA id e84sm5122083ill.60.2020.07.31.09.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 09:49:12 -0700 (PDT)
From:   Daniel Campello <campello@chromium.org>
To:     LKML <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Jonathan Cameron <jic23@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Daniel Campello <campello@chromium.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Douglas Anderson <dianders@chromium.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
        linux-iio@vger.kernel.org
Subject: [PATCH v3 15/15] iio: sx9310: Use irq trigger flags from firmware
Date:   Fri, 31 Jul 2020 10:48:52 -0600
Message-Id: <20200731104555.v3.15.I4c344a6793007001bbb3c1c08e96d3acf893b36b@changeid>
X-Mailer: git-send-email 2.28.0.163.g6104cc2f0b6-goog
In-Reply-To: <20200731164853.3020946-1-campello@chromium.org>
References: <20200731164853.3020946-1-campello@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stephen Boyd <swboyd@chromium.org>

We shouldn't need to set default irq trigger flags here as the firmware
should have properly indicated the trigger type, i.e. level low, in the
DT or ACPI tables.

Signed-off-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Daniel Campello <campello@chromium.org>
---

Changes in v3:
 - Added irq trigger flags commit to the series.

Changes in v2: None

 drivers/iio/proximity/sx9310.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/iio/proximity/sx9310.c b/drivers/iio/proximity/sx9310.c
index a20cd6a4dad729..c41fa7f6558e3f 100644
--- a/drivers/iio/proximity/sx9310.c
+++ b/drivers/iio/proximity/sx9310.c
@@ -951,7 +951,7 @@ static int sx9310_probe(struct i2c_client *client)
 		ret = devm_request_threaded_irq(dev, client->irq,
 						sx9310_irq_handler,
 						sx9310_irq_thread_handler,
-						IRQF_TRIGGER_LOW | IRQF_ONESHOT,
+						IRQF_ONESHOT,
 						"sx9310_event", indio_dev);
 		if (ret)
 			return ret;
-- 
2.28.0.163.g6104cc2f0b6-goog

