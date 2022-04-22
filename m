Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB40850B4E8
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 12:23:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1446396AbiDVKZz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 06:25:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235156AbiDVKZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 06:25:54 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75D4F54BE5
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 03:23:02 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.net.upcbroadband.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 2688C8186D;
        Fri, 22 Apr 2022 12:22:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1650622980;
        bh=Ny7NWkl8uriuaT0g2E4LEHXq8AExjh+FJOsGUX23860=;
        h=From:To:Cc:Subject:Date:From;
        b=PHV+gIhBRaQukKgIMOePySlBrYE8us88OiN0R7i4gV2/izlLPJAh4JCn0gzuXiI4F
         wYbaTtY2eXF3jZFqegjl6ldBTQCsenRwYYbRKVdq16DvX/PlN0bS3afP9A/NSxQgOO
         a5wZo45dUFC9RDcnYTj2yxRo+qPeYhktWzGp4lb9l+xeD668FwWomXkc/uQdL4i6E9
         2V6+lJzPxURn8JvSIg4tLbn23eGTwQGVYjxsUDhv/7AtYYED2NTisyXIgrjC3CRYJQ
         GXwW9mUrMiTQpQhXHnEEF+k5/bogoRFPfBkinjoH/Jih6czHJrlPGDNMZemYlu8igr
         kMbqDVKJrYOxA==
From:   Marek Vasut <marex@denx.de>
To:     dri-devel@lists.freedesktop.org
Cc:     robert.foss@linaro.org, Marek Vasut <marex@denx.de>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: display: simple: Add DataImage FG040346DSSWBG04 compatible string
Date:   Fri, 22 Apr 2022 12:22:41 +0200
Message-Id: <20220422102242.18959-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add DataImage FG040346DSSWBG04 4.3" 480x272 TFT LCD 24bit DPI panel
compatible string.

Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
To: dri-devel@lists.freedesktop.org
---
V2: Add AB from Thomas
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1eb9dd4f8f58..cfe7bb9f89de 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -105,6 +105,8 @@ properties:
       - chunghwa,claa101wb01
         # Chunghwa Picture Tubes Ltd. 10.1" WXGA TFT LCD panel
       - chunghwa,claa101wb03
+        # DataImage, Inc. 4.3" WQVGA (480x272) TFT LCD panel with 24-bit parallel interface.
+      - dataimage,fg040346dsswbg04
         # DataImage, Inc. 7" WVGA (800x480) TFT LCD panel with 24-bit parallel interface.
       - dataimage,scf0700c48ggu18
         # DLC Display Co. DLC1010GIG 10.1" WXGA TFT LCD Panel
-- 
2.35.1

