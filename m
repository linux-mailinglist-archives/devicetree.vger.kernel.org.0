Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7E7670F75E
	for <lists+devicetree@lfdr.de>; Wed, 24 May 2023 15:11:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232626AbjEXNLH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 May 2023 09:11:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235955AbjEXNK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 May 2023 09:10:59 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78756B3
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:40 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6ab0d407a8fso85232a34.0
        for <devicetree@vger.kernel.org>; Wed, 24 May 2023 06:10:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684933840; x=1687525840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AMm4u4s0AbwTLrRauBF/fMkB0/G55/zKb4hpF5c41pQ=;
        b=nuTmCFzvqF5/B9bMjMucabEwSDl1GLgoxG2Gzb2/0CTRwqJYQzgmu2btagjJUEadVB
         Qb2koYBb/x7vo58q8j2WHzfAjlJW69h48VkUjBmYo0zXcUTauDx6aRRHNt1qs7GXCE4Z
         uNlmhsjIeLagiEH3ygf+gQKqz5kLLfK6/h48RNSK+n2+OvGOkkeLW0MjaYy/jXEoG4IL
         ZGSJ/GpgxXyF0gtGCx2p94QMnflql36AsQhdB6Y96z+s5KAgyIGeokbxSVKJYCNRcqID
         xpBDiXAWnFGUy6s3XEcigPbZg5BzTV2I3x9dd7TfaNW2XWJ/1n/XRhl0dbbgNCWCZP8H
         bf4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684933840; x=1687525840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMm4u4s0AbwTLrRauBF/fMkB0/G55/zKb4hpF5c41pQ=;
        b=FdRUsvX93TqLp4zYC8FOJ7xUBwEx+2CbricuEHKRC0c6B4uFBT4sXH53c2wLQ4Z+rh
         hJUb2vg7u42LVrTvPPxUAShw3+oIYJ19ltGzc7fS+Z65Fznn69noF75UeX+c85Rf4Mfs
         M5noLS25en8fdpKl4FQkbqAWZArEKj1ut49X9hT7fZjY+Rme4VOZkHmdZkZmrRLi1TlM
         lhzx0p2RftLE2wHBySGy9U3168BjXcV1yCOgDVlA111B853VptOK42cOFUd6NaXK4RfY
         dfxgeQtf5SXNRSf2tDthaFd43kNSjdnEpUAcOQP7Gfszj5Oye+NNYy9E1Xp3WeJ0JTJk
         L62A==
X-Gm-Message-State: AC+VfDy1wv4uUk8nK9yRV1ygl8W1Ut3epNvS1kOyLy+7bv2ha5PjbwMq
        /iUNGrv2ykgrSif0B0Ajpfo=
X-Google-Smtp-Source: ACHHUZ6VGc1DrBjv1YT97+JK98+FSAIHYc7Cx3TGTH8JJoe0FOSkRxe+PFM+Zxapo/VBBhgpoyZuLg==
X-Received: by 2002:a9d:7ccb:0:b0:6af:8f08:11d with SMTP id r11-20020a9d7ccb000000b006af8f08011dmr2464160otn.1.1684933839773;
        Wed, 24 May 2023 06:10:39 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:14ab:657f:c6e7:b30b])
        by smtp.gmail.com with ESMTPSA id v21-20020a05683011d500b006ab1830d483sm3234546otq.77.2023.05.24.06.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 May 2023 06:10:39 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 3/4] ARM: dts: imx7d-smegw01: Use pinctrl-0 for pinctrl_rfkill
Date:   Wed, 24 May 2023 10:10:07 -0300
Message-Id: <20230524131008.161193-3-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230524131008.161193-1-festevam@gmail.com>
References: <20230524131008.161193-1-festevam@gmail.com>
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

From: Fabio Estevam <festevam@denx.de>

Use pinctrl-0 for pinctrl_rfkill to fix the following
'make CHECK_DTBS=y imx7d-smegw01.dtb' warning:

regulator-wlan-rfkill: 'pinctrl-0' is a dependency of 'pinctrl-names'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/imx7d-smegw01.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7d-smegw01.dts b/arch/arm/boot/dts/imx7d-smegw01.dts
index 829a3cbf8ad3..7ec830e4ee05 100644
--- a/arch/arm/boot/dts/imx7d-smegw01.dts
+++ b/arch/arm/boot/dts/imx7d-smegw01.dts
@@ -67,7 +67,7 @@ reg_wifi: regulator-wifi {
 	reg_wlan_rfkill: regulator-wlan-rfkill {
 		compatible = "regulator-fixed";
 		pinctrl-names = "default";
-		pinctrl-2 = <&pinctrl_rfkill>;
+		pinctrl-0 = <&pinctrl_rfkill>;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 		regulator-name = "wlan_rfkill";
-- 
2.34.1

