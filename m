Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE3AD357571
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 22:07:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355901AbhDGUHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 16:07:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355896AbhDGUHi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 16:07:38 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B6A7C061761
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 13:07:28 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id v186so24987821ybe.5
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 13:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=BxDC0Eh7ydMZJg1PFupA4h3+Cq4GAnRY2vElU6GR0XY=;
        b=sfIKHfu8fB43yPliqSo5fnTfDUrby+DjTuziu1/KgUSQQ0ifHLh3cEXorN5y07O2cR
         Jn4/t8fNJGMs5CnQYi4uLl1KVTb92oW4DYjMuS6EfJr5W+uDshrLAeXLYTn/lyTovQw9
         rgDFFr0+j3HVCtULrdrFJIoF0gLIszMtUdmduI+Ps8DM2Td8VooWfwwGvQXvXgn9zBWs
         Hc8/M5ed7HUlLAMh3pW5bFSJQvhrJq0cSq3aD/fEojIJ+qS5tabLvmx/MeTLOLs8WqkZ
         GDeRPdzgWPPWKNMbnVCa8pscGLDtCd9Ji0zfnoEBrycPa5rQ4luujHHzwYqNr8/UWbet
         ielg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=BxDC0Eh7ydMZJg1PFupA4h3+Cq4GAnRY2vElU6GR0XY=;
        b=Snj0T6CzsOwwlp+WRZ3tB2zJ1gXZwJWukvG4whQQXUfy2PYTF2s/NtH5ZsXDnIBkKv
         LVBikGNwN8PUOdCjVVeDa3hNRzuzNI3MLzXCckXuaxsauParG9MGMVYg4pTgU7fVoLj6
         3ibX53IsQHr412vTM4/zWRnIa8QBBgWmovWYWI/yZzGPzOuNtBZzW0pCYFIujSl6/PDP
         NZcS6MyXSMomrzVCxhlVgTR1c+ttpZZLDFihH4f6wcdkVy3gpdeBSAQELgZZZEu3y+UA
         JYS4jr4NDHk0zAqSs1+Pe15fTh0Z7xSnzaWPBB0E2jp1WGc807foVhSwagfBWCi5tWJc
         TYmw==
X-Gm-Message-State: AOAM533yU/HpuQf1s60HcUeR9vjbjLya+Q+v8gw1Cmjdy0ZaFdonqFDD
        REnMykmIEShWkyhEGy925NjlBkLzyrc=
X-Google-Smtp-Source: ABdhPJyt+SZadsjmFa+1Q3dijTgZqqWRn4fhyZZKytbO/HVINExegAkdwyAPaRtYq/AsbllM+OTgdOharjs=
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:991:6d08:9e6d:683d])
 (user=badhri job=sendgmr) by 2002:a25:2b08:: with SMTP id r8mr7331360ybr.194.1617826047254;
 Wed, 07 Apr 2021 13:07:27 -0700 (PDT)
Date:   Wed,  7 Apr 2021 13:07:18 -0700
Message-Id: <20210407200723.1914388-1-badhri@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v2 1/6] usb: typec: tcpm: Address incorrect values of tcpm psy
 for fixed supply
From:   Badhri Jagan Sridharan <badhri@google.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
Cc:     linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Kyle Tso <kyletso@google.com>,
        Badhri Jagan Sridharan <badhri@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

tcpm_pd_build_request overwrites current_limit and supply_voltage
even before port partner accepts the requests. This leaves stale
values in current_limit and supply_voltage that get exported by
"tcpm-source-psy-". Solving this problem by caching the request
values of current limit/supply voltage in req_current_limit
and req_supply_voltage. current_limit/supply_voltage gets updated
once the port partner accepts the request.

Fixes: f2a8aa053c176 ("typec: tcpm: Represent source supply through power_supply")
Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Reviewed-by: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
---
Changes since V1:
* Fixed typo as suggested by Guenter Roeck.
* Added Reviewed-by tags.
---
 drivers/usb/typec/tcpm/tcpm.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index ca1fc77697fc..4ea4b30ae885 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -389,7 +389,10 @@ struct tcpm_port {
 	unsigned int operating_snk_mw;
 	bool update_sink_caps;
 
-	/* Requested current / voltage */
+	/* Requested current / voltage to the port partner */
+	u32 req_current_limit;
+	u32 req_supply_voltage;
+	/* Actual current / voltage limit of the local port */
 	u32 current_limit;
 	u32 supply_voltage;
 
@@ -2435,8 +2438,8 @@ static void tcpm_pd_ctrl_request(struct tcpm_port *port,
 		case SNK_TRANSITION_SINK:
 			if (port->vbus_present) {
 				tcpm_set_current_limit(port,
-						       port->current_limit,
-						       port->supply_voltage);
+						       port->req_current_limit,
+						       port->req_supply_voltage);
 				port->explicit_contract = true;
 				tcpm_set_auto_vbus_discharge_threshold(port,
 								       TYPEC_PWR_MODE_PD,
@@ -2545,8 +2548,8 @@ static void tcpm_pd_ctrl_request(struct tcpm_port *port,
 			break;
 		case SNK_NEGOTIATE_PPS_CAPABILITIES:
 			port->pps_data.active = true;
-			port->supply_voltage = port->pps_data.out_volt;
-			port->current_limit = port->pps_data.op_curr;
+			port->req_supply_voltage = port->pps_data.out_volt;
+			port->req_current_limit = port->pps_data.op_curr;
 			tcpm_set_state(port, SNK_TRANSITION_SINK, 0);
 			break;
 		case SOFT_RESET_SEND:
@@ -3195,8 +3198,8 @@ static int tcpm_pd_build_request(struct tcpm_port *port, u32 *rdo)
 			 flags & RDO_CAP_MISMATCH ? " [mismatch]" : "");
 	}
 
-	port->current_limit = ma;
-	port->supply_voltage = mv;
+	port->req_current_limit = ma;
+	port->req_supply_voltage = mv;
 
 	return 0;
 }
-- 
2.31.1.295.g9ea45b61b8-goog

