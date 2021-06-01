Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADC3F397347
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 14:32:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233949AbhFAMdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 08:33:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233928AbhFAMdu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 08:33:50 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B209C0613ED
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 05:32:06 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id u48-20020a25ab330000b029053982019c2dso3331453ybi.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 05:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=v0JmXkpPcwyLfGDXD/UYS9VSnqvDE/X6cwHvlaKvCDo=;
        b=ge7A6t9VrjoPBf2yczWshpuNpcJZv+LVPUatnZpS2YHPIoaKCjHvFlupHnnnhYfJAR
         XvQM/yh73IVnhEcR2oWqVAVDSrjr/74D749Zvw/1LIcroeerCuzqxiZa/x9SACanH4RN
         KPzu+5NiiqQ1f3r8YOM428JJaiFwsygOY9aXhYWJGPEe+LatsxZrxr+KSjXGL/51NulJ
         5Zx6IzzPlFya6Yag8zcGLBVKK1A+dXElnGCr3HgW8dBx6RNgUAzd8DqG7IWbW8fx7ADp
         5Oglr2Vhh4aWvCNg8OTB0vtNKlOIKgKMAqlgeGNkb1Zvkxlg6XO7yrB5eOgjgQOO1rmJ
         SjDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=v0JmXkpPcwyLfGDXD/UYS9VSnqvDE/X6cwHvlaKvCDo=;
        b=sjEI3w1SuiseiNobuVihYLdEF7M1q8wHbxEBv1e+Crng7yvpd/A7h6lD8FHjbvxqE6
         +aHrDS2iI24CxNKfkovZgr1xPLqZ0rBZ5OofbLSZ/mXldgf5jbi+sY3CR+pfg1V02F/d
         zUyQ3LpsyUDUFKcFmVBW82jLVUm2b605ZcjL5uMKH6zTzoMl5bX1fkOhyBDce10uxSaz
         nhQiWbkOWAcIkcDQz1S2HSVM8fDdFhhj7VSHtCgSAhxJ6UN9h4KWkb5qEal6ZY3W+SpM
         mQYsWTSseaDKVysCrVfSESOpTe3jd4t0nwMzdNct70L+fZ+R80uF7Pmm++3G24Gu5H+T
         GB4Q==
X-Gm-Message-State: AOAM533236aJYxtlJ2CSalfOYD9I9ANShVIDUw069rLRgXpD6gw3n/NO
        yZHAj4y60ZdQ7XPObKsKrsSH4junX9c9
X-Google-Smtp-Source: ABdhPJw70HX3AuFEpGy9CEQ/cqaj7ZnCC+oIoMK07F8aUbNTKbvzWpdIYlW135qYOIx/LmXcSr0Q2YradCx2
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:c9e8:9a17:9774:bcd3])
 (user=kyletso job=sendgmr) by 2002:a05:6902:100c:: with SMTP id
 w12mr37901747ybt.122.1622550725722; Tue, 01 Jun 2021 05:32:05 -0700 (PDT)
Date:   Tue,  1 Jun 2021 20:31:48 +0800
In-Reply-To: <20210601123151.3441914-1-kyletso@google.com>
Message-Id: <20210601123151.3441914-2-kyletso@google.com>
Mime-Version: 1.0
References: <20210601123151.3441914-1-kyletso@google.com>
X-Mailer: git-send-email 2.32.0.rc0.204.g9fa02ecfa5-goog
Subject: [PATCH v3 1/4] usb: typec: tcpm: Correct the responses in SVDM
 Version 2.0 DFP
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

In USB PD Spec Rev 3.1 Ver 1.0, section "6.12.5 Applicability of
Structured VDM Commands", DFP is allowed and recommended to respond to
Discovery Identity with ACK. And in section "6.4.4.2.5.1 Commands other
than Attention", NAK should be returned only when receiving Messages
with invalid fields, Messages in wrong situation, or unrecognize
Messages.

Still keep the original design for SVDM Version 1.0 for backward
compatibilities.

Fixes: 193a68011fdc ("staging: typec: tcpm: Respond to Discover Identity commands")
Signed-off-by: Kyle Tso <kyletso@google.com>
Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
---
changes since v2:
- no change

 drivers/usb/typec/tcpm/tcpm.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index 0db685d5d9c0..617f48cdd90c 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -1575,19 +1575,25 @@ static int tcpm_pd_svdm(struct tcpm_port *port, struct typec_altmode *adev,
 			if (PD_VDO_VID(p[0]) != USB_SID_PD)
 				break;
 
-			if (PD_VDO_SVDM_VER(p[0]) < svdm_version)
+			if (PD_VDO_SVDM_VER(p[0]) < svdm_version) {
 				typec_partner_set_svdm_version(port->partner,
 							       PD_VDO_SVDM_VER(p[0]));
+				svdm_version = PD_VDO_SVDM_VER(p[0]);
+			}
 
 			tcpm_ams_start(port, DISCOVER_IDENTITY);
-			/* 6.4.4.3.1: Only respond as UFP (device) */
-			if (port->data_role == TYPEC_DEVICE &&
+			/*
+			 * PD2.0 Spec 6.10.3: respond with NAK as DFP (data host)
+			 * PD3.1 Spec 6.4.4.2.5.1: respond with NAK if "invalid field" or
+			 * "wrong configuation" or "Unrecognized"
+			 */
+			if ((port->data_role == TYPEC_DEVICE || svdm_version >= SVDM_VER_2_0) &&
 			    port->nr_snk_vdo) {
 				/*
 				 * Product Type DFP and Connector Type are not defined in SVDM
 				 * version 1.0 and shall be set to zero.
 				 */
-				if (typec_get_negotiated_svdm_version(typec) < SVDM_VER_2_0)
+				if (svdm_version < SVDM_VER_2_0)
 					response[1] = port->snk_vdo[0] & ~IDH_DFP_MASK
 						      & ~IDH_CONN_MASK;
 				else
-- 
2.32.0.rc0.204.g9fa02ecfa5-goog

