Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C42235F627
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 16:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349535AbhDNO1c (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 10:27:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349460AbhDNO10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 10:27:26 -0400
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com [IPv6:2607:f8b0:4864:20::849])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EDA6C06175F
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 07:27:05 -0700 (PDT)
Received: by mail-qt1-x849.google.com with SMTP id x7-20020a05622a0007b029019d73c63053so2008533qtw.16
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 07:27:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=aTQH+8QFadrYoaEx7teEfO6F+xF81qJm/gbu7SJfp4M=;
        b=p+Dy4+wR6puYM9D4rzYQ0dFlGkQtuZiNm05XebXvDRpCrpegQGd4o/KJUwQLnWcb+C
         BV+LYnY3Brvs4c6UXyblt4WVNqxO4TnsC4IpYTF7PpzIggBhhOwe7tmrYcufexaCx+YE
         N9q1DjDTTz4DcN1KjkqXsFpCOYmLmQ7SWSQ/dK0gkFiqTyPXUUoTdzVgQCQglg7oJ53T
         FOTIlNNL7kIlRJWd9uc6aWVy08NIjrTCIdTIuoDvkBqjpQX0iJzTe4mL1IA9gLGWO59Q
         rgkG4E/DctjmZDiNfn5U+wwVZWp5+SMTQ8uI+WWzVNJvyzXf61gEUNgXk119i9QWHce9
         J+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=aTQH+8QFadrYoaEx7teEfO6F+xF81qJm/gbu7SJfp4M=;
        b=TLcZIC8htptElKaovLI+zAy2LSGoK/ymgGd08CIDp6eqYLxZHgf1sBswyikPQDXXGA
         mzkqbH3NaHCBrvGMz14tXlmSBVPQxx3h8l8/ZNjps9rIml1xWKL74fuCyFi4hN1Wfat4
         judjYRS00j9fGQTJztEHBhYZpoQ/P3LBi2lN9TnafaOXsWoHNQHnreC4cfHkvhAg9JO9
         P7humi/gn6dOWJswXDt/OvJOieuPgj+9/mveRa/F7tjeE8eiaFxaeQ8OYwRj92FRZHkW
         veZnQurqs5Tc5AnmA3S2DNw4f4krCl7HqL6kq/c8PKAXncJj6bjznL2iq6NmiIQqPJ6T
         QANQ==
X-Gm-Message-State: AOAM533ghGn4fLoRHSJIfF440IkCANlFgVugfxNZnXYwbXGxEVkr3wLx
        /Eo9o11vG1oXaHXAUcg6m8lsvLP72mQ=
X-Google-Smtp-Source: ABdhPJy6NCAvWnn2HR6o730wtjP3t0Cu4NnswFnFKu09GrC3WOAoD7SpzOiFFKNOgxoH+d7GVf3p6tR16eY=
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:91dd:58ac:7590:aa21])
 (user=badhri job=sendgmr) by 2002:a0c:ff02:: with SMTP id w2mr38604856qvt.23.1618410424116;
 Wed, 14 Apr 2021 07:27:04 -0700 (PDT)
Date:   Wed, 14 Apr 2021 07:26:56 -0700
In-Reply-To: <20210414142656.63749-1-badhri@google.com>
Message-Id: <20210414142656.63749-3-badhri@google.com>
Mime-Version: 1.0
References: <20210414142656.63749-1-badhri@google.com>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
Subject: [PATCH v4 3/3] dt-bindings: connector: Add slow-charger-loop definition
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

Allows PMIC charger loops which are slow(i.e. cannot meet the
15ms deadline) to still comply to pSnkStby i.e Maximum power
that can be consumed by sink while in Sink Standby state as defined
in 7.4.2 Sink Electrical Parameters of USB Power Delivery Specification
Revision 3.0, Version 1.2.

This patch introduces slow-charger-loop which when set makes
the port request PD_P_SNK_STDBY_MW(2.5W i.e 500mA@5V) upon entering
SNK_DISCOVERY (instead of 3A or the 1.5A during SNK_DISCOVERY) and the
actual currrent limit after RX of PD_CTRL_PSRDY for PD link or during
SNK_READY for non-pd link.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
Changes since v3:
* Removed additional semi-colon in the subject line
Changes since V2:
To address Rob's comments
* Updated commit and the binding description.
* Updated subject as well.
---
 .../devicetree/bindings/connector/usb-connector.yaml   | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
index b6daedd62516..32509b98142e 100644
--- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
+++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
@@ -197,6 +197,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [1, 2, 3]
 
+  slow-charger-loop:
+    description: Allows PMIC charger loops which are slow(i.e. cannot meet the 15ms deadline) to
+      still comply to pSnkStby i.e Maximum power that can be consumed by sink while in Sink Standby
+      state as defined in 7.4.2 Sink Electrical Parameters of USB Power Delivery Specification
+      Revision 3.0, Version 1.2. When the property is set, the port requests pSnkStby(2.5W -
+      5V@500mA) upon entering SNK_DISCOVERY(instead of 3A or the 1.5A, Rp current advertised, during
+      SNK_DISCOVERY) and the actual currrent limit after reception of PS_Ready for PD link or during
+      SNK_READY for non-pd link.
+    type: boolean
+
 required:
   - compatible
 
-- 
2.31.1.295.g9ea45b61b8-goog

