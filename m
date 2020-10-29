Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5DD4A29E582
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 08:59:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727018AbgJ2H5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 03:57:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726954AbgJ2HYk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 03:24:40 -0400
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com [IPv6:2607:f8b0:4864:20::74a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C94DC05BD32
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 23:32:03 -0700 (PDT)
Received: by mail-qk1-x74a.google.com with SMTP id q15so1172180qkq.23
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 23:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=nKf3Z+mHk5cb7eZEN7fINMBopCuZqqVu3IaAlKIkeXs=;
        b=t9HiEqZt/3f3GeXjkmaqsb5El/ycYKoWr3IyT4FWs2UOLroNgdHLtnfC7ykWTlv075
         q46OI5gr/9GMull6zNFeXZGP1o6Y6jNwnXvw8ztnKOj4WWPeaIfZS9t1QkOu9DEnXZ+W
         Z8d3SR8X4NfBWwlVm/1JWG0H68PYCT0itGVReoNmFa3YhnKHHK4nabJeZM3wYU7tGYwu
         6EtX+jS/hE+KIT6wY922SBz3f8L0IFgBH1CtJZ04F3oNdD7zrW9pC8BMS6cwTrd+H3R8
         niWGehsFtUK1JikTzIAFIVJ31QXj1C2AFSxMqrjkCr2xarete3AVXJHfeEgwuVIaneip
         FEyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=nKf3Z+mHk5cb7eZEN7fINMBopCuZqqVu3IaAlKIkeXs=;
        b=mv5Kqrl1fFNOb9CbpZ0zqMhgoykvMjIwBln5sKq80+b1GZCk/+d8pD0xDOnyAzHKOD
         guCrJkQQJoBGNSVAnGFkog40IGhr+1V5UXe7NRw/kHaB7V8bYEYnfWWVowm+gW+57jt3
         aShSQPRYLRrdKQVB6Kp4hSHPTNgUzQtIUA0mDwqhATI4d8p5ptGNkd1u5APDW3cHWBam
         +YusjxIg/Gj5txQVqjjpe8yXpAD8W65wEfBC2dyYQv+7lctdvwZhkbPK8xfmuk9MqKgo
         v3xBZrL0pZeqX6XSx0IuIb44Ox4UJyDyyPQA9bjBFtmEIIug0pmphzBxdHeJZITy6UYQ
         i6Zw==
X-Gm-Message-State: AOAM530lMRHpUqsCcN7Z5DfUl94LYw85iIc+LZe937mdFqZWJk09Dqge
        HxtqAPIB5me5lEoG3uZToi5TS2c09oc=
X-Google-Smtp-Source: ABdhPJzC8Nh3e06tzPC9UQDANnS/IIM2wxpWQY2rx0PpzZuyGIyOLX6ZfeIDfAWS9brwMzw6/5hRCMGzvlc=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a0c:cc88:: with SMTP id f8mr2862585qvl.27.1603953122731;
 Wed, 28 Oct 2020 23:32:02 -0700 (PDT)
Date:   Wed, 28 Oct 2020 23:31:37 -0700
In-Reply-To: <20201029063138.1429760-1-badhri@google.com>
Message-Id: <20201029063138.1429760-10-badhri@google.com>
Mime-Version: 1.0
References: <20201029063138.1429760-1-badhri@google.com>
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH v12 09/10] usb: typec: tcpci_maxim: Enable auto discharge disconnect
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

Enable auto discharge disconnect for Maxim TCPC.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
Changes since v1:
- Changing patch version to v6 to fix version number confusion.

Changes since v6:
- Rebase on usb-next.

Changes since v7:
- Heikki's suggestion:
Moved the actual write of TCPC_VBUS_SINK_DISCONNECT_THRES
register to tcpci code.

Changes since v8:
- Moved the logic to program the default values of
  TCPC_VBUS_SINK_DISCONNECT_THRESH into the tcpci code.

Changes since v9:
- none.

Changes since v10:
-Added Reviewed-by: Heikki Krogerus

Changes since v11:
none
---
 drivers/usb/typec/tcpm/tcpci_maxim.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/typec/tcpm/tcpci_maxim.c b/drivers/usb/typec/tcpm/tcpci_maxim.c
index dd6171604362..536df4a7901a 100644
--- a/drivers/usb/typec/tcpm/tcpci_maxim.c
+++ b/drivers/usb/typec/tcpm/tcpci_maxim.c
@@ -441,6 +441,7 @@ static int max_tcpci_probe(struct i2c_client *client, const struct i2c_device_id
 	chip->data.TX_BUF_BYTE_x_hidden = true;
 	chip->data.init = tcpci_init;
 	chip->data.frs_sourcing_vbus = max_tcpci_frs_sourcing_vbus;
+	chip->data.auto_discharge_disconnect = true;
 
 	max_tcpci_init_regs(chip);
 	chip->tcpci = tcpci_register_port(chip->dev, &chip->data);
-- 
2.29.1.341.ge80a0c044ae-goog

