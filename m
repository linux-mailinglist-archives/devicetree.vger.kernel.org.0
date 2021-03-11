Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1425C336F85
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 11:04:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232206AbhCKKDl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 05:03:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232220AbhCKKD0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Mar 2021 05:03:26 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42F63C061760
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 02:03:26 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id b127so24939711ybc.13
        for <devicetree@vger.kernel.org>; Thu, 11 Mar 2021 02:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=534m+kMNorM/hxc5w1yoj67wqGOeEoCsnzauQdFx+kI=;
        b=hNK5MMo/C9ZN3cDfxO7yrRJqL9GpFKqI+Cia9i56YWy1blvKj3gV9r3pLgRe1ZRQb0
         SkDAoZKYYwJmnhGVVYgZs50Gb7A5jDf4JcQ+YtxxYVkGMH9BbVCbvM+qQpggN5R+zb1l
         GMztgdyKxsaceqWsSiR4dhsIqUqjeHDU+qrTm6lCxLPCGy1X44ygRUDhpbspDNgQaFHl
         Xi2RsbmXmxrQMRg7A/yaZ/0A37ZCUKqpK1+UjtfpWprdtCpROsK94kMHxVAeO8dzOLsR
         4O+plzviGgi5RDhzC5w8brTfSbXVRSLtTMSz0AFYwxR1rjm/VWdXBo92K0JHDipoz7jO
         iaCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=534m+kMNorM/hxc5w1yoj67wqGOeEoCsnzauQdFx+kI=;
        b=jcKiTh2kwqKx2DWaRM+QzAh0ToBexqNIo5pXPQ3wBrtKJCHsZGhHNKZ5qmRiztbrMc
         sQ0ei/4QJuWEbo8QEdkYybMSxLC7H8BZ3V675KB2hpCq2LLfxagbVMX87YdkhsQKI97h
         B8oaw0bxSsa6sHTrjU8Z4+4WSk7ramcCEN3OoEcm6gxpN1UrlJy5zkxd3KhpSIxTRi9W
         TAE40S0sP45xI2+SbGOATeUhsxujNAjt8iXZMrFCUkom/Ou+Ug4VtvH6Tyi+xeKrtjG1
         lab0fEUd0bgEqEWG6QAs80hYuzidNqPl1eQUn9Brpk6p87XvsWaVN+f1VbZ0GG3UIK1q
         X0zg==
X-Gm-Message-State: AOAM5339n5/UnSrAgWLC1Y/o5CApYh4X6X1vnU3yvlK3QpsmbLiUnOOj
        5FVbWwhbLCF7nHL83u4S5ttzuNOe1zw=
X-Google-Smtp-Source: ABdhPJxZdwOgMxSl7Vlrpf5BitKDEqLo+2OgGyy6oevdllAkcbiHKMBiLtQ+sYMawxQxunE61Nuf7H4rZmM=
X-Received: from badhri.mtv.corp.google.com ([2620:15c:211:201:39e6:8b30:8665:4bec])
 (user=badhri job=sendgmr) by 2002:a25:918d:: with SMTP id w13mr9666411ybl.429.1615457005557;
 Thu, 11 Mar 2021 02:03:25 -0800 (PST)
Date:   Thu, 11 Mar 2021 02:03:13 -0800
In-Reply-To: <20210311100313.3591254-1-badhri@google.com>
Message-Id: <20210311100313.3591254-4-badhri@google.com>
Mime-Version: 1.0
References: <20210311100313.3591254-1-badhri@google.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH 4/4] dt-bindings: usb: Add chg-psy-name property Maxim 33359 binding
From:   Badhri Jagan Sridharan <badhri@google.com>
To:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kyle Tso <kyletso@google.com>, devicetree@vger.kernel.org,
        Badhri Jagan Sridharan <badhri@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

chg-psy-name is an optional string property used to indicate the
power supply object for which the current/voltage_max limits have
to be set.

Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
---
 Documentation/devicetree/bindings/usb/maxim,max33359.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
index 93a19eda610b..3a278969109e 100644
--- a/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
+++ b/Documentation/devicetree/bindings/usb/maxim,max33359.yaml
@@ -28,6 +28,11 @@ properties:
     description:
       Properties for usb c connector.
 
+  chg-psy-name:
+    description: Power supply whose current/voltage_max values to be
+      configured.
+    $ref: /schemas/types.yaml#definitions/string
+
 required:
   - compatible
   - reg
@@ -49,7 +54,7 @@ examples:
             reg = <0x25>;
             interrupt-parent = <&gpa8>;
             interrupts = <2 IRQ_TYPE_LEVEL_LOW>;
-
+            chg-psy-name = "main_charger";
             connector {
                 compatible = "usb-c-connector";
                 label = "USB-C";
-- 
2.31.0.rc2.261.g7f71774620-goog

