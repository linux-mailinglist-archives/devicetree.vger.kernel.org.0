Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31F22249E84
	for <lists+devicetree@lfdr.de>; Wed, 19 Aug 2020 14:47:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728155AbgHSMrY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Aug 2020 08:47:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728420AbgHSMrM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Aug 2020 08:47:12 -0400
Received: from michel.telenet-ops.be (michel.telenet-ops.be [IPv6:2a02:1800:110:4::f00:18])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 262E9C061383
        for <devicetree@vger.kernel.org>; Wed, 19 Aug 2020 05:47:12 -0700 (PDT)
Received: from ramsan ([84.195.186.194])
        by michel.telenet-ops.be with bizsmtp
        id HQnA2300U4C55Sk06QnArZ; Wed, 19 Aug 2020 14:47:10 +0200
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1k8NUk-0002S9-LP; Wed, 19 Aug 2020 14:47:10 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1k8NUk-0005Jq-KC; Wed, 19 Aug 2020 14:47:10 +0200
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v2 resend 2] scripts/dtc: dtx_diff - make help text formatting consistent
Date:   Wed, 19 Aug 2020 14:47:09 +0200
Message-Id: <20200819124709.20401-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

None of the help texts use capitalization, except the one for the -T
option.  Drop the capitalization for consistency.
Split the single long line that doesn't fit in 80 characters.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
Reviewed-by: Frank Rowand <frowand.list@gmail.com>
---
v2:
  - Add Reviewed-by.
---
 scripts/dtc/dtx_diff | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/dtc/dtx_diff b/scripts/dtc/dtx_diff
index 541c432e7d199457..d3422ee15e300bc7 100755
--- a/scripts/dtc/dtx_diff
+++ b/scripts/dtc/dtx_diff
@@ -29,7 +29,8 @@ Usage:
        -s SRCTREE   linux kernel source tree is at path SRCTREE
                         (default is current directory)
        -S           linux kernel source tree is at root of current git repo
-       -T           Annotate output .dts with input source file and line (-T -T for more details)
+       -T           annotate output .dts with input source file and line
+                        (-T -T for more details)
        -u           unsorted, do not sort DTx
 
 
-- 
2.17.1

