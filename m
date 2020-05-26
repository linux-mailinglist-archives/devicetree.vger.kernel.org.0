Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A33E21D08D5
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2020 08:43:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729492AbgEMGnb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 May 2020 02:43:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728712AbgEMGnb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 May 2020 02:43:31 -0400
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B639C061A0E
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 23:43:31 -0700 (PDT)
Received: by mail-pg1-x541.google.com with SMTP id 9so1805515pgr.3
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 23:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SdoodXbLdjJhFKg183MdCLlRCCGhuA/fW4OhYTZuK3Y=;
        b=IpTr+v4AtxYHb9qJtYjdSbMeRxAFkPrQc1IgcLC8xxTq2HVifdgGWE7Xmmkw7wwwy3
         sYiW4+0p17YIZ4e3jZNlYjqt9uOiWjO9gHwFwG30Urgewvt0rvY8UWaoIUCejTk+LDE/
         v8RkrXzyQDsOGX7I8eNruS7haRji//dWg2tIL/0WKKjQ02KTbP/o6Jbv9rSciOoFyXN7
         zwpsD4+vLU3EmP3DNXbV3bxKqvXjRLwYCkpugTB4V1qk07+mYrYJghKEP6fHPDM3ATme
         lltd0tFTM509rztRYMnVL4hsX9M8H6w5m6ug8hPBgaFUKumm6s1yKCrRVSzFffl49FNm
         UxZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SdoodXbLdjJhFKg183MdCLlRCCGhuA/fW4OhYTZuK3Y=;
        b=uBkHlkrMcLwcxpzN8Et0elDMmtsThiudl+I6nx06lhk1q8sHF90WktoMgixDIpPjxD
         x9dPx58M2TDP8XkkcWwxmA6a+y1R1JDkaQU1weAMrhK+HwfrPCKj4bw2c+mZLuOi6yFA
         GJCK7CHz+S41eW0dA+KdX8zn1wkrKVCPbJd4s6t30cZ0bL4jRnxEE/REOxJBc+/NaIBE
         fJvH+aAuIBSnpG5C8fwnsVbHbh4V6rjx02jH9TK2TIxqdoNqrzwFJWjOMK9odbYd+zBM
         H4r4FALNqUkeyJZ3pWajhrL3R4n8x/qIoh9pwIVmkB4uTTdmZk2QbKIGZip1v/ORSiHi
         LAPQ==
X-Gm-Message-State: AOAM5326AfdeKxHfSV0WNbusb2lFtbvuyvQo3PIyZ4RC9IdFbrniUpIS
        32731WSmKu2r9iMd1qJ4v6NeXA==
X-Google-Smtp-Source: ABdhPJw3lLOIsmu3kb+Bp9x6l+9b+XD5YD6y4cXxxJqgrRlftE2n+3ibNWyKQd/1lelxWfKmdf3Uag==
X-Received: by 2002:a63:4504:: with SMTP id s4mr10046673pga.247.1589352210742;
        Tue, 12 May 2020 23:43:30 -0700 (PDT)
Received: from localhost ([122.167.130.103])
        by smtp.gmail.com with ESMTPSA id e12sm11989801pgv.16.2020.05.12.23.43.29
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 May 2020 23:43:29 -0700 (PDT)
Date:   Wed, 13 May 2020 12:13:28 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Georgi Djakov <georgi.djakov@linaro.org>
Cc:     vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, rjw@rjwysocki.net,
        saravanak@google.com, sibis@codeaurora.org, mka@chromium.org,
        robh+dt@kernel.org, rnayak@codeaurora.org,
        bjorn.andersson@linaro.org, vincent.guittot@linaro.org,
        jcrouse@codeaurora.org, evgreen@chromium.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 10/10] OPP: Add support for setting interconnect-tags
Message-ID: <20200513064328.ycnaal6d6m72d5bi@vireshk-i7>
References: <20200512125327.1868-1-georgi.djakov@linaro.org>
 <20200512125327.1868-11-georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200512125327.1868-11-georgi.djakov@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12-05-20, 15:53, Georgi Djakov wrote:
> From: Sibi Sankar <sibis@codeaurora.org>
> 
> Add support for setting tags on icc paths associated with
> the opp_table.
> 
> Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
> ---

Applied this delta:

diff --git a/drivers/opp/of.c b/drivers/opp/of.c
index f71dc5eb0eba..a4972c94f428 100644
--- a/drivers/opp/of.c
+++ b/drivers/opp/of.c
@@ -346,7 +346,6 @@ int dev_pm_opp_of_find_icc_paths(struct device *dev,
 
 	count = of_count_phandle_with_args(np, "interconnects",
 					   "#interconnect-cells");
-	of_node_put(np);
 	if (count < 0) {
 		ret = 0;
 		goto put_np;
@@ -380,7 +379,7 @@ int dev_pm_opp_of_find_icc_paths(struct device *dev,
 		/* Set tag if present */
 		if (!of_property_read_u32_index(np, "interconnect-tags",
 						i, &tag))
-			icc_set_tag(opp_table->paths[i], tag);
+			icc_set_tag(paths[i], tag);
 	}
 
 	if (opp_table) {

-- 
viresh
