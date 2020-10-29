Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C293B29E3F5
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:24:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727186AbgJ2HYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726868AbgJ2HYf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:24:35 -0400
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com [IPv6:2607:f8b0:4864:20::549])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8553BC05BD1C
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 23:31:48 -0700 (PDT)
Received: by mail-pg1-x549.google.com with SMTP id j5so1372309pgt.4
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 23:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=NlA2Q1plJiXwee/bURImWwW/NspPrk3H/x9qNMDU45U=;
        b=IXq8Lkth1DgtGhxxU++wRNHNtTarSAIhhkxHYxbzunphsM38u/04C5L6HuMTqKCRib
         KrnD5sA3YR6eQCk/xvfa0ENEjAuZHtL13ib2Kp45EJJlij9Tb+iBnlzg+6kim8uzaag5
         36HkTacBASFUPVXdhdcb4FiA99mLJoSZzJBmbYylzMA0bVFw+QgVL712zNKHcriuENDR
         7yBeIx9Xyn0thPYexVaNDZTPmvBRyeefzeODnjyxXn54NBxk8WjkPsM0uEEQXtGuos+m
         A0mcjQJN5qUOx4k+vT/xVYv+3uDAafmzp45jYOmdenmVN389cBWQPY2FDfj9y9piqBA2
         GAtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=NlA2Q1plJiXwee/bURImWwW/NspPrk3H/x9qNMDU45U=;
        b=RMCjBk7mrgbOTE5eywFAdzkk/0Ml7QHofSVhkiU8gaBAmXfmwc3nSAPUmJg25RuPRC
         UG0imjpX9hgULPjA9AtbOP7CWxrvRvO0I2olUyOGfRpXycpR1RMInb3yvRC+LhiFMtPd
         ywfJg+pk7Go0IuAarYdR22p3OhYUFT9TMWkihQptpr2YedifFXcCf4k6GQXKzmldCedR
         +G15FPwNDzof1Y1XsaYSUQaHAgfom7u3L8xg9Qw4OnJZDa88HPneIEd4HdAWjCfz10bA
         iBGZFUKl7AXLBEpAcy+56ZdeeP2yZvxLBa/RiRvwHjErIYW2B/JD7XMpKTj/5nIT/rdE
         9y2w==
X-Gm-Message-State: AOAM531U/3KPLsYEx0Ub5or2dPMQtTJjnu8v6zBQYJS45AmOQDuEnEq+
        dA/3tnPJJ+HCKGdGssACjrKwVf8EoP8=
X-Google-Smtp-Source: ABdhPJyDg7/xASjhCuThx+DjiDF6mhdbWThW7djCT8831GwkNZwkEVnqwdncJO2LoLf03eZ5mI8SDUX0Ho4=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a17:90b:1081:: with SMTP id
 gj1mr2013442pjb.15.1603953108066; Wed, 28 Oct 2020 23:31:48 -0700 (PDT)
Date:   Wed, 28 Oct 2020 23:31:30 -0700
In-Reply-To: <20201029063138.1429760-1-badhri@google.com>
Message-Id: <20201029063138.1429760-3-badhri@google.com>
Mime-Version: 1.0
References: <20201029063138.1429760-1-badhri@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v12 02/10] usb: typec: tcpci_maxim: Fix the compatible string
From:   Badhri Jagan Sridharan <badhri@google.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Thierry Reding <treding@nvidia.com>,
        Prashant Malani <pmalani@chromium.org>,
        Badhri Jagan Sridharan <badhri@google.com>,
        Dan Carpenter <dan.carpenter@oracle.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changing compatible string to include the part number.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
V11 is the first version of the patch.
Introduced to add chip number to the compatible property to address
Rob Herring's comment on dt-binding patch.

Change since v11:
Changed compatible property from maxim,33359 to maxim,max33359
to address Rob Herring's comment
---
 drivers/usb/typec/tcpm/tcpci_maxim.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/typec/tcpm/tcpci_maxim.c b/drivers/usb/typec/tcpm/tcpci_maxim.c
index 723d7dd38f75..a5014c3b51d5 100644
--- a/drivers/usb/typec/tcpm/tcpci_maxim.c
+++ b/drivers/usb/typec/tcpm/tcpci_maxim.c
@@ -481,7 +481,7 @@ MODULE_DEVICE_TABLE(i2c, max_tcpci_id);
 
 #ifdef CONFIG_OF
 static const struct of_device_id max_tcpci_of_match[] = {
-	{ .compatible = "maxim,tcpc", },
+	{ .compatible = "maxim,max33359", },
 	{},
 };
 MODULE_DEVICE_TABLE(of, max_tcpci_of_match);
-- 
2.29.1.341.ge80a0c044ae-goog

