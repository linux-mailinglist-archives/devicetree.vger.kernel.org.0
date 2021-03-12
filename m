Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAA5B338B04
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 12:08:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233762AbhCLLIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 06:08:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233794AbhCLLII (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 06:08:08 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3345C061574
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:07 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id j18so1538921wra.2
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 03:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LUHr4ymMi5VBqrEoXKDtGcta5lpuLHD7VRSm0+qQluo=;
        b=OsUv5iLhDgVhzhV0LgtfnRfdzSikIjb7ns1xlfS49V36qOY1J3vfBg4n7bat4iDp+h
         AQ5oMDxUUOgzdq4yCF/9y7XtceVljvkjbEm425LoibpX1+zdwxHJuiHCPNQyFxeObLdL
         w0DjPjN7ery3banas/9niexyypuvzerUOtQJSoI/RA61ZC5vx5qeLSksVr8fSBTtzs+u
         h8FiAzGy4ijoGkLsKP0f4sthFzaFuqAiinDXe/X90am1N8pX5IskzxNHvWUE4XNnUxz7
         8PEqcIExAqwI6GCqx3yog1itbJYOV+ObEwkSnBbF5kY1ZHi0YIknnZIXgIsd4bRbhy+g
         WDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LUHr4ymMi5VBqrEoXKDtGcta5lpuLHD7VRSm0+qQluo=;
        b=QMY+3XNK+b24w51WtwCU+7eBrBg4prxQRTRXt9UvZYVXxTd4tA6Q1GnvDNVvMJkpah
         oQgnq0vcUgALuFVcmPK7kFJKhhovFaeg2sDHN0ecag0JdsQXBBkBX6GYqphhCjwSg05I
         oAaBzgxRUHQiEWHZgj6OrnrHWQUSijOBwVkm10lNURGQl/0ho35vsUUxvv4Tmct6zf+Q
         39vua+6qHUM01kyzE6l9tE4ONcPeqpl2HF9rXXADUWrJz+sztVXlqr0+uxfw9LbGEnFe
         7RS9RoqgRi6yqkP4ZzUEmQrMcoV3GEGyLVJBEaEtVJg+wqMpETfX+wAGlcj/sZtvQaVF
         0yQg==
X-Gm-Message-State: AOAM532IPLxX3TXXP8gDDPlFAretRkP0EAF94lnDaHOIQVzO7wftWxyA
        M3ZFyzdxmeUgWGtm97FKxQ47/g==
X-Google-Smtp-Source: ABdhPJxPwM7mzaADhbedyeAbCrfKZ/Pq8+9lqMcX1l0YkJW2Au3KMcTr64Gn3M2RWPwrMzOXchpF2g==
X-Received: by 2002:adf:ee4f:: with SMTP id w15mr13382205wro.199.1615547286375;
        Fri, 12 Mar 2021 03:08:06 -0800 (PST)
Received: from dell.default ([91.110.221.204])
        by smtp.gmail.com with ESMTPSA id f126sm1813003wmf.17.2021.03.12.03.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 03:08:05 -0800 (PST)
From:   Lee Jones <lee.jones@linaro.org>
To:     lee.jones@linaro.org
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org
Subject: [PATCH 05/10] of: property: Provide missing member description and remove excess param
Date:   Fri, 12 Mar 2021 11:07:53 +0000
Message-Id: <20210312110758.2220959-6-lee.jones@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210312110758.2220959-1-lee.jones@linaro.org>
References: <20210312110758.2220959-1-lee.jones@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fixes the following W=1 kernel build warning(s):

 drivers/of/property.c:1239: warning: Function parameter or member 'optional' not described in 'supplier_bindings'
 drivers/of/property.c:1366: warning: Excess function parameter 'dev' description in 'of_link_property'

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Frank Rowand <frowand.list@gmail.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: devicetree@vger.kernel.org
Signed-off-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/of/property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 5036a362f52e7..5faf24a791c9d 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -1225,6 +1225,7 @@ static struct device_node *parse_##fname(struct device_node *np,	     \
  * @parse_prop.prop_name: Name of property holding a phandle value
  * @parse_prop.index: For properties holding a list of phandles, this is the
  *		      index into the list
+ * @optional: Describes whether a supplier is mandatory or not
  *
  * Returns:
  * parse_prop() return values are
@@ -1344,7 +1345,6 @@ static const struct supplier_bindings of_supplier_bindings[] = {
 
 /**
  * of_link_property - Create device links to suppliers listed in a property
- * @dev: Consumer device
  * @con_np: The consumer device tree node which contains the property
  * @prop_name: Name of property to be parsed
  *
-- 
2.27.0

