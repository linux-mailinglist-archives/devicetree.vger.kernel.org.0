Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F279562977F
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 12:32:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbiKOLcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 06:32:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237426AbiKOLbh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 06:31:37 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D980320BEC
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 03:31:33 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id v1so23701683wrt.11
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 03:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=umpLk1dbP5jy5ZPV4Q21UM7cr1nZKFjsXDStFsdzpxA=;
        b=D8EGa8htGFTrwr+uWFdhGjdWi5azQWY7WKuZsWKqSGl7DOBh5SqcqwVODSBoQ5raO3
         16AhnKECzyxTxO7lN0ueLWY2nuYw2CdMPY/TbAJfSzrSkwxtx1hodXF27VnVR3P1SJwA
         wDO79WtzmOQyTP+Hy9qWADtHJAB2b2DxfGDlH8/j8SdN5KygAJ4KVfqjfABAjmxKamZl
         Gamru9txX23IdiJM7YAAh5W8WZfXelXG2MdFpSx2khyzXBPdwMHdllb5kf1+/UXPmw2y
         E5jfGp8Vv0HZ60B2wDiJQrYWgF/CpkTkZmYgOn5gJZNWsdBSnK08LXQSpPxY8pxRj12Y
         O3qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=umpLk1dbP5jy5ZPV4Q21UM7cr1nZKFjsXDStFsdzpxA=;
        b=LF7WXal+y7TVut2Uy/R41RLPcrxmep7dRUQDNN6LX5/EldVydLOjH7RGVdB074VUDy
         BHMa5cD/5Xhj52BbxoVKl0RFZQsHYEh8soPmAW1/ED+He0k85Yd6w5G9r98rAWOytves
         oApZrqVpTT9nWOw5AdfJO2fjYDXk/zcKlAjp3uAX9Vk1iTdjNa6Kiefm9uyHOYJSfcZD
         hjK636w2NPCA4JS0t3wuHvsX1A+MIqCyWWPeKJE8uZeQzctjPjY+5f1fh5cU+7ouKRbt
         IkrAynTH5KFnyhUMbcqP/oXoqoebN846TvpAsMmxQ1dCV12Jlg9rvKwfL5JQ7JeIryJg
         WzRQ==
X-Gm-Message-State: ANoB5pmFq0GvJXIwCOR0DqL6mVH5wAQVafW6Qdo6TbgJliiYo8n0Y687
        CGz1olKTyYW0VstcBYMUPm/erQ==
X-Google-Smtp-Source: AA0mqf5jBv+V66YDQSGDY5sxfIA+tTGVm91bEfy16sYi3/by6+Igxb52m7WTZXG/KVa3dltkOhZuIg==
X-Received: by 2002:a5d:58c3:0:b0:238:8896:7876 with SMTP id o3-20020a5d58c3000000b0023888967876mr10459521wrf.645.1668511892383;
        Tue, 15 Nov 2022 03:31:32 -0800 (PST)
Received: from zoltan.localdomain ([81.128.185.34])
        by smtp.gmail.com with ESMTPSA id r18-20020adfe692000000b00238df11940fsm12273091wrm.16.2022.11.15.03.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Nov 2022 03:31:31 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com
Cc:     andersson@kernel.org, konrad.dybcio@linaro.org, agross@kernel.org,
        elder@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH net-next v2 5/5] net: ipa: permit GSI firmware loading to be skipped
Date:   Tue, 15 Nov 2022 05:31:19 -0600
Message-Id: <20221115113119.249893-6-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221115113119.249893-1-elder@linaro.org>
References: <20221115113119.249893-1-elder@linaro.org>
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

Define a new value "skip" for the "qcom,gsi-loader" Device Tree
property.  If used, it indicates that neither the AP nor the modem
need to load GSI firmware (because it has already been loaded--for
example by the boot loader).

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_main.c | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ipa/ipa_main.c b/drivers/net/ipa/ipa_main.c
index 214e524dce795..8f20825675a1a 100644
--- a/drivers/net/ipa/ipa_main.c
+++ b/drivers/net/ipa/ipa_main.c
@@ -87,12 +87,14 @@
  * @IPA_LOADER_DEFER:		System not ready; try again later
  * @IPA_LOADER_SELF:		AP loads GSI firmware
  * @IPA_LOADER_MODEM:		Modem loads GSI firmware, signals when done
+ * @IPA_LOADER_SKIP:		Neither AP nor modem need to load GSI firmware
  * @IPA_LOADER_INVALID:	GSI firmware loader specification is invalid
  */
 enum ipa_firmware_loader {
 	IPA_LOADER_DEFER,
 	IPA_LOADER_SELF,
 	IPA_LOADER_MODEM,
+	IPA_LOADER_SKIP,
 	IPA_LOADER_INVALID,
 };
 
@@ -740,6 +742,10 @@ static enum ipa_firmware_loader ipa_firmware_loader(struct device *dev)
 	if (!strcmp(str, "modem"))
 		return IPA_LOADER_MODEM;
 
+	/* No GSI firmware load is needed for "skip" */
+	if (!strcmp(str, "skip"))
+		return IPA_LOADER_SKIP;
+
 	/* Any value other than "self" is an error */
 	if (strcmp(str, "self"))
 		return IPA_LOADER_INVALID;
@@ -872,10 +878,12 @@ static int ipa_probe(struct platform_device *pdev)
 	if (loader == IPA_LOADER_MODEM)
 		goto done;
 
-	/* The AP is loading GSI firmware; do so now */
-	ret = ipa_firmware_load(dev);
-	if (ret)
-		goto err_deconfig;
+	if (loader == IPA_LOADER_SELF) {
+		/* The AP is loading GSI firmware; do so now */
+		ret = ipa_firmware_load(dev);
+		if (ret)
+			goto err_deconfig;
+	} /* Otherwise loader == IPA_LOADER_SKIP */
 
 	/* GSI firmware is loaded; proceed to setup */
 	ret = ipa_setup(ipa);
-- 
2.34.1

