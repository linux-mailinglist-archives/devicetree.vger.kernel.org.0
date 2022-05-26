Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72FD55354F8
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:46:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345439AbiEZUqj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:46:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33582 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349167AbiEZUqX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:46:23 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEC17B4B8
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:46:15 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id d22so3169152edj.4
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sodNhrbprDBlR5tvNArSoegdmoIGZLxKNxm4MqZi0Kw=;
        b=j0AS2xKTqbpmPr4US1TqDWaZrfuq2l/Jb8NMfruGp9sLuESLr/c3PrbE+WC4zZPf1w
         lHduoW3fvKnibVG1Y06bt2PCClRcaopTBDE+3+5H4ZmWpmXQeNoUPPtdxItwayVN1Cdi
         9jvoJGdEqytx5fahTlVN5T160OmOQ8n91d8P4dVFlZI9slhtnMLNl7o3bTrefjTLR2g8
         pzYbNBLNLY0019d7BJKZAz1rB4c60F2OJsfnhuTWJMuFHN8UNWs4re9/VqF2kf7RF/5D
         yixJdp+oq1FF3px58CVYOTuaHwDMLZE7hgR98Z3H2aj9r52HidfnH/lf2pVJKrvnzCoY
         ZRBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sodNhrbprDBlR5tvNArSoegdmoIGZLxKNxm4MqZi0Kw=;
        b=W99uFd/b5HReWUZb90WmdqI3KzU0gbdq3HnBKteiXofn2/tthUMtKDwLqmVko55Whz
         DIFUNBUhlR3nie/i3cQxNgREOBOk+Tm+itefKoNjzw2zTmLIVUtnF0uPU1ZVhUJsFIev
         Hwx8oPzyX0xgJL4pYZ4KJ/Z36WdosdhMJyhY951p5kzbMfV8nrBImz6fPzYXRILqF3jg
         Vw3K7wryru6Srn8ZOW7xr/piyuDsF/FKm/rUJ8m7ENIHU3kMVXy2kqj9Z1F8zEqKK4C6
         Lq7ZtWEoDNfnDxXsXm9vkR8ts9fjVnrfooBORoxR3RVMY4MMNJzGkOpONLd1EFSj0IuS
         Iz3A==
X-Gm-Message-State: AOAM5315FvkWxQIk4s2OUtg2xiyyCO8dkgIr295RTDC5pfaNduXinvE0
        4AZoomoslfm/8CWo6/HuuUV2/g==
X-Google-Smtp-Source: ABdhPJyMqZdNPyppsO99qpgItW+lofA2V7FRCZtisCXRtSW3Kc31/FlvuFJ0N8MgBXeebaPx4c/fJA==
X-Received: by 2002:a05:6402:1247:b0:42b:e2e6:4aa9 with SMTP id l7-20020a056402124700b0042be2e64aa9mr2634806edw.94.1653597974350;
        Thu, 26 May 2022 13:46:14 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gc21-20020a1709072b1500b006ff16f48e2asm813254ejc.76.2022.05.26.13.46.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:46:13 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] arm64: dts: toshiba: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:46:05 +0200
Message-Id: <20220526204606.833054-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220526204606.833054-1-krzysztof.kozlowski@linaro.org>
References: <20220526204606.833054-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm64/boot/dts/toshiba/tmpv7708.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
index 0fc32c036f30..b04829b3175d 100644
--- a/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
+++ b/arch/arm64/boot/dts/toshiba/tmpv7708.dtsi
@@ -485,7 +485,7 @@ pcie: pcie@28400000 {
 			      <0x0 0x28050000 0x0 0x00010000>,
 			      <0x0 0x24200000 0x0 0x00002000>,
 			      <0x0 0x24162000 0x0 0x00001000>;
-			reg-names  = "dbi", "config", "ulreg", "smu", "mpu";
+			reg-names = "dbi", "config", "ulreg", "smu", "mpu";
 			device_type = "pci";
 			bus-range = <0x00 0xff>;
 			num-lanes = <2>;
-- 
2.34.1

