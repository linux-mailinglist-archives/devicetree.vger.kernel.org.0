Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 686D525C475
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 17:11:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728988AbgICPLE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Sep 2020 11:11:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728989AbgICN5y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Sep 2020 09:57:54 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0F301C0619E9
        for <devicetree@vger.kernel.org>; Thu,  3 Sep 2020 06:31:40 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id m6so3292700wrn.0
        for <devicetree@vger.kernel.org>; Thu, 03 Sep 2020 06:31:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4v7riCkWqOW12WqwNbdYgi3MhtDbA8fxMcLkKxaVn1Q=;
        b=FxSMag+QeOzVZzZ+W/d4wUZ228qXnTc22tAxz97IrORD8jZ1HYcP+sq2f2Lx6LfZL3
         hCQmI3l6sISeNn78F6Z3VYf7cXFECd9N8RKUZSKARukgkj2KPTDjIQ10GSUQZ2e4kU1i
         5lq3epDjkN01sN0gOs9C3LbtQ6sDJ/49NDuxEpQXTerjREMHIdAX7obuKgHhjQb7KXWQ
         Z2+WlBaT30YpbYgKs+NkWSUG4DKGwNe0EF60dRWyW7HFlwDhxELhqAmCvLa6/kBrW/87
         TrIVqzw/5wBYmDyhC465Zn9R9K5WBAHLQZxAy/QZRgflKb/yJcaMeT2obJzIRa5fJ54F
         x3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4v7riCkWqOW12WqwNbdYgi3MhtDbA8fxMcLkKxaVn1Q=;
        b=GNGD/fXdVa1nFlUsjcHap3PsnSeE0IE2LrpRrN/gb1//TnKFTZROqVd3waul74d4n0
         BVspCGQxAqZPDPP2VeOb6p7Ar9ZNPY+EQPQ0u6CZwhRQDZ6UCVwEsDITVFFJo7csY1kJ
         cbKKM08IPm4uMZuyCHCShNPEnq85Aw86E9jz53MdzvfN4gFoBHpyawUs8rTl/1lpfJRn
         cBae43ZfZiJcbJUYdSOsrSbNuom3kbP20W9RW8fzlahTVFHSVpg7uaWIL/yhWQhf/K91
         CqpsgKfQuPDmGI+4Nx8RZ1GI8+t2LdbU0xfjICNxCjVquC3sC+0vfyGKScQigBt4+Syr
         IGJA==
X-Gm-Message-State: AOAM532QVTyYWPdbK2963g5MYD5HU1+0kpRfqk6K/kBcndaEOvv2KrcD
        Qx+roHYTe6vkIgBBJTJAU3Hw3w==
X-Google-Smtp-Source: ABdhPJy2mm+MBBMVkV5XJikd7HS9L+iWlSQLCxuxQL9VOQRGQ/LByHjHzHNmXzyk4i662snmvdW6GA==
X-Received: by 2002:a5d:514e:: with SMTP id u14mr2485171wrt.211.1599139899481;
        Thu, 03 Sep 2020 06:31:39 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id b2sm4310768wmh.47.2020.09.03.06.31.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Sep 2020 06:31:38 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     linux-pm@vger.kernel.org, bjorn.andersson@linaro.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        sibis@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        georgi.djakov@linaro.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/7] dt-bindings: interconnect: Document the support of optional path tag
Date:   Thu,  3 Sep 2020 16:31:29 +0300
Message-Id: <20200903133134.17201-3-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200903133134.17201-1-georgi.djakov@linaro.org>
References: <20200903133134.17201-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Let's document that we now support specifying path tag information in the
arg cells of the 'interconnects' DT property. This information would be
populated when the xlate_extended() callback is used.

Specifying the tag in DT will allow the interconnect framework to do the
aggregation based on the tag automatically. The users can still use the
icc_set_tag() API if/when needed.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 .../bindings/interconnect/interconnect.txt    | 24 ++++++++++++++++++-
 1 file changed, 23 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interconnect/interconnect.txt b/Documentation/devicetree/bindings/interconnect/interconnect.txt
index 6f5d23a605b7..138c544c8c8c 100644
--- a/Documentation/devicetree/bindings/interconnect/interconnect.txt
+++ b/Documentation/devicetree/bindings/interconnect/interconnect.txt
@@ -19,7 +19,8 @@ directly.
 Required properties:
 - compatible : contains the interconnect provider compatible string
 - #interconnect-cells : number of cells in a interconnect specifier needed to
-			encode the interconnect node id
+			encode the interconnect node id and optionally add a
+			path tag
 
 Example:
 
@@ -44,6 +45,10 @@ components it has to interact with.
 Required properties:
 interconnects : Pairs of phandles and interconnect provider specifier to denote
 	        the edge source and destination ports of the interconnect path.
+		An optional path tag value could specified as additional argument
+		to both endpoints and in such cases, this information will be passed
+		to the interconnect framework to do aggregation based on the attached
+		tag.
 
 Optional properties:
 interconnect-names : List of interconnect path name strings sorted in the same
@@ -62,3 +67,20 @@ Example:
 		interconnects = <&pnoc MASTER_SDCC_1 &bimc SLAVE_EBI_CH0>;
 		interconnect-names = "sdhc-mem";
 	};
+
+Example with path tags:
+
+	gnoc: interconnect@17900000 {
+		...
+		interconnect-cells = <2>;
+	};
+
+	mnoc: interconnect@1380000 {
+		...
+		interconnect-cells = <2>;
+	};
+
+	cpu@0 {
+		...
+		interconnects = <&gnoc MASTER_APPSS_PROC 3 &mnoc SLAVE_EBI1 3>;
+	}
