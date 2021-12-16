Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D61B4766CC
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 01:00:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232186AbhLPAA2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 19:00:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231740AbhLPAA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 19:00:28 -0500
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAE64C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:00:27 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id e17so90838plh.8
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 16:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ssAv+iRlv4UpHtVbVbUHxNlU+DyIsEYcdL28Jk/tCBo=;
        b=Gx6LKnSWviOFjpb2HIsXHJEJQlrVg/+1Zj/CZZOMO2OERikDcAFFMQlQLjioo9Qgio
         IZOhHgnpvZzoYbiQVsncctWk+buuWoZebQSXcvkq5fuoc1sfobQe6F08oFqWoSZzItpL
         skA3EUjJ1JSmOSlKArU0XHYV92Fml5R5b2cvgQBGdEPhTYGP3R9wluJwbz6VxB8ystNH
         uueZtCOR+m0y0nmWHADW/glw4RCp/MoVEW1HbeG2PNMlTxCtR6MiIOvHgZHNOHTSIDGm
         4JyHvnvZrMRQc8N5CPkDyQmHBt53+jcwUbA+RtMGY4V345MOh9txUmQLgkyU2mOn82HV
         wlYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=ssAv+iRlv4UpHtVbVbUHxNlU+DyIsEYcdL28Jk/tCBo=;
        b=GgddQQ7CFZKl16t095Rsc0u9DeTY37++gZKQzNcXqfPkIDiNFMWwCXSDNH0S7Ekq3q
         j/ugrPuSn7zB/yKoVk49wYY1o63nlyZHc2A2wcoq/VubQr+uVCI/UmwmJjKQx8Ls+OZl
         LhlbQSHzeaf6PYb9nwZqr7EbL0Rp8xAqBJgE1fUxdjnuY/DXeM0MXja4M0jz41j2ZKdl
         nxtGGVpNJFVMwvQ/R6vnY64lV9A64m59QHh6uJS8REczzJtBiBu0b3PWnvsAIKfwo/ku
         UKKMRGSas+1/UmrUZUOGJfBL/17AQwNciD+23wECzkowPqt0wpuQ0YZ8sEsi90qO5hHE
         Qt9Q==
X-Gm-Message-State: AOAM533MAkVQ4Dfff4iNtwyvk3uHA2kTuIWBLEhTAtGwjfVldUUjnvz2
        KcG0hLj94v8GC0ZZE4BD/eQ=
X-Google-Smtp-Source: ABdhPJyjJ+CadUjOKltKk7og9xd9+jFRGhm+zLfjHVf32hf8e9juIwdCiZOuawoi56AYHzbZj7Kk1g==
X-Received: by 2002:a17:902:ecc9:b0:142:f90:f4a1 with SMTP id a9-20020a170902ecc900b001420f90f4a1mr13677671plh.73.1639612827332;
        Wed, 15 Dec 2021 16:00:27 -0800 (PST)
Received: from localhost.localdomain ([150.249.232.163])
        by smtp.gmail.com with ESMTPSA id o9sm3231402pgs.65.2021.12.15.16.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 16:00:27 -0800 (PST)
Sender: Kuninori Morimoto <kuninori.morimoto.gx@gmail.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH v2] ASoC: dt-bindings: audio-graph-port: enable both flag/phandle for bitclock/frame-master
Date:   Thu, 16 Dec 2021 09:00:18 +0900
Message-Id: <20211216000018.2641925-1-kuninori.morimoto.gx@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

snd_soc_daifmt_parse_clock_provider_raw() is handling both
bitclock/frame-master, and is supporting both flag/phandle.
Current DT is assuming it is flag style.
This patch allows both case.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
v1 -> v2

	- anyOf -> oneOf

 .../devicetree/bindings/sound/audio-graph-port.yaml      | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 43e7f86e3b23..476dcb49ece6 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -42,10 +42,15 @@ patternProperties:
         $ref: /schemas/types.yaml#/definitions/flag
       frame-master:
         description: Indicates dai-link frame master.
-        $ref: /schemas/types.yaml#/definitions/phandle
+        oneOf:
+          - $ref: /schemas/types.yaml#/definitions/flag
+          - $ref: /schemas/types.yaml#/definitions/phandle
       bitclock-master:
         description: Indicates dai-link bit clock master
-        $ref: /schemas/types.yaml#/definitions/phandle
+        oneOf:
+          - $ref: /schemas/types.yaml#/definitions/flag
+          - $ref: /schemas/types.yaml#/definitions/phandle
+
       dai-format:
         description: audio format.
         items:
-- 
2.25.1

