Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3045688EBC
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2019 01:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726223AbfHJXK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Aug 2019 19:10:58 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39434 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726201AbfHJXK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Aug 2019 19:10:58 -0400
Received: from pendragon.bb.dnainternet.fi (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 37A6772E;
        Sun, 11 Aug 2019 01:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1565478656;
        bh=Ug3yWFOOgQzT+CS1p770Upkgsu/Mxl1CwnEtn6i4NvQ=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=tf1DOk4+0Lh09QIDfvdQGBJSjKjOadAFUNtD+8rqBCgf0cvPuhkivwYIGdmJCUnw8
         DBGNgGSjWOxAPcat+C0AcNW+Eo5uDEc+6ZtA/MuhgF0H/ZBgp6bgTZSBiXPr8da8Y1
         mAz9nWiKa4PgEiYzw8eifvJ9eDoI/yuxoUNEh5K4=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 2/9] dt-bindings: Add legacy 'toppoly' vendor prefix
Date:   Sun, 11 Aug 2019 02:10:41 +0300
Message-Id: <20190810231048.1921-3-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
References: <20190810231048.1921-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The 'toppoly' vendor prefix is in use and refers to TPO, whose DT vendor
prefix is already defined as 'tpo'. Add 'toppoly' as an alternative and
document it as legacy.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Mark the prefix as deprecated
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 5efddbff2430..29dcc6f8a64a 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -935,6 +935,9 @@ patternProperties:
     description: Tecon Microprocessor Technologies, LLC.
   "^topeet,.*":
     description: Topeet
+  "^toppoly,.*":
+    description: TPO (deprecated, use tpo)
+    deprecated: true
   "^toradex,.*":
     description: Toradex AG
   "^toshiba,.*":
-- 
Regards,

Laurent Pinchart

