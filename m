Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ECC6819D913
	for <lists+devicetree@lfdr.de>; Fri,  3 Apr 2020 16:25:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2403806AbgDCOZM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Apr 2020 10:25:12 -0400
Received: from mail-pj1-f65.google.com ([209.85.216.65]:51337 "EHLO
        mail-pj1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2403918AbgDCOZL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Apr 2020 10:25:11 -0400
Received: by mail-pj1-f65.google.com with SMTP id w9so3058787pjh.1
        for <devicetree@vger.kernel.org>; Fri, 03 Apr 2020 07:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xxGGn51zri+SmBzw6OefhHFXr2bA0wMiqg3raFhJWNk=;
        b=Dl8MYxOFg0TfBLOCOplJysObTuJ0bgBh15U2unyF9O1O5VlGEW8vPMVEsHiA+xpfLn
         u1p4DpYLO4L1LTNqUKtBfyeKN7Ok92m0YALjsOKfb5uaKdxhEtUZgHzSPkcR5HpO8UfU
         2Ka1EVSjq/tTo6qFMot+aXuJbz8WHWL6sCC18=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xxGGn51zri+SmBzw6OefhHFXr2bA0wMiqg3raFhJWNk=;
        b=nYF/5BuxApOsnsQliqN6Ib3BqXOY8zXXbGxhMhO/Hqu1AwFQPZfVR5x/XqMxkCBZAA
         xI9/vtGaVk/zgAGgstLThhK0znfoSKO5mFsbcXd9eygXjzduKNa4VhcD+AYdvJUjeoZD
         cU1kXGG2X0qLFFVNUQaO3hK5m2dD/os71Hlf3qK/2Pdwk8+2jAub3mi+eMU73zWrUBV7
         0cOt3qBTd425PT2+5nIqnp/VPZaipxNBWI/T9bk9qNdXuLybrsLVDBlwYc5T2av4ttIx
         Ia6WkqlvcULucqZwglx6PN5qHg/8qNVBGG77VNH9hKFvkuP7vfHTVbfNCCIz+019OqZH
         GWDw==
X-Gm-Message-State: AGi0PuYX/5ARIFesqCDAxNr00GUCx/w/JXJuwWCHtn2JQS1R97KpsPAN
        FWJ4w62d2HN9CmSDMTufCUke9A==
X-Google-Smtp-Source: APiQypI5jQw1eSXRKQohkfFUTS7Vbekz33WC/zYzEcO9VRwvS2L6cNMg6F3ab1C/P8BJ+rmCfy9dQg==
X-Received: by 2002:a17:90a:33c1:: with SMTP id n59mr9737670pjb.4.1585923910684;
        Fri, 03 Apr 2020 07:25:10 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9cd7:b821:2c84:e325])
        by smtp.gmail.com with ESMTPSA id g75sm5857060pje.37.2020.04.03.07.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 07:25:09 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 3/3] MAINTAINERS: Update feiyang, st7701 panel bindings converted as YAML
Date:   Fri,  3 Apr 2020 19:54:53 +0530
Message-Id: <20200403142453.25307-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200403142453.25307-1-jagan@amarulasolutions.com>
References: <20200403142453.25307-1-jagan@amarulasolutions.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The feiyang,fy07024di26a30d.txt and sitronix,st7701.txt has been
converted to YAML schemas, update MAINTAINERS to match them again.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none

 MAINTAINERS | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6ba8b584bf95..b987f2588e6a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5273,7 +5273,7 @@ DRM DRIVER FOR FEIYANG FY07024DI26A30-D MIPI-DSI LCD PANELS
 M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
 F:	drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
-F:	Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.txt
+F:	Documentation/devicetree/bindings/display/panel/feiyang,fy07024di26a30d.yaml
 
 DRM DRIVER FOR GRAIN MEDIA GM12U320 PROJECTORS
 M:	Hans de Goede <hdegoede@redhat.com>
@@ -5416,7 +5416,7 @@ DRM DRIVER FOR SITRONIX ST7701 PANELS
 M:	Jagan Teki <jagan@amarulasolutions.com>
 S:	Maintained
 F:	drivers/gpu/drm/panel/panel-sitronix-st7701.c
-F:	Documentation/devicetree/bindings/display/panel/sitronix,st7701.txt
+F:	Documentation/devicetree/bindings/display/panel/sitronix,st7701.yaml
 
 DRM DRIVER FOR SITRONIX ST7586 PANELS
 M:	David Lechner <david@lechnology.com>
-- 
2.17.1

