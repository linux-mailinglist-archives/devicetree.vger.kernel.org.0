Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F0793B4B06
	for <lists+devicetree@lfdr.de>; Sat, 26 Jun 2021 01:41:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229853AbhFYXnx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 19:43:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229952AbhFYXnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 19:43:52 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69BEFC0617A8
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 16:41:30 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id i12-20020a05683033ecb02903346fa0f74dso11116120otu.10
        for <devicetree@vger.kernel.org>; Fri, 25 Jun 2021 16:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9LdEtQWHixxMksOLqMkIZ3Jf3V2/vpIH/kD33+PZdDU=;
        b=kLv5QxaZz/woGOUk+iLumsOjktKVteL1UfiJXpPWLYSaD+4Rjbna+T/oOEFouK3sXM
         XWVTEMnQDNCAL5RpT+fQZT69H7o84Qokj9Gnj/YjCzu0qPZ/gfAGDbn/MMOOmdwft5h4
         gipaEABf5cpt6M9GpupjXBRH03Fih1jv9M31FmBxTcunOR85eQW20FKXLLP88NNUN2Y0
         LlavpD5LWebrSZGWPdXsw5AYMyo29oUeBp+lpF7ZmFMvXe/CCQRVvYQ1kRw+KY3M4xCc
         B28bQrLSI0mf5d6wmsrkMFRat7foFZ9XkJYWCegb67V7FJ2pXzGt5sb5E0Kn6TUZ+aW3
         AFvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9LdEtQWHixxMksOLqMkIZ3Jf3V2/vpIH/kD33+PZdDU=;
        b=Maf0jcibMgwfspT/JA4pXsqun3sZQMgMBrm5KLCz699aM6drd+eXNF09Co+vn2T0+b
         F4ZQTQCgl1NU7tuS1zGzefzi8YrP+BzpWs1skLVJZKgBBm6ZhcQFN4PAZ2Td4J5RCHgI
         U00fEoL8ymaQ2aAkBvpeNrfWTDPij2ZEh1uTaClUCJnbh09rNRtQ7PyUFwGMS+lIpz6R
         Na6IP58VVk0besjsogtz3ut1q20OdadvXtq9sgcbk88mpXgPyP0o6rMgZTe6/CF2Fwgw
         YH5jtuwH1a3e/E4+GLYmxkPd58PRgG/KMyBQXT7ibHx6JG1F/nQl0VsoYhBMebUQ95B/
         QgLA==
X-Gm-Message-State: AOAM5336rt+lWD8G7HghNtINgKcy/wdINc75KA63+dp/em8+NO4zldL8
        vtouXkMWWqND5BZHklt0tnJIJw==
X-Google-Smtp-Source: ABdhPJytx8XbwfsCQXrtAA12oPy3SbFp0VpDwIE0d9z8qlQ5E3I8MMgGUUymWvumDH+4s2taiPdF2Q==
X-Received: by 2002:a05:6830:144:: with SMTP id j4mr11797368otp.140.1624664489805;
        Fri, 25 Jun 2021 16:41:29 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id u10sm1844267otj.75.2021.06.25.16.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jun 2021 16:41:29 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Sibi S <sibis@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] soc: qcom: aoss: Add generic compatible
Date:   Fri, 25 Jun 2021 16:40:18 -0700
Message-Id: <20210625234018.1324681-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625234018.1324681-1-bjorn.andersson@linaro.org>
References: <20210625234018.1324681-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It seems we don't need platform specific implementation for the AOSS
QMP, so let's introduce a generic compatible to avoid having to update
the driver for each platform.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 drivers/soc/qcom/qcom_aoss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/qcom/qcom_aoss.c b/drivers/soc/qcom/qcom_aoss.c
index 934fcc4d2b05..92a1af70a649 100644
--- a/drivers/soc/qcom/qcom_aoss.c
+++ b/drivers/soc/qcom/qcom_aoss.c
@@ -602,6 +602,7 @@ static const struct of_device_id qmp_dt_match[] = {
 	{ .compatible = "qcom,sm8150-aoss-qmp", },
 	{ .compatible = "qcom,sm8250-aoss-qmp", },
 	{ .compatible = "qcom,sm8350-aoss-qmp", },
+	{ .compatible = "qcom,aoss-qmp", },
 	{}
 };
 MODULE_DEVICE_TABLE(of, qmp_dt_match);
-- 
2.29.2

