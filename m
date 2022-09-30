Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A28D75F0EB0
	for <lists+devicetree@lfdr.de>; Fri, 30 Sep 2022 17:20:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229730AbiI3PUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Sep 2022 11:20:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbiI3PUe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Sep 2022 11:20:34 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 373F29F0D9
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 08:20:33 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id j6-20020a17090a31c600b0020a07b184deso1703267pjf.3
        for <devicetree@vger.kernel.org>; Fri, 30 Sep 2022 08:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=sgdOKqL14yd+eVQhXQ4lHU2sZ9RqXiCCsu5egzJjzvU=;
        b=b6HS3xgQmcuLy13TnsVpXrnxz1IqYxVpbowiK+zrSAZ5mihsN4aY45nl5+bq9FKp46
         YzDmaIpotpnBbd/w9LR3Rw1NNxMMZu7KjVuhLyxGRbU0dIgmJxgqtldH1pLEJdMsg2UN
         Aj3QYh0/blr5x9stIq7eUGKe5o5mTmiwyNWm1GTrUpR5fODwZhQh5pLZDUzCKxRoVR01
         naAftOrhmiHrCv85VaUE6Ne/hxKe98PzqkzgAvd5YKVF9HHI4acfPe/HD7nkuD+sLySE
         Pkl4rd3HSOddcx+XjxPNdgXDnImqdtKrRtFkDOoxwfDONheD0cNatyD0rizi0GtdTlqL
         TqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=sgdOKqL14yd+eVQhXQ4lHU2sZ9RqXiCCsu5egzJjzvU=;
        b=WiY7vbUBuTGKTdIGbNtJcGR2ymmW9ddW97UyVBz5HICdYZzxaVWZu95SjKjU8RWFq4
         L+ZZIIFuaS9SPTeqEqQN8mUvJQbrpmx0nwOsrbRiUOjAJ0oeVRFY6TOqSrfuxDp9XCWT
         5G/lw6Y5+6FImNUgcEAedxKOkntz9U6SP9UDHX8IeogigWYOO4IW6aJmtmBh7Lr+fXYc
         dMgJWYn6BeqCFr3mbAbf8jtSj/QS3/dkhLRr3Jw2NzV8VS/mBKTY/L2vU/xDfUOYk+6y
         i9Yy1diJRpnyC9AIatKR5F1Qtn1S6lOSh01M45E6CYt4Mo54G4BSHmSpEKP2LoqeOPRg
         l+KA==
X-Gm-Message-State: ACrzQf2RQ5RMZhlv3pU/ayCJ6lM4qlcZysY3RCk8gC21JNJbNj+YG8WD
        RCm8znufGQFIPXzFRhCzG34y/w==
X-Google-Smtp-Source: AMsMyM5cpZe/bWD30sfnh03xOGnFSzwvy9cROX+SsnNmIzSncaz1szx1BcFl2E7q+BHHPonkkCVXaA==
X-Received: by 2002:a17:90a:cf92:b0:202:ae52:43a4 with SMTP id i18-20020a17090acf9200b00202ae5243a4mr10067304pju.141.1664551232728;
        Fri, 30 Sep 2022 08:20:32 -0700 (PDT)
Received: from desktop.hsd1.or.comcast.net ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id r9-20020a655089000000b0043a09d5c32bsm1835090pgp.74.2022.09.30.08.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 08:20:31 -0700 (PDT)
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>,
        Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
        Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: [PATCH v2 1/2] libfdt: prevent integer overflow in fdt_next_tag
Date:   Fri, 30 Sep 2022 08:20:03 -0700
Message-Id: <20220930152004.674591-1-tadeusz.struk@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since fdt_next_tag() in a public API function all input parameters,
including the fdt blob should not be trusted. It is possible to forge
a blob with invalid property length that will cause integer overflow
during offset calculation. To prevent that, validate the property length
read from the blob before doing calculations.

Signed-off-by: Tadeusz Struk <tadeusz.struk@linaro.org>
--
v2:
* Use len local variable to avoid multiple calls to fdt32_to_cpu(*lenp)
* Add can_assume(VALID_DTB) to the new checks
---
 libfdt/fdt.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/libfdt/fdt.c b/libfdt/fdt.c
index 90a39e8..b7c202a 100644
--- a/libfdt/fdt.c
+++ b/libfdt/fdt.c
@@ -162,7 +162,7 @@ const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int len)
 uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 {
 	const fdt32_t *tagp, *lenp;
-	uint32_t tag;
+	uint32_t tag, len;
 	int offset = startoffset;
 	const char *p;
 
@@ -188,12 +188,20 @@ uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 		lenp = fdt_offset_ptr(fdt, offset, sizeof(*lenp));
 		if (!can_assume(VALID_DTB) && !lenp)
 			return FDT_END; /* premature end */
+
+		len = fdt32_to_cpu(*lenp);
+		if (!can_assume(VALID_DTB) && INT_MAX <= len)
+			return FDT_END; /* premature end */
+
 		/* skip-name offset, length and value */
-		offset += sizeof(struct fdt_property) - FDT_TAGSIZE
-			+ fdt32_to_cpu(*lenp);
+		offset += sizeof(struct fdt_property) - FDT_TAGSIZE + len;
+
+		if (!can_assume(VALID_DTB) && offset < 0)
+			return FDT_END; /* premature end */
+
 		if (!can_assume(LATEST) &&
-		    fdt_version(fdt) < 0x10 && fdt32_to_cpu(*lenp) >= 8 &&
-		    ((offset - fdt32_to_cpu(*lenp)) % 8) != 0)
+		    fdt_version(fdt) < 0x10 && len >= 8 &&
+		    ((offset - len) % 8) != 0)
 			offset += 4;
 		break;
 
-- 
2.37.3

