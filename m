Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9EB4A7C16F
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:35:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727833AbfGaMfx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:35:53 -0400
Received: from andre.telenet-ops.be ([195.130.132.53]:35988 "EHLO
        andre.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726259AbfGaMfx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:35:53 -0400
Received: from ramsan ([84.194.98.4])
        by andre.telenet-ops.be with bizsmtp
        id jQbq2000G05gfCL01Qbq0F; Wed, 31 Jul 2019 14:35:50 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hsnpe-0008TO-5N; Wed, 31 Jul 2019 14:35:50 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1hsnpe-0003b7-3V; Wed, 31 Jul 2019 14:35:50 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] scripts/dtc: dtx_diff - make help text formatting consistent
Date:   Wed, 31 Jul 2019 14:35:48 +0200
Message-Id: <20190731123548.13787-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

None of the help texts use capitalization, except the one for the -T
option.  Drop the capitalization for consistency.
Split the single long line that doesn't fit in 80 characters.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 scripts/dtc/dtx_diff | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
index 00fd4738a5877948..e9ad7834a22d9459 100755
--- a/scripts/dtc/dtx_diff
+++ b/scripts/dtc/dtx_diff
@@ -27,7 +27,8 @@ Usage:
        -s SRCTREE   linux kernel source tree is at path SRCTREE
                         (default is current directory)
        -S           linux kernel source tree is at root of current git repo
-       -T           Annotate output .dts with input source file and line (-T -T for more details)
+       -T           annotate output .dts with input source file and line
+                        (-T -T for more details)
        -u           unsorted, do not sort DTx
 
 
-- 
2.17.1

