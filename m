Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 048096C6F11
	for <lists+devicetree@lfdr.de>; Thu, 23 Mar 2023 18:32:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232564AbjCWRcK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 13:32:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232489AbjCWRbs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 13:31:48 -0400
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C651634C1A
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 10:31:32 -0700 (PDT)
Received: by mail-pj1-x1029.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so2792938pjz.1
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 10:31:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1679592691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dc1zQxQOlxvSPv0A2NTnsyCSg5q98+XxyGONS3dAKvA=;
        b=clWzYxFdbsjAMyeObdN7chgEUWdefpw8mMcFLIi5kA9IjVTr+S1coqTXXi0/7EQrwB
         kcu6xEE7wEMWUpgG3Dfkhz1MOlShemHzO13U4P4/GERa5IP3Dnr7OAFJmIqSaBdTd8VV
         5Uor4aiKQsUtBQvZ/NclDLfD3Rx/Ip4/Gbj38=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679592691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dc1zQxQOlxvSPv0A2NTnsyCSg5q98+XxyGONS3dAKvA=;
        b=p1ebk4UNvicM0nqocL7mb0LufZxPp01Pvl3gNMCbomndyEkXuQJsHNt5sepdxHuQiq
         WvSkxfUxX9R3RzwyTRvAM9pxXhTWVFN8vl3Paa7DbyLvLNTZDVj32g2PaiuLiRWBARhl
         6/qTIIuCuHL/xF+nI44/KHC2wLTyJ5hw3u5MCU7KhB2ahU54bqe9dqIoCVnxjK3Ct7U0
         LoQAonrJHXhsGivm92oOpYbVPysRoPpgo7dZEfgDvd9gYpvFnslXfzhuDUIFSZlAu5id
         XPfKeQcaZW6/4U4H/Fva3CXePyzf/r1+6jSl/o7NMaKBH8F366zl7QAgEZDmUNOpBUPF
         vc7A==
X-Gm-Message-State: AO0yUKU1fbWfx9nsVS48wOi4U7x9shGaosQBgnhEewX7sEXCSdMr5aPj
        l55oBT08/PiM/G2VRXbnG1EKDw==
X-Google-Smtp-Source: AK7set8VWWD0uSxldfkCPMuvTPMAIF2F+8xHhK+xQgBVhEpb3rBHAYLNPfuyYRJXFm0dT4rVZLHsbQ==
X-Received: by 2002:a05:6a20:c109:b0:d8:997f:b21c with SMTP id bh9-20020a056a20c10900b000d8997fb21cmr309546pzb.27.1679592691735;
        Thu, 23 Mar 2023 10:31:31 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:9d:2:16d3:ef20:206a:6521])
        by smtp.gmail.com with ESMTPSA id x13-20020a62fb0d000000b0061a6f4c1b2bsm12613546pfm.171.2023.03.23.10.31.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 10:31:31 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-gpio@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-spi@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org
Subject: [PATCH 10/14] arm64: dts: qcom: sc7280: Remove superfluous "input-enable"s from idp-ec-h1
Date:   Thu, 23 Mar 2023 10:30:14 -0700
Message-Id: <20230323102605.10.I1343c20f4aaac8e2c1918b756f7ed66f6ceace9c@changeid>
X-Mailer: git-send-email 2.40.0.348.gf938b09366-goog
In-Reply-To: <20230323173019.3706069-1-dianders@chromium.org>
References: <20230323173019.3706069-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As talked about in the patch ("dt-bindings: pinctrl: qcom: tlmm should
use output-disable, not input-enable"), using "input-enable" in
pinctrl states for Qualcomm TLMM pinctrl devices was either
superfluous or there to disable a pin's output.

Looking at the sc7280-idp-ec-h1.dtsi file:
* ap_ec_int_l, h1_ap_int_odl: Superfluous. The pins will be configured
  as inputs automatically by the Linux GPIO subsystem (presumably the
  reference for other OSes using these device trees).

That means that in none of the cases for sc7280-idp-ec-h1.dtsi did we
need to change "input-enable" to "output-disable" and we can just
remove these superfluous properties.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
index 3cfeb118d379..ebae545c587c 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp-ec-h1.dtsi
@@ -82,14 +82,12 @@ &tlmm {
 	ap_ec_int_l: ap-ec-int-l-state {
 		pins = "gpio18";
 		function = "gpio";
-		input-enable;
 		bias-pull-up;
 	};
 
 	h1_ap_int_odl: h1-ap-int-odl-state {
 		pins = "gpio104";
 		function = "gpio";
-		input-enable;
 		bias-pull-up;
 	};
 
-- 
2.40.0.348.gf938b09366-goog

