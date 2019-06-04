Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7941A34160
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 10:15:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727013AbfFDIO7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 04:14:59 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:40092 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726795AbfFDIO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 04:14:58 -0400
Received: by mail-pg1-f196.google.com with SMTP id d30so9892591pgm.7
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 01:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=e4QisK5dlRTGLzT7/Rg8a2odjBOSln7PHE3O27n2JN8=;
        b=trbg0frb5Fm6WDCdwfgr0zwTekzKj6RqswMPjQMJ99rO6iHuS2rMNYCBGuDZBGGJSL
         VXvzRWgev366dHO4Ju+XgTk8mr53kJtOrWff7OR0VQAnJN/emszpnUFXpteaSuwy+3RD
         6Qwkhht7EOwDAPmNItBNdWldGbu7b/081rTHGBXxhn6QNbTtdri4hBkShVXhnufArVvu
         iSA9g2TY1ReSSUCGk0krgRSecKARonkhd1Vixw60KDRizzeRGhnvZdMNjC2Kzv9Jwicj
         ujsONmhW4MXoIptsfzomXNoWz5qdGXjZlDUflQJBSlx/unwniaY+PBYp8Xh3aBF1cjOg
         0YAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=e4QisK5dlRTGLzT7/Rg8a2odjBOSln7PHE3O27n2JN8=;
        b=n2QQYLoprjVCFLPANqwCD2IJ1aGaAsTQWv3zOysVEWJk6YbX6SJDBq5+JgiLv9+3CP
         9/vWxSNF0oSpnuEuC5QAWELuaD5Jthp1jGPRVPeUabSo0Quk3iDFgB0VVjjEG8ilDFIg
         6GFekmN/vbIQOewNay9ZS4S3ZIDp+IRlxwWz8d8cAyKJhSIzM6cVJlPANi+tq5+0i21A
         r4DJhVSNjnFoncw0Iui0pD2MKM49VxdrVaM2+ZA/7Bz2enKuOkysM79FP+ZgtpYehT3I
         BQYhZm2YxeBVWfrAdaXCxHrrpP70GAPZzVwfe/i5PfRg+KcukBPQy0DdB3CFiw0VbNn5
         oaoA==
X-Gm-Message-State: APjAAAUbITDwkifvM0cNx0he2cJ8VLSk5mwDWdK+WCZy2nh6xAsgqVSS
        PU76wCq8XCYF8MJuqnQ+xeU7qA==
X-Google-Smtp-Source: APXvYqw4qpyu9spV1elQpgXWUR1JDezR8zWgDrSzwYuh+hIyg/hAg3LaU9yU/tm5hbVZNcFXJ+fT0g==
X-Received: by 2002:a62:d149:: with SMTP id t9mr14481108pfl.173.1559636097966;
        Tue, 04 Jun 2019 01:14:57 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id j4sm14818804pgc.56.2019.06.04.01.14.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 04 Jun 2019 01:14:57 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     adrian.hunter@intel.com, ulf.hansson@linaro.org,
        zhang.lyra@gmail.com, orsonzhai@gmail.com, robh+dt@kernel.org,
        mark.rutland@arm.com, arnd@arndb.de, olof@lixom.net
Cc:     baolin.wang@linaro.org, vincent.guittot@linaro.org, arm@kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 2/9] dt-bindings: mmc: sprd: Add another optional clock documentation
Date:   Tue,  4 Jun 2019 16:14:22 +0800
Message-Id: <84abb6b282b1fbce0c39ebd2b42ca4c18118f863.1559635435.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1559635435.git.baolin.wang@linaro.org>
References: <cover.1559635435.git.baolin.wang@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For some Spreadtrum platforms like SC9860 platform, we should enable another
gate clock '2x_enable' to make the SD host controller work well. Thus add
documentation for this optional clock.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 .../devicetree/bindings/mmc/sdhci-sprd.txt         |    1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
index 45c9978..a285c77 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
+++ b/Documentation/devicetree/bindings/mmc/sdhci-sprd.txt
@@ -14,6 +14,7 @@ Required properties:
 - clock-names: Should contain the following:
 	"sdio" - SDIO source clock (required)
 	"enable" - gate clock which used for enabling/disabling the device (required)
+	"2x_enable" - gate clock controlling the device for some special platforms (optional)
 
 Optional properties:
 - assigned-clocks: the same with "sdio" clock
-- 
1.7.9.5

