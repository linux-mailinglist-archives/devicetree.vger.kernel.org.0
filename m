Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3A16439B23
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 06:44:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730633AbfFHEoD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jun 2019 00:44:03 -0400
Received: from mail-vk1-f201.google.com ([209.85.221.201]:43387 "EHLO
        mail-vk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730534AbfFHEoC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jun 2019 00:44:02 -0400
Received: by mail-vk1-f201.google.com with SMTP id d143so1569836vkf.10
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 21:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=nYfthp2AfyfO7B9ZHl8Ammgshm5FNB69pWC4uzGdWTs=;
        b=dMmIR9zPNKZhyMj3vydkxUzXcQ5Wm+QYdCizczZFkIvzDmfPxqciSkaELIvEK5Uxih
         os7R+Bfrvx8ppB4h9Lehrkkyr2hNrBpZKz6KUgLW7eikgchAjWmW4brCbz0GESrD4gUr
         KOAldARNoWDFkH7M/X3DYcnyEkQPOyyDbzaEWpozSS9vPYGmeMVbHWJLv8MS6mZ9vYZT
         8xkMnreKVikDXYWgfZ17GA+fWtZb03Hvs75yvGestNhmk5AGCRmflDoCC7BqhIYAtYS8
         dwkJlIxMDIjq8xH6AY1NCud6bFT+S6W56c3l8qUPrOnJpQKyKa/GjyD+LZjJ5UP8C01A
         wuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=nYfthp2AfyfO7B9ZHl8Ammgshm5FNB69pWC4uzGdWTs=;
        b=Rk1UVdIASIJSwEEIPpKXIbm3vF7aL4ZsRt4VB7+ZjIi0oRGED8vkFGieWDHgcEE6DO
         igsSnWrUYFuMYE0w5XeTSz8Z2f32Wa4PZktT/sopFH1afzbZY62/VXhhEPzCISaHqAkf
         5IiWyM1XDsRnINyeWcVDFJp7siplP20Hc3QnwrlL3TvLvwJ4P2xjwthY5t6Xc4mGv0Th
         0PRe+0CpHvLYRedwTjJxCoTdK8zn+JEAYqh8YMUonbMONTEzdbDfv/VCJpX+m1Ku7ZTS
         H540wDuvjmbrNohStbRCcS3RbAiz3dWVGqqeOR71ocktYOfavVecLFX4B57gC/jZMqTb
         b25A==
X-Gm-Message-State: APjAAAWd4Q0FsgKGhCF+Gdyjlh+Ywy3I2n7Sz2Rn2xnFmNJz+5NIPjlw
        zKhh9/T/s5Et+FxSiR0xWTxQksroW2VtRdU=
X-Google-Smtp-Source: APXvYqwiuDqsREIBPM5HcBRZmU9ocdAtwS9Xwtx0WfII9zeKP5yslJnw2HWFvQ3SRyhjeXZMrdRFC3gLD1HglW4=
X-Received: by 2002:ab0:30a3:: with SMTP id b3mr571866uam.3.1559969041487;
 Fri, 07 Jun 2019 21:44:01 -0700 (PDT)
Date:   Fri,  7 Jun 2019 21:43:35 -0700
In-Reply-To: <20190608044339.115026-1-saravanak@google.com>
Message-Id: <20190608044339.115026-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190608044339.115026-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v1 5/9] dt-bindings: interconnect: Add interconnect-opp-table property
From:   Saravana Kannan <saravanak@google.com>
To:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc:     Saravana Kannan <saravanak@google.com>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Jordan Crouse <jcrouse@codeaurora.org>,
        vincent.guittot@linaro.org, bjorn.andersson@linaro.org,
        amit.kucheria@linaro.org, seansw@qti.qualcomm.com,
        daidavid1@codeaurora.org, evgreen@chromium.org,
        sibis@codeaurora.org, kernel-team@android.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for listing bandwidth OPP tables for each interconnect path
listed using the interconnects property.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 .../devicetree/bindings/interconnect/interconnect.txt     | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/interconnect.txt b/Documentation/devicetree/bindings/interconnect/interconnect.txt
index 6f5d23a605b7..fc5b75b76a2c 100644
--- a/Documentation/devicetree/bindings/interconnect/interconnect.txt
+++ b/Documentation/devicetree/bindings/interconnect/interconnect.txt
@@ -55,10 +55,18 @@ interconnect-names : List of interconnect path name strings sorted in the same
 			 * dma-mem: Path from the device to the main memory of
 			            the system
 
+interconnect-opp-table: List of phandles to OPP tables (bandwidth OPP tables)
+			that specify the OPPs for the interconnect paths listed
+			in the interconnects property. This property can only
+			point to OPP tables that belong to the device and are
+			listed in the device's operating-points-v2 property.
+
 Example:
 
 	sdhci@7864000 {
+		operating-points-v2 = <&sdhc_opp_table>, <&sdhc_mem_opp_table>;
 		...
 		interconnects = <&pnoc MASTER_SDCC_1 &bimc SLAVE_EBI_CH0>;
 		interconnect-names = "sdhc-mem";
+		interconnect-opp-table = <&sdhc_mem_opp_table>;
 	};
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog

