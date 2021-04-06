Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F328C354A32
	for <lists+devicetree@lfdr.de>; Tue,  6 Apr 2021 03:37:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243212AbhDFBhO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Apr 2021 21:37:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243184AbhDFBhJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Apr 2021 21:37:09 -0400
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94931C06174A
        for <devicetree@vger.kernel.org>; Mon,  5 Apr 2021 18:37:01 -0700 (PDT)
Received: by mail-qk1-x749.google.com with SMTP id h19so11612822qkk.4
        for <devicetree@vger.kernel.org>; Mon, 05 Apr 2021 18:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=MAtT5IENk0bC9gBQziGXRz4UgkBtlGCp0/LaMeeOCJs=;
        b=Ivh9XNG4Qutnb7/BovIsn7HjCHYJZgmeVhN28v2wxyya/IxwWx2RpOfZ/6k0qGfXGs
         TAaJ+ow+qxl47MKsWRTXkmIAv47ed07eRTnGHMfq68OPpY/iB7XRh/fQ6hzGIhAIHbWn
         vrBxvqcP8sbf395/YbRIhVNTMcJdqcpCRo33r4yObDiY4EfPMuEDlISWvKgPhdK7dPVi
         i+phbqB6tCQryjF7C/a+6MvgKzmlXJ66/IYUtxKLD13sJqfdgCCSWSYpl+qbLo8JWur1
         Y7KKacZQWu4iQqtb90V2aylEfD3NAzXT7xng/WkHU/9Ro3ULhLRjkeY++Re9WZFAmlcP
         f9qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=MAtT5IENk0bC9gBQziGXRz4UgkBtlGCp0/LaMeeOCJs=;
        b=or/WtkB5rdWs5kvryut4fT/Fu3cWBaNgYXZHRPzPs6Q5fvX2OB3y10tUrrEyqZU3zx
         +udjYX9XaigPyI6bQerEYXhya3Geg3wsuLuH+I1FAA4JODv5UpjrWiNMK3PFo8yvYhWA
         6Gc1dzSh9JYnnSAsd9xgeh79gePrSOhLfqwjp8o6T/1oLLZ8Z8WiTIOu3Ji2IgA0dDPb
         4J/pucy7cHej79ft5wlB0z/IJ9wEV8wtApt9S6udfnQg+kMtJqQ+6eEhZNEo/L7tcVLu
         ey3RO222BRzVq8meTRINWwe2vK3l0xaPNqzvGR/bKBujHtfjsk1Ydj96AN025E8g5rkd
         LK/Q==
X-Gm-Message-State: AOAM531AFAjRnvCth8+M9talbLMDvIGyJuk8J+5wq3QCChCy51h2L3nM
        GILA1+v6AsFAT/YLWvQpsN2aUaQ1lrA=
X-Google-Smtp-Source: ABdhPJxT7352JEwDxFYK/J/zwCsJcnIjSh6UXFP7OtRK7cfzmpG8gZNmd/0bEbVsT/QhZ8oSUN1oPKEs4xI=
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:7080:32f9:cd15:6178])
 (user=badhri job=sendgmr) by 2002:a0c:fcc6:: with SMTP id i6mr3362208qvq.18.1617673020739;
 Mon, 05 Apr 2021 18:37:00 -0700 (PDT)
Date:   Mon,  5 Apr 2021 18:36:43 -0700
In-Reply-To: <20210406013643.3280369-1-badhri@google.com>
Message-Id: <20210406013643.3280369-7-badhri@google.com>
Mime-Version: 1.0
References: <20210406013643.3280369-1-badhri@google.com>
X-Mailer: git-send-email 2.31.0.208.g409f899ff0-goog
Subject: [PATCH v1 6/6] Documentation: connector: Add slow-charger-loop definition
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
2.31.0.208.g409f899ff0-goog

