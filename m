Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8978C6ABA30
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 10:43:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229707AbjCFJnO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 04:43:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230035AbjCFJnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 04:43:13 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8646F231CF
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 01:43:09 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id t11so11892136lfr.1
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 01:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rasmusvillemoes.dk; s=google; t=1678095788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8K7TxC9ujka7az5qWZ0Yj+PA8VwUCDcIymczB4ue3v8=;
        b=aFKS2vQ/9k+skY1++q3trAV5GuR0ux9uZmknr0vtFJDh6nWnD0FSxSSDBtPnpTLnOg
         pt2BVDnb7VuMXz1DPWdBFErXAgWf3Si4T6OwMmEl6y4c06N1si5jafB9WnZ1+dpvpAI1
         FiMpjCX7zSDiHPkWObq+IZwD4Dggjsk4+xHWo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678095788;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8K7TxC9ujka7az5qWZ0Yj+PA8VwUCDcIymczB4ue3v8=;
        b=fHWy08aNsssschhaEXENmFsqo+3q7sokms9yr3Pu+9ewCxd8Kmtfsq2MLGyOR7wQqG
         qkupawIboz8DVbD6WxIeT8XkNa5vV13CQKILi2/hFeETNJME5LZGNShCNpCpBlJhpa8W
         cocn0JK773gLX0sGDynpLY4jqLYvlDMzlBDIwTfJOVqQ/3daq8Guv2O0q6v9uplg9T1K
         1DhAqZRAKV8KYoSzx1JL1qN38BtgxMIMttQ3HQO1I7XRJ+HCvSPINXgygkVQTuErTMZN
         27mbqLSwfFofI/m7NGtDhfeSzsEkn9z6ME0Sscueic2/nEg+3oLXgd+jN8lrz7c87cZr
         dM0A==
X-Gm-Message-State: AO0yUKUqiZYbtE/JxDp5gK5JWXVnMtw/GpNSm07Ukq17J2EZQ8S/vVqZ
        hviuQmhgtWlteFtZgvuthuu8Rl1gvPfTYlAoyF/Oyw==
X-Google-Smtp-Source: AK7set/EEjtZWbShl/9cou4SP3WB9m8PCl7zwjvqbkD4+okPV4JvEgzxiJnpwFXfPLHEOV7WcGNXjw==
X-Received: by 2002:ac2:547c:0:b0:4b5:b06d:4300 with SMTP id e28-20020ac2547c000000b004b5b06d4300mr2766340lfn.29.1678095787838;
        Mon, 06 Mar 2023 01:43:07 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
        by smtp.gmail.com with ESMTPSA id a22-20020a2e9816000000b002934ed148afsm1620091ljj.52.2023.03.06.01.43.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Mar 2023 01:43:07 -0800 (PST)
From:   Rasmus Villemoes <linux@rasmusvillemoes.dk>
To:     Cosmin Tanislav <cosmin.tanislav@analog.com>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Michael Hennerich <Michael.Hennerich@analog.com>,
        Jonathan Cameron <jic23@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: iio: ad74413r: allow setting sink current for digital input
Date:   Mon,  6 Mar 2023 10:43:00 +0100
Message-Id: <20230306094301.1357543-2-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230306094301.1357543-1-linux@rasmusvillemoes.dk>
References: <20230302134922.1120217-1-linux@rasmusvillemoes.dk>
 <20230306094301.1357543-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Depending on the actual hardware wired up to a digital input channel,
it may be necessary to configure the ad74413r to sink a small
current. For example, in the case of a simple mechanical switch, the
charge on the external 68 nF capacitor (cf. the data sheet's Figure
34) will keep the channel as reading high even after the switch is
turned off again.

Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
 .../devicetree/bindings/iio/addac/adi,ad74413r.yaml      | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
index 9eb3ecc8bbc8..590ea7936ad7 100644
--- a/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
+++ b/Documentation/devicetree/bindings/iio/addac/adi,ad74413r.yaml
@@ -101,6 +101,15 @@ patternProperties:
           When not configured as a comparator, the GPO will be treated as an
           output-only GPIO.
 
+      drive-strength-microamp:
+        description: |
+          For channels configured as digital input, this configures the sink
+          current.
+        minimum: 0
+        maximum: 1800
+        default: 0
+        multipleOf: 120
+
     required:
       - reg
 
-- 
2.37.2

