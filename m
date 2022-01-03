Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF07A483467
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 16:47:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234330AbiACPrC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 10:47:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234303AbiACPrB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 10:47:01 -0500
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DED7C061792
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 07:47:01 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id l10so30385967pgm.7
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 07:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=boundarydevices.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LuC6I612TLZwEINCPwWyZhF1G85K2gAYC1IKzQ9Ubwg=;
        b=GRfk+w2ob9enhOcSB7G/ep4S1ROT5GfJoq0yFqlZEMr2APjXxmcSoqt3o4Pynd02JB
         iYIOn8TwYE3aU2fgGpMxqi+ZkGopJzSz9ViJI6mAr6cNZ+Nr1B/iE5+SXcKg373MHo2U
         pzHX1mC5YMj6dbFb4W3HcwRreytUsqfp/KVrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LuC6I612TLZwEINCPwWyZhF1G85K2gAYC1IKzQ9Ubwg=;
        b=Eay1IKTmAqyoeguVCJcy7nuD97jkMZPR45Nt6oezlSrzfmL/MG0VtS0wCsMCzKIrb5
         ZbQ0lmMTlM9qkgo9zB9oiGGFkoJbFo69KGJrlIgS4R0WDxF8ueNZrav7ARoUqrNrU7Cm
         nGJiL/65z95BuWyxI8OAkcpCz1S2tmF2TvHB/wMC7vYFN8H+/tKjUa46z4Tkax4B8BRe
         T+ilLlTdWig9beT8tw3ucQa74eDW1utwI8nB5Mik+tXA+kFcNlXvFcoDwVr1YlEqyjSN
         u2z+LIkO9SS8kDmPrPhmstbNUooAD2c5rcwKxK3lL+gtYcKitpPU9rtKu6ZryNG6yJ3w
         J11Q==
X-Gm-Message-State: AOAM531sLNU0MEQMQliBznKEPPDYrZXj+FfoqOKQgJz7G8KmrJYZ/6+w
        tRqyJhePqHfspAl2kOQymWWTsw==
X-Google-Smtp-Source: ABdhPJwLI+NLuZ8zgVbA9INKDpuqIVAAWlzG6A08J97tHUyvcwYodufjPg5kieTeJIacj/Q74nw0Xw==
X-Received: by 2002:a63:bf0b:: with SMTP id v11mr26213644pgf.144.1641224820490;
        Mon, 03 Jan 2022 07:47:00 -0800 (PST)
Received: from localhost.localdomain (lfbn-idf1-1-1088-186.w82-125.abo.wanadoo.fr. [82.125.191.186])
        by smtp.gmail.com with ESMTPSA id l2sm41080153pfc.42.2022.01.03.07.46.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jan 2022 07:47:00 -0800 (PST)
From:   Gary Bisson <gary.bisson@boundarydevices.com>
To:     linux-amlogic@lists.infradead.org
Cc:     Gary Bisson <gary.bisson@boundarydevices.com>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: meson-g12-common: add uart_ao_b pins muxing
Date:   Mon,  3 Jan 2022 16:46:16 +0100
Message-Id: <20220103154616.308376-4-gary.bisson@boundarydevices.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220103154616.308376-1-gary.bisson@boundarydevices.com>
References: <20220103154616.308376-1-gary.bisson@boundarydevices.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- RX/TX signals can be mapped on 2 different pairs of pins so supporting
  both options
- RTS/CTS signals however only have 1 option available

Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
---
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Neil Armstrong <narmstrong@baylibre.com>
Cc: Kevin Hilman <khilman@baylibre.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 .../boot/dts/amlogic/meson-g12-common.dtsi    | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index af1357c48bee..3a7773ffbd08 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1952,6 +1952,33 @@ mux {
 						};
 					};
 
+					uart_ao_b_1_pins: uart-ao-b-1 {
+						mux {
+							groups = "uart_ao_b_tx_2",
+								 "uart_ao_b_rx_3";
+							function = "uart_ao_b";
+							bias-disable;
+						};
+					};
+
+					uart_ao_b_2_pins: uart-ao-b-2 {
+						mux {
+							groups = "uart_ao_b_tx_8",
+								 "uart_ao_b_rx_9";
+							function = "uart_ao_b";
+							bias-disable;
+						};
+					};
+
+					uart_ao_b_cts_rts_pins: uart-ao-b-cts-rts {
+						mux {
+							groups = "uart_ao_b_cts",
+								 "uart_ao_b_rts";
+							function = "uart_ao_b";
+							bias-disable;
+						};
+					};
+
 					pwm_a_e_pins: pwm-a-e {
 						mux {
 							groups = "pwm_a_e";
-- 
2.34.1

