Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F9CF782FE0
	for <lists+devicetree@lfdr.de>; Mon, 21 Aug 2023 20:02:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236658AbjHUSCz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Aug 2023 14:02:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233032AbjHUSCy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Aug 2023 14:02:54 -0400
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AE2F10D
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 11:02:50 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-79231457b7fso47794139f.3
        for <devicetree@vger.kernel.org>; Mon, 21 Aug 2023 11:02:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692640969; x=1693245769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a2pjLxbest+0WZUqtLo2mpBJexTPwyLe+Gjd2ukfO+w=;
        b=TyGltsAXoWfq7y+M2YtWVgwqO1FcVOIWL4MTGvvI7NJ0jz/G/ZoP2+Jm23xuCzx8ca
         kOc2SbKaOToTnL6mo+Hj5xWzzKzCc+u7bs5u09Q5J8eoYceECr6FBJpyFuzH7VXjehgi
         9A2FYynMx6obbNk2v6hLQktwq0Y5xgUBTOV4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692640969; x=1693245769;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a2pjLxbest+0WZUqtLo2mpBJexTPwyLe+Gjd2ukfO+w=;
        b=COpCbMEnCaf5YTlb14lAK87DbJd/b3HH1a49+D560E/RfOSmLsWUPG5r09dJrprhhp
         mSp8KtmcsKwr2D4MLEBWQ0ETTb8vPzkO5fl3rm9sqbQ0wSbyaftkvIVH00/HwG6xDzTd
         NLkf2Yg3DzzuWFe++LAkgY6rtg1djMNwxqWVkZfc5UeG3M2vvmYIBgolMfsiflA+yaEI
         pJop9nM2Igo/9PIUNElEc8/+SvJKrEmyRmwEz+JzIbjYHxaqWOiu2ZlPFlBReZux9NGm
         SuM1uOBm9/99keNEIPA2puE8TorMZsbUb7rfm05XRBIgCAQsNDcF0NVnQvAwCeTWMV+0
         XrQw==
X-Gm-Message-State: AOJu0Yx9eTiTMUYGheKnK9yQSTKqJh9xe+8+6ryPePEGfC0KNYrRw9Vq
        DSVrRoHsCILVEuwrQ6A4yfNMxIUMzP6voYHesaI=
X-Google-Smtp-Source: AGHT+IFfd4gx3DaCbgFL3dChUreiPZL/eKJzxHsBjdj44KSS/0fqF69Jg0p+EB/vCqKXAM0Wb6vSLw==
X-Received: by 2002:a6b:610a:0:b0:783:6eef:1496 with SMTP id v10-20020a6b610a000000b007836eef1496mr10989656iob.19.1692640969742;
        Mon, 21 Aug 2023 11:02:49 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:9102:8976:7620:5093])
        by smtp.gmail.com with ESMTPSA id g5-20020a5ec745000000b007791e286fdbsm2583924iop.21.2023.08.21.11.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Aug 2023 11:02:49 -0700 (PDT)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Rob Herring <robh@kernel.org>,
        Alper Nebi Yasak <alpernebiyasak@gmail.com>,
        Neha Malcom Francis <n-francis@ti.com>,
        Stefan Herbrechtsmeier <stefan.herbrechtsmeier@weidmueller.com>,
        Philippe Reynes <philippe.reynes@softathome.com>,
        Peng Fan <peng.fan@nxp.com>, Simon Glass <sjg@chromium.org>
Subject: [PATCH v3 1/3] Add validation instructions
Date:   Mon, 21 Aug 2023 12:01:15 -0600
Message-ID: <20230821180220.2724080-1-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add simple instructions for people wanting to validate their schema.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

(no changes since v1)

 README.md | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/README.md b/README.md
index 9d2f6e8..d8767fa 100644
--- a/README.md
+++ b/README.md
@@ -118,6 +118,25 @@ Example:
 dt-check-compatible -s processed-schema.json vendor,a-compatible
 ```
 
+## Testing your changes
+
+Once you add or change schema, you should test it locally. This assumes that
+your system is set up so that 'python' runs Python 3.
+
+First make sure you don't have any existing dt-schema in your system as this
+may interfere:
+
+```
+sudo apt-get remove dt-schema
+pip remove dt-schema
+```
+
+Then, to validate, use:
+
+```
+PYTHONPATH=. test/test-dt-validate.py
+```
+
 ## Installing
 The project and its dependencies can be installed with pip:
 
-- 
2.42.0.rc1.204.g551eb34607-goog

