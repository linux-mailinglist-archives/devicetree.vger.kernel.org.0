Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA5E35032DE
	for <lists+devicetree@lfdr.de>; Sat, 16 Apr 2022 07:48:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbiDPAiC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Apr 2022 20:38:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230425AbiDPAh7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Apr 2022 20:37:59 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 704643A1BE
        for <devicetree@vger.kernel.org>; Fri, 15 Apr 2022 17:35:29 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 92D3EB80ED0
        for <devicetree@vger.kernel.org>; Sat, 16 Apr 2022 00:30:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E029EC385A5;
        Sat, 16 Apr 2022 00:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1650069032;
        bh=gQSFkzWaSCzU6UI9kfwlgCZeTrqeUZGpegqf+xzbLAQ=;
        h=From:To:Cc:Subject:Date:From;
        b=mK4bZmXVRMVSWKWTH9TVzcmpV3DnUZkbRpvjz/DD1T5ZhThWoNd9U4H+7uNIdVfJL
         INCK0P8w24MupU6S4o6rd8p8V9WrGLwDR0Dj/Y1EBCtyPALbRi0PRtMtjIvGjzoSE5
         Af+REMEn7gGqdACUEpoqRnfM1zaKsRfoNlIftOmN8LzZTeG/GtFFliec/nLvK+TmsZ
         fO1XYmboB8vsYUfaKDLCUZv9zULTPj7wY+YGbxnqNtnwXpNcZOv7oXKofSjNUjrWVJ
         /HfMju5Ot8B0JfMq554EeAxRdXPhd6G788cbgzCAyyt4XGu9+Z21QZ7oTnUUjNouzp
         DFwB07UstNwnA==
From:   Stefano Stabellini <sstabellini@kernel.org>
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     sstabellini@kernel.org, devicetree@vger.kernel.org, julien@xen.org,
        xen-devel@lists.xenproject.org,
        Stefano Stabellini <stefano.stabellini@xilinx.com>
Subject: [PATCH v2] of: of_property_read_string return -ENODATA when !length
Date:   Fri, 15 Apr 2022 17:30:28 -0700
Message-Id: <20220416003028.1315268-1-sstabellini@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stefano Stabellini <stefano.stabellini@xilinx.com>

When the length of the string is zero of_property_read_string should
return -ENODATA according to the description of the function.

However, of_property_read_string doesn't check prop->length. If
prop->length is zero, return -ENODATA.

Without this patch the following command in u-boot:

fdt set /chosen/node property-name

results in of_property_read_string returning -EILSEQ when attempting to
read property-name. With this patch, it returns -ENODATA as expected.

Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>
---
Changes in v2:
- use prop instead pp
- drop value check
- update function header documentation
---
 drivers/of/property.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 8e90071de6ed..84903dad96a4 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -431,6 +431,9 @@ EXPORT_SYMBOL_GPL(of_property_read_variable_u64_array);
  * property does not have a value, and -EILSEQ if the string is not
  * null-terminated within the length of the property data.
  *
+ * Note that the empty string "" has length of 1, thus -ENODATA cannot
+ * be interpreted as an empty string.
+ *
  * The out_string pointer is modified only if a valid string can be decoded.
  */
 int of_property_read_string(const struct device_node *np, const char *propname,
@@ -439,7 +442,7 @@ int of_property_read_string(const struct device_node *np, const char *propname,
 	const struct property *prop = of_find_property(np, propname, NULL);
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+	if (!prop->length)
 		return -ENODATA;
 	if (strnlen(prop->value, prop->length) >= prop->length)
 		return -EILSEQ;
-- 
2.25.1

