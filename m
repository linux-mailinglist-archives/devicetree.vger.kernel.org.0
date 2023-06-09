Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9E2DB729330
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 10:32:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239479AbjFIIcI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 04:32:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240840AbjFIIbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 04:31:17 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAE4F35B7
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 01:30:39 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id e9e14a558f8ab-33e53672aa6so6594925ab.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 01:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686299437; x=1688891437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6mun1nGQ80ZyVZjdi0M4IzGfNqFd85FTe1SFditmWTE=;
        b=CocMFGYDJ28ZQWX5/Zb+FWOJDAAQ8XIC34Mc06ztwspA6x7UOg9DlOAYTqPm8CZpHw
         dIi8y8dHV2bbmb3Mh+rDMd7prp+hWGQ1XdDLsMOx6QuXcgGyiFLn5LnJq+3ZptBy6g2D
         5BhgwyaKRjPBGEcMy9y/35wR02MRZ9JHVlYjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686299437; x=1688891437;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6mun1nGQ80ZyVZjdi0M4IzGfNqFd85FTe1SFditmWTE=;
        b=Nw0NOHJjczKhkRfo2riT53Mh6nOVQrgSorsmPh8VbmpeisTp6QqiDCwzWg7sDfDe2K
         S2uid5n0X7pijOKeiS8u/upPFGtH0j4XqR9Aq8pUMaw8t+3d9jlB8j+xL5hd9ZUvyTek
         vrpdKqD9yRNi5fvc96QxL8rnbHx8Pi55Nv89zJlj+Ei4IjAVVuah5RvRPp0D4VyMxHQx
         yu/2qB3Gtin4nIonu9tDoxHPgr79vvnsXDcR8lECQWPc2+NJdfre97QUiIwIvHfOqXFD
         1/pAFfcMyRiuHu88aLNISo2wfJXa2ULCsc4YXNnPe9PW5yKOK2DlWDb5wSvBBOfInDI6
         CArg==
X-Gm-Message-State: AC+VfDz/5z9x4saSwkYxSvNeOihFIuM6GEpF4X4DzjEUDszgH0rLzOAq
        JwNhKlco8Sxk+Fv/U0/ux5qqKg==
X-Google-Smtp-Source: ACHHUZ4xGILPF6LRehHfcnbwmynkR+03VjZMBahqygYIt5vljilPzTSm4E0iZ0dYLkUzfyQF4wBwuA==
X-Received: by 2002:a05:6e02:4cf:b0:335:fef6:6b76 with SMTP id f15-20020a056e0204cf00b00335fef66b76mr1159316ils.6.1686299437720;
        Fri, 09 Jun 2023 01:30:37 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:c2ea:d8e4:1fe8:21f0])
        by smtp.gmail.com with ESMTPSA id 23-20020aa79157000000b0063b806b111csm2184327pfi.169.2023.06.09.01.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 01:30:37 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/9] regulator: dt-bindings: mt6358: Merge ldo_vcn33_* regulators
Date:   Fri,  9 Jun 2023 16:29:58 +0800
Message-ID: <20230609083009.2822259-2-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
In-Reply-To: <20230609083009.2822259-1-wenst@chromium.org>
References: <20230609083009.2822259-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ldo_vcn33_bt and ldo_vcn33_wifi regulators are actually the same
regulator, having the same voltage setting and output pin. There are
simply two enable bits that are ORed together to enable the regulator.

Having two regulators representing the same output pin is misleading
from a design matching standpoint, and also error-prone in driver
implementations.

Merge the two as ldo_vcn33. Neither vcn33 regulators are referenced
in upstream device trees. As far as hardware designs go, none of the
Chromebooks using MT8183 w/ MT6358 use this output.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../bindings/regulator/mt6358-regulator.txt        | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt b/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
index 7034cdca54e0..b22b956d1cbe 100644
--- a/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
+++ b/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
@@ -15,8 +15,7 @@ LDO:
   ldo_vcamd, ldo_vcn18, ldo_vfe28, ldo_vsram_proc11, ldo_vcn28, ldo_vsram_others,
   ldo_vsram_others_sshub, ldo_vsram_gpu, ldo_vxo22, ldo_vefuse, ldo_vaux18,
   ldo_vmch, ldo_vbif28, ldo_vsram_proc12, ldo_vcama1, ldo_vemc, ldo_vio28, ldo_va12,
-  ldo_vrf18, ldo_vcn33_bt, ldo_vcn33_wifi, ldo_vcama2, ldo_vmc, ldo_vldo28, ldo_vaud28,
-  ldo_vsim2
+  ldo_vrf18, ldo_vcn33, ldo_vcama2, ldo_vmc, ldo_vldo28, ldo_vaud28, ldo_vsim2
 
 Example:
 
@@ -305,15 +304,8 @@ Example:
 				regulator-enable-ramp-delay = <120>;
 			};
 
-			mt6358_vcn33_bt_reg: ldo_vcn33_bt {
-				regulator-name = "vcn33_bt";
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3500000>;
-				regulator-enable-ramp-delay = <270>;
-			};
-
-			mt6358_vcn33_wifi_reg: ldo_vcn33_wifi {
-				regulator-name = "vcn33_wifi";
+			mt6358_vcn33_reg: ldo_vcn33 {
+				regulator-name = "vcn33";
 				regulator-min-microvolt = <3300000>;
 				regulator-max-microvolt = <3500000>;
 				regulator-enable-ramp-delay = <270>;
-- 
2.41.0.162.gfafddb0af9-goog

