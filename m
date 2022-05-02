Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15F75517228
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 17:04:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1385655AbiEBPHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 11:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1385656AbiEBPHr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 11:07:47 -0400
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE5C11115A
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 08:04:17 -0700 (PDT)
Received: by mail-io1-xd2f.google.com with SMTP id m6so12083823iob.4
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 08:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8DxlpgadTiwVlizG1qCAETIguSixVFF389rLQPdWWec=;
        b=SKRneMuUme2thc6bd4DpK/QnE63UxA8FYcx5YXg4f3qJJmmpaCgEu/tsyj62GLjY0T
         R6yWp8QaekUi61Jx4mqlHnybUBfTtxredSFMhJ7iG1xkC05/4lmQX2p6v8RQXp9rMqkj
         FcKzeUd7U6frS0eY/a5DAqmiRcG53J8XVHOcnfvPzp2QJamT4/Z6ufpIYo+PwPo9ZuL7
         PHdmg729QyW8SfloyFzm48SCgc/YJ5wS4ZE/tdja6CEiIe2gml/zIEKB5AKRY9fHbdSc
         VY/5FvGogtnZjFRy3RAs8PDgch8eOiz9xv2fow8mByqiJlz5saxQLCD2//JF4KnpJF2w
         5z/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8DxlpgadTiwVlizG1qCAETIguSixVFF389rLQPdWWec=;
        b=aQRhGeHG3gHwyvYNjWbXWCINcUu//I4UtrtwoL1UZTSgQe1LoPq80PWTR88c584Iy9
         MxHjAHjyw1MrCHo+8hlg0uDs7+NAMDwD2x2NUknYMCrt4JlQM8jzYQQylRtP/X6NvTCE
         LcZSmsBD05XV6yubPre6KpAbZTSteAoujcifuJL71xtlcyyQeYuUiDCC642YyIb24YTI
         KV1T8CLWIy/rdMOv1x/G3R/8FoueQe0nbqQh64gjIW7525U6x3k/S5sud57rSjqHRQuH
         HotMk8mtGolxqPtfS3tCBzvruh9bxLVXmx70CqcF38JY3smEn8c0915TYsgRjCznCtzn
         TDCg==
X-Gm-Message-State: AOAM533IIecbcctQ6dq40Aehj6i85JiCj5raB0GKtOD8EC7e7tYH30/5
        78Df0XpjVs/vQ5ahq3bhgEg=
X-Google-Smtp-Source: ABdhPJyjoDDOuAccfUf+BYmCeffRX5YyOnnVwtgVr2CjFb0WTNRucvNcDcjpeFZ7lQxyp+LooPh8sA==
X-Received: by 2002:a05:6638:1914:b0:32a:8804:da85 with SMTP id p20-20020a056638191400b0032a8804da85mr4812972jal.212.1651503857260;
        Mon, 02 May 2022 08:04:17 -0700 (PDT)
Received: from localhost.localdomain (cpe-65-29-252-111.wi.res.rr.com. [65.29.252.111])
        by smtp.gmail.com with ESMTPSA id s12-20020a92c5cc000000b002cde6e352basm2718218ilt.4.2022.05.02.08.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 08:04:16 -0700 (PDT)
From:   Daniel Kaehn <kaehndan@gmail.com>
To:     tiwai@suse.com, robh@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Daniel Kaehn <kaehndan@gmail.com>
Subject: [PATCH v5 1/2] dt-bindings: sound: Add generic serial MIDI device
Date:   Mon,  2 May 2022 10:04:03 -0500
Message-Id: <20220502150404.20295-2-kaehndan@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20220502150404.20295-1-kaehndan@gmail.com>
References: <20220502150404.20295-1-kaehndan@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds dt-binding for a Generic MIDI Interface using a serial device.

Signed-off-by: Daniel Kaehn <kaehndan@gmail.com>
---
 .../devicetree/bindings/sound/serialmidi.yaml | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/serialmidi.yaml

diff --git a/Documentation/devicetree/bindings/sound/serialmidi.yaml b/Documentation/devicetree/bindings/sound/serialmidi.yaml
new file mode 100644
index 000000000000..06a894e1b91d
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/serialmidi.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/serialmidi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Generic Serial MIDI Interface
+
+maintainers:
+  - Daniel Kaehn <kaehndan@gmail.com>
+
+description: 
+  Generic MIDI interface using a serial device. This denotes that a serial device is
+  dedicated to MIDI communication, either to an external MIDI device through a DIN5
+  or other connector, or to a known hardwired MIDI controller. This device must be a
+  child node of a serial node.
+
+  Can only be set to use standard baud rates corresponding to supported rates of the
+  parent serial device. If the standard MIDI baud of 31.25 kBaud is needed 
+  (as would be the case if interfacing with arbitrary external MIDI devices),
+  configure the clocks of the parent serial device so that a requested baud of 38.4 kBaud
+  resuts in the standard MIDI baud rate, and set the 'current-speed' property to 38400.
+
+properties:
+  compatible:
+    const: serialmidi
+
+  current-speed:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Baudrate to set the serial port to when this MIDI device is opened.
+      If not specified, the parent serial device is allowed to use its default baud.
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    serial {
+        midi {
+            compatible = "serialmidi";
+            current-speed = <38400>;
+        };
+    };
-- 
2.33.0

