Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 269A625346
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 17:01:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728817AbfEUPBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 11:01:38 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:33580 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728786AbfEUPBh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 11:01:37 -0400
Received: by mail-wr1-f67.google.com with SMTP id d9so6049336wrx.0
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 08:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cOkHldzyBFH9X/HosQWb1+4hRM7Ru7GoP6WYL8SoxXY=;
        b=iLz1uYNNrP1wzBd0TtjfZdiiXyUgafCaZPWzdqW1C7AyvgRQwNgYlnaB2oVq1fgvGC
         zUJGOHNaStkp5rxJtlAiNrMXntlQnmnlSNVHbdeiXtMKsI1xEPZ3yFVAYaB2QsoMHTcF
         4ptUEp+iYLSvFypp9o1FJ+OcsMQyC7ODhArXmCmmoY+3uaCQMNAk8MQea/UiDncY2VT5
         Hc3i1oAruKqXtJMHCwrwwjIzxbeycv14H5cmoulfEKDUZAPLikUWDFGVYxFa7vndnoDU
         c7UISO884tWxdVq/zw4M0UAHznZmVPLLg9vjY0yKsdHQ1D4C39VeZj4WvM/X/kkHB+Jc
         s8Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cOkHldzyBFH9X/HosQWb1+4hRM7Ru7GoP6WYL8SoxXY=;
        b=m8xHqcaKRqTyRwSsN7x/lQUor2RBLWqjN3adKS8EvircXckcUkJq7XigK6NQMxFI1t
         MSawgVVbOaTuDfuzLCNGTc4z1Iv4EX6QaA/34MBy5B3pA3dzb+fhW9Nj3TMmMJi2ZqXC
         VvmZEBDG03dnfFS4a/bI4R5IrylKT1ALxqRJIKXfTW3yTTQPzgGRDq7nZJ44w87rrqw9
         Ccu3DCKprW3l3LTwUGA9il+xOwxNtrIoVN5xKjKFMl/ilhn3lKiTUU2pfz8kXbs11KGA
         EyupKUzzM7zQR6N/6KmZDHA7xSiG+C9DbmXyikq+pa4dIu87T+XEZkUJrux+OAV97DsT
         ybMA==
X-Gm-Message-State: APjAAAWB+mwTQ2omzyT8pKQwU8l2eZmsbAd2tCZaz/LM2WoFc353iubQ
        oWxUVnSi7TSl4dCalPFowQDsaizy36DxmA==
X-Google-Smtp-Source: APXvYqyIk/qrN/n0dkOKQIYiCuXs1z6aYIvyyVnYqLMYI9XDoGTJxEnIDige/eKJnv1im9nxaSSdxQ==
X-Received: by 2002:adf:b611:: with SMTP id f17mr52412220wre.162.1558450895175;
        Tue, 21 May 2019 08:01:35 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id b194sm3407505wmb.23.2019.05.21.08.01.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 May 2019 08:01:34 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     jbrunet@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-clk@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 1/3] dt-bindings: clk: meson: add g12b periph clock controller bindings
Date:   Tue, 21 May 2019 17:01:28 +0200
Message-Id: <20190521150130.31684-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521150130.31684-1-narmstrong@baylibre.com>
References: <20190521150130.31684-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the documentation to support clock driver for the Amlogic G12B SoC.

G12B clock driver is very close, the main differences are :
- the clock tree is duplicated for the both clusters, and the
  SYS_PLL are swapped between the clusters
- G12A has additional clocks like for CSI an other components

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
index 5c8b105be4d6..6eaa52092313 100644
--- a/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
+++ b/Documentation/devicetree/bindings/clock/amlogic,gxbb-clkc.txt
@@ -10,6 +10,7 @@ Required Properties:
 		"amlogic,gxl-clkc" for GXL and GXM SoC,
 		"amlogic,axg-clkc" for AXG SoC.
 		"amlogic,g12a-clkc" for G12A SoC.
+		"amlogic,g12b-clkc" for G12B SoC.
 - clocks : list of clock phandle, one for each entry clock-names.
 - clock-names : should contain the following:
   * "xtal": the platform xtal
-- 
2.21.0

