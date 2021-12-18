Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C648479B6D
	for <lists+devicetree@lfdr.de>; Sat, 18 Dec 2021 15:37:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230052AbhLROhG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Dec 2021 09:37:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbhLROhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Dec 2021 09:37:05 -0500
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [IPv6:2001:67c:2050::465:101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1AB6C061574
        for <devicetree@vger.kernel.org>; Sat, 18 Dec 2021 06:37:04 -0800 (PST)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [IPv6:2001:67c:2050:105:465:1:1:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4JGT2Q6hB0zQkBp;
        Sat, 18 Dec 2021 15:37:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1639838221;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=0sXFk4A29aee5T5cwUNQcaVfx8IXgBcOndunD/GQABw=;
        b=RgwsZQMU5t6UEwe/6+9AblpO0KJsdJ1a28TWmaducNA2Z9d3gkDAytIRQq675cjNG+V7b6
        TEL61c27eqoOAabnHCZJmt+hBOsnm/uKI4ELdTVo0ss5QuIeh3ENGREAT9z+2eGZPcKNgR
        aciwMPZZaWz1zFwJ8LfX6SZoReVG+guNWorw3sUcDz5vF7r+ASwfmBrI+Rk+Ld2HQYLl4q
        0TSwm2WFySHxCc3hzbDwZ13Rsr11cSY3ve5QBlQ8huY03zgdpMdlX/O3qdv6xjr8bmetLG
        yc7X+e99bo0QCvCebNaElqew6XDvUc1/823cjHNpt38PRdNhKP0GdAkzfOPL9w==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/1] dt-bindings: display: meson-vpu: Add missing amlogic,canvas property
Date:   Sat, 18 Dec 2021 15:36:41 +0100
Message-Id: <20211218143641.19372-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This property was already mentioned in the old textual bindings
amlogic,meson-vpu.txt, but got dropped during conversion.
Adding it back similar to amlogic,gx-vdec.yaml.

Fixes: 6b9ebf1e0e67 ("dt-bindings: display: amlogic, meson-vpu: convert to
 yaml")
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 .../devicetree/bindings/display/amlogic,meson-vpu.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
index 851cb0781217..65bf6d7ec707 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
@@ -78,6 +78,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  amlogic,canvas:
+    description: should point to a canvas provider node
+    $ref: /schemas/types.yaml#/definitions/phandle
+
   power-domains:
     maxItems: 1
     description: phandle to the associated power domain
-- 
2.34.1

