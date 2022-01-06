Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BAED348689A
	for <lists+devicetree@lfdr.de>; Thu,  6 Jan 2022 18:32:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241999AbiAFRcE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jan 2022 12:32:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241887AbiAFRb7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jan 2022 12:31:59 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DC44C034007
        for <devicetree@vger.kernel.org>; Thu,  6 Jan 2022 09:31:58 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id l10so6207269wrh.7
        for <devicetree@vger.kernel.org>; Thu, 06 Jan 2022 09:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2VD8BhFQsi1gAqizHlVU3fMYSmPUmL03WAYruvW0snE=;
        b=m0HegGbWAjKeIsRoARzohUa1OFMBWmXZPnpb5wapIM9mm6FBTq1HEOGWlGenaN3qdn
         TvWeF9SIpEDEC5m9jk5Kp9vi1+dvoGcUPJgdxkFcFmhdle1fNu+aEc5p9h1nShqrcPr9
         cuHbe9jDYKohD+V842KPRBr2Nb5OtDaemIUGCatFdFOslDRAjkL4HblA+hNxDcKNuAHO
         LXfQ1zU2ZPkOf0SsV4iTWTKHlU+3kgzp5gxCXxiZcnAzaWwY1vdjk+tTYHN2MZ9tMz0b
         O28XacDMJHSYjxjiu7EjHdJ6QMQTFZ93yg2mNQzGXvgLBqR1OwAWiBV8/Sf3GpKubiF8
         /fXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2VD8BhFQsi1gAqizHlVU3fMYSmPUmL03WAYruvW0snE=;
        b=mBXy2gWOliA4jbUdWNRvha3TnHHEWEhP9E0wWa2fV2HUbgfINiVB+qfb2uKrgZW3Jp
         Q0Y4ga5I17UtFLv3ItwMkQoFm94qSi1zQERUrT4BqdHcJga3n7R9/szn5XHA9gH84l9o
         8Jdt/xz12eUZ6VV8xuK1UxaCIgKTDpUpktQtXp6twzA/QyBZUqgT3126eQcBgcGQnOYJ
         dWDu3duxQVIXmWvzUkkt3NghdKZAS9mlQDa+6OjnUilW1IAM+lPVRhsbifHL3jrpNyKq
         k8dG6idDmZag3kHuRqaS/HXNgPhxiC5phayD85Vozpd6hqkYg6wwjM12pGpWeoC2Sl/b
         AagA==
X-Gm-Message-State: AOAM532C3iosyY/93XJCXRD/NcZePn1poezLPPhnOMDSQiNsyRhHqMTx
        asLyV5CjHZX7JJFsdHvVIWCadQ==
X-Google-Smtp-Source: ABdhPJy11EzN1DwExZ7UdzsyYAs7SBnwijjhuNVuuoC9cCSTKSH3NTcmkInYclaSjfV1HMK9sX5vSA==
X-Received: by 2002:a5d:6f02:: with SMTP id ay2mr14004127wrb.269.1641490317063;
        Thu, 06 Jan 2022 09:31:57 -0800 (PST)
Received: from localhost.localdomain ([81.178.195.252])
        by smtp.gmail.com with ESMTPSA id b16sm2575594wmq.41.2022.01.06.09.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jan 2022 09:31:56 -0800 (PST)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org
Subject: [PATCH v3 7/7] arm64: dts: qcom: sdm845-xiaomi-beryllium: enable RRADC
Date:   Thu,  6 Jan 2022 17:31:31 +0000
Message-Id: <20220106173131.3279580-8-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220106173131.3279580-1-caleb.connolly@linaro.org>
References: <20220106173131.3279580-1-caleb.connolly@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the PMI8998 RRADC.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
index 580d4cc1296f..481132b0cee4 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium.dts
@@ -312,6 +312,10 @@ resin {
 	};
 };
 
+&pmi8998_rradc {
+	status = "okay";
+};
+
 /* QUAT I2S Uses 1 I2S SD Line for audio on TAS2559/60 amplifiers */
 &q6afedai {
 	qi2s@22 {
-- 
2.34.1

