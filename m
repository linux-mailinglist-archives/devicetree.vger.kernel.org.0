Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A07EB12D932
	for <lists+devicetree@lfdr.de>; Tue, 31 Dec 2019 14:46:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726229AbfLaNqr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Dec 2019 08:46:47 -0500
Received: from xavier.telenet-ops.be ([195.130.132.52]:41148 "EHLO
        xavier.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726060AbfLaNqr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Dec 2019 08:46:47 -0500
Received: from ramsan ([84.195.182.253])
        by xavier.telenet-ops.be with bizsmtp
        id kdml2100Y5USYZQ01dmlvr; Tue, 31 Dec 2019 14:46:46 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1imHrB-0005m6-Ng; Tue, 31 Dec 2019 14:46:45 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1imHrB-0007KG-L2; Tue, 31 Dec 2019 14:46:45 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] of: overlay: Remove blank line between assignment and check
Date:   Tue, 31 Dec 2019 14:46:44 +0100
Message-Id: <20191231134644.28119-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There used to be blank lines between assignment and check of the
__of_changeset_revert_entries() result, to make the phandle cache
management operations stand out.  After the removal of those operations
in commit 90dc0d1ce890419f ("of: Rework and simplify phandle cache to
use a fixed size"), there is no longer a reason to have such a blank
line.

Remove the blank line, to rejoin visibly the status assignement and
check, and to match coding style.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/of/overlay.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 788ab3501913d04f..87ef7cdfd0381799 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -1391,7 +1391,6 @@ int of_overlay_remove(int *ovcs_id)
 
 	ret_apply = 0;
 	ret = __of_changeset_revert_entries(&ovcs->cset, &ret_apply);
-
 	if (ret) {
 		if (ret_apply)
 			devicetree_state_flags |= DTSF_REVERT_FAIL;
-- 
2.17.1

