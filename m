Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FA425BFBF5
	for <lists+devicetree@lfdr.de>; Wed, 21 Sep 2022 12:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230081AbiIUKGi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Sep 2022 06:06:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229842AbiIUKGf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Sep 2022 06:06:35 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 013B6785B3
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:06:34 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id sd10so4064025ejc.2
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 03:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=SWRMCtpzElNqLTlhEdQcA2dgwTzzcoB0Eu586QuxWjs=;
        b=MAMVru1Q6XPT9axfw/NkmiV2TLVyFGyw+JPeVX6jT7N9j0ebqoXCsLbPcNw10z9215
         zKFB4b4AOtom2ITDlJeyu2Xu7eE+Fr7lTdPyLM75euGlZtfnY5yEhJMMNz2UFfCfjoRX
         v7OiUzDRXM66PzLdDEYP+EO0Dtn30xZukKf+BYEuzBmRrNcHBijOkHFBORUXgQz7kv7X
         yAypKF7c+O6VGGEHFjum/uScuOXAWVz2a95zqcpkVT7FhyWBTLKlId4r8IlQJzUCQ6YE
         5PrKZK4QPaKzMyVxIWUUYPSYm9teOPtZJE3k1Jmbrm636aYV3ZRxFxgwUTB/hm+M6Js4
         QE2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=SWRMCtpzElNqLTlhEdQcA2dgwTzzcoB0Eu586QuxWjs=;
        b=pdOjlbFBxrZgIhgoKj0bOfFpW0n2qDD0Kpw2kadsbvZ5x3E3e4EI93MbQ/wpHNB7Yr
         ulqXUmKQIlkFTbYXaa0CM3gOohTJphUVFsuTh52rexYHcAjCRCoBVl5kQ/qdx/4anXHZ
         JHYgHHMauX5jXk/Sjwznj3ajcHgZLaacwDNvkTOa4BciKB4qZCmp4ioYb0rrztzapHbg
         UIOySM0aIeEGt9m92gaIDajR3rcKpvCtPP2ek+cxAbJ9JDJ0MQmL9cwV8YIQuWLHIXKZ
         fi2iov+57u5q9nTg+N3pE+2yQpAFRCrDia1HcAemet1+LjF4NjAlS0lnTdnqqa8KhCdy
         LHvg==
X-Gm-Message-State: ACrzQf1Wx4JlMgxItuVcV9nVGirAJV7toeaHn+pM71TE3mr/InstZNKz
        Ew1zoTxpOYf+W8vUDOCuk0+pfg==
X-Google-Smtp-Source: AMsMyM5PFPImjJnwXsLtwLARWuglhm95zqcE5cooBVTkFOR1UscK0MEppJc7AIdzSq9hmv+TN04rqQ==
X-Received: by 2002:a17:906:4fd0:b0:781:bcca:78e6 with SMTP id i16-20020a1709064fd000b00781bcca78e6mr6215671ejw.508.1663754792517;
        Wed, 21 Sep 2022 03:06:32 -0700 (PDT)
Received: from baylibre-ThinkPad-T14s-Gen-2i.. (32.31.102.84.rev.sfr.net. [84.102.31.32])
        by smtp.gmail.com with ESMTPSA id v1-20020a170906292100b0074134543f82sm1087710ejd.90.2022.09.21.03.06.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Sep 2022 03:06:32 -0700 (PDT)
From:   Julien Panis <jpanis@baylibre.com>
To:     william.gray@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, mranostay@ti.com
Subject: [PATCH v7 2/4] Documentation: ABI: sysfs-bus-counter: add frequency & num_overflows items
Date:   Wed, 21 Sep 2022 12:06:25 +0200
Message-Id: <20220921100627.124085-3-jpanis@baylibre.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20220921100627.124085-1-jpanis@baylibre.com>
References: <20220921100627.124085-1-jpanis@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This commit adds frequency and num_overflows items to counter ABI file
(e.g. for TI ECAP hardware used in capture operating mode).

Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 Documentation/ABI/testing/sysfs-bus-counter | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-bus-counter b/Documentation/ABI/testing/sysfs-bus-counter
index 30b6e1faa6f6..aea0adc3938f 100644
--- a/Documentation/ABI/testing/sysfs-bus-counter
+++ b/Documentation/ABI/testing/sysfs-bus-counter
@@ -209,6 +209,12 @@ Description:
 		both edges:
 			Any state transition.
 
+What:		/sys/bus/counter/devices/counterX/countY/num_overflows
+KernelVersion:	6.0
+Contact:	jpanis@baylibre.com
+Description:
+		This attribute indicates the number of overflows since count Y start.
+
 What:		/sys/bus/counter/devices/counterX/countY/ceiling_component_id
 What:		/sys/bus/counter/devices/counterX/countY/floor_component_id
 What:		/sys/bus/counter/devices/counterX/countY/count_mode_component_id
@@ -219,11 +225,13 @@ What:		/sys/bus/counter/devices/counterX/countY/prescaler_component_id
 What:		/sys/bus/counter/devices/counterX/countY/preset_component_id
 What:		/sys/bus/counter/devices/counterX/countY/preset_enable_component_id
 What:		/sys/bus/counter/devices/counterX/countY/signalZ_action_component_id
+What:		/sys/bus/counter/devices/counterX/countY/num_overflows_component_id
 What:		/sys/bus/counter/devices/counterX/signalY/cable_fault_component_id
 What:		/sys/bus/counter/devices/counterX/signalY/cable_fault_enable_component_id
 What:		/sys/bus/counter/devices/counterX/signalY/filter_clock_prescaler_component_id
 What:		/sys/bus/counter/devices/counterX/signalY/index_polarity_component_id
 What:		/sys/bus/counter/devices/counterX/signalY/synchronous_mode_component_id
+What:		/sys/bus/counter/devices/counterX/signalY/frequency_component_id
 KernelVersion:	5.16
 Contact:	linux-iio@vger.kernel.org
 Description:
@@ -364,3 +372,9 @@ Description:
 			via index_polarity. The index function (as enabled via
 			preset_enable) is performed synchronously with the
 			quadrature clock on the active level of the index input.
+
+What:		/sys/bus/counter/devices/counterX/signalY/frequency
+KernelVersion:	6.0
+Contact:	jpanis@baylibre.com
+Description:
+		Read-only attribute that indicates the signal Y frequency, in Hz.
-- 
2.37.3

