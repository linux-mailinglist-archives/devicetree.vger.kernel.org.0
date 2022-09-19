Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18C685BD889
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 01:59:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230037AbiISX65 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 19:58:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229816AbiISX6z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 19:58:55 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15DC6520A8
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 16:58:51 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id c24so748393plo.3
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 16:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=T0o9I53BL4eTt+QruVMt0xXQX1Pe6dTx+RnBaPGRdAk=;
        b=L6tkFeZOEexp8njr9vK7m73Q1reO+sl/mm+Y3mePoSArwtrWepqJBmmQQXELCbWFiM
         KlFFrx3l+AzLipF/2E2mydPrXuRC5gNI7TNXDiiiHjz/CQAxhZ1mrjkv3FSbkRVE6Nw0
         oWTRRiA7poHLuyCX85Upfw83O1+VbThbEyiSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=T0o9I53BL4eTt+QruVMt0xXQX1Pe6dTx+RnBaPGRdAk=;
        b=sbbmVnqLWhSSg+7y+pctPGSn8OuvAxhA16q0xCGJmDQMvTe35+Yrm1Uom+BYaJFxbO
         hNWi/4e+fEx+T8RoH/yUbpMtP0v/9iZJuigtw6MXWW3807dwExuvlxsS7oaP+QTX6E21
         Bw0xAP+OZ5uMQHERVDqG5VcSP+5yTdVV+flbnZPMPLAfnWr4BAmcsK6NO3p6CY9i5Lqy
         OSvnmEWZHZ/51MCGfFuy0x+c+lzADJetdrXkMa2Q44GyMqWLIFOjPJGze5LtkuQY1s1P
         B7mHL9b2QCtngK3r/Qk2iB7oKPBag8rsNaWhArLi/CJ7G95LVw1f82CFdfIPjjoGPdWF
         AVhw==
X-Gm-Message-State: ACrzQf0F/cpYZ9J5jY0A1QYS8wS3mYpAhoMn4ZBkShkM85LZtqWak2SB
        Wd/gdo/Z1JPLoIGfb0kPZ7V29g==
X-Google-Smtp-Source: AMsMyM4qEai83iMeYBxen4Sr8DB1zEdGpivZT5yaEjg+lCUzY9AyIrkkXo7qGNhXkUhw3kvbrRKmkg==
X-Received: by 2002:a17:90a:d583:b0:202:a064:3a32 with SMTP id v3-20020a17090ad58300b00202a0643a32mr784761pju.75.1663631931333;
        Mon, 19 Sep 2022 16:58:51 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:201:1057:2242:e60e:b413])
        by smtp.gmail.com with ESMTPSA id w16-20020a17090a529000b00203a4f70b90sm11828pjh.45.2022.09.19.16.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 16:58:50 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: sc7280: All current evoker boards are LTE
Date:   Mon, 19 Sep 2022 16:58:23 -0700
Message-Id: <20220919165808.1.Idfb956ebc035c3bd0d682f4697c297c7a975c50d@changeid>
X-Mailer: git-send-email 2.37.3.968.ga6b4b080e4-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

At the time that commit 2abf6b6b9429 ("arm64: dts: qcom: sc7280: Add
device tree for herobrine evoker") was posted, all herobrine SKUs were
LTE.

At the time that commit d42fae738f3a ("arm64: dts: qcom: Add LTE SKUs
for sc7280-villager family"), the evoker board device tree hadn't yet
landed.

I belive that the above two facts mean that the evoker boards ought to
be setup for LTE but currently aren't. Let's fix that.

Cc: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
Cc: Sibi Sankar <quic_sibis@quicinc.com>
Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
index ccbe50b6249a..5e5cddb8ec99 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-r0.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sc7280-herobrine.dtsi"
+#include "sc7280-herobrine-lte-sku.dtsi"
 
 / {
 	model = "Google Evoker";
-- 
2.37.3.968.ga6b4b080e4-goog

