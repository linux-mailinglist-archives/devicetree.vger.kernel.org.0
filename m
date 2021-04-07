Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3A0DD35757D
	for <lists+devicetree@lfdr.de>; Wed,  7 Apr 2021 22:07:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355934AbhDGUHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 16:07:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348969AbhDGUHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 16:07:50 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1BA8C0613DD
        for <devicetree@vger.kernel.org>; Wed,  7 Apr 2021 13:07:37 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id k15so18756108ybh.6
        for <devicetree@vger.kernel.org>; Wed, 07 Apr 2021 13:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=t6Wz/CVZhwgzgH8yLnIu+vnyKNs6ZhIxtjweGyR/2B8=;
        b=FSC2jYpPA82SAAkfv1hMUNBohzVcc7Th6hrXiJqSgER6+jeR4Ccx4adLo9Hn+SW1hu
         cwAAscw+AetobhNdNh+yBc5og9bElI6Iz/RcobSM1X19YTxv8AG8RM28QDvqCnRcaJJB
         fJPctp+wQlmCDQ6ck64VOXj2kGoo2OpjzosSBBzcOKNiTU4hgXUKRtGy/FFy1IND5EQ3
         spJZ8YWOC+YwKmDutHXr/z/KIvVPk0kKgt0rYSQYDw+FalpkvXJszSIMmbPyaWjamQSM
         tbAsNyheZj1QrZoJL4TXbLmmz/7DiDZqdkq+hX5S9PdX2XG8FPduZZapDvsE0J5lPCC7
         odYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=t6Wz/CVZhwgzgH8yLnIu+vnyKNs6ZhIxtjweGyR/2B8=;
        b=X4+GY+IylKLKuMWdrU/4UBpCig4J0+sIzZUVd5qSEsGoVO6B7kyBG3Gt5Z5vxDXrCz
         W5BBd4G26ua/c7vtO39b9v0WBXVBp9FsPCQg8jQD7dhvfiuB9zay/cEOZHVj0V7rKkzb
         zq/CgizwC/pvVuyQTnwow0uyqaaZ3OwDvn8uOR1oCsL93KDR11QurWkQ64wIpuYQ0jpQ
         9qWq7P5lIJSNzrm7dQwDTCzFTtOnnIP1LvMNnNG33jijS0ioXWY831vHFoCkIsIketKi
         5jpn8a786Ykl98QlE6QeRkqCnuQfiiz0gK2W5fVAqAusKc/FLTk0fPpYCFY+VXUP76Er
         NGpg==
X-Gm-Message-State: AOAM531cXWGLmA04xYsUotNTg0Rv7SrD9rUwbqMWyIKCkQ9gvjBrx2rN
        PdFko7jzgjqQkFqj8WbH9Sm6iwBc6bg=
X-Google-Smtp-Source: ABdhPJxurCs/KLCLksXagV4vQfDZRQNrdM8eLYqSSfdRv8DfRKA8DybKoHd/G9wFRtUg3C5RNhK3GIMdrrE=
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:991:6d08:9e6d:683d])
 (user=badhri job=sendgmr) by 2002:a25:5146:: with SMTP id f67mr6672249ybb.332.1617826057017;
 Wed, 07 Apr 2021 13:07:37 -0700 (PDT)
Date:   Wed,  7 Apr 2021 13:07:23 -0700
In-Reply-To: <20210407200723.1914388-1-badhri@google.com>
Message-Id: <20210407200723.1914388-6-badhri@google.com>
Mime-Version: 1.0
References: <20210407200723.1914388-1-badhri@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v2 6/6] Documentation: connector: Add slow-charger-loop definition
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

To allow slow charger loops to comply to pSnkStby requirement,
this patch introduces slow-charger-loop which when set makes
the port request PD_P_SNK_STDBY_MW upon entering SNK_DISCOVERY
(instead of 3A or the 1.5A during SNK_DISCOVERY) and the actual
currrent limit after RX of PD_CTRL_PSRDY for PD link or during
SNK_READY for non-pd link.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
 .../devicetree/bindings/connector/usb-connector.yaml       | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index b6daedd62516..09ad3ad983a6 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -197,6 +197,13 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [1, 2, 3]
 
+  slow-charger-loop:
+    description: Allows slow charging loops to comply to pSnkStby. When set makes
+      the port request pSnkStby(2.5W - 5V@500mA) upon entering SNK_DISCOVERY(instead
+      of 3A or the 1.5A during SNK_DISCOVERY) and the actual currrent limit after
+      reception of PS_Ready for PD link or during SNK_READY for non-pd link.
+    type: boolean
+
 required:
   - compatible
 
-- 
2.31.1.295.g9ea45b61b8-goog

