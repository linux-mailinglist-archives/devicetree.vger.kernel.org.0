Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB8B6C6995
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 14:34:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231516AbjCWNea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 09:34:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231742AbjCWNe2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 09:34:28 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BA3B28E70
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 06:34:27 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id x24-20020a4aca98000000b0053a9bbbe449so2453750ooq.9
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 06:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679578466; x=1682170466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8RyZAJc5BMnE79hcpQtiEO+k/dInqdtkEaO5MHpP+H0=;
        b=dUCL+V+ZiSlLVYfSuXmC6MMvbnyX+TRtH9Q/gIjCkqFJZiFp3roRn5lgHXawza4+bQ
         9cw/Lk2LoOeHGzHlXSNiCnxkbmscC6N5trizUQSSGu0dcS1YNKl7m21ygoGSiUTn4/+f
         65/N8SO+WeRQq9i5v3yJ0RD4cC2np7jT32UzXxg1mUqmWZD4/LCq3EFz3MIjYz1n5wBF
         z7DiI4+1Whavyn0txq7pALMa1ShxSovXScBXROsZus6YLRRuD/yxu4MMkKvzEv4tZ7OD
         nUiG4if+GnHxxTTCtNDeZXlVn8E0p9odO12h5bvV1M7FAcTlci1sQJF8jakBB44w9krR
         2hlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679578466; x=1682170466;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8RyZAJc5BMnE79hcpQtiEO+k/dInqdtkEaO5MHpP+H0=;
        b=Qzpy60hkYU8aIgIsN2UfnlHmakbtJvAlH2be3pqlEOURIzipk5rsVB4sfFMbcWCyx2
         kw89zOKVslze+3pkufPQ1tv46sEJLUbcT56jSlax02uG8gszD6qrS4icEEjIebuv9+dl
         QpYV+HFyM3WK22S4gnzZywRwI7nnwxdC+AQbMSkDjavNumJbucV4SRSuIQxTQMCtpABc
         chw5Nxo0/kWugFodTYxyp8fIM9emg5+d7QVQMLzebzC0AGRBKFf2m3ECXw/8/aqmqn5d
         mjr18r9aNgsFVpepdWJb4RdVuawAb7Tq/cxEGPhL4erewK8kC79dZF3DIk5Tu4pxMaG5
         zAzA==
X-Gm-Message-State: AO0yUKXL4nvWgTRKXoYkdvr8VbxqP4zdiOrBtTOUdJarrVKAQ06fnZsx
        FNMsdHahBLFJGHNazwwRf8Y=
X-Google-Smtp-Source: AK7set9XiXDyob2o0Lq+VDDpUahZHU/0xXfrvHyVtwCY9cBex9oyETNCBznEOOROiNZT8UdpDypWUw==
X-Received: by 2002:a4a:4348:0:b0:525:bdbb:2f94 with SMTP id l8-20020a4a4348000000b00525bdbb2f94mr4688172ooj.1.1679578465053;
        Thu, 23 Mar 2023 06:34:25 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:4c56:116d:eccf:8809])
        by smtp.gmail.com with ESMTPSA id bl31-20020a056808309f00b00384a45d3106sm6958857oib.58.2023.03.23.06.34.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 06:34:24 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     krzysztof.kozlowski+dt@linaro.org, marcofrk@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: display: seiko,43wvf1g: Change the maintainer's email
Date:   Thu, 23 Mar 2023 10:34:07 -0300
Message-Id: <20230323133407.3378606-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Marco's NXP email is no longer valid.

Change it to his Gmail account.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Marco,

If you are no longer interested in being listed as the maintainer contact
for the seiko,43wvf1g.yaml, please let me know.

 .../devicetree/bindings/display/panel/seiko,43wvf1g.yaml        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml b/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
index a5426586b473..7977e07e2f48 100644
--- a/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
+++ b/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Seiko Instruments Inc. 4.3" WVGA (800 x RGB x 480) TFT with Touch-Panel
 
 maintainers:
-  - Marco Franchi <marco.franchi@nxp.com>
+  - Marco Franchi <marcofrk@gmail.com>
 
 allOf:
   - $ref: panel-common.yaml#
-- 
2.34.1

