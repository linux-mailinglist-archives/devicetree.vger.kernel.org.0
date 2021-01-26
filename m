Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00AE7303852
	for <lists+devicetree@lfdr.de>; Tue, 26 Jan 2021 09:50:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729815AbhAZIsW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jan 2021 03:48:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390549AbhAZIr3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jan 2021 03:47:29 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D32BEC061794
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 00:46:01 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id ew14so2779115qvb.21
        for <devicetree@vger.kernel.org>; Tue, 26 Jan 2021 00:46:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=13RTRRkuJBA1iS7bzOjv8CDTQaS3ruEs+RukYe640Ag=;
        b=ltdXf/8CWegN4aNEm3Qv64DdKvxQ6NjblvbaRNZOQKTRepQsCCU5pE3q3qDttLI5Hc
         Bi8armxZm1149Vgs6y2mmLKfa7BjfScoc/3mQGL6n3/tgl9kODx5vLL9ZTMvsLaFevy/
         zwUTH0y3WjW7Dpa/ZThusgOQFXsEOlDULmL80l00NucCVqixWx1/HWRjblTxSjwhkSnt
         pl6aEb7cEmL/xWeJwHSzXmTMvFbLpzaD/PLxHeCcjVsnZImyU9gAevj0xUxdQEyOTm0y
         SzGgYa9lhr9cKZiT79jxlYKIQZFXgs+cu5xnsgrtZoW3sbNq4W/4vx/ssNZ164/Tinw0
         3f/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=13RTRRkuJBA1iS7bzOjv8CDTQaS3ruEs+RukYe640Ag=;
        b=ILqfa0hHZ16sctFDtBzOnKNUoMyXOHNMZvJ9tzjty5fbCoe8qsyIoM2dMYNisupr4O
         UTQhcdDYtj4sifT6QcokH4swrR84Erb+Bkdo5dJCjoAsclon11NbKtxuPotpxv+98ybc
         mZd6lCITHXDBo5hXpv6rSM4/oEOyhrt/z8fP5XoIljQU1+6pEejfbLoNC5Wv9K/7GpEZ
         5qJGSnxlzbzswWD2hLgf65atmJH/D0b2AWYIpMWc4+ltGqswnwS2DD4xO8vYnNzLKP3d
         gZYlRIs/9Yy5XHSk/3KK5h+tk34HivlxhzJ3hb9SAEC9LPmrx/ma+OMTaw6UtIk8sWMc
         jV8Q==
X-Gm-Message-State: AOAM533x0R40we8ubYqN8e7V4BeWJdV92xadn15YrCZBfeXoeIsYbi+n
        XEmCMvLv3J+c7A71zxepZYLfI4blNkqH
X-Google-Smtp-Source: ABdhPJwzo95+gApcUFFb4G8JVDYACZBRI9FkC+KW93AO8mtcr584+2UBXFHEMh5J5ITd+wqZt3a63Fu3yDub
Sender: "kyletso via sendgmr" <kyletso@kyletso.ntc.corp.google.com>
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:4430:c29c:1e76:3e65])
 (user=kyletso job=sendgmr) by 2002:a0c:a8e0:: with SMTP id
 h32mr4572012qvc.30.1611650761077; Tue, 26 Jan 2021 00:46:01 -0800 (PST)
Date:   Tue, 26 Jan 2021 16:45:43 +0800
In-Reply-To: <20210126084544.682641-1-kyletso@google.com>
Message-Id: <20210126084544.682641-3-kyletso@google.com>
Mime-Version: 1.0
References: <20210126084544.682641-1-kyletso@google.com>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
Subject: [PATCH 2/3] dt-bindings: connector: Add SVDM VDO properties
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, robh+dt@kernel.org,
        hdegoede@redhat.com, badhri@google.com
Cc:     linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings of VDO properties of USB PD SVDM so that they can be
defined in device tree.

Signed-off-by: Kyle Tso <kyletso@google.com>
---
 include/dt-bindings/usb/pd.h | 53 +++++++++++++++++++++++++++++++++++-
 1 file changed, 52 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/usb/pd.h b/include/dt-bindings/usb/pd.h
index 0352893697f0..b99cb4a0cd12 100644
--- a/include/dt-bindings/usb/pd.h
+++ b/include/dt-bindings/usb/pd.h
@@ -93,4 +93,55 @@
 #define FRS_DEFAULT_POWER      1
 #define FRS_5V_1P5A            2
 #define FRS_5V_3A              3
- #endif /* __DT_POWER_DELIVERY_H */
+
+/*
+ * SVDM Identity Header
+ * --------------------
+ * <31>     :: data capable as a USB host
+ * <30>     :: data capable as a USB device
+ * <29:27>  :: product type (UFP / Cable / VPD)
+ * <26>     :: modal operation supported (1b == yes)
+ * <25:23>  :: product type (DFP) (SVDM version 2.0+ only; set to zero in version 1.0)
+ * <22:21>  :: connector type (SVDM version 2.0+ only; set to zero in version 1.0)
+ * <20:16>  :: Reserved, Shall be set to zero
+ * <15:0>   :: USB-IF assigned VID for this cable vendor
+ */
+/* SOP Product Type (UFP) */
+#define IDH_PTYPE_NOT_UFP       0
+#define IDH_PTYPE_HUB           1
+#define IDH_PTYPE_PERIPH        2
+#define IDH_PTYPE_PSD           3
+#define IDH_PTYPE_AMA           5
+
+/* SOP' Product Type (Cable Plug / VPD) */
+#define IDH_PTYPE_NOT_CABLE     0
+#define IDH_PTYPE_PCABLE        3
+#define IDH_PTYPE_ACABLE        4
+#define IDH_PTYPE_VPD           6
+
+/* SOP Product Type (DFP) */
+#define IDH_PTYPE_NOT_DFP       0
+#define IDH_PTYPE_DFP_HUB       1
+#define IDH_PTYPE_DFP_HOST      2
+#define IDH_PTYPE_DFP_PB        3
+
+#define VDO_IDH(usbh, usbd, ufp_cable, is_modal, dfp, conn, vid)                \
+	((usbh) << 31 | (usbd) << 30 | ((ufp_cable) & 0x7) << 27                \
+	 | (is_modal) << 26 | ((dfp) & 0x7) << 23 | ((conn) & 0x3) << 21        \
+	 | ((vid) & 0xffff))
+
+/*
+ * Cert Stat VDO
+ * -------------
+ * <31:0>  : USB-IF assigned XID for this cable
+ */
+#define VDO_CERT(xid)		((xid) & 0xffffffff)
+
+/*
+ * Product VDO
+ * -----------
+ * <31:16> : USB Product ID
+ * <15:0>  : USB bcdDevice
+ */
+#define VDO_PRODUCT(pid, bcd)   (((pid) & 0xffff) << 16 | ((bcd) & 0xffff))
+#endif /* __DT_POWER_DELIVERY_H */
-- 
2.30.0.280.ga3ce27912f-goog

