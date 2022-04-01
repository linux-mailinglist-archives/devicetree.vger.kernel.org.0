Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDA454EE57F
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 02:46:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235316AbiDAAsI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 20:48:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230257AbiDAAsH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 20:48:07 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5FB4C196D6F
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 17:46:18 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E497E618C2
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 00:46:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F14CDC340EE;
        Fri,  1 Apr 2022 00:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648773977;
        bh=nL9OOS2GUK9hVMygYq7DQDwBRpyIvChJ46/D+IotTPY=;
        h=Date:From:To:cc:Subject:From;
        b=dqdSbn9TTy3oGM2lkkrVCTZTNSFA9ek4UshBPEPNCXQ0mfYwe4NHlcxGiXnCjpo72
         ObAIdp+wQbhFKe0MQOYStUB9R+b1BQwajcC5pPP5PdjUcqzccV3o5XjvrpRSy/Hzsd
         C1YPAoCM/Ry463nQECOX4RinywUTHzRu/rSdAi50MNhSfmFivPT8+Quz/V/QapfDHs
         yIV+QcjvYwePbgwX0ieZ2762SyJrZQ9HCtgFIwzZB5tcSw1P/pykoX59k6RDpNDzSj
         +txUKqux8A1i0w9VNXo706Ws40D2f9I1BPG47j9EgTVRKs1BuSuKwvTOY/lAvF6/fx
         ZznWJ3xvaVZ6A==
Date:   Thu, 31 Mar 2022 17:46:16 -0700 (PDT)
From:   Stefano Stabellini <sstabellini@kernel.org>
X-X-Sender: sstabellini@ubuntu-linux-20-04-desktop
To:     robh+dt@kernel.org, frowand.list@gmail.com
cc:     sstabellini@kernel.org, devicetree@vger.kernel.org, julien@xen.org,
        xen-devel@lists.xenproject.org
Subject: [PATCH] of: of_property_read_string return -ENODATA when !length
Message-ID: <alpine.DEB.2.22.394.2203311740450.2910984@ubuntu-linux-20-04-desktop>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

However, of_property_read_string doesn't check pp->length. If pp->length
is zero, return -ENODATA.

Without this patch the following command in u-boot:

fdt set /chosen/node property-name

results in of_property_read_string returning -EILSEQ when attempting to
read property-name. With this patch, it returns -ENODATA as expected.

Signed-off-by: Stefano Stabellini <stefano.stabellini@xilinx.com>

diff --git a/drivers/of/property.c b/drivers/of/property.c
index 8e90071de6ed..da0f02c98bb2 100644
--- a/drivers/of/property.c
+++ b/drivers/of/property.c
@@ -439,7 +439,7 @@ int of_property_read_string(const struct device_node *np, const char *propname,
 	const struct property *prop = of_find_property(np, propname, NULL);
 	if (!prop)
 		return -EINVAL;
-	if (!prop->value)
+	if (!prop->value || !pp->length)
 		return -ENODATA;
 	if (strnlen(prop->value, prop->length) >= prop->length)
 		return -EILSEQ;
