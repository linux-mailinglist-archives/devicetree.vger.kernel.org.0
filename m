Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00DE6286E6F
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 08:16:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728536AbgJHGQL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 02:16:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728582AbgJHGQI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 02:16:08 -0400
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28122C0613D5
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 23:16:07 -0700 (PDT)
Received: by mail-pg1-x54a.google.com with SMTP id u1so3063851pga.16
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 23:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=26IIu7qceTcnJ+EWRo/AlWoSuX681bHhRQl11AqMEdc=;
        b=XGy9aFVNL/KY2Z5k9dUuZch+bB7ApdJZSU0DKyD41f3aqv7l474cmRuAISbEV6qa56
         Vkp5sAGy8s5DeFlomTgAEazCj62rzKHw04ol+eFWSM0hyHIdwVyQxYhe5EaWY7z1VrZh
         jRWbXmG94jhIWuBhxkHmCC0ZIU9SMyq7pPVozYeZJ5AoeTyT5iqA0u3+1+zUHks0sOA8
         RBrQwu/u/WtPXptXzxi56H1N4bLq9xU7BZnAnBpCVmGIuyEYE6lWySPVSB/kBs3ENVlv
         27RZ93eo699wgcZlcO+qgJY6wz/RKlei8NTHOToptzrkx/lyg2+CVga7Oje1MSqpci12
         3QTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=26IIu7qceTcnJ+EWRo/AlWoSuX681bHhRQl11AqMEdc=;
        b=gUdd3S75U8RBzdSmPVznVsYS2p8C+N9/6d3u/QsNHRwPiT9lhqlf0OpRe0aGlXPbpQ
         2wtINgL2MgINCWRIVlQpNuhx9BEN2qc/NIL1EpdOp/WGTXdJckKXHjeDE9Rmp5FaNcQ6
         u/HrPpPCpx2Lt9d4C2D+Ye3mMeU3xT82xElxR06vxiOAw/V8rGJm2UkgWr+ItciGV8i2
         IMBKYtHyXLonTj1b7JHNrWXQdb2Wv342Mqx8IYd4efG6MausrySP5YHO7VvyK+zJinVo
         G5H51CHYHI+PPNT3MQFnp3Pe48H0zPV9B2N5cvKBJaxFOrg00DhzllJRzZVGfiqFLUFE
         Tbvw==
X-Gm-Message-State: AOAM5307flOmLWg+7wqySbOqeIjfuix0gFdZuwxGMGek5iyxKwn7SBxn
        Wxa+n67fSd58ZwdF1ApMvpWWvx4ECgk=
X-Google-Smtp-Source: ABdhPJzutHXINK/HYTbrVV4jZqonDi/mJtIjT06Hq1tXwHeWrtqr9VbVfRjjqA0J37fA4NnwWmiHZj0V9qc=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a62:cfc6:0:b029:155:5057:7deb with SMTP id
 b189-20020a62cfc60000b029015550577debmr1526038pfg.43.1602137766594; Wed, 07
 Oct 2020 23:16:06 -0700 (PDT)
Date:   Wed,  7 Oct 2020 23:15:43 -0700
In-Reply-To: <20201008061556.1402293-1-badhri@google.com>
Message-Id: <20201008061556.1402293-3-badhri@google.com>
Mime-Version: 1.0
References: <20201008061556.1402293-1-badhri@google.com>
X-Mailer: git-send-email 2.28.0.806.g8561365e88-goog
Subject: [PATCH v10 02/15] usb: typec: tcpci: Add set_vbus tcpci callback
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

Change since v8:
- None

Change since v9:
- None
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
2.28.0.806.g8561365e88-goog

