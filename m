Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8ADCA1414E9
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2020 00:50:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730260AbgAQXuf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jan 2020 18:50:35 -0500
Received: from mail-pf1-f194.google.com ([209.85.210.194]:39088 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730223AbgAQXuf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jan 2020 18:50:35 -0500
Received: by mail-pf1-f194.google.com with SMTP id q10so12651656pfs.6
        for <devicetree@vger.kernel.org>; Fri, 17 Jan 2020 15:50:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gy5a7eZV0OAGpYf1ivpi5s72zJxyDAMq7P4H5JIT9Ss=;
        b=TVON9zctG2io55IDitjBnaTB9YMnv/O/MvuzJC8h/esZhdysrJR46xpUgkHJLkdykv
         bTf3LJ0EQs7xhdn4N6m0lms3z/qcEPO4JFBUikd+sgMtMb2SAOLgDy8/NF1NeoStfeRq
         WZOSKVs5f9TkKKYqWKcfD/cjXk0IEQ0Rmy4h0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gy5a7eZV0OAGpYf1ivpi5s72zJxyDAMq7P4H5JIT9Ss=;
        b=Ws0Qw89FZblkS9Rme+PAzSIGd2biZWtlyhrLa4KwsIsWITHBfpAfh/tw9Xg6bFh/4m
         jK1QBD5p85iRO52HO4VE3isZTzJB2PrruYslr80LaJJJIH7XU0Apc5HNiXvceBrdlUSc
         n/BVUtoxm/GCeuqDD/CuJKrCK+w2xlFFzLZQz2IE11CjA+wcl2osJMPvtSisv2JMVZEK
         A11p19SLc2Ge5Hh8k1eEp92z8WgMo+PeSLZ2Q9EJOpDrnNd4+f68aZlDvX0AEnS6pk4d
         xCZjF/jsw8qExgFzu71Ja4rxT/ywjm+8SMRz1kiXnAd4546atkH+V4zXQ4CMljPrwoOW
         2YWw==
X-Gm-Message-State: APjAAAWAtYlsyLchzltecekQZ+7JFNYBv0hNaGuKDhVSCWPKPSQU1rgh
        qnGuxG9VoEw/+5UBChgPUgyv5A==
X-Google-Smtp-Source: APXvYqxYRIRZZ+ijPAyGny1SqHiY0LV8Mg5h4By6bClD6WdY17GfWjhUtPlF4Yd/uGZd3w0wiS+ofg==
X-Received: by 2002:a63:4e0e:: with SMTP id c14mr47807842pgb.237.1579305034822;
        Fri, 17 Jan 2020 15:50:34 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id hg11sm151880pjb.14.2020.01.17.15.50.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jan 2020 15:50:34 -0800 (PST)
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
Subject: [PATCH v2] dt-bindings: timer: Use non-empty ranges in example
Date:   Fri, 17 Jan 2020 15:50:15 -0800
Message-Id: <20200117155001.v2.1.I7dbd712cfe0bdf7b53d9ef9791072b7e9c6d3c33@changeid>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
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

Changes in v2:
- Fixed my typo 0xf0000000 => 0xf0001000

 .../devicetree/bindings/timer/arm,arch_timer_mmio.yaml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
index b3f0fe96ff0d..b92d958d7541 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
@@ -99,22 +99,22 @@ examples:
       compatible = "arm,armv7-timer-mem";
       #address-cells = <1>;
       #size-cells = <1>;
-      ranges;
+      ranges = <0 0xf0001000 0x1000>;
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
2.25.0.341.g760bfbb309-goog

