Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DE9D581ED1
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 06:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229601AbiG0E0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 00:26:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240342AbiG0EYn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 00:24:43 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D94E63B966
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 21:24:42 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id c6so11049855plc.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 21:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jNjfWMIST+9EQW65g4EOXNYBjzp8Q3oEU/cOaI9tlIQ=;
        b=Y/1dTObZmop4N+owBJV/zHDB25DdNO92G20kEk8xB9l4NVrdIVYc+HGC7uSwyuw+j3
         n35sZOkWdWJrLH0yIdHFU56llHkfh7vDa6+AyhdXSZp7u422brlNcAo7kM+x2KP1DOwy
         TWNbwp6kseT7A+H9H8QBvjwcEYDydY0kzjbE8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jNjfWMIST+9EQW65g4EOXNYBjzp8Q3oEU/cOaI9tlIQ=;
        b=RH7/eAhWnDEnx8k5PbgUXwK9T4nxoOSsBDUT4eEG6l97OnnftR5eDn/6hUdcWtHk32
         xEFr91AX0MRSzzWHFqOEiuIAM/jqNz2l6h1vx0YLj8G2okVEXho5d7/JqDn9OwHlmgTO
         HSRo/g+HSDse9dpJZ3lBoi+ipddsKFTPLDAe5cgOsHkuzOVqZLpWAkvtzbpe9dwhZDAN
         goVh0Li91NchUmKE6FDTR3BPN+ES8qWkCsI7kQPWlqFjalHoU9II0T/FZ/4t2quKxITN
         Csz8dNCDjfi80lAuz6MFMe4f2WB0WsCrq6UpLidalGQwsz5YyX9Loap/eO+ynB5v9vmT
         wxIA==
X-Gm-Message-State: AJIora/4M39razT5iIjuHVgfCK9nKIl8s71O9BMJ/lrkL4sp/7qziXwP
        CsAVUJ9BcRf1MMVs3lXKnD4VeQ==
X-Google-Smtp-Source: AGRyM1u8pW324tqb+Tq4hBfpdaUrNBPIRQ2cZIAw8cDLNPTypAl++bbEwxfk0PZmU6iPBVYq+6hqqg==
X-Received: by 2002:a17:90a:cb8d:b0:1f2:156f:f9ca with SMTP id a13-20020a17090acb8d00b001f2156ff9camr2548464pju.72.1658895882316;
        Tue, 26 Jul 2022 21:24:42 -0700 (PDT)
Received: from moragues-cloud.c.googlers.com.com (252.157.168.34.bc.googleusercontent.com. [34.168.157.252])
        by smtp.gmail.com with ESMTPSA id u5-20020a170902e5c500b0016d5a356b31sm8058538plf.116.2022.07.26.21.24.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 21:24:42 -0700 (PDT)
From:   Bob Moragues <moragues@chromium.org>
X-Google-Original-From: Bob Moragues <moragues@google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     Bob Moragues <moragues@google.com>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sc7280: Add support for zoglin
Date:   Tue, 26 Jul 2022 21:24:32 -0700
Message-Id: <20220726212354.2.I7d57fb9c4806a8b3fe3501c766b64f4987c271ef@changeid>
X-Mailer: git-send-email 2.37.1.359.gd136c6c3e2-goog
In-Reply-To: <20220726212354.1.I5b9006878bdabd6493b866b46dbd6149968d545b@changeid>
References: <20220726212354.1.I5b9006878bdabd6493b866b46dbd6149968d545b@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Zoglin is a Hoglin Chromebook with SPI Flash reduced from 64MB to 8MB.
Zoglin is identical to Hoglin except for the SPI Flash.
The actual SPI Flash is dynamically probed at and not specified in DTS.

Signed-off-by: Bob Moragues <moragues@chromium.org>
Signed-off-by: Bob Moragues <moragues@google.com>
---

 arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
index 6d324ac2dda1..98d09187fc69 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dts
@@ -13,7 +13,7 @@
 
 / {
 	model = "Qualcomm Technologies, Inc. sc7280 CRD platform (rev5+)";
-	compatible = "google,hoglin", "qcom,sc7280";
+	compatible = "google,zoglin", "google,hoglin", "qcom,sc7280";
 
 	/* FIXED REGULATORS */
 
-- 
2.37.1.359.gd136c6c3e2-goog

