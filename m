Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7BE2B273337
	for <lists+devicetree@lfdr.de>; Mon, 21 Sep 2020 21:56:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728136AbgIUT4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Sep 2020 15:56:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727244AbgIUT4G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Sep 2020 15:56:06 -0400
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com [IPv6:2607:f8b0:4864:20::549])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B005C061755
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 12:56:06 -0700 (PDT)
Received: by mail-pg1-x549.google.com with SMTP id k17so4378785pgb.7
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 12:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=6uMD4HsE5wC0FHPqT1IgUwtVvbrJJCzXvw4X9r1gCoo=;
        b=j9ZsGg26S30B6N5/iM7fXF+53vXQJcO2YVcd5aRZLIE/7ujyE/MqHIqiHDx14BwL0G
         OqXTizS7YYsyQEVGelCrrq7B5YPZYjLqLVlF/J2AK1WNFQ0aHU4J/9qBbmx9IBE2/EsY
         46asudGAzeQKnPKgolL1sGnI0Y3IZUgQoN9ROCk89EY7YcDTCdybBtukr+exlXSnLxvY
         eHHx4TSlrrj5MAC/XH1Sldp0HH6euEtXEhTNsZqfDLKT7vc1MakpGa5LuGxOki5QGhlU
         tLatCOeMIuRzp4RbSGzjhCkbMCI0QbxZ8IgIse/b4LMh6K6ZzvFPt8h5lm7FM8OW/e2i
         PmFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=6uMD4HsE5wC0FHPqT1IgUwtVvbrJJCzXvw4X9r1gCoo=;
        b=bZ0NoS/cbxm+Dhk6qJxma5jH32Lgh1VLz5aZnMS0421jRjQqhn3IB6KSyochVrbyap
         iADVesEOFLxrU96iWKqrC/1dxvNDy5THUUBjrN2jS8za8UZiuTNCTuiS10TjIucMNMQG
         nE3Qws4dR4KcxpMZJpIzYXxKzfnt/oXvnfoiX/zMoOwjzwhgc6qyTjlY8P3XMEbB/GGh
         lVjxfaimGyqlvTggSe6x3/eVC4VoJrQX9Jy9xHRWfv+gMir9L8s6sgNfSGd8a4lpP9dS
         qCqlQISVRuPWWNmCPL/Q6dKoKlU9CxmUSxq7Ims+EPHGxGzKTnNRVEMEbxfym42Pfvp/
         aS9g==
X-Gm-Message-State: AOAM532AcJ9tLOKG86sEKo4Nue/EJRShXSqIsQ5tchc9ULozDkdaLJGq
        O8pzIetFX/Y91JPV8kDyGu3HGEDf9ZI=
X-Google-Smtp-Source: ABdhPJzhpue5odqawoasR6P5GtcUTRKSdkAueok+xuPOfvxWa+rQs3GHOCYx/o0PTInoBfOLql/G3f8yqWw=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a17:90a:4d84:: with SMTP id
 m4mr797192pjh.59.1600718165655; Mon, 21 Sep 2020 12:56:05 -0700 (PDT)
Date:   Mon, 21 Sep 2020 12:55:46 -0700
In-Reply-To: <20200921195555.1050731-1-badhri@google.com>
Message-Id: <20200921195555.1050731-2-badhri@google.com>
Mime-Version: 1.0
References: <20200921195555.1050731-1-badhri@google.com>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
Subject: [PATCH v8 02/11] usb: typec: tcpci: Add set_vbus tcpci callback
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

set_vbus callback allows TCPC which are TCPCI based, however,
does not support turning on sink and source mode through
Command.SinkVbus and Command.SourceVbusDefaultVoltage.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
Changes since v1:
- Changing patch version to v6 to fix version number confusion.

Changes since v6:
- Rebase on usb-next

Changes since v7:
- Added Reviewed-by: Heikki
- Rebase change
---
 drivers/usb/typec/tcpm/tcpci.c | 7 +++++++
 drivers/usb/typec/tcpm/tcpci.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpci.c b/drivers/usb/typec/tcpm/tcpci.c
index b960fe5a0f28..d6a6fac82d48 100644
--- a/drivers/usb/typec/tcpm/tcpci.c
+++ b/drivers/usb/typec/tcpm/tcpci.c
@@ -328,6 +328,13 @@ static int tcpci_set_vbus(struct tcpc_dev *tcpc, bool source, bool sink)
 	struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
 	int ret;
 
+	if (tcpci->data->set_vbus) {
+		ret = tcpci->data->set_vbus(tcpci, tcpci->data, source, sink);
+		/* Bypass when ret > 0 */
+		if (ret != 0)
+			return ret < 0 ? ret : 0;
+	}
+
 	/* Disable both source and sink first before enabling anything */
 
 	if (!source) {
diff --git a/drivers/usb/typec/tcpm/tcpci.h b/drivers/usb/typec/tcpm/tcpci.h
index 04c49a0b0368..4d441bdf24d5 100644
--- a/drivers/usb/typec/tcpm/tcpci.h
+++ b/drivers/usb/typec/tcpm/tcpci.h
@@ -144,6 +144,7 @@ struct tcpci_data {
 			 bool enable);
 	int (*start_drp_toggling)(struct tcpci *tcpci, struct tcpci_data *data,
 				  enum typec_cc_status cc);
+	int (*set_vbus)(struct tcpci *tcpci, struct tcpci_data *data, bool source, bool sink);
 };
 
 struct tcpci *tcpci_register_port(struct device *dev, struct tcpci_data *data);
-- 
2.28.0.681.g6f77f65b4e-goog

