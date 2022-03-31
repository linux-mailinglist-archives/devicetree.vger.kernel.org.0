Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F26B4ED767
	for <lists+devicetree@lfdr.de>; Thu, 31 Mar 2022 11:58:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234123AbiCaKAR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 06:00:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233105AbiCaKAQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 06:00:16 -0400
X-Greylist: delayed 110 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 31 Mar 2022 02:58:28 PDT
Received: from smtpo62.interia.pl (smtpo62.interia.pl [217.74.67.62])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02A1E1F89F8
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 02:58:27 -0700 (PDT)
Received: from t480s.localdomain (unknown [80.68.225.159])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by poczta.interia.pl (INTERIA.PL) with ESMTPSA;
        Thu, 31 Mar 2022 11:56:34 +0200 (CEST)
Date:   Thu, 31 Mar 2022 11:56:33 +0200
From:   Slawomir Stepien <sst@poczta.fm>
To:     pantelis.antoniou@konsulko.com, frowand.list@gmail.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org
Cc:     krzysztof.adamski@nokia.com, tomasz.medrek@nokia.com,
        alexander.sverdlin@nokia.com
Subject: [PATCH] of: overlay: set 'overlay_tree' and 'fdt' fields only on
 success
Message-ID: <YkV60TQ+d3sltkNU@t480s.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=interia.pl;
        s=biztos; t=1648720595;
        bh=Oo5vqrUdgM2qJvOVtFWnc0UOTEfjYdCveYAYcAvQsS0=;
        h=X-Interia-R:X-Interia-R-IP:X-Interia-R-Helo:Date:From:To:Cc:
         Subject:Message-ID:MIME-Version:Content-Type:Content-Disposition:
         X-Interia-Antivirus;
        b=o/mcN3UsxsGboSZ+TABZvApgI9LVrswgvFnCMJuG0IR9mCBdcT7bovIv3k/1SOLuD
         l09pZqyhAvsFPkwPF6spK16O16eqECaq6gIGmIwm6AR1r0NWIY2pZgO4+E62tAlB4R
         1/1Tkg2A68+cr5jOegysPsuUpyWlLC2qf/0IMXlk=
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,FREEMAIL_FROM,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Slawomir Stepien <slawomir.stepien@nokia.com>

Before this change, the memory pointed by fields 'overlay_tree' and
'fdt' will be double freed by a call to free_overlay_changeset() from
of_overlay_apply(), when the init_overlay_changeset() fails.

The first free will happen under 'err_free_tree' label and for the
second time under 'err_free_overlay_changeset' label, where we call
free_overlay_changeset().

This could happen for example, when you are applying an overlay to a
target path that does not exists.

By setting the pointers only when we are sure that
init_overlay_changeset() will not fail, will prevent this double free.

Signed-off-by: Slawomir Stepien <slawomir.stepien@nokia.com>
---
 drivers/of/overlay.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index d80160cf34bb..a72a9a415f8f 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -750,9 +750,6 @@ static int init_overlay_changeset(struct overlay_changeset *ovcs,
 	if (!of_node_is_root(tree))
 		pr_debug("%s() tree is not root\n", __func__);
 
-	ovcs->overlay_tree = tree;
-	ovcs->fdt = fdt;
-
 	INIT_LIST_HEAD(&ovcs->ovcs_list);
 
 	of_changeset_init(&ovcs->cset);
@@ -829,6 +826,8 @@ static int init_overlay_changeset(struct overlay_changeset *ovcs,
 		goto err_free_fragments;
 	}
 
+	ovcs->overlay_tree = tree;
+	ovcs->fdt = fdt;
 	ovcs->id = id;
 	ovcs->count = cnt;
 	ovcs->fragments = fragments;
-- 
Slawomir Stepien
