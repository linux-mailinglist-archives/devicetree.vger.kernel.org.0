Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 70C9622FFD9
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 04:55:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726759AbgG1Czl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jul 2020 22:55:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726410AbgG1Czk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jul 2020 22:55:40 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1F7BC061794
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 19:55:40 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id ha11so3367809pjb.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 19:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vj4PvrUowPqtbuJaQ0O2q3BF0NyACCC69JsA6UDc3eI=;
        b=WwZw+pP+nfELKn3wI03HThV4YaBFoLIXqlFNgKBZrNnS80bc1dFNTFkfT6igDZKcWx
         2fHNyDXG4ort0eu9UmmN5X3yJxwADl5nnjGPmWH2sLS1ueMvDNrlJQNXLyC4vMQO22UX
         zvY1I3ilK1mcvGkbW//ckjGAsI1o4eFsDNmTadBtgKvPJi4GKJj/9tlTyZuugIIzi0um
         2Ly2kdCtVMM2GVYGWaki2mOMXBk4lXJCTZZ6W2JmiFjV93N7rMuN8M3bUVdxi0nvjT1p
         3u0SsE6yQwMHidDq+IhnWzF/9sJavbAbzvdZg7LvsAhyUvtasixdMeEUVTqI4N3eds7U
         X6rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=vj4PvrUowPqtbuJaQ0O2q3BF0NyACCC69JsA6UDc3eI=;
        b=mxN6tmBVTqHz5ItpQtOGLtUSfz5DdKl5f7XvD7gg1L/3XFekrg4gF199y4aOyo8XCW
         hUHctF04cJ9qWiWIfGWmFWflOCl7I1rkdg8iJFuhAFvrkkLexQFqxFD+HAKI/ZPdZpxI
         w4Y6YBrvVAqbkRyM631YclYrteJ85f+j6sRgTVKSAz9fcNhAPKnrn8pBKgsQeHtxyLrN
         1mK1DVGv+GttvBRBsrGNQnzUivHRacfbbWlJGT+qzlmGtvSgUVs/C/ukf2crLWyrU/il
         0stXEiNyvvWbDCEIgJbEOzwAUUVL1ReHFWCzXG5oCBNgc0VlSmmH5qFfQapDZOxwiLGa
         ZI1A==
X-Gm-Message-State: AOAM5334zQC9TpdLXrck62DpPCMaMWA6p1q59IdleR3RuswLgJLXNZNg
        MbonvoaW/f5n4vTXb25by31cYw3FVLY=
X-Google-Smtp-Source: ABdhPJw20CHD8mN7rFluEkumrPGtEiQB31mr0omh55p2NAHuyCUiXQXuszlrRL1rXIImDWKp/DWCXg==
X-Received: by 2002:a17:902:7484:: with SMTP id h4mr7136949pll.139.1595904940300;
        Mon, 27 Jul 2020 19:55:40 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.15])
        by smtp.gmail.com with ESMTPSA id w9sm15147407pfq.178.2020.07.27.19.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2020 19:55:38 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     linux-fsi@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Andrew Jeffery <andrew@aj.id.au>,
        Eddie James <eajames@linux.ibm.com>
Subject: [PATCH 1/5] dt-bindings: fsi: Document gpios
Date:   Tue, 28 Jul 2020 12:25:23 +0930
Message-Id: <20200728025527.174503-2-joel@jms.id.au>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200728025527.174503-1-joel@jms.id.au>
References: <20200728025527.174503-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The FSI master has some associated GPIOs that may be present on some
hardware configurations.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 .../devicetree/bindings/fsi/fsi-master-aspeed.txt    | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
index b758f91914f7..a513e65ec0c9 100644
--- a/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
+++ b/Documentation/devicetree/bindings/fsi/fsi-master-aspeed.txt
@@ -12,6 +12,13 @@ Required properties:
  - pinctrl-0: phandle to pinctrl node
  - pinctrl-names: pinctrl state
 
+Optional properties:
+ - cfam-reset-gpios: GPIO for CFAM reset
+
+ - fsi-routing-gpios: GPIO for setting the FSI mux (internal or cabled)
+ - fsi-mux-gpios: GPIO for detecting the desired FSI mux state
+
+
 Examples:
 
     fsi-master {
@@ -21,4 +28,9 @@ Examples:
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fsi1_default>;
 	clocks = <&syscon ASPEED_CLK_GATE_FSICLK>;
+
+	fsi-routing-gpios = <&gpio0 ASPEED_GPIO(Q, 7) GPIO_ACTIVE_HIGH>;
+	fsi-mux-gpios = <&gpio0 ASPEED_GPIO(B, 0) GPIO_ACTIVE_HIGH>;
+
+	cfam-reset-gpios = <&gpio0 ASPEED_GPIO(Q, 0) GPIO_ACTIVE_LOW>;
     };
-- 
2.27.0

