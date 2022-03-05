Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AA5394CE221
	for <lists+devicetree@lfdr.de>; Sat,  5 Mar 2022 03:13:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230437AbiCECN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Mar 2022 21:13:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230447AbiCECN5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Mar 2022 21:13:57 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EE7F1C4B20
        for <devicetree@vger.kernel.org>; Fri,  4 Mar 2022 18:13:08 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id r65so6013059wma.2
        for <devicetree@vger.kernel.org>; Fri, 04 Mar 2022 18:13:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qImSYxU2i/y/qV71r8EFW+LTWk9ZfhM4KeM2jcTcklQ=;
        b=od4dbBtlluJessccDg4AkT69g3pCqfXfo8yCJEqu3wkOWoS8+CzXJ+5gmc0jWCMmnI
         fWrjRuMA5u8KAwkmJZFYm9EbBMVzDt/YxcijtER0CMB7Qe1Xcr833siuyxF83lFopTXe
         muCuEzDsy2drrJoSajGth6BbAqDuAc6JN1n97wEMxqWyvmLLwCbXEYkF6Du1mcHxXloY
         wi1ASRDJ4GlFy6vwQS80+/cLceAAVhnaInpzirn8V/PaPVY3N5tsaTf+LxPQD01anM6p
         aB7etHsY1EwasE5FyUBhx60KT3unkK6HAAIzNMdMKiNBqM1s2u/e9d17HnRGvxjrsm3g
         d7DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qImSYxU2i/y/qV71r8EFW+LTWk9ZfhM4KeM2jcTcklQ=;
        b=4eLM1LbL8Ujv1k4RBbX/Rga3WgP4EqcHJZ+swQ6VgQ4o6OCpfw6ScZacNbkLmlzWor
         +ou9w6HCAPUP7gDxnUt7OmvrOGMmsS7XlvTjS5AxF3RW6RKjNA2qGDwSvwxMYBatWIkm
         kTejJL4tztB2wSMJTHhljVQ7yedw465SJrBR/0PnOruFt2podagEfM9Q4i6ns0s6M5Gb
         fJpV552mLKsJnbsTwOCPkV/OA7MaosrNA+IESDrzsb02pjdd9TIn2eU28lwvmybwRzk3
         3HIn+ArynABkWrmN+Grnam6O3gm6X1bm4S8EfT9fYvsp6vNRZR2XpfKllXrT1vabcRNl
         YIPA==
X-Gm-Message-State: AOAM533ylorM2Ye7x4u4Gm88k0+baOcCRJTRLKopR0HOpqiwOC9CZuM9
        Eyk5g2U3G3URbNg/OZqdevmv+A==
X-Google-Smtp-Source: ABdhPJwhpt3Knhm2vcjf4Pwj9anxlhIVFtgmakJejVTcuQ6uzl2qTKAG/2KbsXrBY1lkQPuR3ge/XQ==
X-Received: by 2002:a7b:c351:0:b0:381:6824:aa61 with SMTP id l17-20020a7bc351000000b003816824aa61mr844990wmj.19.1646446386970;
        Fri, 04 Mar 2022 18:13:06 -0800 (PST)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id k10-20020adfe3ca000000b001f0329ba94csm7932589wrm.18.2022.03.04.18.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Mar 2022 18:13:06 -0800 (PST)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org
Subject: [PATCH v10 7/9] arm64: dts: qcom: sdm845-oneplus: enable rradc
Date:   Sat,  5 Mar 2022 02:12:45 +0000
Message-Id: <20220305021247.1020122-8-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220305021247.1020122-1-caleb.connolly@linaro.org>
References: <20220305021247.1020122-1-caleb.connolly@linaro.org>
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

Enable the RRADC for the OnePlus 6.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
index 7f42e5315ecb..e8287cf02511 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
@@ -450,6 +450,10 @@ pinconf {
 	};
 };
 
+&pmi8998_rradc {
+	status = "okay";
+};
+
 &qupv3_id_1 {
 	status = "okay";
 };
-- 
2.35.1

