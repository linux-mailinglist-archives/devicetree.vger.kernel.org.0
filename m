Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E521626F87
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 13:45:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233794AbiKMMpS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 07:45:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232799AbiKMMpR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 07:45:17 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3775712AA0
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 04:45:15 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id 94-20020a9d0067000000b0066c8d13a33dso5240383ota.12
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 04:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Xm+sHX73sFAT+ks236foYrX1KP0BAgnh+zrDjNCztZE=;
        b=ZgyCNR/WvfrGD/a9a2aZ38shETIDCbumWCh6r0kPob5S+z9x+XZ5QLQFf0UBrImEhP
         15gBwUjRZd3zZCfaOnQT0qIxYylDlwWUi7WB9b55lMMNHfoLLpZfAhqDi1a4AfzXJa8o
         jcMq7yEx0S+iZUHDAC/bUTg37oj/3+MjmhIlps5bloaywsRnpbuEjEjiAAMCn5G3JVms
         lZkglGithrFrSXSuiJun/wcc8m23wyIfLl8f4oi1vuRP0WcmNdfGzBLc4Apb+y9Q60NK
         1qit0+nqgV76pJS3HjuwUuho5xsmJVk/rih6yiRtbrfb621/ICqhevhIXyOqK5c27j94
         NS6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Xm+sHX73sFAT+ks236foYrX1KP0BAgnh+zrDjNCztZE=;
        b=k6BEJFIDWVfLSyER7CbSnWSwQHAr+gsM1mrfti2NWWVAW0yF8QHhSOgkLXji/O/KLb
         awrQRufS+iNhuETqryFwNhwSfHGqhyePtnqk1V20pNLPuCmfBmRS0+XGCakbWZ60KoIc
         g+0LaVD8GkOyw5z++HJHWyttrB5OlNNjxMAWc1UXPn8eU1gZhWcEFh2hI6ZsqvkBEOzb
         cA77aGtrYDzyZ1mMkIJ/Sft/BzNnU6aqnqHyi8lPimCIqKwISx6KiKO9kMqoWWnH7+Qp
         f+3wLVy0I08GLYEY090hM1cYczCBnrE2EaH6xB5TKEU6D+rxmDsbD1IlGunWnOUPFskq
         Ayug==
X-Gm-Message-State: ANoB5pm3vyIorh/4/AyuR+R8ZY9v76O1p2ZT6H3LpMuVEPHHhz1cIDrj
        YHWqILXmca0ayaA5+FIGk+M=
X-Google-Smtp-Source: AA0mqf6/GExBx9s3EAcGOSoSqRDcFNwjmWDlPfqP7qUyhp2c30cAhbDrcjwA9sOf5JfuJt2Kj4XS7g==
X-Received: by 2002:a9d:7a51:0:b0:661:c2b9:11df with SMTP id z17-20020a9d7a51000000b00661c2b911dfmr4722471otm.76.1668343514380;
        Sun, 13 Nov 2022 04:45:14 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:d950:2f03:b64d:2009])
        by smtp.gmail.com with ESMTPSA id z19-20020a0568301db300b006690f65a830sm3016481oti.14.2022.11.13.04.45.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Nov 2022 04:45:13 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add an entry for Cloos
Date:   Sun, 13 Nov 2022 09:44:57 -0300
Message-Id: <20221113124459.662004-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Carl Cloos Schweisstechnik GmbH develops, manufactures and delivers
welding industrial solutions:

https://www.cloos.de/de-en/

Add a vendor prefix entry for it.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 37dd5c54818a..8c6a5283bc46 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -264,6 +264,8 @@ patternProperties:
     description: Cirrus Logic, Inc.
   "^cisco,.*":
     description: Cisco Systems, Inc.
+  "^cloos,.*":
+    description: Carl Cloos Schweisstechnik GmbH.
   "^cloudengines,.*":
     description: Cloud Engines, Inc.
   "^cnm,.*":
-- 
2.25.1

