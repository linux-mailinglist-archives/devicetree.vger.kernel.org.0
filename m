Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDD612F926A
	for <lists+devicetree@lfdr.de>; Sun, 17 Jan 2021 14:11:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728600AbhAQNKv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 17 Jan 2021 08:10:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728431AbhAQNKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 17 Jan 2021 08:10:50 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AD43C061573
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 05:10:10 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id l12so8646430wry.2
        for <devicetree@vger.kernel.org>; Sun, 17 Jan 2021 05:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=xbC44zdaVke4L6gQPI02ZlDXwA+cifJeW8d65s2rmO0=;
        b=elc5qY+hA6Bka0lCcizSfDRP3sa7aLJYOboHgVqE87bD4pJYwutbCYzcVhVQkzM0gX
         FNNnWESHwZALNhLrukjfLX88MxB8O9uEu6tCs3CR1bDV2dKm7a3n2i0amskpF+J8OSK0
         GrvFejY4pqQ800gUd/z1wELHD6aSYCIP2RoNoQvVDeQMt1VqhqswEVpsXYN/bIX7pGTu
         xFBiDA3fzbNfYpg7Mo24TcL5BwuRKdCuwpQ7avlLcWF7sDukUbkS+iUEOj7BQHLYMKH+
         Wn2agnUJvIro9hsYvD4Fzv14Wyc5y4QOKRVrn9JJqMmzRB8OBqVDmYE6Lshp8KdJbBWY
         hgvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=xbC44zdaVke4L6gQPI02ZlDXwA+cifJeW8d65s2rmO0=;
        b=oFS/1rw+CMm2xc0Kx19ePbJfXQLuK4fL5SUuVey81EWODXwIBcTl+PkHJl+/Tm62yT
         x7j7lhAEBDE1719Q2n4g3UO4Iwi9npSxDtPbkcOGea+Yj7Yo9rx8cX7AbX3wyJxpC6+4
         gNIJVbONNMGU3N8mG7TAU0g5MaGAPqDiS9q7oGoGZIUAXYSNduRYAKItiO2mrhWDvFYj
         zqIuNgV1Ej2+IKuDmeI2xNRNY+75Ax32K5ZrYd44u/nEHYjdaieNpkYwOLY3RRCwZwfx
         yicVX9vE7Ys2CmmpIBgBw+KHq6gWYWX1equgIcXHF9Qkv69MvjSVWQSaazB0rdBadZlK
         VRuw==
X-Gm-Message-State: AOAM532n1aaVJy7v/u/oVX1NpWvivdQeX+UGZIOA2vhtVilab1ZRxCwO
        BM2jl1GIzeZvNU+miiG7NUMHbfkdadFR+w==
X-Google-Smtp-Source: ABdhPJwRxkuLaip4WZjwwnEB00W95qy50SE4f7qDVDkfQTQecFDfMCHSJuhcu/lCZI/vmVsH7LhFug==
X-Received: by 2002:a5d:4491:: with SMTP id j17mr21266505wrq.78.1610889008764;
        Sun, 17 Jan 2021 05:10:08 -0800 (PST)
Received: from einstein.dilieto.eu (smtp.dilieto.eu. [188.68.43.228])
        by smtp.gmail.com with ESMTPSA id f7sm8541656wmg.43.2021.01.17.05.10.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 17 Jan 2021 05:10:08 -0800 (PST)
Date:   Sun, 17 Jan 2021 14:10:05 +0100
From:   Nicola Di Lieto <nicola.dilieto@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH v2 2/2] pwm: pwm-gpio: Add DT bindings
Message-ID: <20210117131005.ecdaby7rwb72xecd@einstein.dilieto.eu>
References: <20201209072842.amvpwe37zvfmve3g@pengutronix.de>
 <20201211170432.6113-1-nicola.dilieto@gmail.com>
 <20201211170432.6113-3-nicola.dilieto@gmail.com>
 <20210117123440.6ziqtrjodf7ahx7w@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210117123440.6ziqtrjodf7ahx7w@pengutronix.de>
User-Agent: NeoMutt/20170113 (1.7.2)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jan 17, 2021 at 01:34:40PM +0100, Uwe Kleine-König wrote:
>Hello,
>
>On Fri, Dec 11, 2020 at 06:04:32PM +0100, Nicola Di Lieto wrote:
>> Added Documentation/devicetree/bindings/pwm/pwm-gpio.yaml
>
>this looks fine to me, but this patch should be sent to the dt mailing
>list (devicetree@vger.kernel.org) to catch the attention of the people
>who have to Ack it.
>
>Best regards
>Uwe
>

As suggested by Uwe, I am copying the patch here. The original post is 
at https://lore.kernel.org/linux-pwm/20201211170432.6113-3-nicola.dilieto@gmail.com/

--

Added Documentation/devicetree/bindings/pwm/pwm-gpio.yaml

Signed-off-by: Nicola Di Lieto <nicola.dilieto@gmail.com>
---
 .../devicetree/bindings/pwm/pwm-gpio.yaml          | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-gpio.yaml

diff --git a/Documentation/devicetree/bindings/pwm/pwm-gpio.yaml b/Documentation/devicetree/bindings/pwm/pwm-gpio.yaml
new file mode 100644
index 000000000000..e681b2b1c229
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-gpio.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/pwm-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic software PWM for modulating GPIOs
+
+maintainers:
+  - Nicola Di Lieto <nicola.dilieto@gmail.com>
+
+properties:
+  "#pwm-cells":
+    description: |
+      It should be 3. See pwm.yaml in this directory for a
+      description of the cells format.
+    const: 3
+
+  compatible:
+    const: pwm-gpio
+
+  gpios:
+    description:
+      GPIO to be modulated
+    maxItems: 1
+
+required:
+  - "#pwm-cells"
+  - compatible
+  - gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    pwm0 {
+        #pwm-cells = <3>;
+        compatible = "pwm-gpio";
+        gpios = <&gpio 1 GPIO_ACTIVE_HIGH>;
+    };
-- 
2.11.0



