Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5CA4A4BECFF
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 23:08:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235208AbiBUWIb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 17:08:31 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:35442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235211AbiBUWIa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 17:08:30 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D9F022BDD
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 14:08:07 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id s1so2934207wrg.10
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 14:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=o/d166yo9TtkM4+c7x0I89HNNMPO2K1Na/pBqagV1Y0=;
        b=HZsY+p7ecLmebf7xsFvUeG8OOs8cpM9mvLAD6KN3VT+rbJ5o/QxgekaNkhp67C4rmS
         lUBIL7anCOHPlR4IgW85M7DuomafWOvSuAsAkMw7E4fLfVRGJEppobmHduZWlUrqa5Na
         nrFfO90Sk9YdJ+OiG7OkJLYt7u2GUPcVkMlDYqLX0wQ4IJXxpXoSzU1bdv0plv/PEUlB
         qslJsD7rG8QOaY2U3zbGF2cBBicXGRZ6OLKA2C4q8rxg4DEGFbRyiX7RUqO8lFq3tvWW
         tUOq0VUqcoLOAgitw94Mbgtiut8cF9lGpXycjIN2yPIbhazMJTJWckZM1OItjsya/cm6
         3N7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=o/d166yo9TtkM4+c7x0I89HNNMPO2K1Na/pBqagV1Y0=;
        b=NtLEURaDMkVIJjfZYconDW3L3S12oZR/I3+HfoukN0dA3PdpuxCTiNs9h7s1dsOVjy
         v+5Ds2C3fDnjfFqCDHNQ+2GMnxRoguJoFCkCtQvh1cOCPhLSVXf5NOiyzHjarG0/L6X8
         CjlT1wCpgp9gocyiH7PzAgE0+VFkWD+EHDF0AQj9SffpYvJMw8kGxl9HH5i048+fD51q
         4A/evxwOvxId8RcnOGIW4cRFRgdKTutdUNeeEb7wST6wEZ6FOOpQ1Xl8+2YFRk8pZ9qv
         lYkA1JaZ7u2/LhxH/5LyxNu668CdnAcTP541u18wgWl+Dx4/lJMMJZdkfD5UBEQ1JLyS
         Tz5g==
X-Gm-Message-State: AOAM532MKWdX2VdYEkJDOcYfdh20ZrNeuAP0vut6rKGi5qoZ83eaviD7
        1c6TzKrW5jYgQlpd6kq+1WeSU2FfHV2ISw==
X-Google-Smtp-Source: ABdhPJxGZtLI5i/SRC1lsUFIbGJQqTZYAJ9mKQv1NxK3XyENNLeH/j+vEcjsMFrCjALeJroWrMaGRQ==
X-Received: by 2002:adf:8122:0:b0:1e7:b111:3b92 with SMTP id 31-20020adf8122000000b001e7b1113b92mr17748215wrm.695.1645481285737;
        Mon, 21 Feb 2022 14:08:05 -0800 (PST)
Received: from localhost.localdomain (cpc78119-cwma10-2-0-cust590.7-3.cable.virginm.net. [81.96.50.79])
        by smtp.gmail.com with ESMTPSA id w8sm51626093wre.83.2022.02.21.14.08.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 14:08:05 -0800 (PST)
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
Subject: [PATCH v8 8/9] arm64: dts: qcom: sdm845-db845c: enable rradc
Date:   Mon, 21 Feb 2022 22:07:42 +0000
Message-Id: <20220221220743.541704-9-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220221220743.541704-1-caleb.connolly@linaro.org>
References: <20220221220743.541704-1-caleb.connolly@linaro.org>
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

Enable the Round Robin ADC for the db845c.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index 13f80a0b6faa..1c452b458121 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -595,6 +595,10 @@ resin {
 	};
 };
 
+&pmi8998_rradc {
+	status = "okay";
+};
+
 /* QUAT I2S Uses 4 I2S SD Lines for audio on LT9611 HDMI Bridge */
 &q6afedai {
 	qi2s@22 {
-- 
2.35.1

