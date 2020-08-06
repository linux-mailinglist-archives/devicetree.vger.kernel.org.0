Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 110DF23DFB0
	for <lists+devicetree@lfdr.de>; Thu,  6 Aug 2020 19:52:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729184AbgHFRvz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Aug 2020 13:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728008AbgHFQcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Aug 2020 12:32:05 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 773F3C002177
        for <devicetree@vger.kernel.org>; Thu,  6 Aug 2020 09:31:33 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id f1so44066537wro.2
        for <devicetree@vger.kernel.org>; Thu, 06 Aug 2020 09:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UeSaeFBmaX2UOS8vhf5MdyTixeaMCetcbpgjFTLJmfg=;
        b=c/AghX40N+5md1YLT5QwCUuxicFBpduiPvQLgeJIBCTUe/0RUdBrQNPaaahVmlPoBW
         Eb1LQr9nje/4ow0B21v8Y0G10Ef4553v81DuNXrdFAEGBMyIaXrrkkwqfdFZVovnI5kG
         SOHYw2KE0OCW+OvE6SlVyV5jjdEiUXPiOKB1fCCkuALyca1Urr66LIth/I7g7iwK5Em6
         eQDiyXY+3KIFlzHJp7yvzEj4+93pp+DXGd4i/qhRsjabpNdhkFQhL7k7ior5uQm9sFIe
         iD9uR4m9xNgEtajOZ260W45eOKiBoL/r6VBV7vLdFGc2/TwTrMy5LE+bDoonA0BdUfMf
         /PfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UeSaeFBmaX2UOS8vhf5MdyTixeaMCetcbpgjFTLJmfg=;
        b=p6EFHWqx6N8TVVmrQ6ifr9DeF2uIDJfrrFYXzwtfSPE0QmwzJcgN2cXrwIaS3RpbRs
         +wD64lNRQ2jQxKyA7FXfTto/OzU8x/chO9ONdx1gMqFnOR46Jd8Vzyawy2ysybmT2cmz
         qZc5NPVz0ZB28HOEmj84V+ciJmaGFGhk1gIk1V6r5rYh9jObifLTi29J76leUCubi8Z/
         omD4xNrQGlnuGJEAZuZfktW+ad9fdMd282i6iWv5r1H42l/dIq65oERkgzXfBMnoM54B
         3hYgxkCu7E99Id3qMHShnXjmzeyAs4ta+jSM5fYEHzzUwb8/OfwiUaCWYhUPtQ41EhAr
         QRPQ==
X-Gm-Message-State: AOAM5319EoGkTLuFUI4NMzDqX2JUL97uljbOnpeCMVQmmDciC7gdSV18
        sDLSiOLPbQTviuQ3mIosLQgOow==
X-Google-Smtp-Source: ABdhPJzF+qEtbxy0Prt75MMumjbxAWyjUEH4K5XMd0aIV/cqwRkDKfESNT3Wwyv5UWulYZyvkpM8/Q==
X-Received: by 2002:a05:6000:181:: with SMTP id p1mr8016753wrx.310.1596731492173;
        Thu, 06 Aug 2020 09:31:32 -0700 (PDT)
Received: from localhost.localdomain ([87.120.218.65])
        by smtp.googlemail.com with ESMTPSA id i66sm7468537wma.35.2020.08.06.09.31.30
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 09:31:31 -0700 (PDT)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, bjorn.andersson@linaro.org,
        sibis@codeaurora.org, mka@chromium.org, dianders@chromium.org,
        georgi.djakov@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] dt-bindings: interconnect: Document the support of optional path tag
Date:   Thu,  6 Aug 2020 19:31:21 +0300
Message-Id: <20200806163126.22667-3-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200806163126.22667-1-georgi.djakov@linaro.org>
References: <20200806163126.22667-1-georgi.djakov@linaro.org>
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
