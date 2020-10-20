Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B97F29383E
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 11:37:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405631AbgJTJgq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 05:36:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392936AbgJTJgp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 05:36:45 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00C21C0613D3
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 02:36:44 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id v4so1479788ybp.3
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 02:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=JHtRR3qQUbK6QyoBC6NKYxLDcobd0wicECGYDz6ynPE=;
        b=rq9AdQaNwruAzMfHKSzMpPVC7WcstN4tx30jbBH58psfSyNYWtO/EuZMXe+hRBMPC4
         Lo54FHzG4y0b32HA22tzPkNbFGAM29q3+GvtPh/zJmkT8veDAEMwmX9QNY8vJUOlsaAb
         kQuZTMQTF73RYGiQDgbaAJF82IB1I4KTywf5Hl4d3HhSeWuBgvs+8XHzpJIoA0lWgbX0
         SHPI1XWvOD6EzszVqUSNifCB1P0AGhQLiTtLXAJnTlgDUaBuR/OwK+WV24+GQL2EAowm
         VLkxtJCua1AB2k70DWIRlFB41d0tjNUarnJHH1/TLfuJDHiWMhnF3+CsaRmncFCJ+Hfh
         TZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=JHtRR3qQUbK6QyoBC6NKYxLDcobd0wicECGYDz6ynPE=;
        b=We4ec2jXIE9FqSinkpmA26YLYm8tF7QQGqrldo5mXZAAK1Cu5Ys2ODa2UuPXO+xylG
         J1Cxnwoy7TECPv1X3pWyXjl7Hkw05wQYHmYCR26PvrOkIHcXl6Thn4qs1SiV30LwTzmW
         bEsjc2LtoPq+9SlaC3CHknyj8bNdJFDKvKa8zjOXB/yfMt+AbLrp2PMmCY9a838ncG0o
         VD5/9TqqPJQiyyVz1dr6yo/iLDzx/nc3TY7ffijf7ZHwGLFvFP9T4fxcQCiKXZdsmSqY
         OQn8PpqNQFRUKQwO2qnFFGjASJXpbPLVtlVm9u9Vv01FHyzwV9Duy8XIOTeZQuCamxU0
         UowQ==
X-Gm-Message-State: AOAM530lkET5HOIrKjiHXHibRN4NZwwE5le3P3mkIHGWlgxZIJ22Oftp
        aHPU6mxbtU1Wyty+AjZ4gTtTO/T+s5c=
X-Google-Smtp-Source: ABdhPJwu4NP9Ipq20LeVdsBaScBQ4xLMRZeWMvb69oJXIEOZ/XHh551SZ+1jywPD0QCh6BQKmj2E+c1J6fg=
Sender: "badhri via sendgmr" <badhri@badhri.mtv.corp.google.com>
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:1:f292:1cff:fee0:66cf])
 (user=badhri job=sendgmr) by 2002:a25:558b:: with SMTP id j133mr2906472ybb.224.1603186604161;
 Tue, 20 Oct 2020 02:36:44 -0700 (PDT)
Date:   Tue, 20 Oct 2020 02:36:23 -0700
In-Reply-To: <20201020093627.256885-1-badhri@google.com>
Message-Id: <20201020093627.256885-7-badhri@google.com>
Mime-Version: 1.0
References: <20201020093627.256885-1-badhri@google.com>
X-Mailer: git-send-email 2.29.0.rc1.297.gfa9743e501-goog
Subject: [PATCH v11 06/10] usb: typec: tcpci: frs sourcing vbus callback
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

During FRS hardware autonomously starts to source vbus. Provide
callback to perform chip specific operations.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
v9 is the first version of this patch in the series. Added to fix
occasional bug of vbus turning back on when disconnecting the FRS accessory
after disconnect. No changes since v9.

Changes since v10:
Added Reviewed-by: Heikki Krogerus
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
2.29.0.rc1.297.gfa9743e501-goog

