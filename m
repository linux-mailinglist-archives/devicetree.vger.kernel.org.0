Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 702414579F6
	for <lists+devicetree@lfdr.de>; Sat, 20 Nov 2021 01:04:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234248AbhKTAHZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Nov 2021 19:07:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234413AbhKTAHI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Nov 2021 19:07:08 -0500
Received: from mail-oo1-xc2d.google.com (mail-oo1-xc2d.google.com [IPv6:2607:f8b0:4864:20::c2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E33EC061748
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 16:04:06 -0800 (PST)
Received: by mail-oo1-xc2d.google.com with SMTP id p2-20020a4adfc2000000b002c2676904fdso4233020ood.13
        for <devicetree@vger.kernel.org>; Fri, 19 Nov 2021 16:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q7R5V5xOtnBYIQaiuSLeufcMXlFx5YeIS9CdSglzYhs=;
        b=IbV3/2/z5+xoMYJgf7+Qcw2w5TRwXbjPpzGjJlnHqPUeew5UTh4vDxcxhAmMOXTeL4
         makCt10vyjsmj8A/brrmm4XkdWX9J1M4UIhZmRl4/g1rTmsQdso4/k7yWw+Hld9rFlmc
         y2hsBEP7ziLFSQ/BZFAEIoyT546X5zB4hRdj4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=q7R5V5xOtnBYIQaiuSLeufcMXlFx5YeIS9CdSglzYhs=;
        b=mYcNgzBH0VCtgCfO0tUTeapPy2FW/1tg1II418K7Ze6mi2F88wQI5ZmVFT2GKN/Ibu
         Rd0NDJB+Jun75VDxyWlmbCdWGHtB2E/NF76rwn5FOKgvJghZeloDkOJKdMNX7pjXQNRW
         ISadSKCTmpTqmn84ICILwAKkuq3kS/JemujV1s5KdioPnrJbOCFxNfQYMa3wWxZRL8to
         fv0LBYYMa3Sx6w4JtVafql3MT1ckU4mnfD3getHws/CUyLXeUYVR2jqQeIS4mKI7JvHQ
         N7CdhHdlilQpht99NTQ4A3ihlohTppAYY6y/TQPtF+PoQ2Etfk6972qaq+D8itvyxAk/
         fGRA==
X-Gm-Message-State: AOAM532pOBqhEBoTtetdNPDfkRKFNjHMgu8DXhv1mFEBqePYOirV75DW
        dEsgXvJj2CY5jLU9IxczGRG0ENXeuFMkPA==
X-Google-Smtp-Source: ABdhPJzULBdAXe62VY+s0mTxFr6r1+fdutBEanildm1aEkfZhcCPdLMiEqP1zgbUKL3yC4THlYrWfQ==
X-Received: by 2002:a4a:2705:: with SMTP id l5mr20097549oof.51.1637366645349;
        Fri, 19 Nov 2021 16:04:05 -0800 (PST)
Received: from kiwi.bld.corp.google.com (c-67-190-101-114.hsd1.co.comcast.net. [67.190.101.114])
        by smtp.gmail.com with ESMTPSA id g7sm274768oon.27.2021.11.19.16.04.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Nov 2021 16:04:04 -0800 (PST)
From:   Simon Glass <sjg@chromium.org>
To:     devicetree@vger.kernel.org
Cc:     Tom Rini <trini@konsulko.com>,
        U-Boot Mailing List <u-boot@lists.denx.de>,
        Simon Glass <sjg@chromium.org>
Subject: [PATCH] dt-bindings: u-boot: Add a few more options bindings
Date:   Fri, 19 Nov 2021 17:03:56 -0700
Message-Id: <20211120000356.1850639-1-sjg@chromium.org>
X-Mailer: git-send-email 2.34.0.rc2.393.gf8c9666880-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds three new options with varying degree of interest / precedent.

This being sent to the mailing list since it might attract more review.
A PR will be sent when this has had some review. That is why the file
path is set up for https://github.com/devicetree-org/dt-schema rather
than the Linux kernel.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 schemas/options/u-boot.yaml | 51 +++++++++++++++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/schemas/options/u-boot.yaml b/schemas/options/u-boot.yaml
index 71dfda7..b8bdec1 100644
--- a/schemas/options/u-boot.yaml
+++ b/schemas/options/u-boot.yaml
@@ -71,6 +71,37 @@ properties:
       2: use simplified command line (e.g. avoid hush)
       3... reserved
 
+  load-environment:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 1
+    maximum: 1
+    description: |
+      This allows control over whether U-Boot loads its environment after
+      relocation. This normally happens automatically, but can pose a security
+      risk, so disabling it in certain situations is useful.
+
+      Note: This could be a boolean. It is defined as an integer since that
+      allows changing the value without resizing the devicetree. I'm not sure
+      how ugly that is, but IMO the fact that 'false' boolean values are
+      represented by being missing is a bit of a pain. One must either add or
+      delete the property.
+
+      Values:
+
+      0: don't load the environment
+      1: do load the environment
+
+  no-apm-final:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description: |
+      For devices running on coreboot, this tells U-Boot not to lock down the
+      Intel Management Engine (ME) registers. This allows U-Boot to access the
+      hardware more fully for platforms that need it.
+
+      Absence of this property indicates that the ME registers should be locked
+      down as part of U-Boot's start-up sequence and before the command line is
+      available.
+
   silent-console:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 0
@@ -88,6 +119,23 @@ properties:
         enabled)
       2: console output is suppressed and not recorded
 
+  spl-payload-offset:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description: |
+      If present (and SPL is controlled by the devicetree), this allows the
+      offset of the SPL payload (typically U-Boot) to be specified. The offset
+      is in bytes from the start of the media (typically SPI flash).
+
+      Note: This is quite widely used in U-Boot, but since v2018.01 it is
+      possible to use Binman instead, to provide this offset (and various
+      others) to SPL, or even to U-Boot proper. So far I have not tried sending
+      the Binman bindings upstream, but perhaps that should be done instead.
+
+      See here for details:
+
+      https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
+
 required:
   - compatible
 
@@ -101,6 +149,9 @@ examples:
         bootcmd = "vboot go auto";
         bootdelay-sec = <(-1)>;
         bootsecure = <1>;
+        load-environment = <0>;
+        no-apm-final;
         silent-console = <1>;
+        spl-payload-offset = <0x40000>;   /* 256K */
       };
     };
-- 
2.34.0.rc2.393.gf8c9666880-goog

