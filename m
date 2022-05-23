Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05D9153162B
	for <lists+devicetree@lfdr.de>; Mon, 23 May 2022 22:50:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232214AbiEWTjv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 15:39:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232454AbiEWTjg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 15:39:36 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3C33A1078B6
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 12:32:09 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id c22so14530223pgu.2
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 12:32:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=se1gv6FKWc2mQF+0R3JQfs3NqSabq03RBDglYxWWN7A=;
        b=le2gVkm6L5LuiRam9nCTm4Wj24nwfbU+3wQgtb8kUHOKzxB30srlECttSlis+VEBem
         ey6tBpE9xSszV3OWSFNmqsRtEaN8tBU+xkf0Sc5stjtqfrxfrMZWMw4wr4zOnmbokMjZ
         h/E0tNLgfUefQnFH7GEgsYGLM24ECovsSXpNY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=se1gv6FKWc2mQF+0R3JQfs3NqSabq03RBDglYxWWN7A=;
        b=j4e7my2n7AJ8cAJmIprq+IYM8RRwN9mxDDuThBnfnjWJtKQWLxPVVUchD3N4aBuS+G
         i1Cx6OcSOf8obH+djn/50YL3d9/Jcg9h+AM7qxsY3vuAwfO3GlJ0abJDBdOjPODHv4zU
         Czy95AhpJ8smYqm/rrwvuFdIr3PEC1SmyI1zBGpj3uXP/PCOZwiyeJCGPii4ehftDrCk
         /bStug6V5rj1MevUILvYRauM3YubEsjoeasdEZ0G9BgQtUpT0I29BnAJnviqiB+0+IHl
         TSJUEMmaFpbAhHGej61MFREO7drSfX/8FquKILCle3oyMOYzL/CC/jtnsVTNEEKow9KM
         jDvg==
X-Gm-Message-State: AOAM5323h+QlaLsmJRILhTTBcXApZesNTTKgrZxQVA34VCx2szGhH+ue
        3aRjZTA8v8I8qmFWaSwDlqat2w==
X-Google-Smtp-Source: ABdhPJyI4gzbQl+r37YzEYsQL+OZUIjN0paUW09/Ya7gT00eZ6ZpWdUH8xzShQ9aAGIoMHAPIiwofA==
X-Received: by 2002:a05:6a00:140f:b0:4e0:6995:9c48 with SMTP id l15-20020a056a00140f00b004e069959c48mr24736401pfu.59.1653334329218;
        Mon, 23 May 2022 12:32:09 -0700 (PDT)
Received: from localhost ([2620:15c:11a:202:46dd:d5d8:48f6:713e])
        by smtp.gmail.com with UTF8SMTPSA id q9-20020a170902f78900b0015e8d4eb292sm3518878pln.220.2022.05.23.12.32.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 May 2022 12:32:09 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Douglas Anderson <dianders@chromium.org>,
        linux-kernel@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v2 2/2] arm64: dts: qcom: sc7280: Enable keyboard backlight for villager
Date:   Mon, 23 May 2022 12:32:04 -0700
Message-Id: <20220523123157.v2.2.I3d1b5a109675a0cc90e66a4e0b45cb823edbdee7@changeid>
X-Mailer: git-send-email 2.36.1.124.g0e6072fb45-goog
In-Reply-To: <20220523123157.v2.1.I47ec78581907f7ef024f10bc085f970abf01ec11@changeid>
References: <20220523123157.v2.1.I47ec78581907f7ef024f10bc085f970abf01ec11@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Villager has a backlit keyboard, enable support for the backlight.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
index d3d6ffad4eff..290cd3b1f1f1 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dts
@@ -76,6 +76,10 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&pwmleds {
+	status = "okay";
+};
+
 /* For eMMC */
 &sdhc_1 {
 	status = "okay";
-- 
2.36.1.124.g0e6072fb45-goog

