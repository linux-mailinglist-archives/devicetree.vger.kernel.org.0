Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30235771CB4
	for <lists+devicetree@lfdr.de>; Mon,  7 Aug 2023 10:58:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230044AbjHGI6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Aug 2023 04:58:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229733AbjHGI6c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Aug 2023 04:58:32 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 041ADE6D
        for <devicetree@vger.kernel.org>; Mon,  7 Aug 2023 01:58:32 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1b8b4748fe4so26847285ad.1
        for <devicetree@vger.kernel.org>; Mon, 07 Aug 2023 01:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691398711; x=1692003511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ivUPZKkU9V81XA/9ZzpML9/MoT2AN2Em4Cdug3APMqE=;
        b=k8fdQc/jO9CQK9AMjUVaYJPPF2jGJAozl8L6QG33AYVjHyCCEaGfbC5AIX/6CcLksi
         rkAK2yqBJ9RFvU4SquPBJRCd+ZDPS0HT+mOlMwi6RdyMz/upN9GfrgmN0J9s3PPUdFyB
         E5sLEIa+3V5TvPiqn6O5to+Z1e1f7LyZVUOoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691398711; x=1692003511;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ivUPZKkU9V81XA/9ZzpML9/MoT2AN2Em4Cdug3APMqE=;
        b=CVvkgH8b8JjNR5+XTnzPkush1e1jY2DTQQZMZ7AsckX8r/09b7XMiO3SXtaLQ/B+FM
         LF9yRtH6KIOfod5W9OAmL1S0DWglS4S+YAUPe1UCEn4QN6StAPApZdEluM7IeZAT4Aea
         /urO0lXBeEoo0W6lu8wiDyV8+/wqLyeFvR9gwjXyPasIUgu59oZ54zBuxogevT3se9w2
         d4CBJyNF8Gb/Upj94jGZGMX6Gf/68sZS0tq9GVoqlMOHm9i8p6EYT96+YUh9xRU/nE0Y
         j/qoDQr9cOKwL1wsctM0NXRUYr/g9AB4MQzDRSSLCrhAWSs2YnlPdMi/fL6XikPvXsSj
         lmUA==
X-Gm-Message-State: AOJu0Ywk01GtRes2oIZ7l0ATjxXJ4+SsHNkqIanE7PmdQkBXOeCSWiZN
        5WzHbR/JnrfGrzYMBr/qYesfnw==
X-Google-Smtp-Source: AGHT+IFdeJORfRK7L+sj/NaxVhQeqQYdqhFUl6jyK8r0GnET7N4tBUbW1ngbqwX7Pj6YJBp7RXGPeQ==
X-Received: by 2002:a17:902:ec92:b0:1b8:b827:aa8e with SMTP id x18-20020a170902ec9200b001b8b827aa8emr8776343plg.11.1691398710772;
        Mon, 07 Aug 2023 01:58:30 -0700 (PDT)
Received: from localhost (97.176.124.34.bc.googleusercontent.com. [34.124.176.97])
        by smtp.gmail.com with UTF8SMTPSA id q9-20020a170902b10900b001b8622c1ad2sm6286044plr.130.2023.08.07.01.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Aug 2023 01:58:30 -0700 (PDT)
From:   Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Google-Original-From: Hsin-Te Yuan <yuanhsinte@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Hsin-Te Yuan <yuanhsinte@google.com>
Subject: [PATCH] arm64: dts: mt8195: change watchdog reset boot flow
Date:   Mon,  7 Aug 2023 08:58:12 +0000
Message-ID: <20230807085811.1.I7d08b8323531c59c0ec247570b2d05a790bfd3d4@changeid>
X-Mailer: git-send-email 2.41.0.585.gd2178a4bd4-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The external output reset signal was originally disabled and sent from
firmware. However, an unfixed bug in the firmware prevents the signal
from being sent, causing the device to fail to boot. To fix this, enable
external output reset signal to allow the device to reboot normally.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@google.com>
---

 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index 37a3e9de90ff7..5dc4214e1840b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1147,6 +1147,10 @@ &uart0 {
 	status = "okay";
 };
 
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
+
 &xhci0 {
 	status = "okay";
 
-- 
2.41.0.585.gd2178a4bd4-goog

