Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFCB5610E68
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 12:25:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230390AbiJ1KZi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 06:25:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230366AbiJ1KZY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 06:25:24 -0400
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com [IPv6:2001:4860:4864:20::35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 312984315A
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 03:25:22 -0700 (PDT)
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-13ba86b5ac0so5837145fac.1
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 03:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=compal-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4ci1NI4rEDngdiIs8klmEEe/VgSVPTbSHjvB1KeT7kI=;
        b=vOC/xKdMUo642qaKQH78hZIqPpTZUPYnjK3EGVr+0Op2zSKxXyp6TtAf2S3VcbZrba
         tINVIqD6zWtjOgefgvzhYrG+wmguFT/XM1Tu91Ra4H+kCzYaSWaZWNMHYXXwSxm5AmoJ
         4S3b4Q2XUvNUxmtYEmDYVEJ1FmFRAfbPPrD7hfslyblh+6CAgZ5/alZ2pTuRmnfNNg7y
         xYRShGLqziBYo4JFrwSaF+luHyYRtif7mzPZPc1S5QZ4Yt32W8i1mFzm22+thOC9xI5/
         Rk4ZII8CiN5me5xRrH+OoKtbqMnfO5+XayqbfeXAZYRiAoPq2/bT/zECUOzsYNblxX4y
         2P7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4ci1NI4rEDngdiIs8klmEEe/VgSVPTbSHjvB1KeT7kI=;
        b=onxT1c5QrWOYvjKIsk2loI1bXURy1UI82b0f7Aus2YMOYZiRo28m3thxlJYgSo6+zy
         ezS707b/MObQVfYpF64tPBtRpbM1KiYzL4y7RNnvmtZPIt7g5koh8UzX7gBAdSu1O7Vy
         BGTKqbYaHcstXbgAbaGb3hz0DASU65okNPXVwVca7mZe1Faob6iI4wWFdkcwhaVJiSp5
         hgHVwttEf6DHIDnOevQo1tpewGJ32yLCi4QMwElAWmsZ7UGjUsWbrbIGNkrh69JJ4527
         Tjt8OUjEjuuQFIafedcwB/jGH8CW8HBPeC9XSyLVma0fJaidatkpqgL5jMAz/o0AOYof
         MLKQ==
X-Gm-Message-State: ACrzQf0YKN8/A5UhygvkkQ6R4JIVSBuRZAoKscz9J2NNB2j6kobFubsv
        XMZa1q+j0LnCTG0zN3RQij4SWvKRZvg7hw==
X-Google-Smtp-Source: AMsMyM5p59DDqaMCPQtyBwckPVjxO8rqbMGhs0bxJed+3GQ/ycCvWR71cW2eMf0VHFL+RSgqFw2M1Q==
X-Received: by 2002:a17:90b:254c:b0:20a:8a92:ea5b with SMTP id nw12-20020a17090b254c00b0020a8a92ea5bmr15151822pjb.81.1666952710834;
        Fri, 28 Oct 2022 03:25:10 -0700 (PDT)
Received: from localhost.localdomain (118-167-210-30.dynamic-ip.hinet.net. [118.167.210.30])
        by smtp.gmail.com with ESMTPSA id o1-20020aa79781000000b0056b6a22d6c9sm2565236pfp.212.2022.10.28.03.25.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 03:25:10 -0700 (PDT)
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, robh@kernel.org,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
        angelogioacchino.delregno@collabora.corp-partner.google.com,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: [PATCH v1 1/2] ASoC: dt-bindings: Document dmic_sel-gpios optional prop for two DMICs case
Date:   Fri, 28 Oct 2022 18:24:49 +0800
Message-Id: <20221028102450.1161382-2-ajye_huang@compal.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028102450.1161382-1-ajye_huang@compal.corp-partner.google.com>
References: <20221028102450.1161382-1-ajye_huang@compal.corp-partner.google.com>
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

Document dmic_sel-gpios optional prop for switching between two DMICs.
Ex, the GPIO can control a MUX to select Front or Rear dmic.

Signed-off-by: Ajye Huang <ajye_huang@compal.corp-partner.google.com>
---
 Documentation/devicetree/bindings/sound/dmic-codec.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/dmic-codec.yaml b/Documentation/devicetree/bindings/sound/dmic-codec.yaml
index bba27c985996..4013af65f3e7 100644
--- a/Documentation/devicetree/bindings/sound/dmic-codec.yaml
+++ b/Documentation/devicetree/bindings/sound/dmic-codec.yaml
@@ -36,6 +36,10 @@ properties:
   wakeup-delay-ms:
     description: Delay (in ms) after enabling the DMIC
 
+  dmic_sel-gpios:
+    maxItems: 1
+    description: GPIO for switching between DMICs, ex Front/Rear dmic
+
 required:
   - compatible
 
@@ -48,6 +52,7 @@ examples:
     dmic {
         compatible = "dmic-codec";
         dmicen-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
+        dmic_sel-gpios = <&pio 23 GPIO_ACTIVE_HIGH>;
         num-channels = <1>;
         wakeup-delay-ms = <50>;
         modeswitch-delay-ms = <35>;
-- 
2.25.1

