Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17A8D66A4A7
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 21:57:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbjAMU53 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 15:57:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbjAMU4o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 15:56:44 -0500
Received: from mail-il1-x135.google.com (mail-il1-x135.google.com [IPv6:2607:f8b0:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B385A90274
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:55:22 -0800 (PST)
Received: by mail-il1-x135.google.com with SMTP id d10so11325751ilc.12
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 12:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=48Y3wRbsLb35oFiAHQLTCav7E43jVNQuLZOIJVLqu8A=;
        b=FH6sTSXaWj2Rt8ieGY1QEdTQdWtpXPQ7SDiJ1xfYpLMS+3GIhJZKUqecv9UEXvayUF
         JrFVZd5NQK3qCY548bsoqsSXDK5pisxYCJO3brrfE+Fsh4ZhKRmRjP3Sh8azA0kVqaMn
         tw1VZMgqzAcq1fPDNOlwRpm5b6ur0H11HIsEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=48Y3wRbsLb35oFiAHQLTCav7E43jVNQuLZOIJVLqu8A=;
        b=1W+GIw4or1yowbDLWW78ZIrzRnOkRSmmc5MzM5VIz3QSy3WUgEkgKB1tbWIQkzGLxB
         WENhWaKltftL+qRiSQSwdCKsR0PGaM38+9g3VHuAtLgYWRcglI6TLRllBxmwSZgHeBIf
         Lm41h3vMIuJ5YKlFqgb35BaNMIzNW1FUjKDo5XJlM288etJqFP6Li3ZqiJsj7ud/Re2Y
         PkSSC1NrlVLq3mH0CB5w1ercat11IexcAos/l1tJlWpJrNLNoidrpREOASCe1Ar0/TgC
         wDh6M1rvuhYtPEW2EeB4TQKb/bd9LZ73E6xmYlZIr+XRtGBMLwb0QOGTqcwGKhMpaogr
         Q4Hw==
X-Gm-Message-State: AFqh2krfPjDd5D9AjCOo4rh19vVRBzgsLCpkOBH3h3N5OcC/2hoAta+4
        sbZTCa0t/yeZJ4fyyPNBqagMkpOQV0YB7Fbx
X-Google-Smtp-Source: AMrXdXuKwCig9S9x9tYrJQs7E4qsBTvcI3Ppgqle5m9VT06VhDOG5jeoK3grXViqJa54WxQ2WTykuw==
X-Received: by 2002:a92:d950:0:b0:30e:d631:b477 with SMTP id l16-20020a92d950000000b0030ed631b477mr4167716ilq.18.1673643322017;
        Fri, 13 Jan 2023 12:55:22 -0800 (PST)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:2aad:ca3:e320:9802])
        by smtp.gmail.com with ESMTPSA id b10-20020a92670a000000b00304ae88ebebsm2931805ilc.88.2023.01.13.12.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 12:55:21 -0800 (PST)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>, Simon Glass <sjg@chromium.org>
Subject: [PATCH v6 1/2] Correct typo in dt-doc-validate command
Date:   Fri, 13 Jan 2023 13:55:17 -0700
Message-Id: <20230113205518.206306-1-sjg@chromium.org>
X-Mailer: git-send-email 2.39.0.314.g84b9a713c41-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The example here does not work. Fix it.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v1)

 README.md | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.md b/README.md
index bcc4b54..9d2f6e8 100644
--- a/README.md
+++ b/README.md
@@ -82,7 +82,7 @@ them against the DT meta-schema.
 
 Example:
 ```
-dt-doc-validate -u test/schema test/schemas/good-example.yaml
+dt-doc-validate -u test/schemas test/schemas/good-example.yaml
 ```
 
 `tools/dt-mk-schema`
-- 
2.39.0.314.g84b9a713c41-goog

