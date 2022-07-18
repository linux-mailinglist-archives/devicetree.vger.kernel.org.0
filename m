Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8472057822F
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 14:23:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233736AbiGRMXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 08:23:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233637AbiGRMXj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 08:23:39 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21906255B6
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 05:23:39 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v16so949232wrr.6
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 05:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+G4kjP9mm00Z/vGeGWDzYlVNOhABgdhQM+y1cGn076c=;
        b=60mVMwczmUfb/zk97cdndbft0pvfXpd5oQi+M9I5DCO5GFO1BQPEbxHhKoYIIFVckl
         ENfN8nMIdbMrKtDQZ3JlpSZtH9IaD4lQ4pdkn+gfuLv6AIqaWowiUWljVH/QhylW2kye
         c9UBBpgQPttPZ/euWPaWP7oG5j+9rjR44SJY3hrKQRwhevIY0xa0K1pMpCQYTryrASUx
         aemrNZMGAEfcTjUfpfwkt5/pB50nouVy2oYuR/Q1M/oLXXA4T389OHrf1w/2RHMqih/U
         odUyrsDNsMVdpD8dxDz+lELOaV6HtdbaL0z4MpiCVk7Ul1fkZh2eSsm02fdLQRYLjUN3
         GsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+G4kjP9mm00Z/vGeGWDzYlVNOhABgdhQM+y1cGn076c=;
        b=3KqfysBf+/h3ioqzNR76OzIyZ1LCxGNnDmt7i+TTActidFuY76lzknlpX0f2IvXimz
         fRHcN5SzjfoMcrfJUixWASfzz1UFq6ZD2vrzy12GQZT0N078bVSXF45M8CIe7NObGtYh
         fEQ8XGaw5A/Q+VS6hZW4XJBj4ZemC7J7XDNT874jM+faqPh3GY43BRseYDW9U+q+3BvC
         CsxJR0Rb9XhDkLg1XI+EsYPE9hd+YmtjZBvOmnV6u/3Q17OsC3awqoSg/GOQeqt+15S3
         6Pyk68qOdvkbqSjQudqYhDpJtzEAqGHdJy07nUhulJtB4HReBxmKkAf/gGLmRI2j1yJ6
         uYsw==
X-Gm-Message-State: AJIora9cyyD6ZjGb9TpUFv1TtqWMpMrXy2qhClMfRePw1iaq0iZB65Vf
        TpXyrfyf6Fjmu6O4bStzDhwTHA==
X-Google-Smtp-Source: AGRyM1tBYieC5uAodNL+I506Npqiad2t1WV5UQx4dgqstQ/tQ3wlya8wyr2E1fp1VG/rZWURmyIJHg==
X-Received: by 2002:a5d:434a:0:b0:21d:aa7e:b1bb with SMTP id u10-20020a5d434a000000b0021daa7eb1bbmr23752945wrr.619.1658147017579;
        Mon, 18 Jul 2022 05:23:37 -0700 (PDT)
Received: from localhost.localdomain ([2a01:cb1d:77d:8cd7:da25:e091:44c6:f87f])
        by smtp.gmail.com with ESMTPSA id k9-20020a5d5189000000b0021dd8e1309asm8184929wrv.75.2022.07.18.05.23.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 05:23:37 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Julien Panis <jpanis@baylibre.com>
Subject: [PATCH v1 2/2] arm64: dts: ti: k3-am625-sk: mark MCU and WKUP watchdogs as reserved
Date:   Mon, 18 Jul 2022 14:23:28 +0200
Message-Id: <20220718122328.251602-3-jpanis@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220718122328.251602-1-jpanis@baylibre.com>
References: <20220718122328.251602-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MCU wdt is typically used by M4F.
Wake up wdt is typically used by DM (R5) firmware.

Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am625-sk.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am625-sk.dts b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
index 39fb1d763037..f69d5dec7fb2 100644
--- a/arch/arm64/boot/dts/ti/k3-am625-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am625-sk.dts
@@ -493,3 +493,13 @@ &ecap2 {
 &main_mcan0 {
 	status = "disabled";
 };
+
+&mcu_rti0 {
+	/* MCU RTI0 is used by M4F firmware */
+	status = "reserved";
+};
+
+&wkup_rti0 {
+	/* WKUP RTI0 is used by DM firmware */
+	status = "reserved";
+};
-- 
2.25.1

