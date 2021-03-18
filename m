Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E7703405CA
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 13:44:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230119AbhCRMoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 08:44:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230408AbhCRMoG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 08:44:06 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF783C06175F
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 05:44:05 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id g10so1244837plt.8
        for <devicetree@vger.kernel.org>; Thu, 18 Mar 2021 05:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cGzmTTjWe1AbEuSBzNDXhCdxGNlI9I7Ym5rhNfsOEPE=;
        b=YC6h+Stopa6z4/mq+u/ZKuzl0bQVUdulYA/hh1D1RU0UCZ49zW6TI1tDmrWJyrxjsZ
         9+29bYa5hJW16jRKG8vqcJ6i3r78Be26LUrc7lP54b+z4rE0q2K6m03X+ptLa8hp7qMl
         PiHQln2RVCE4T8F+USS0E4npCJsvUczGecOPSjXYy2Rjq1iy7/n1gXVsrlknpFE9TUvE
         lEzpZtiBNO8JhjbVow7AKisJI8Hmcvqx7shtmV5sm0+/P7mXSrAykVtKCPNvy5D5kk6L
         iZLn4mmd2WFfWjcLH0/86A3m9tbErGOC4s2TL9/gTioudWfaN9AqT6wDQh5Y6VXgvtAC
         iVBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cGzmTTjWe1AbEuSBzNDXhCdxGNlI9I7Ym5rhNfsOEPE=;
        b=bxL8zyCB7rgBQ5pxru44PBUJt8cOUlGetTU9CqaluUGd9h/jsjRKH060LLLHeEIras
         9aPMftBQq9aVAFYvBZyTfmYJ1jdFDjBQPJtpYEngDcCdAaadyT3S3FGJGnaQ2ExTn3Fu
         08jn30r0AaY/j/RKReYEiwNUNdnYllT/RwAzM91EoK4CyWlC62mfqSkljAyiju6E1nyY
         ttI4ZbiWskYYb9iAvKM7Xn6oEbbi9KMUGPEKK5Nu0VE2oYQ2BLd7tiGdIw4l6D7BWhle
         8oKqLz5uNoCq0d1y/3/qaP4uS/oD6p/a1+GBDRX6+iD13G6VChaIuYwUbrOI4lNiXwXI
         Wx3w==
X-Gm-Message-State: AOAM531sdZuNXKuTIjx5O/BO2U4rmqYofQjDevhE1gXz50iq+Ns7WdGX
        aTr3q6X45LD5STYDaCxk+yYb
X-Google-Smtp-Source: ABdhPJyZmBBHjfYzZLXR3tLchvSFoaX5tKaC+xbOnAaz9tQnnDGB37XBmQLX8mkxaOkIvUg6+00nXg==
X-Received: by 2002:a17:903:4112:b029:e5:f79d:3eb1 with SMTP id r18-20020a1709034112b02900e5f79d3eb1mr9293334pld.48.1616071445438;
        Thu, 18 Mar 2021 05:44:05 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:6d00:4737:af26:182c:a57e:1d9e])
        by smtp.gmail.com with ESMTPSA id w84sm2530694pfc.142.2021.03.18.05.44.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Mar 2021 05:44:04 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
        boris.brezillon@collabora.com, Daniele.Palmas@telit.com,
        bjorn.andersson@linaro.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v6 2/3] dt-bindings: mtd: Add a property to declare secure regions in NAND chips
Date:   Thu, 18 Mar 2021 18:13:41 +0530
Message-Id: <20210318124342.32745-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210318124342.32745-1-manivannan.sadhasivam@linaro.org>
References: <20210318124342.32745-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On a typical end product, a vendor may choose to secure some regions in
the NAND memory which are supposed to stay intact between FW upgrades.
The access to those regions will be blocked by a secure element like
Trustzone. So the normal world software like Linux kernel should not
touch these regions (including reading).

So let's add a property for declaring such secure regions so that the
drivers can skip touching them.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/mtd/nand-controller.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/nand-controller.yaml b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
index d0e422f4b3e0..678b39952502 100644
--- a/Documentation/devicetree/bindings/mtd/nand-controller.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-controller.yaml
@@ -143,6 +143,13 @@ patternProperties:
           Ready/Busy pins. Active state refers to the NAND ready state and
           should be set to GPIOD_ACTIVE_HIGH unless the signal is inverted.
 
+      secure-regions:
+        $ref: /schemas/types.yaml#/definitions/uint64-matrix
+        description:
+          Regions in the NAND chip which are protected using a secure element
+          like Trustzone. This property contains the start address and size of
+          the secure regions present.
+
     required:
       - reg
 
-- 
2.25.1

