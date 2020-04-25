Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 253C01B85CF
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2020 12:53:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726143AbgDYKxS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Apr 2020 06:53:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35672 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726050AbgDYKxR (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 25 Apr 2020 06:53:17 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DD94C09B04A
        for <devicetree@vger.kernel.org>; Sat, 25 Apr 2020 03:53:17 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id f11so7977397ljp.1
        for <devicetree@vger.kernel.org>; Sat, 25 Apr 2020 03:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KbjRys0Cn1foWx8OxqSJtTinSE05XE6RnXyb9sHQt50=;
        b=Oc9LY2IM7maEXxFcbA6i8jXb3eiRlQO/RQ9fA4biWEzZpdrNKr3QVGkD4nuG3Mh3L8
         Pj02fIyqX8S7nGjgCzmP6YnMxsN/UlanqzXOZDUUgxb/AmfsYVqydFSZL4LG9PrnM+se
         Ct8l491n/d5fPJ9LOf1Pa8FzjtzMUuA+DKjczzjk/7FxwtHETRzCo4jWgjksNQObidPB
         YmdOgZH2gQD6fWOK5GfTADN+6zpWsErZbv938pjo6oubzimfkeRsJUKMyhEDZVjzAlWU
         dmJJSjgSC/yFeVJT5W8bMyNS42hzMlnCcYoQe3sky56P9Xt/hXmF5OVQdCtLoiaaq2Cm
         2Q1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=KbjRys0Cn1foWx8OxqSJtTinSE05XE6RnXyb9sHQt50=;
        b=CVpeJ58LlO1X+vdzAssZQyIoTCE64axuOK/WIr1/mWN6JDIrvg7PCaCohwf/Ci0tET
         pAs3DduXqtk0AbSg8f+SUCWZHVn2QfJ4uQfvVqTOX2TaExGbfdiaf7sEQGJJ7zI6Sr9H
         wOPqtgimKV8Dt0BwkGRKlojq7Enu0uqPOEnz4CUjyuxSkEcS8NilVzULlBoxO9VU+CAH
         yDVBh6r06DkKrkvpKevCqluTnyTz8V/rRKuZ2CKYBZw6JrWlf83TU8B1t1YGk/crl9s8
         SS3VK+GHl0NqSvrgA/xuWTCHIwVkFxMQfaxl/JaoJ1hsGWwbXzacmjPaZFSRvN+DdQz9
         AnAQ==
X-Gm-Message-State: AGi0Pub+FQeRVmWnofSNMBqDzNtxuUTGHSzQYm5yde6VlcecAxDHFIFY
        zEBNtm1LAKuCUdh5nxvscQ0=
X-Google-Smtp-Source: APiQypKZm1wvqmg/vF+keL9v5HzSTPhey6J1q6e5TDTYeQpO7gZTyL4Wn8N1F/Monv1nTkICQlqXkg==
X-Received: by 2002:a2e:50b:: with SMTP id 11mr8811542ljf.233.1587811995845;
        Sat, 25 Apr 2020 03:53:15 -0700 (PDT)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
        by smtp.gmail.com with ESMTPSA id c4sm6501805lfg.82.2020.04.25.03.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2020 03:53:15 -0700 (PDT)
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
Cc:     Sam Ravnborg <sam@ravnborg.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v1 2/2] tools/dt-extract-example: beautify output
Date:   Sat, 25 Apr 2020 12:52:55 +0200
Message-Id: <20200425105255.1064-3-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425105255.1064-1-sam@ravnborg.org>
References: <20200425105255.1064-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix so first line in the output has same indent as the
rest of the lines in the example.
This makes the examples a little easier to read.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 tools/dt-extract-example | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/tools/dt-extract-example b/tools/dt-extract-example
index 0e933e4..f1a222f 100755
--- a/tools/dt-extract-example
+++ b/tools/dt-extract-example
@@ -15,8 +15,7 @@ example_template = """
         #address-cells = <1>;
         #size-cells = <1>;
 
-{example}
-
+        {example}
     }};
 }};
 """
-- 
2.20.1

