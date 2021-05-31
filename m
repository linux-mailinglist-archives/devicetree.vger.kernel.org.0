Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99423395893
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 11:58:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231521AbhEaKAa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 06:00:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231410AbhEaJ7o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 05:59:44 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E78AC06138C
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 02:57:58 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id j14-20020a0cf30e0000b02902142ba51ef2so8617841qvl.10
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 02:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=W/ZrpxpBHa59E8XYEYq7WrlrrlMwkCoGdFKDPln5r9I=;
        b=h+LdXzHNMvlyWmTjV00XH10yQyrHp/cbSTnjrNjCrlvd6WTWdCRskzJIr3RZ0bZwDi
         i+1f6koBbVwFtnzExeoQeteaWqrjxi6OdLN+KbS23+T33TKOGN9krGza9vkepKKKcOmG
         ZYC/bTiES8wamGsdl+tep55YMjCNFd6oeQ2yaRhLCBkVtCgGiFbVjVYFZdwd6H/y4Epw
         D3j4Nr85GpGYH99tJhQbz578yvgXXeh5DWOqz+2MXI95PQU4JotwwCUVWfDFHiT9Vq+r
         Q+BbDw9WgMtTTPg2ZHKLC4vxY7dIRV7oZ+A1x4CMqlMgP+F+B+MZorhgQ9xUr9xjVa2I
         vpkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=W/ZrpxpBHa59E8XYEYq7WrlrrlMwkCoGdFKDPln5r9I=;
        b=Sw2//G9Sa9LGb1oesW8MpfS2yCcgCbmQ/uETBrdlNrYYsm8QDQtgT2N/gMXFTxSJbC
         Jy1At+cIoNII2o1pA8d5BTQZ6u3yC/3dyS6OuhBhgmJaKoPi2ujCOyZImsg43MUWDPh3
         dALpSEmtcmHIoY+iY7P0nZJZ3JOJoFdmrAxaB6PX490YfchwyKOkc+k/F2vKn5HwYUSd
         5y8jo1pVcwyO4U0Ee29SZHt8KTHJe279FUMlIKDjxKlfToMQYTtrIsa39F2amq7klSZC
         1SGzVeCEgBkHWU9fcTJ4ceKSY/L3hSbxMnLDsC+ochcHDt/tqETF/HynqbdPTM0AtuFJ
         uJ7Q==
X-Gm-Message-State: AOAM530z/3GS8xSRDjJ+PtYO5uAAKsBvcwiaq0V48ONJjmToTGwi/XWC
        3Kok3hbdMEvJHnO1bnLV65Kh4JLOJz7y
X-Google-Smtp-Source: ABdhPJxj8jyCEFW3MSz3dHkgjT4DP66xS3ho9fGnpibRmZGESCNmMm3Gkv3gt5vg7cDJX4YRhGvrPZ/73rBl
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:1330:7a47:8be2:d9b7])
 (user=kyletso job=sendgmr) by 2002:ad4:4e24:: with SMTP id
 dm4mr14084081qvb.33.1622455077166; Mon, 31 May 2021 02:57:57 -0700 (PDT)
Date:   Mon, 31 May 2021 17:57:37 +0800
In-Reply-To: <20210531095737.2258642-1-kyletso@google.com>
Message-Id: <20210531095737.2258642-4-kyletso@google.com>
Mime-Version: 1.0
References: <20210531095737.2258642-1-kyletso@google.com>
X-Mailer: git-send-email 2.32.0.rc0.204.g9fa02ecfa5-goog
Subject: [PATCH v2 3/3] usb: typec: tcpm: Introduce snk_vdo_v1 for SVDM
 version 1.0
From:   Kyle Tso <kyletso@google.com>
To:     linux@roeck-us.net, heikki.krogerus@linux.intel.com,
        gregkh@linuxfoundation.org, robh+dt@kernel.org
Cc:     badhri@google.com, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ID Header VDO and Product VDOs defined in USB PD Spec rev 2.0 and
rev 3.1 are quite different. Add an additional array snk_vdo_v1 and
send it as the response to the port partner if it only supports SVDM
version 1.0.

Signed-off-by: Kyle Tso <kyletso@google.com>
Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
changes since v1:
- add Acked-by tag
- merge the assignment to array element 1 into the for loop. No semantic
  code logic change.

 drivers/usb/typec/tcpm/tcpm.c | 40 ++++++++++++++++++++++++-----------
 1 file changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 617f48cdd90c..ebe490949fa0 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -401,6 +401,8 @@ struct tcpm_port {
 	unsigned int nr_src_pdo;
 	u32 snk_pdo[PDO_MAX_OBJECTS];
 	unsigned int nr_snk_pdo;
+	u32 snk_vdo_v1[VDO_MAX_OBJECTS];
+	unsigned int nr_snk_vdo_v1;
 	u32 snk_vdo[VDO_MAX_OBJECTS];
 	unsigned int nr_snk_vdo;
 
@@ -1589,18 +1591,16 @@ static int tcpm_pd_svdm(struct tcpm_port *port, struct typec_altmode *adev,
 			 */
 			if ((port->data_role == TYPEC_DEVICE || svdm_version >= SVDM_VER_2_0) &&
 			    port->nr_snk_vdo) {
-				/*
-				 * Product Type DFP and Connector Type are not defined in SVDM
-				 * version 1.0 and shall be set to zero.
-				 */
-				if (svdm_version < SVDM_VER_2_0)
-					response[1] = port->snk_vdo[0] & ~IDH_DFP_MASK
-						      & ~IDH_CONN_MASK;
-				else
-					response[1] = port->snk_vdo[0];
-				for (i = 1; i <  port->nr_snk_vdo; i++)
-					response[i + 1] = port->snk_vdo[i];
-				rlen = port->nr_snk_vdo + 1;
+				if (svdm_version < SVDM_VER_2_0) {
+					for (i = 0; i < port->nr_snk_vdo_v1; i++)
+						response[i + 1] = port->snk_vdo_v1[i];
+					rlen = port->nr_snk_vdo_v1 + 1;
+
+				} else {
+					for (i = 0; i < port->nr_snk_vdo; i++)
+						response[i + 1] = port->snk_vdo[i];
+					rlen = port->nr_snk_vdo + 1;
+				}
 			}
 			break;
 		case CMD_DISCOVER_SVID:
@@ -5969,6 +5969,22 @@ static int tcpm_fw_get_caps(struct tcpm_port *port,
 			return ret;
 	}
 
+	/* If sink-vdos is found, sink-vdos-v1 is expected for backward compatibility. */
+	if (port->nr_snk_vdo) {
+		ret = fwnode_property_count_u32(fwnode, "sink-vdos-v1");
+		if (ret < 0)
+			return ret;
+		else if (ret == 0)
+			return -ENODATA;
+
+		port->nr_snk_vdo_v1 = min(ret, VDO_MAX_OBJECTS);
+		ret = fwnode_property_read_u32_array(fwnode, "sink-vdos-v1",
+						     port->snk_vdo_v1,
+						     port->nr_snk_vdo_v1);
+		if (ret < 0)
+			return ret;
+	}
+
 	return 0;
 }
 
-- 
2.32.0.rc0.204.g9fa02ecfa5-goog

