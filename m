Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2403D3DB8CD
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 14:45:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238923AbhG3MpG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 08:45:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238890AbhG3Mor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 08:44:47 -0400
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com [IPv6:2607:f8b0:4864:20::f49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66C42C06179A
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:43:57 -0700 (PDT)
Received: by mail-qv1-xf49.google.com with SMTP id v15-20020a0ccd8f0000b0290335f005a486so5820378qvm.22
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 05:43:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=kaUeOg4wMw2l7vTceRoyu4/OPISM5UcP9eJirJ9oM9Y=;
        b=MWnjHnvoqoYAt3FQds194USz9dVhS/WB5OxryNDxnP0BJFGA1sltN0eRhXDFJBh/om
         Dj4mlAX67YWNYYLhCbG1/tc+JtMFt4r7r+KY8MvBYe0NFSq/S4A5lVfDWxvTvAkvSIv9
         gNf1L4GdiXsjMMTMub7kTWDLtAm+XTcIbB5R9omww6cZhja4yMF5AEQudIIzX3F2g1fm
         bZYUqlzR295HVO9uYBWHqof7FSIRQkggr7QI2YcFkg4BBPmekmqdO/hyvmfQJTSxmmwH
         vuSQUWQ22AqAnK/cgsIpfLRXNrspLK6XA+frjobDHHcyW6XMsyKzetuxQ2xTceSJsye2
         1XaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=kaUeOg4wMw2l7vTceRoyu4/OPISM5UcP9eJirJ9oM9Y=;
        b=oU20Y4iOcheu7H6xsJrZDlrAAUaHilQjfDBRbSLeg8ZKHkyB4E8H+awAfxwdC+d6Bw
         n4F4yX4a4Mb7QdsUb2BvUe4msszxvSSQ38zZyQDv1A5hi6ZD1xYFoPDhn2oyVTgqqIti
         c9di4dLq3NwYA9Yql5TRdkIbt7xm4IVlkp9NMs5+cs/JG+QmUEoNMN5UjkonPTRtOJWa
         pFSYombAyWCc97/IWdfoH+eUwkHoF5J4tSB2kxTTYxb92Np8xn+1UaCZejf5sNMFV9rv
         Nku09zxgo/8nfxVp+1Zg57xJ8cn72BrTn8a/Ybs0aYrx7Nso0PmbTQpO8D6yt0WR/mjk
         DAhA==
X-Gm-Message-State: AOAM533t2COky2tI9yvTF9bmno3Q2oexmrQ+wRe86mK1i6nyK4Nlaj/e
        N9x0qE6vImSiKIZw4/0w+jL5wB6dA4Zx
X-Google-Smtp-Source: ABdhPJw7QIaNo5xLOs4ReEDdoq0ozBmSokGCqKvMO19HHr9L4/Gush9xfvT7WQTK6GG+Cr80INWUAEzmaZFz
X-Received: from kyletso.ntc.corp.google.com ([2401:fa00:fc:202:6892:a74:4970:a062])
 (user=kyletso job=sendgmr) by 2002:a05:6214:1021:: with SMTP id
 k1mr2372695qvr.4.1627649036478; Fri, 30 Jul 2021 05:43:56 -0700 (PDT)
Date:   Fri, 30 Jul 2021 20:43:47 +0800
In-Reply-To: <20210730124348.1986638-1-kyletso@google.com>
Message-Id: <20210730124348.1986638-2-kyletso@google.com>
Mime-Version: 1.0
References: <20210730124348.1986638-1-kyletso@google.com>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
Subject: [PATCH v5 1/2] dt-bindings: connector: Add pd-unsupported property
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

Set "pd-unsupported" property if the Type-C connector has no power
delivery support.

Signed-off-by: Kyle Tso <kyletso@google.com>
---
Changes since v4:
- Corrected the subject

 .../devicetree/bindings/connector/usb-connector.yaml          | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index 92b49bc37939..21ec470117a6 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -111,6 +111,10 @@ properties:
       - 1.5A
       - 3.0A
 
+  pd-unsupported:
+    description: Set this property if the Type-C connector has no power delivery support.
+    type: boolean
+
   # The following are optional properties for "usb-c-connector" with power
   # delivery support.
   source-pdos:
-- 
2.32.0.554.ge1b32706d8-goog

