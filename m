Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02644286E83
	for <lists+devicetree@lfdr.de>; Thu,  8 Oct 2020 08:16:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728862AbgJHGQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Oct 2020 02:16:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728594AbgJHGQ0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Oct 2020 02:16:26 -0400
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com [IPv6:2607:f8b0:4864:20::44a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3EADC0613DD
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 23:16:23 -0700 (PDT)
Received: by mail-pf1-x44a.google.com with SMTP id y7so3044494pff.20
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 23:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=IvjkXzvW+6lNlW1+WxkRnhzLSIktZGiqYABylT0P1Jw=;
        b=ECVBCFHoGJFmlpmlKxY54GiGeVoQi6NcJEP/nSDJkt2B6grDRwwJGVDCa0/LgBWVIN
         zn3PmJb0jK4lLns5VDA6CDyZZiIy76K5gxtplBJjT+t0x20Vzl2/OuMwwPuMlrJfHzC3
         na1Ihx/iD9EBZF54ppUOafLfUg1+coxmJrS5sdHLZ4VlErLuxMfw8ZpUHC78jfcT9bYu
         UlwUJnUoltWqbrZorRJLBggOsSnavm13Yi1tSLHhxI5qRV37U7JtrNdbCouaEBuAeucq
         3RcR2MJ0QMToN5dgsg1RHrTMd8y2MWrcund/qlE4TFVRfKsFAdaXkF6ClR+Hygfylov+
         xfgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=IvjkXzvW+6lNlW1+WxkRnhzLSIktZGiqYABylT0P1Jw=;
        b=AZ59rc1vJZpb1UDN8JPKTmtiR0PVHAHG90Pyyag789I5AwoppSlfbR6Ks4A7RIEWXI
         0L6HN19kil6fJT/jMULyhWU2V4zKezJf8wpgKKDWxT67BuDdATksUfzB/xitYYUMAstw
         eoMARlXGQXwBsqZJQkWBFE1NNS13P2tLDBR6IHJzcLRsz5Pa854yIaE5JOr0Dxaev8Tp
         DowaNeHkC0B1P7mbIArwyzHTXy+2LMOx7sTIwAMYJTNUtFeATnh78LbzaR1Q7D10wjBH
         7D3MIkp07QMDVDeDsEFe/c++pqGKq20JSAK+QNDNSzWGF7ooTqvK4oyj7aIpz75kzFuu
         OAXQ==
X-Gm-Message-State: AOAM530JWFZjMsn5v0TKf64oHSoo7Yq7bq14l8BiWiXBJ28jXolc2W+T
        SxK43V2esF3yHbq0J8tMQfCVxhZ4Mrs=
X-Google-Smtp-Source: ABdhPJy9elM1FPyXKazUGzgY9O12LDmXbvBYh2mrZEhM4EuaT853sVF3jhlNBHpNw/AT77Zg5Yvy7W4Gzyg=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a62:1414:0:b029:152:44af:42e with SMTP id
 20-20020a6214140000b029015244af042emr6108924pfu.66.1602137783217; Wed, 07 Oct
 2020 23:16:23 -0700 (PDT)
Date:   Wed,  7 Oct 2020 23:15:51 -0700
In-Reply-To: <20201008061556.1402293-1-badhri@google.com>
Message-Id: <20201008061556.1402293-11-badhri@google.com>
Mime-Version: 1.0
References: <20201008061556.1402293-1-badhri@google.com>
X-Mailer: git-send-email 2.28.0.806.g8561365e88-goog
Subject: [PATCH v10 10/15] usb: typec: tcpci: frs sourcing vbus callback
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

During FRS hardware autonomously starts to source vbus. Provide
callback to perform chip specific operations.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
v9 is the first version of this patch in the series. Added to fix
occasional bug of vbus turning back on when disconnecting the FRS accessory
after disconnect. No changes since v9.
---
 drivers/usb/typec/tcpm/tcpci.c | 9 +++++++++
 drivers/usb/typec/tcpm/tcpci.h | 4 ++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/usb/typec/tcpm/tcpci.c b/drivers/usb/typec/tcpm/tcpci.c
index f9f0af64da5f..f91688e43991 100644
--- a/drivers/usb/typec/tcpm/tcpci.c
+++ b/drivers/usb/typec/tcpm/tcpci.c
@@ -284,6 +284,14 @@ static int tcpci_enable_frs(struct tcpc_dev *dev, bool enable)
 	return ret;
 }
 
+static void tcpci_frs_sourcing_vbus(struct tcpc_dev *dev)
+{
+	struct tcpci *tcpci = tcpc_to_tcpci(dev);
+
+	if (tcpci->data->frs_sourcing_vbus)
+		tcpci->data->frs_sourcing_vbus(tcpci, tcpci->data);
+}
+
 static int tcpci_set_bist_data(struct tcpc_dev *tcpc, bool enable)
 {
 	struct tcpci *tcpci = tcpc_to_tcpci(tcpc);
@@ -628,6 +636,7 @@ struct tcpci *tcpci_register_port(struct device *dev, struct tcpci_data *data)
 	tcpci->tcpc.pd_transmit = tcpci_pd_transmit;
 	tcpci->tcpc.set_bist_data = tcpci_set_bist_data;
 	tcpci->tcpc.enable_frs = tcpci_enable_frs;
+	tcpci->tcpc.frs_sourcing_vbus = tcpci_frs_sourcing_vbus;
 
 	err = tcpci_parse_config(tcpci);
 	if (err < 0)
diff --git a/drivers/usb/typec/tcpm/tcpci.h b/drivers/usb/typec/tcpm/tcpci.h
index 5ef07a56d67a..b418fe11b527 100644
--- a/drivers/usb/typec/tcpm/tcpci.h
+++ b/drivers/usb/typec/tcpm/tcpci.h
@@ -143,6 +143,9 @@
 /*
  * @TX_BUF_BYTE_x_hidden
  *		optional; Set when TX_BUF_BYTE_x can only be accessed through I2C_WRITE_BYTE_COUNT.
+ * @frs_sourcing_vbus:
+ *		Optional; Callback to perform chip specific operations when FRS
+ *		is sourcing vbus.
  */
 struct tcpci;
 struct tcpci_data {
@@ -154,6 +157,7 @@ struct tcpci_data {
 	int (*start_drp_toggling)(struct tcpci *tcpci, struct tcpci_data *data,
 				  enum typec_cc_status cc);
 	int (*set_vbus)(struct tcpci *tcpci, struct tcpci_data *data, bool source, bool sink);
+	void (*frs_sourcing_vbus)(struct tcpci *tcpci, struct tcpci_data *data);
 };
 
 struct tcpci *tcpci_register_port(struct device *dev, struct tcpci_data *data);
-- 
2.28.0.806.g8561365e88-goog

