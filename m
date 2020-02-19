Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C27441648C9
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2020 16:37:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726764AbgBSPhr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Feb 2020 10:37:47 -0500
Received: from baptiste.telenet-ops.be ([195.130.132.51]:34964 "EHLO
        baptiste.telenet-ops.be" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726645AbgBSPhr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Feb 2020 10:37:47 -0500
Received: from ramsan ([84.195.182.253])
        by baptiste.telenet-ops.be with bizsmtp
        id 4fdm220015USYZQ01fdmeU; Wed, 19 Feb 2020 16:37:46 +0100
Received: from rox.of.borg ([192.168.97.57])
        by ramsan with esmtp (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j4RQ2-0004Kq-BQ; Wed, 19 Feb 2020 16:37:46 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
        (envelope-from <geert@linux-m68k.org>)
        id 1j4RQ2-0002qu-96; Wed, 19 Feb 2020 16:37:46 +0100
From:   Geert Uytterhoeven <geert+renesas@glider.be>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     devicetree@vger.kernel.org,
        Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] dt-bindings: example-schema: Drop double quotes around URLs
Date:   Wed, 19 Feb 2020 16:37:45 +0100
Message-Id: <20200219153745.10922-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is no longer needed to wrap URLs in double quotes.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 Documentation/devicetree/bindings/example-schema.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/example-schema.yaml b/Documentation/devicetree/bindings/example-schema.yaml
index 4ddcf709cc3cf76e..62811a1b5058dfd3 100644
--- a/Documentation/devicetree/bindings/example-schema.yaml
+++ b/Documentation/devicetree/bindings/example-schema.yaml
@@ -7,9 +7,9 @@
 
 # $id is a unique identifier based on the filename. There may or may not be a
 # file present at the URL.
-$id: "http://devicetree.org/schemas/example-schema.yaml#"
+$id: http://devicetree.org/schemas/example-schema.yaml#
 # $schema is the meta-schema this schema should be validated with.
-$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+$schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: An example schema annotated with jsonschema details
 
-- 
2.17.1

