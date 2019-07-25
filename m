Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E675F74BE2
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 12:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389134AbfGYKmb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 06:42:31 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:33666 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388358AbfGYKmQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 06:42:16 -0400
Received: by mail-lf1-f67.google.com with SMTP id x3so34273602lfc.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 03:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TpKb4VV72yRVAf7yb1K/qNrZx1PQ6/zj42Sv4qoKxfU=;
        b=Jc4jwUeowngvAFR3LX2W1/kDI10qMd8LfPEIU08SrKmCtk+2usu+5+U+uUsonvMdyi
         cloQgHAyJZVlsXpVdBZvjk9ZeuUYkRE8n0e2pVvhrRB83DD5BrCzaUd3FIPfmHXim6kz
         yn2RQb79KNc7N5jzwU5TXU0dYc4jyJE4/XavMRXVd0Gbv4SXQl4mrktwT3WO8YJpvAKT
         GaF6Mcxr8VgsTSmfXOGqry85Dpr5T+Jh3SdhOJXwgpv54sG/qwS/cQhWD9vGgUcCyseq
         Ce2qxwTBZr8Yc8PvgL2IeXitU3Ui86u9ckAhqpfMe54fyPKnBNGg8TsF48oiYEBAcZWh
         Q8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TpKb4VV72yRVAf7yb1K/qNrZx1PQ6/zj42Sv4qoKxfU=;
        b=q+L+kl8wdgchRZW55NlweJ5UbZdmEGRjmXhP4uvXJNyQLqg2omuyDnLZrRyf+R6p7J
         z2P5Elb/GtbSljpS76ZEc6V6/63IAREFkSgH0Oj5zuFPs1OvTm2IQEeuukf+UwSksX/4
         Crx8eG2aSuDzqSsiN51bPoW0crc9FHuueiq5OcsSYLGqRT2QcYXEumNStov7PDDGvL7b
         2PTAckv8KEu0Crx8NpV/yR9U2YuRj6LEKoIneXn18QV5BZJrt0pY2Vo9q63/VUdY1uDb
         2ADJI9I5VbgLegzoqaQLK7y9A+FVZ9OuE4lUb9AGzN6DjFMfVWq4tb/HzMLo05voJO4y
         /Bug==
X-Gm-Message-State: APjAAAWqW42hhLSJFVTiM654NRo+oB60O0UsxwfY45rU64Bh+DK7+Mhn
        7Gsw5PQNUmVO2VimrLWzgUQ0yw==
X-Google-Smtp-Source: APXvYqzOQ29X1ibchVTw5wCsSyM2R71I8q3iJTM9pm9V+nxEdnazgwjsrGUrRAu07gExbAbgydMpOA==
X-Received: by 2002:ac2:5336:: with SMTP id f22mr39514270lfh.180.1564051334342;
        Thu, 25 Jul 2019 03:42:14 -0700 (PDT)
Received: from localhost.localdomain (ua-83-226-44-230.bbcust.telenor.se. [83.226.44.230])
        by smtp.gmail.com with ESMTPSA id h1sm7451290lfj.21.2019.07.25.03.42.13
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 03:42:13 -0700 (PDT)
From:   Niklas Cassel <niklas.cassel@linaro.org>
To:     Andy Gross <agross@kernel.org>, Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, jorge.ramirez-ortiz@linaro.org,
        bjorn.andersson@linaro.org, ulf.hansson@linaro.org,
        Niklas Cassel <niklas.cassel@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/14] dt-bindings: cpufreq: qcom-nvmem: Make speedbin related properties optional
Date:   Thu, 25 Jul 2019 12:41:32 +0200
Message-Id: <20190725104144.22924-5-niklas.cassel@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190725104144.22924-1-niklas.cassel@linaro.org>
References: <20190725104144.22924-1-niklas.cassel@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Not all Qualcomm platforms need to care about the speedbin efuse,
nor the value blown into the speedbin efuse.
Therefore, make the nvmem-cells and opp-supported-hw properties
optional.

Signed-off-by: Niklas Cassel <niklas.cassel@linaro.org>
Reviewed-by: Ilia Lin <ilia.lin@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes since V1:
-Picked up tags.

 Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
index 198441e80ba8..c5ea8b90e35d 100644
--- a/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
+++ b/Documentation/devicetree/bindings/opp/qcom-nvmem-cpufreq.txt
@@ -20,6 +20,10 @@ In 'cpus' nodes:
 In 'operating-points-v2' table:
 - compatible: Should be
 	- 'operating-points-v2-kryo-cpu' for apq8096 and msm8996.
+
+Optional properties:
+--------------------
+In 'operating-points-v2' table:
 - nvmem-cells: A phandle pointing to a nvmem-cells node representing the
 		efuse registers that has information about the
 		speedbin that is used to select the right frequency/voltage
-- 
2.21.0

