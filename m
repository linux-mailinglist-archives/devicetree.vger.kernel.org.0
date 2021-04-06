Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93D5C354A29
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 03:37:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243168AbhDFBhE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 21:37:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243150AbhDFBhC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 21:37:02 -0400
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52A06C061794
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 18:36:55 -0700 (PDT)
Received: by mail-qk1-x749.google.com with SMTP id u5so11587083qkj.10
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 18:36:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=cvyNyn0AhU638Wkw4TBWnN6NTcrgmnH1NtpieNpIcI4=;
        b=tXIkYEbGO/n1BZYcS+GPYrSQMVtJkUHdfjI17aMwRTMcKO//QrUMuz2quiVynWs+Wb
         uQDdk001jiLSuZr6u1vN05h33+6ffxKQTAq/6WNORnEuy8rHrxPg0eI/INEI9H2a89Px
         0PjoFnkvnhQXeacWeUIpQBleU2iGcnJgC2+9n7bkZPFyyv/tlg/DLyOitrZIzlTuXCkd
         rBg4VFtwdTg1gFOdkMdqlul9lHEzNBbqsr8v7IdxiyiH+ghIzdGee9ahAlrqsN+By+J3
         nH8CQzSJ2rUQ8xNnxKAMR5yyrLyJz8lRTVYc90rlTmOgJVXCaVoOxiqD4dXo8+CvcWuw
         klBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=cvyNyn0AhU638Wkw4TBWnN6NTcrgmnH1NtpieNpIcI4=;
        b=nfIFlSJFX+KALhZuHup134gJJCB7KPUNDJ2B99N9r6wmAnXCd1hsHpfjz7/lL+W9Ep
         EAx8FoZvED5HxyutNJ/GIxIu/POal3zjGfpp8FuaFPsot+RVgoMGMhxxBeeQi9KQlUAF
         6eLGNPi7RynGh5ux2Vz+fHwLhNJNUD2gxunEKjI1pTfL/9QVqWB4voYX9I3Ne2fjSg62
         y03nnxw14xSc8ee36IExHPCf7cbDDUfgSK5J+xd/CXUxspd3mh5NJIagSOy34nTsvss9
         nQmfUTEmAx91HI33Py59e6D0GPmYMInkIIWXmnzVmRH5/jBzqSouKKuNd6QTastPsviD
         UAMA==
X-Gm-Message-State: AOAM532dOnwudiGrnLPbFuNNIUKjREwYllSRQgPt1AccC2Q5/bW1viwR
        U19hnq5rHvHn9uqnM813/tiHMFlc1HM=
X-Google-Smtp-Source: ABdhPJyLraJXzkTvsXrH0xQZiU17QmKoY21Ukpff4z2VQRusS5ZRx6LUv3PAv2LjhlAjx4AjVAojXAgHQZY=
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:7080:32f9:cd15:6178])
 (user=badhri job=sendgmr) by 2002:a05:6214:d65:: with SMTP id
 5mr26223249qvs.56.1617673014522; Mon, 05 Apr 2021 18:36:54 -0700 (PDT)
Date:   Mon,  5 Apr 2021 18:36:40 -0700
In-Reply-To: <20210406013643.3280369-1-badhri@google.com>
Message-Id: <20210406013643.3280369-4-badhri@google.com>
Mime-Version: 1.0
References: <20210406013643.3280369-1-badhri@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v1 3/6] usb: typec: tcpm: update power supply once partner accepts
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

power_supply_changed needs to be called to notify clients
after the partner accepts the requested values for the pps
case.

Fixes: f2a8aa053c176 ("typec: tcpm: Represent source supply through power_supply")
Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
 drivers/usb/typec/tcpm/tcpm.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/typec/tcpm/tcpm.c b/drivers/usb/typec/tcpm/tcpm.c
index d43774cc2ccf..7708b01009cb 100644
--- a/drivers/usb/typec/tcpm/tcpm.c
+++ b/drivers/usb/typec/tcpm/tcpm.c
@@ -2564,6 +2564,7 @@ static void tcpm_pd_ctrl_request(struct tcpm_port *port,
 			port->pps_data.max_curr = port->pps_data.req_max_curr;
 			port->req_supply_voltage = port->pps_data.req_out_volt;
 			port->req_current_limit = port->pps_data.req_op_curr;
+			power_supply_changed(port->psy);
 			tcpm_set_state(port, SNK_TRANSITION_SINK, 0);
 			break;
 		case SOFT_RESET_SEND:
@@ -3132,7 +3133,6 @@ static unsigned int tcpm_pd_select_pps_apdo(struct tcpm_port *port)
 						      port->pps_data.req_out_volt));
 		port->pps_data.req_op_curr = min(port->pps_data.max_curr,
 						 port->pps_data.req_op_curr);
-		power_supply_changed(port->psy);
 	}
 
 	return src_pdo;
@@ -3557,8 +3557,6 @@ static void tcpm_reset_port(struct tcpm_port *port)
 	port->sink_cap_done = false;
 	if (port->tcpc->enable_frs)
 		port->tcpc->enable_frs(port->tcpc, false);
-
-	power_supply_changed(port->psy);
 }
 
 static void tcpm_detach(struct tcpm_port *port)
-- 
2.31.0.208.g409f899ff0-goog

