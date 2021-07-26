Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCEB63D5866
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 13:19:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233295AbhGZKjU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 06:39:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233283AbhGZKjT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 06:39:19 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97D9DC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 04:19:47 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d1so3881676pll.1
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 04:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vcy/qtkkiK7UjSfWP1fK7FSTP1jeUYmZqbE4rjgeDZo=;
        b=nxXu/cb7lqQ0xcne5Q9FiIRI/FlMMkHZgMvc7pXPxsxGrUsf4h387Mip2jlFjfFIvW
         xNZn9vlDYcjAPdyAXdftKFBKzCrc6PZl8Bomt9x6uCBFDCKDKxwk3TzYsX3cvh/qtXNk
         IZ5HOy3NAbaGyGLoCs8C4IvMc3N0o//ne6k9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vcy/qtkkiK7UjSfWP1fK7FSTP1jeUYmZqbE4rjgeDZo=;
        b=RkORYhmnOfYabxruksAI4RhVbkF2ZvlOqRtcL5ktO4OnzaXgzZjuVr0uRQa7yJlhhK
         MOHw5pywKM5zaNPas9MwuWN1D1+aUmYCdJbSRP2pTZf5ugBiEzZ6kaKYgquNGXwHR1Fh
         bAFcFhvSHWI0l9jvSSF/Qn46kLD+4/alhQ3ndA3t/mErKb71mD9Fq9zTQLcM5hte6KVe
         Aj3a5K8k9RUnFbookEMI5zAy6mAtzCZb+t/ajyUKYp7blrH+vXi6w0Xs0glYch4D2q8r
         bdiR3MlhO6RonFBoOutqDfd+M08ROooLCTaFNNIpiBC6IERnG/nQm7QIHFdk8krwV74G
         W29A==
X-Gm-Message-State: AOAM533IEgxphe7od5IWdJ3DoaRzIs1D7ubAKl34YhO8fjxHHIeCUMUP
        wPkUa5Jo45HzZ38g158RxD5Yaw==
X-Google-Smtp-Source: ABdhPJx8aNBhyrJBVcN6CEdp0jeeHRROLel4R3XbbG0babm5xfUipZKyTH6KacoIEaVqh5+UOe67ug==
X-Received: by 2002:a63:e841:: with SMTP id a1mr17876872pgk.197.1627298386871;
        Mon, 26 Jul 2021 04:19:46 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1b02:54ad:f521:5496])
        by smtp.gmail.com with ESMTPSA id b10sm42070578pfi.122.2021.07.26.04.19.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 04:19:46 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: pinctrl: mt8195: Use real world values for drive-strength arguments
Date:   Mon, 26 Jul 2021 19:19:41 +0800
Message-Id: <20210726111941.1447057-1-wenst@chromium.org>
X-Mailer: git-send-email 2.32.0.432.gabb21c7263-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The original binding submission for MT8195 pinctrl described the
possible drive strength values in micro-amps in its description, but
then proceeded to list register values in its device tree binding
constraints.

However, the macros used with the Mediatek pinctrl bindings directly
specify the drive strength in micro-amps, instead of hardware register
values. The current driver implementation in Linux does convert the
value from micro-amps to hardware register values. This implementation
is also used with MT7622 and MT8183, which use real world values in
their device trees.

Given the above, it was likely an oversight to use the raw register
values in the binding. Correct the values in the binding. Also drop
the description since the binding combined with its parent,
pinctrl/pincfg.yaml, the binding is now self-describing.

Fixes: 7f7663899d94 ("dt-bindings: pinctrl: mt8195: add pinctrl file and binding document")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/pinctrl/pinctrl-mt8195.yaml          | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml b/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml
index 2f12ec59eee5..e17a399e0904 100644
--- a/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/pinctrl-mt8195.yaml
@@ -80,10 +80,7 @@ patternProperties:
           as macros in dt-bindings/pinctrl/<soc>-pinfunc.h directly.
 
       drive-strength:
-        description: |
-          It can support some arguments which is from 0 to 7. It can only support
-          2/4/6/8/10/12/14/16mA in mt8195.
-        enum: [0, 1, 2, 3, 4, 5, 6, 7]
+        enum: [2, 4, 6, 8, 10, 12, 14, 16]
 
       bias-pull-down: true
 
-- 
2.32.0.432.gabb21c7263-goog

