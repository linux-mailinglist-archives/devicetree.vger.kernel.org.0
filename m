Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 105DF473FD2
	for <lists+devicetree@lfdr.de>; Tue, 14 Dec 2021 10:51:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232664AbhLNJvB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Dec 2021 04:51:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232634AbhLNJvA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Dec 2021 04:51:00 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 161BFC06173F
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 01:51:00 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id t18so31326828wrg.11
        for <devicetree@vger.kernel.org>; Tue, 14 Dec 2021 01:51:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UoqofvZsTLn3SZWgvUrY2g8UHV9XmLPJnkQk172OXk4=;
        b=hB68tQoQD6wtqjDpVCKgTzURxRcRL4C9GdnxcUZvBu6+I4BxO6ifeDBvAuZgmGzzhh
         gbjn1KsaxSiHFhAkN/I1uJXEM11WgNkO7jr+tNlJ4e12NdNigaTM04CqZSFr+K95iRrL
         xmlwuEjCqD7y7A5BKn9sagG5I3qsehYHDBUQGFSsiN8tTsmuT7UkJspiEsk4OFLojuvl
         FXNNHtwLVoUSbIk5s7S2rX3NU/fl2BPgtDYhI3rzAw57UJTH9VueKbpEqKgOD3FZRkDK
         94f5+6DX8H0ktrPEh0lBgU3kfXbK9dzMaClQHYrMv3FCoHkc6EWsu3tPffBKy73Qg4CF
         cTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UoqofvZsTLn3SZWgvUrY2g8UHV9XmLPJnkQk172OXk4=;
        b=DpANW7l6OOqKnedCfphK/n6YOTE225emq/XH50ai1iAzkIaB3ScHwG2JKLmdETm4kB
         mH8i4LRb2YWoRbHr+s2o9t2Km8cZF6bWPStiFpjd/SN5Mj1ePTZr9pOxCZBeQreUSMXo
         jlnGkmBRBVE9VX//XtEHB3Ha2vHxO+/HciOuCGNTz4a6gtltyUKVcD3Ia53pFfN/kfCX
         +eCrLKE6Jj9F7e3FEYIgoLNPYn02ZgeKQgqGAmt88JN2Kk+NHWBli7WPPqfCtSbNP2+0
         RnhRD5AvV7FMRrYtDDXJafI/v3knvqmxaoDW480dBmYMRGytV4eFAKw3S8TD4696uSys
         ad6Q==
X-Gm-Message-State: AOAM531zUmlTf2Y5Z9/2TT3QZl9Yu40X4c/eHp6HdKz3rZRKRkiRiwcW
        tqMQvF4hs9FxE7zj0dQZSDWpWw==
X-Google-Smtp-Source: ABdhPJynnWm78M3TOb/T++5wTbkaJyEvCtnZXR+VoAoezYTUy8+XaDPydAauILAsPLk+jz38YwylZg==
X-Received: by 2002:adf:fb09:: with SMTP id c9mr4578324wrr.223.1639475458598;
        Tue, 14 Dec 2021 01:50:58 -0800 (PST)
Received: from fedora.sec.9e.network (ip-88-153-139-166.hsi04.unitymediagroup.de. [88.153.139.166])
        by smtp.gmail.com with ESMTPSA id s24sm1522757wmj.26.2021.12.14.01.50.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Dec 2021 01:50:58 -0800 (PST)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Peter Rosin <peda@axentia.se>, Rob Herring <robh+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] dt-bindings: i2c Add regulator to pca954x
Date:   Tue, 14 Dec 2021 10:50:20 +0100
Message-Id: <20211214095021.572799-3-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211214095021.572799-1-patrick.rudolph@9elements.com>
References: <20211214095021.572799-1-patrick.rudolph@9elements.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a regulator called vcc and update the example.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
---
 Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
index bd794cb80c11..5add7db02c0c 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.yaml
@@ -64,6 +64,9 @@ properties:
     description: if present, overrides i2c-mux-idle-disconnect
     $ref: /schemas/mux/mux-controller.yaml#/properties/idle-state
 
+  vcc-supply:
+    description: An optional voltage regulator supplying power to the chip.
+
 required:
   - compatible
   - reg
@@ -84,6 +87,8 @@ examples:
             #size-cells = <0>;
             reg = <0x74>;
 
+            vcc-supply = <&p3v3>;
+
             interrupt-parent = <&ipic>;
             interrupts = <17 IRQ_TYPE_LEVEL_LOW>;
             interrupt-controller;
-- 
2.33.1

