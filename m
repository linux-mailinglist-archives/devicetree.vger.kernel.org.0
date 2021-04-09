Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FBFB35A800
	for <lists+devicetree@lfdr.de>; Fri,  9 Apr 2021 22:40:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233995AbhDIUkv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Apr 2021 16:40:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234409AbhDIUkn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Apr 2021 16:40:43 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E18CC0613D9
        for <devicetree@vger.kernel.org>; Fri,  9 Apr 2021 13:40:30 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id x3so5165626ilg.5
        for <devicetree@vger.kernel.org>; Fri, 09 Apr 2021 13:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PtMi89g+xngw9+GYstbnUlBVQc42Sqo+fMvxApUU36w=;
        b=g+PzZ2eaK5rlXbrgp7vKf8PLQB0+8T+R/TGOz5WG53mjkALkAO4JQDNomj48bhLX7m
         qf0f39UXufIDbgtbkvuhZG0n0keMfX1SoQXz0D3ohgTuVZx5Y/+rIyqj6iuK45pSollw
         rWZFyW76hO+ItcLNUH2FB9BU82ptb0mfHFAPChbDHfqIpv9mWdpJ8wxXEmQuoBEPdf8D
         y1mTlRq7FN7WltTE96XINxAOW6Aj4eI3drWYDV0EJZd1bb1eMSpbW8dP7dFqWavAOA/p
         sjrLJP8T+WBKMxQARfZmatVwXFluzeveYDeEvecPPbtxqXCtjbexPyEjpMMkTCRQlIwj
         v1LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PtMi89g+xngw9+GYstbnUlBVQc42Sqo+fMvxApUU36w=;
        b=nxcHErTO5nv71utV5A6zvPh1l/KYGA12Ua+kaBAIJBLl/aKQ5TdFcluCTXF74Gyud5
         D1r8jmcdhv55wFjJ5e6gLfAsjNl2HJTxsDs9oYv13ek6BgoM9UP9llwABgSAAdW6H5iy
         INahk4AFYJJaYae+1kKSiHW1zYDtnqEqGSigsxKygtHeLtsb1jVlYCgV8lHKifVYbBcm
         ZgqSIabpK7J4Xnsgy/mHnDns3qSE32nyrQV9AxApHYvcb/LA9STJLz81sHEVPlaRugT0
         UXB17onBkIUtPcf7P9YqPqwE9EuE3FSMoUbeI5ZBM+Dvn7UZ1cPVaeE0OqYjY6uvsFxe
         2qzA==
X-Gm-Message-State: AOAM531T8lnGR442DH86j1krZodC8EtgkoH64+vgYMQV49ZEf2orjBZQ
        mqf2v7iVyLDEOPaj34zhkaBZGg==
X-Google-Smtp-Source: ABdhPJy5DAb1koFiTFvJXmBI7chDtoiUc2aFAuRhs1aD/xNPIIXrLb4vLqknV6aWGl9vgEuST0F4tw==
X-Received: by 2002:a05:6e02:b2e:: with SMTP id e14mr12609797ilu.186.1618000829745;
        Fri, 09 Apr 2021 13:40:29 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id b9sm1667212ilc.28.2021.04.09.13.40.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 13:40:29 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     davem@davemloft.net, kuba@kernel.org
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        elder@kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH net-next 2/4] net: ipa: disable checksum offload for IPA v4.5+
Date:   Fri,  9 Apr 2021 15:40:22 -0500
Message-Id: <20210409204024.1255938-3-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210409204024.1255938-1-elder@linaro.org>
References: <20210409204024.1255938-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Checksum offload for IPA v4.5+ is implemented differently, using
"inline" offload (which uses a common header format for both upload
and download offload).

The IPA hardware must be programmed to enable MAP checksum offload,
but the RMNet driver is responsible for interpreting checksum
metadata supplied with messages.

Currently, the RMNet driver does not support inline checksum offload.
This support is imminent, but until it is available, do not allow
newer versions of IPA to specify checksum offload for endpoints.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 drivers/net/ipa/ipa_endpoint.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/net/ipa/ipa_endpoint.c b/drivers/net/ipa/ipa_endpoint.c
index dd24179383c1c..5d8b8c68438a5 100644
--- a/drivers/net/ipa/ipa_endpoint.c
+++ b/drivers/net/ipa/ipa_endpoint.c
@@ -88,6 +88,11 @@ static bool ipa_endpoint_data_valid_one(struct ipa *ipa, u32 count,
 	if (ipa_gsi_endpoint_data_empty(data))
 		return true;
 
+	/* IPA v4.5+ uses checksum offload, not yet supported by RMNet */
+	if (ipa->version >= IPA_VERSION_4_5)
+		if (data->endpoint.config.checksum)
+			return false;
+
 	if (!data->toward_ipa) {
 		if (data->endpoint.filter_support) {
 			dev_err(dev, "filtering not supported for "
@@ -230,6 +235,17 @@ static bool ipa_endpoint_data_valid(struct ipa *ipa, u32 count,
 static bool ipa_endpoint_data_valid(struct ipa *ipa, u32 count,
 				    const struct ipa_gsi_endpoint_data *data)
 {
+	const struct ipa_gsi_endpoint_data *dp = data;
+	enum ipa_endpoint_name name;
+
+	if (ipa->version < IPA_VERSION_4_5)
+		return true;
+
+	/* IPA v4.5+ uses checksum offload, not yet supported by RMNet */
+	for (name = 0; name < count; name++, dp++)
+		if (data->endpoint.config.checksum)
+			return false;
+
 	return true;
 }
 
-- 
2.27.0

