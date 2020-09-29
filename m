Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EE6927BB11
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 04:41:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727345AbgI2CkR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Sep 2020 22:40:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727316AbgI2CkO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Sep 2020 22:40:14 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A84E7C0613D0
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 19:40:12 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id r9so3261067ybd.20
        for <devicetree@vger.kernel.org>; Mon, 28 Sep 2020 19:40:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=MiJtLKkZASzxH1ZW8q4MQf29sD0tLNozhPhg5qpkXao=;
        b=eklywUZmu6WqYSPdfZcI5lTgxnq/RHddv6srVPv7W87soTIzSKlaUU1f3dji2U9SVd
         QML3+RzdKPnIi0i4Pgy5V8zD8s6GvSQ2MqgOnxpV8JB0rNGJSNWcFoDJHUp72sGaMH5g
         k26GtPtxznbnFqPre3aMNuzhhrVbIat89+jfJ80deqlPVNDtpPwdbmsLmanb6/EhmyBu
         y/ZpJCZWaI/j3GpLUUJhNQ/mZ5aOf4UoCFMalU1rvlBg04+wH4nM3BBl9ZqK/po2+1+x
         HWGSWJDpMyZsza1dXXThOuiySCsEBXoypB8Es0RwJducv6QRqBNki57roYN/GSlLHVPN
         rYSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=MiJtLKkZASzxH1ZW8q4MQf29sD0tLNozhPhg5qpkXao=;
        b=Qpm8JCfyQmjhwoBLsRl6m4qRiTMUl8XGFdbKJ6JCOps4Rtc4unxJFwSzU3N2V7Apua
         PNU84dLH/tiHh6kPBvxmDEgQnyBSo1bE2knzpE05RpOSvvRknjARhjGQcpn5KAixCcKx
         3PK6AeqLNjYFf8+z58BROOSLNY0asLsZxWY9e21hojOmMlVtA8E4L1NeSDlRSt6lnw6P
         gpTvzGlu7qmIRCUmn9tiWIMYD6S5TJv8Rl8bH6KkKMhkuVDwVBGwM8N6GRGFqNFVixJe
         JzAguX7jaX1EhsiSwet1ZCJI2hHbyFbrxZmOAaJdrhFjkQrCe7DXWdccusWye0pr/uXM
         ePgw==
X-Gm-Message-State: AOAM533KyokQbn+IhGE0wHQwTJC/rnLx4imRtKaO+s3pfEcojynQmQPu
        L6m80Ls95/IFoqf6tEd6f85/LHzUu/A=
X-Google-Smtp-Source: ABdhPJwOe+NOkp+j1RNkpXNHyqZ8h4Kva1lWHOE2ZmpQmLsbJiWtUoMzhBrpJo2qEByX/j6pNydm1Z5dnEM=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a25:6a56:: with SMTP id f83mr3122863ybc.311.1601347211799;
 Mon, 28 Sep 2020 19:40:11 -0700 (PDT)
Date:   Mon, 28 Sep 2020 19:39:50 -0700
In-Reply-To: <20200929024004.244992-1-badhri@google.com>
Message-Id: <20200929024004.244992-2-badhri@google.com>
Mime-Version: 1.0
References: <20200929024004.244992-1-badhri@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v9 01/15] usb: typec: tcpci: Add a getter method to retrieve
 tcpm_port reference
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
        Badhri Jagan Sridharan <badhri@google.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow chip level drivers to retrieve reference to tcpm_port.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
Change since v1:
- Changing patch version to v6 to fix version number confusion.

Change since v6:
- Rebase on usb-next
- Added Reviewed-by from Heikki.

Change since v7:
- Rebase on usb-next

Change since v8:
- None
---
 drivers/usb/typec/tcpm/tcpci.c | 6 ++++++
 drivers/usb/typec/tcpm/tcpci.h | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpci.c b/drivers/usb/typec/tcpm/tcpci.c
index 7d9491ba62fb..b960fe5a0f28 100644
--- a/drivers/usb/typec/tcpm/tcpci.c
+++ b/drivers/usb/typec/tcpm/tcpci.c
@@ -38,6 +38,12 @@ struct tcpci_chip {
 	struct tcpci_data data;
 };
 
+struct tcpm_port *tcpci_get_tcpm_port(struct tcpci *tcpci)
+{
+	return tcpci->port;
+}
+EXPORT_SYMBOL_GPL(tcpci_get_tcpm_port);
+
 static inline struct tcpci *tcpc_to_tcpci(struct tcpc_dev *tcpc)
 {
 	return container_of(tcpc, struct tcpci, tcpc);
diff --git a/drivers/usb/typec/tcpm/tcpci.h b/drivers/usb/typec/tcpm/tcpci.h
index cf9d8b63adcb..04c49a0b0368 100644
--- a/drivers/usb/typec/tcpm/tcpci.h
+++ b/drivers/usb/typec/tcpm/tcpci.h
@@ -150,4 +150,6 @@ struct tcpci *tcpci_register_port(struct device *dev, struct tcpci_data *data);
 void tcpci_unregister_port(struct tcpci *tcpci);
 irqreturn_t tcpci_irq(struct tcpci *tcpci);
 
+struct tcpm_port;
+struct tcpm_port *tcpci_get_tcpm_port(struct tcpci *tcpci);
 #endif /* __LINUX_USB_TCPCI_H */
-- 
2.28.0.709.gb0816b6eb0-goog

