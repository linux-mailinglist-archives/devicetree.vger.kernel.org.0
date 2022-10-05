Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE7885F5D38
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 01:29:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiJEX3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Oct 2022 19:29:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60280 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbiJEX3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Oct 2022 19:29:44 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CEA5BC0F
        for <devicetree@vger.kernel.org>; Wed,  5 Oct 2022 16:29:43 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id q9so309699pgq.8
        for <devicetree@vger.kernel.org>; Wed, 05 Oct 2022 16:29:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ls8e4J359ERSH/cQAMGc5sxHoNGcYdjafEog2+NCpPc=;
        b=VwN9fDg7dVnGRcImTO+ydpX62JZOoBCe4n2F6EuhQrG52k7mv6BLJ8WDVWAApJ6ETT
         utF2uSXvOdrNhg8TQwG3o7vbz3i8+MYyA865JdCvfFZg8O3KcuivBD9wPR5o0EW0OQdI
         4e7Ba+W68hAayIsYYyKSMWhFAx3zpa43IBoNzbYgdkkjSH4HWkl7palu1mysNkeU2pU6
         aiyWmXOopwLfkNaEuEo9iIxwaF/u+Wm6vkZbZZLbFxQrD3f6yFZofH+mk+trMeAOJd9s
         rlMs1yke15POWpPvDKuLqrFQ++LV9aI3WKzuXg7C1oVKk7clzFgiSquLMqtxAgm9EZZb
         0CqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ls8e4J359ERSH/cQAMGc5sxHoNGcYdjafEog2+NCpPc=;
        b=3lp9leRVUmjTd/CH3NWC8lfN0Z/QVLavmuc9i7M9DhIZskxsAABVeO0NyTGT0MMmhn
         qCLx+nDha5gqZrMxAtTtVIcfLuTaeoFV0qE/0fLNLTF1uxV+kwXAjWoSHZE+G8cu44LL
         Ba2C20u7DLGPpx73BEvy9++8ZWwwnsqSVdWxn3Fxt4CMTMEnxKXw/mOnzZVDLmx+Wabw
         DDx41bBBj295KxSdChOQwsSw5+erU5Pqflt6bC+ZVOnB7WHs/2phzwFjBCJgpE28z9TJ
         uO0isVLpS6yQUZ3d/wPnDvZ3PQknB9WmIUd14gblySgvkxWy79utArVRx0O7mfCPOv1m
         ZIYg==
X-Gm-Message-State: ACrzQf3xNVW85KwyG1A+HbPuTq+pGoYmLYGGeOetB0XDAfny2pvH7vtZ
        SfNT5KagHURc2HdfbdM5YHERcAuH8cDDsXoX
X-Google-Smtp-Source: AMsMyM4+/Ar82buuqj8uy6B22mWLt+57qbf0OuBN5NWrAGDLBgGOwOVcke4HRHy2SehkUrLCVM07ew==
X-Received: by 2002:a65:464a:0:b0:434:883:ea21 with SMTP id k10-20020a65464a000000b004340883ea21mr1993668pgr.152.1665012582787;
        Wed, 05 Oct 2022 16:29:42 -0700 (PDT)
Received: from desktop.hsd1.or.comcast.net ([2601:1c0:4c81:c480:feaa:14ff:fe3a:b225])
        by smtp.gmail.com with ESMTPSA id d7-20020a170902654700b0016c50179b1esm10882284pln.152.2022.10.05.16.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Oct 2022 16:29:42 -0700 (PDT)
From:   Tadeusz Struk <tadeusz.struk@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>,
        Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, devicetree-compiler@vger.kernel.org,
        Tadeusz Struk <tadeusz.struk@linaro.org>
Subject: [PATCH v3 1/2] libfdt: prevent integer overflow in fdt_next_tag
Date:   Wed,  5 Oct 2022 16:29:30 -0700
Message-Id: <20221005232931.3016047-1-tadeusz.struk@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
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
---
v2:
* Use len local variable to avoid multiple calls to fdt32_to_cpu(*lenp)
* Add can_assume(VALID_DTB) to the new checks
v3:
* Use unsigned integer for prop len and offset validation
---
 libfdt/fdt.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/libfdt/fdt.c b/libfdt/fdt.c
index 90a39e8..20c6415 100644
--- a/libfdt/fdt.c
+++ b/libfdt/fdt.c
@@ -162,7 +162,7 @@ const void *fdt_offset_ptr(const void *fdt, int offset, unsigned int len)
 uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 {
 	const fdt32_t *tagp, *lenp;
-	uint32_t tag;
+	uint32_t tag, len, sum;
 	int offset = startoffset;
 	const char *p;
 
@@ -188,12 +188,19 @@ uint32_t fdt_next_tag(const void *fdt, int startoffset, int *nextoffset)
 		lenp = fdt_offset_ptr(fdt, offset, sizeof(*lenp));
 		if (!can_assume(VALID_DTB) && !lenp)
 			return FDT_END; /* premature end */
+
+		len = fdt32_to_cpu(*lenp);
+		sum = len + offset;
+		if (!can_assume(VALID_DTB) &&
+		    (INT_MAX <= sum || sum < (uint32_t) offset))
+			return FDT_END; /* premature end */
+
 		/* skip-name offset, length and value */
-		offset += sizeof(struct fdt_property) - FDT_TAGSIZE
-			+ fdt32_to_cpu(*lenp);
+		offset += sizeof(struct fdt_property) - FDT_TAGSIZE + len;
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
