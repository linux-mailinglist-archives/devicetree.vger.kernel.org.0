Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77C765B85E8
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 12:05:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbiINKFW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 06:05:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbiINKFU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 06:05:20 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B594512D12
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 03:05:19 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id f24so14633456plr.1
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 03:05:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=kvBor51nq7/OAaugkldy52+gu/Qv9f4D71f4MktGEuI=;
        b=mW4vHDXJnhhg0lh51IV33sgsem13WyPwRZRh+H9/8CcYv7DrtSvbKrZFDUVLYv3YV+
         3twmx6YXvR66aCB2vZd2/aybUQjyccJefs+k7FMjCE7z81niewAx2fyuHCBqVLPLo6Iq
         Bk8buO1wEU4QjUJ42OqpGP0TAhzjiqiSwU1f0j/o+PR4SAfrD5oilHcIhukr10VPEae9
         at9erQylTZY3t3DTT4TAHv1mS7o7tIvr4am+l0WgoyrkQZs2ls4AmaUqMPNfZvQj61in
         ELhEYg1pgXAcyqqdNR3Y7hqj5/uPym+i/XfCSChWRVjfimqqdxBlRYxPQyRK4yNAs4z2
         kgAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=kvBor51nq7/OAaugkldy52+gu/Qv9f4D71f4MktGEuI=;
        b=YbqHV8/j4VxwqjSHlr1ft/ENxR3pS4/XL1dtMY+dcCuIQ7qBtNW4oGj6nD245nRWeB
         bTnAM5GgnAxtDlhvN34oMhIRnWZBiqFnYHSkURwQeQvPquhPss0GVP8pJyvaT4yRcgm7
         lq6Lw9t86ak6q/OjtQauAbmklt/GukugoVTlfnqfaWr/iMoL6m9FDemdPEhshayegrxY
         2P3GzbwRFejN/Fqw/99Y6QRu6rDM2gXQH6AUwXD7lCDOAVdtqzUsAxuHkYLRnJC1ONJR
         YWYowDbnPSiQxn31QErUaqQxxeklsAqam0hz8ggqXaREhkP4PXNJ1W+NsHOfzAhW+obz
         8GIg==
X-Gm-Message-State: ACrzQf2w1Pk3UCTJwY6aHkaGmmLchL9NB8Xcu3Gb78fY6L6Z+hR+Vaba
        b/rs0q2fEbQf/j9p2vlf3RDiMigGPVjxZiw=
X-Google-Smtp-Source: AMsMyM734XAjAmX611KdeJPOta3SG1rxpx/1WPHtSrt7NsOQwS4lu1cBUO2v7lpX8tWse0p/2QaZTQ==
X-Received: by 2002:a17:90b:2bd3:b0:203:1a03:6b1b with SMTP id ru19-20020a17090b2bd300b002031a036b1bmr2121800pjb.58.1663149919255;
        Wed, 14 Sep 2022 03:05:19 -0700 (PDT)
Received: from iosdevlog.. (74.82.197.217.16clouds.com. [74.82.197.217])
        by smtp.gmail.com with ESMTPSA id z27-20020aa79e5b000000b0053e5b905843sm2323495pfq.203.2022.09.14.03.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 03:05:18 -0700 (PDT)
From:   Jia Xianhua <jiaxianhua@gmail.com>
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, Jia Xianhua <jiaxianhua@gmail.com>
Subject: [PATCH] dtc: remove duplicate judgments
Date:   Wed, 14 Sep 2022 18:04:43 +0800
Message-Id: <20220914100443.24104-1-jiaxianhua@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There is no need to check the VALID_DTB repeatedly, and can be combined
into one if statement.

Signed-off-by: Jia Xianhua <jiaxianhua@gmail.com>
---
 scripts/dtc/libfdt/fdt.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/scripts/dtc/libfdt/fdt.c b/scripts/dtc/libfdt/fdt.c
index 9fe7cf4b7..90a39e8fb 100644
--- a/scripts/dtc/libfdt/fdt.c
+++ b/scripts/dtc/libfdt/fdt.c
@@ -106,7 +106,6 @@ int fdt_check_header(const void *fdt)
 	}
 	hdrsize = fdt_header_size(fdt);
 	if (!can_assume(VALID_DTB)) {
-
 		if ((fdt_totalsize(fdt) < hdrsize)
 		    || (fdt_totalsize(fdt) > INT_MAX))
 			return -FDT_ERR_TRUNCATED;
@@ -115,9 +114,7 @@ int fdt_check_header(const void *fdt)
 		if (!check_off_(hdrsize, fdt_totalsize(fdt),
 				fdt_off_mem_rsvmap(fdt)))
 			return -FDT_ERR_TRUNCATED;
-	}
 
-	if (!can_assume(VALID_DTB)) {
 		/* Bounds check structure block */
 		if (!can_assume(LATEST) && fdt_version(fdt) < 17) {
 			if (!check_off_(hdrsize, fdt_totalsize(fdt),
-- 
2.34.1

