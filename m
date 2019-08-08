Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C1AD986430
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 16:18:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729203AbfHHOSw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 10:18:52 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:34053 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733035AbfHHOSs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 10:18:48 -0400
Received: by mail-lj1-f196.google.com with SMTP id p17so89093757ljg.1
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 07:18:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jhsxlul3OwiBIVvc04AVKPmmFUhTDu4EGMToigpGygk=;
        b=MU6+HxBr8T3nNzAAL+z+pTRU4Q1K/LDUDiBqOnzGFfIZN318yE/zZKkkULPneTMFIS
         cjgmOMb1qW0/495NNw/1f5BcFH6zvzFY6r/8GSBr3W6hP+oznlS7GOJdzMuoiBq2NtR3
         2edcckLnsWf3iG6N88DfNuxQmC/LUsmJj88IZQBhsVVCABEs/oG6u+68IPjX48Z5ut4r
         2AqJlbpo4sykyGqaNPZfm+Muwlug81dSnHigXnB7G3oxuqHst0da531hVIR4krdpfePC
         YYu1t+GcVdIPr5raf0AobnMsWu4hm2WkJNrz0WwPwRTn7Ag376QGs0FZiEYa5k01hvaM
         0XQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jhsxlul3OwiBIVvc04AVKPmmFUhTDu4EGMToigpGygk=;
        b=c0yrVImrfdDfrEWKrws8+RR9oz6XuXljT3nEACVHrwTbwpKaWSlC7AdQoqQtW7BGjo
         hwxqoaDm/gEJ/J/rzZAxJ0NK3VbE/BO2iLppGCveAjGFWT1ohBqQTkiJdAuLNj4EB6vH
         X3fatrbiYG4mN67rCH+l2y+67zHzuAqXmZtfUdk0Sq/vB9b/WiNuHoFY65nw5moZGahQ
         pnB8UJaJZCiLfZy+HW/dBRq/W9DPHFgnmyjnSVn8ve4RLRdDCVhBb6P9CSwk2qcM5WPT
         TpgAhrX6ak8SjRYilxvuMiTvvJ4NKXDZEmjeQkMNDj1ExvNVA6arHTM8vI4uLfys9zao
         kEow==
X-Gm-Message-State: APjAAAVoe2LmPkbVveCDjEiU61N4OtcYnrUdzy/UGjONuaxMtTx47BJb
        Lz9mPUrYwf0rrNTERuevjiiqrw==
X-Google-Smtp-Source: APXvYqym3H3b5is3vo912d5RMZNAX7pJAtQ72QdSCI8Ohlix3Tg6faUx+LUCffk1uSKHtPuQjYw7Lw==
X-Received: by 2002:a2e:2c14:: with SMTP id s20mr8388531ljs.54.1565273926450;
        Thu, 08 Aug 2019 07:18:46 -0700 (PDT)
Received: from localhost (c-243c70d5.07-21-73746f28.bbcust.telenor.se. [213.112.60.36])
        by smtp.gmail.com with ESMTPSA id u5sm3929668lfg.66.2019.08.08.07.18.45
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 07:18:45 -0700 (PDT)
From:   Anders Roxell <anders.roxell@linaro.org>
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Anders Roxell <anders.roxell@linaro.org>
Subject: [PATCH] of/platform: fix compilation warning of of_link_property()
Date:   Thu,  8 Aug 2019 16:18:18 +0200
Message-Id: <20190808141818.22724-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

GCC warns that a negative integer can be returned but the
of_link_property() function should return a boolean.

../drivers/of/platform.c: In function ‘of_link_property’:
../drivers/of/platform.c:650:18: warning: ?: using integer constants in boolean context [-Wint-in-bool-context]
  return done ? 0 : -ENODEV;

Rework so function of_link_property() return an integer instead of a boolean.

Fixes: 690ff7881b26 ("of/platform: Add functional dependency link from DT bindings")
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 drivers/of/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 21838226d68a..86fb8ab8c012 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -625,7 +625,7 @@ static const struct supplier_bindings bindings[] = {
 	{ },
 };
 
-static bool of_link_property(struct device *dev, struct device_node *con_np,
+static int of_link_property(struct device *dev, struct device_node *con_np,
 			     const char *prop)
 {
 	struct device_node *phandle;
-- 
2.20.1

