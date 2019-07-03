Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1133F5DA6D
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 03:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727497AbfGCBKm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 21:10:42 -0400
Received: from mail-oi1-f201.google.com ([209.85.167.201]:37052 "EHLO
        mail-oi1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727508AbfGCBKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 21:10:41 -0400
Received: by mail-oi1-f201.google.com with SMTP id f19so368483oib.4
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 18:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=/i4EXGtPCOjTtUn8OcmQPQhLaKRhMOHErmPbV67RSQU=;
        b=km/RUnXQsmM11f9u6Vj6KLdcm6YNGFElnIVjDftfoR/IS3uki7O8YPAX7hSwR6929j
         x51ouFZg/um6bBKoBAY0YdKBqXpWk+IqgLewMKa92kH07Ada5NO+GkfFpUDoYheX8XJl
         9bwzLgVwPNJ8Jmfq0GNodUvpY7vhnKK1tjThNpdWyMW7gkM4ReRiv0XFoM5PeklWDhJh
         Wtfj3qWG/TfEolzalTHU2AbJlUtyU2LfjZKCtDt1KHzdh3GaANn3/7NXwh7aNKAoWFb3
         JdKlsRtBZWE13avukcxGZZsOwmlEkx5nBOnAjj26Sfq5NB9b5tWkWtbEkYLCY/7phx3e
         /fJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=/i4EXGtPCOjTtUn8OcmQPQhLaKRhMOHErmPbV67RSQU=;
        b=FQzOv1FCA1mtirjrjLPed9bIwBDeMM/zZCROmZaH4DGJiju8ZF5wx7dlLbA3VZqhJ3
         NBXHQbR8CwiemkUyN9aXkxFKOG94vQV3ZLAwgyINBEJfW7pB0ZwB1gLwO83PUI17jfKA
         Smi+EjP8FwxFDzxhgb4OwZoEuJtRKDlgWPNDk8uSEVsSPkIxPyWCKs04Ug3XHDbAMfMN
         RUCZ3r+618GG0V9GYRIjqNrdwer3OTHeO7OzAB1uJrEG63yg0X36/NcEybpvDz2xBVqd
         77T4pXHgGmosX1fLmhOKxSF/fD21VgMYO952ycwIl/rdAOVAIC8JWqAdKXyN8Jo24prM
         sczw==
X-Gm-Message-State: APjAAAWFyAD5lpSaRK3v9YVaVaSOeJmCF3sDnZr3UqQheg2lO6QDqsgu
        QTTlqR9ZmYo5oHTu5qJ1aOKQAYEQPIN8mwA=
X-Google-Smtp-Source: APXvYqzR1Jl6EGogA5bw9waCkseQkalNsyNyWGljAV6SnmdbV7yJAuwfhPQ/T+V5l9xBaAIX1pXO6niIfMhaSkU=
X-Received: by 2002:a05:6808:656:: with SMTP id z22mr4715089oih.79.1562116240529;
 Tue, 02 Jul 2019 18:10:40 -0700 (PDT)
Date:   Tue,  2 Jul 2019 18:10:19 -0700
In-Reply-To: <20190703011020.151615-1-saravanak@google.com>
Message-Id: <20190703011020.151615-6-saravanak@google.com>
Mime-Version: 1.0
References: <20190703011020.151615-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v3 5/6] dt-bindings: interconnect: Add interconnect-opp-table property
From:   Saravana Kannan <saravanak@google.com>
To:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc:     Saravana Kannan <saravanak@google.com>, vincent.guittot@linaro.org,
        seansw@qti.qualcomm.com, daidavid1@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>, sibis@codeaurora.org,
        bjorn.andersson@linaro.org, evgreen@chromium.org,
        kernel-team@android.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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
2.22.0.410.gd8fdbe21b5-goog

