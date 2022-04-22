Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04A7A50C440
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 01:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233711AbiDVW54 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 18:57:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234215AbiDVW5m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 18:57:42 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70BA4263CAB
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 15:21:53 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-e604f712ecso10045278fac.9
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 15:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5WJANqKYC0uOwc9pHxoXMF3q63zMtKx1xf7OKCPf+Fc=;
        b=uthw0bR1T+hvsbqlpfq3kVyFnz9kfquznheJF2Eheau3SbrFUFBM7k946RQICA84iL
         +xpnkZGMw1h4UFs7xnhomn2V/SPwp8JDVJd0W8G6QjwWpDTomn60Qthg9pD41nGlmEbA
         q1irLx6H2YqzHFC1iZsDi7wc9GA+p1B9vYBJ7iAQ04qQdGWVvh+016mXSXPiQbrxOUo/
         74H6WCKYAs7uWiCAQrBON9ZjJxP/zpH7kljtCxymFwaVZhi3IN81Fx0hcijrD0akLZN1
         rPM53YiQ7OsGxA/XkBFssJI+Ni33ftKFLAH+KoOGkYH5po//lrEASLlirdXtRDjqaZ1u
         G3cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5WJANqKYC0uOwc9pHxoXMF3q63zMtKx1xf7OKCPf+Fc=;
        b=NoCmOqxb6D/JWBfguP5hSWxa3TOlaSzKiZ+bZBwAS+62vNoH3CShDFXDUJwGLD3RFe
         nAMpgpIjqW1wxWGqELSdb2KZZinfNLLNwHkbk4z1cem8vcDf8DKbO7sJ147bPjQh+fYR
         gkXkbNvYxKrafaWsbAUDNLofZizAwWNNacJ1fIOesGlWsRG28l8IAE49il1dcZYM2aMh
         0cDS++zAyXBcVwOURl2L3utSstapCFXtUwTps/u1F9wGSP8B71H6Us3Db1Fz+MHkoZss
         SsaecFIX8sLzcK10Oi3Ga/lKYzZsOn2DeX8kdyFIkH9dSegoOxgqe/EnwN65szaDOVO0
         LsEw==
X-Gm-Message-State: AOAM532PtniMM/28DN+Qs4zeWTbnSy8F/FgTVGcWhr1VHl1yTKds810O
        nr4muCUr/4aI9mi1GEvIkFKI4w==
X-Google-Smtp-Source: ABdhPJwSUqlaOIAUy4BPNAE9huiM3YDyDvJ842NV6mi/ujWxNBcGD09OfXFrcIPMy0Dxb7jgYWU22A==
X-Received: by 2002:a05:6870:e244:b0:e9:150b:5d21 with SMTP id d4-20020a056870e24400b000e9150b5d21mr318161oac.234.1650666112565;
        Fri, 22 Apr 2022 15:21:52 -0700 (PDT)
Received: from ripper.. ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id js4-20020a056870bac400b000e687cdf5adsm1049224oab.55.2022.04.22.15.21.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Apr 2022 15:21:52 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-acpi@vger.kernel.org
Subject: [PATCH v5 2/7] device property: Use multi-connection matchers for single case
Date:   Fri, 22 Apr 2022 15:23:46 -0700
Message-Id: <20220422222351.1297276-3-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422222351.1297276-1-bjorn.andersson@linaro.org>
References: <20220422222351.1297276-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The newly introduced helpers for searching for matches in the case of
multiple connections can be resused by the single-connection case, so do
this to save some duplication.

Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---

Changes since v4:
- None

 drivers/base/property.c | 55 ++++-------------------------------------
 1 file changed, 5 insertions(+), 50 deletions(-)

diff --git a/drivers/base/property.c b/drivers/base/property.c
index babab8cec7a0..337c95fea217 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -1176,31 +1176,6 @@ const void *device_get_match_data(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(device_get_match_data);
 
-static void *
-fwnode_graph_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
-			  void *data, devcon_match_fn_t match)
-{
-	struct fwnode_handle *node;
-	struct fwnode_handle *ep;
-	void *ret;
-
-	fwnode_graph_for_each_endpoint(fwnode, ep) {
-		node = fwnode_graph_get_remote_port_parent(ep);
-		if (!fwnode_device_is_available(node)) {
-			fwnode_handle_put(node);
-			continue;
-		}
-
-		ret = match(node, con_id, data);
-		fwnode_handle_put(node);
-		if (ret) {
-			fwnode_handle_put(ep);
-			return ret;
-		}
-	}
-	return NULL;
-}
-
 static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
 						const char *con_id, void *data,
 						devcon_match_fn_t match,
@@ -1235,28 +1210,6 @@ static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
 	return count;
 }
 
-static void *
-fwnode_devcon_match(struct fwnode_handle *fwnode, const char *con_id,
-		    void *data, devcon_match_fn_t match)
-{
-	struct fwnode_handle *node;
-	void *ret;
-	int i;
-
-	for (i = 0; ; i++) {
-		node = fwnode_find_reference(fwnode, con_id, i);
-		if (IS_ERR(node))
-			break;
-
-		ret = match(node, NULL, data);
-		fwnode_handle_put(node);
-		if (ret)
-			return ret;
-	}
-
-	return NULL;
-}
-
 static unsigned int fwnode_devcon_matches(struct fwnode_handle *fwnode,
 					  const char *con_id, void *data,
 					  devcon_match_fn_t match,
@@ -1303,16 +1256,18 @@ void *fwnode_connection_find_match(struct fwnode_handle *fwnode,
 				   const char *con_id, void *data,
 				   devcon_match_fn_t match)
 {
+	unsigned int count;
 	void *ret;
 
 	if (!fwnode || !match)
 		return NULL;
 
-	ret = fwnode_graph_devcon_match(fwnode, con_id, data, match);
-	if (ret)
+	count = fwnode_graph_devcon_matches(fwnode, con_id, data, match, &ret, 1);
+	if (count)
 		return ret;
 
-	return fwnode_devcon_match(fwnode, con_id, data, match);
+	count = fwnode_devcon_matches(fwnode, con_id, data, match, &ret, 1);
+	return count ? ret : NULL;
 }
 EXPORT_SYMBOL_GPL(fwnode_connection_find_match);
 
-- 
2.35.1

