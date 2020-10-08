Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 168D6286E6D
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 08:16:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728544AbgJHGQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 02:16:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728526AbgJHGQG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 02:16:06 -0400
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 422D1C0613D2
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 23:16:05 -0700 (PDT)
Received: by mail-qk1-x749.google.com with SMTP id r128so3170474qkc.9
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 23:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=w1vMQU/BkMb9kT/YLUI7Npn0R76aHLFoFk8FE0lAloQ=;
        b=oR18h0DqcKWUE6LMmngOUAiHEPQGT1hrKXEtX79uB0E/tLwRY6BQsadmDcDuwHkYAm
         dSe5jLSnVRMZcZfsR7X9x/I6IQcxbyB93Y+NNjCpODP6h43695X3XL+unbbW9ScApz5u
         FZKsGGT5op4zmil6YLzjDFhzLU8YiqOBREqlpqgS97HC7BjLihWJNpIB2ktpFTKwic6J
         hTuMBjhVVBO7bLNAmwKu3NhQjUwMFVaZmt3wu6GRQCvnNIpllaqS4ka+wIlZW1Bo2ZxS
         mZQBEiTs6xwA8n7IYaMq+pMqJXxiv4UN2/2szZDE0v8nvs4InGtI7YjQC2oYCXsQl+TJ
         s4Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=w1vMQU/BkMb9kT/YLUI7Npn0R76aHLFoFk8FE0lAloQ=;
        b=V8gudyGh1SZERSRaPWxK8AB/T5uK4k+7XRp3Xt2lMyByANNoW3N6GwF9sQ7q11v1lE
         ErpyvVKfcOYwn8GiiClFwslKieUjBDFbNEXCQ3s0utQZnt9+pnpBwyFVnqvWSijTmkD6
         inSVewSzvGwijkyfQjmQq/4VSu4s90jlsmYg0HBQH8OyTpcYS2XkYRL3wR8sbWMSw2ak
         kSpIgHdqwrjK6OsFfJ8cctMHp9BJCDEQ3PlKYPw94i9VmMzX4hbs6YocKRTGtXNv0GUl
         ZcFCdbICwsrHbJv6eWXIkZ70OIBsHbtQ4Dw41zJ8lWeMAC7xvcEHlrzirWdyoFJkYvQ8
         QXHw==
X-Gm-Message-State: AOAM531Um3K5jBQI2cN6h7dlElpNQFKwXXHt+uwbiCbOjNv3s8GbIUmw
        7poQ6roy5BV0I8QKFhxC84ruU6VUGpE=
X-Google-Smtp-Source: ABdhPJzRh9cJ5NxPokUHIc7XMPOSKRKLyVAc8CHFQkfgm+bmKjIOrAhqzy27ZPldN+JTVS5+grsGtlWMDGg=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:ad4:40c6:: with SMTP id x6mr6777681qvp.20.1602137764371;
 Wed, 07 Oct 2020 23:16:04 -0700 (PDT)
Date:   Wed,  7 Oct 2020 23:15:42 -0700
In-Reply-To: <20201008061556.1402293-1-badhri@google.com>
Message-Id: <20201008061556.1402293-2-badhri@google.com>
Mime-Version: 1.0
References: <20201008061556.1402293-1-badhri@google.com>
X-Mailer: git-send-email 2.28.0.806.g8561365e88-goog
Subject: [PATCH v10 01/15] usb: typec: tcpci: Add a getter method to retrieve
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
        linux-usb@vger.kernel.org, Amelie Delaunay <amelie.delaunay@st.com>
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

Change since v9:
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
2.28.0.806.g8561365e88-goog

