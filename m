Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C17412247D
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2019 07:07:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726767AbfLQGGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Dec 2019 01:06:17 -0500
Received: from mail-pj1-f65.google.com ([209.85.216.65]:45412 "EHLO
        mail-pj1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727124AbfLQGGQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Dec 2019 01:06:16 -0500
Received: by mail-pj1-f65.google.com with SMTP id r11so4068322pjp.12
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2019 22:06:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pqq8EI8PetXDTX9SD5fPHS3ySd+6zzeipLGlfcg5Zxs=;
        b=IWrGd/seVhqfkyiDseJWo0Sbfx11NJtoTwyu5c4/nSABcXvEq+W+6nvn/9GQ7bwwq2
         85T22nRr5aeyzQcY4FH4w9g/ybLLtlaMva2KA1RsF/Hb5xiwliz19As+Hvv7xdotEXcC
         xssP5NVYgHtz30sK/ibkPM1V1ScT5WmL63b2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pqq8EI8PetXDTX9SD5fPHS3ySd+6zzeipLGlfcg5Zxs=;
        b=IF0wA9f3onDI75XwjoWboUJNfow+jut0U9A3v7DAZUkf07jxNhV3x53hRQ6OYVHuUm
         jIV7tfMYC4SQDK+xJOblLJ14aClEBpAp45NWSPL9MW4tr4CWp7LZQJ5+vVG2acrtwKss
         /gMxW67v1wPnYqE8N6qd8ZxQqFAwF+XwMRG4ije81Fikqb3x0tH+rf/gU+Fnoqs2W9k4
         whriVZNGE/XAAjS56zRczQ+yjWpyDILPAlweHOPTUDlLPUAEN2cqfh2KiSLpoJ1IG97o
         O8ZRswSyqz8Whp2d/FIVFIrG+WFb/m7yUUMVi+k6N/Bte0bEFwlfxjzVhkaCsCnmZOfD
         SSEw==
X-Gm-Message-State: APjAAAUbVcXSzU3A5y1QjsKuHFAtbOS0KITqo3s3SrSBz18+WM3lrlaB
        QAI7oQ60tiGBjbGi0eVyNit7xg==
X-Google-Smtp-Source: APXvYqy3ZSrRGG3wJsbsNsELq8FiXxGqWLLQkso+ZvvdJb7SNnlcTLsYAG9ULRHOPTO+a9QqGIJTJg==
X-Received: by 2002:a17:90a:cb87:: with SMTP id a7mr3969666pju.135.1576562775797;
        Mon, 16 Dec 2019 22:06:15 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id u20sm24396721pgf.29.2019.12.16.22.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 22:06:15 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>, mka@chromium.org,
        Andy Gross <agross@kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>, swboyd@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Thomas Gleixner <tglx@linutronix.de>,
        Mark Rutland <mark.rutland@arm.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH] dt-bindings: timer: Use non-empty ranges in example
Date:   Mon, 16 Dec 2019 22:05:32 -0800
Message-Id: <20191216220512.1.I7dbd712cfe0bdf7b53d9ef9791072b7e9c6d3c33@changeid>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On many arm64 qcom device trees, running `make dtbs_check` yells:

  timer@17c20000: #size-cells:0:0: 1 was expected

It appears that someone was trying to assert the fact that sub-nodes
describing frames would never have a size that's more than 32-bits
big.  That does indeed appear to be true for all cases I could find.

Currently many arm64 qcom device tree files have a #address-cells and
about in commit bede7d2dc8f3 ("arm64: dts: qcom: sdm845: Increase
address and size cells for soc").  That means the only way we can
shrink them down is to use a non-empty ranges.

Since forever it has said in "writing-bindings.txt" to "DO use
non-empty 'ranges' to limit the size of child buses/devices".  I guess
we should start listening to it.

I believe (but am not certain) that this also means that we should use
"ranges" to simplify the "reg" of our sub devices by specifying an
offset.  Let's update the example in the bindings to make this
obvious.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
See:
  https://lore.kernel.org/r/20191212113540.7.Ia9bd3fca24ad34a5faaf1c3e58095c74b38abca1@changeid

...for the patch that sparked this change.

 .../devicetree/bindings/timer/arm,arch_timer_mmio.yaml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
index b3f0fe96ff0d..d927b42ddeb8 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
@@ -99,22 +99,22 @@ examples:
       compatible = "arm,armv7-timer-mem";
       #address-cells = <1>;
       #size-cells = <1>;
-      ranges;
+      ranges = <0 0xf0000000 0x1000>;
       reg = <0xf0000000 0x1000>;
       clock-frequency = <50000000>;
 
-      frame@f0001000 {
+      frame@0 {
         frame-number = <0>;
         interrupts = <0 13 0x8>,
                <0 14 0x8>;
-        reg = <0xf0001000 0x1000>,
-              <0xf0002000 0x1000>;
+        reg = <0x0000 0x1000>,
+              <0x1000 0x1000>;
       };
 
       frame@f0003000 {
         frame-number = <1>;
         interrupts = <0 15 0x8>;
-        reg = <0xf0003000 0x1000>;
+        reg = <0x2000 0x1000>;
       };
     };
 
-- 
2.24.1.735.g03f4e72817-goog

