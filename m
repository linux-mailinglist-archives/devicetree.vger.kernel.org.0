Return-Path: <devicetree+bounces-769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EB57A302C
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 14:39:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 609721C20BFA
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 12:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFBB613AEA;
	Sat, 16 Sep 2023 12:39:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889577462
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 12:39:08 +0000 (UTC)
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EEA419A;
	Sat, 16 Sep 2023 05:39:07 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5280ef23593so3446581a12.3;
        Sat, 16 Sep 2023 05:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694867946; x=1695472746; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rbUZvYmQNv8XlHrBCEW1i93lPke7LBgt2Bqs3H5wtAk=;
        b=F6iGH7t1axChCJBQ4Uaxbg98Y4TGX5MxKr8LsU3k6OXTPdBIyGRbYuMceFsEXU4ldk
         3ZHwMC6cSS6RctFKY4UaI3kdyYbS1ZakgohUvNulvlSvt3MsHJZkrPhDIxqyrSzeIHPc
         xHzyliViJ1HpDFqHvXBtf36UuTQtmA55r8+cJ127ZA227YBomiKH5yRANEABzXi4lW7L
         hsm9S90QBhmnCIWjHIRndbG24g0bRFad1g7xyPZqtuYCfETtaIJ1fuoMt8kGbYYRqz3c
         Sq7weyQj171yAco72DNj0n3s0aWRHGFHFqOlM1GcwX8XkXhYMcfUj1Os4fKppxauMGXC
         pt6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694867946; x=1695472746;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rbUZvYmQNv8XlHrBCEW1i93lPke7LBgt2Bqs3H5wtAk=;
        b=QQ3yd+tYyLW2vthZMsYSi9r00NkiJZebTGo08g/B6obVQmuxC3yg+aE7cig9kNUFUB
         pqE5wM9lroOE2hG29p5jnzYqgK7SOCqf+dLjlskXw1EpPHSuzyqQYE8zbYolT3b61mm+
         NAxCmHA6XDCxj8n5nW4poX75U4f9e4TSMI/ASTIUY9qLdNhNE9Bb3zv2Big5chqXCAeE
         rwkP5UnaiaA14fHh/0HppbUsIGz93oOuiqPQCWSRjZQxEjh4CXl0OYy7rhny/s1VNzL6
         94GOZLi2LZHVvsiPZs+aqZoEM6lp2PIOH9jcGesFJOdVAHTMpfSlCv+I+65qcXG00B7G
         GB6Q==
X-Gm-Message-State: AOJu0YwOj54vqisrBxGQee9NBLZKX4rnMt316curU1/8twljBa0VlxW7
	2SpcDVb66xRmSGT/vVXAkxs=
X-Google-Smtp-Source: AGHT+IEW9exOYt9cVJju2hIT4N6DQ0wSOJuXq361U1FWB9/G6uY7vFibOZIXUkdPPmEq6pa9zXc1Gg==
X-Received: by 2002:a05:6402:14c4:b0:530:4fc4:50f8 with SMTP id f4-20020a05640214c400b005304fc450f8mr3350537edx.29.1694867945641;
        Sat, 16 Sep 2023 05:39:05 -0700 (PDT)
Received: from localhost.localdomain ([77.134.181.150])
        by smtp.gmail.com with ESMTPSA id bo6-20020a0564020b2600b0052284228e3bsm3474064edb.8.2023.09.16.05.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Sep 2023 05:39:05 -0700 (PDT)
From: Mehdi Djait <mehdi.djait.k@gmail.com>
To: jic23@kernel.org,
	mazziesaccount@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	andriy.shevchenko@linux.intel.com,
	robh+dt@kernel.org,
	lars@metafoo.de,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Mehdi Djait <mehdi.djait.k@gmail.com>
Subject: [PATCH v9 3/7] iio: accel: kionix-kx022a: Warn on failed matches and assume compatibility
Date: Sat, 16 Sep 2023 14:38:49 +0200
Message-Id: <b587cfec2f3350623277005f62121864bee857c7.1694867379.git.mehdi.djait.k@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1694867379.git.mehdi.djait.k@gmail.com>
References: <cover.1694867379.git.mehdi.djait.k@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Avoid error returns on a failure to match and instead just warn with
assumption that we have a correct dt-binding telling us that
some new device with a different ID is backwards compatible.

Acked-by: Matti Vaittinen <mazziesaccount@gmail.com>
Signed-off-by: Mehdi Djait <mehdi.djait.k@gmail.com>
---
 drivers/iio/accel/kionix-kx022a.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/iio/accel/kionix-kx022a.c b/drivers/iio/accel/kionix-kx022a.c
index 2f1e7da25460..5a144f86c634 100644
--- a/drivers/iio/accel/kionix-kx022a.c
+++ b/drivers/iio/accel/kionix-kx022a.c
@@ -1025,10 +1025,8 @@ int kx022a_probe_internal(struct device *dev)
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to access sensor\n");
 
-	if (chip_id != KX022A_ID) {
-		dev_err(dev, "unsupported device 0x%x\n", chip_id);
-		return -EINVAL;
-	}
+	if (chip_id != KX022A_ID)
+		dev_warn(dev, "unknown device 0x%x\n", chip_id);
 
 	irq = fwnode_irq_get_byname(fwnode, "INT1");
 	if (irq > 0) {
-- 
2.30.2


