Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B413B63BB15
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 08:55:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbiK2HzT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 02:55:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229957AbiK2HzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 02:55:14 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 025E954B13
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:55:13 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id f3so12297916pgc.2
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yi0hIKAz2bHj1gClqya73Veoh6oAoi4qrsywjGJhsy8=;
        b=8PdPJNedsN7Zhu0sdci8eKnpIQfZ+WU4JnDp+sGa26soZQS97oQqnjolTcegPR9e0M
         oqqy0QacZm+SCgFohLyE3tLo4KdhQRFfFNuo4CEVZE98XqXFpWbaPG8NaMgkAF+aEzwr
         hLdcvhEHNqQK1a5NWU9S4D5mBFNn5+iA24jeUT+QRWCGbjGhCDIrbWSFLOK1JAOeK1qf
         ymOFM78sFadj7Wrbdb3urnAhqkuC8QPZn0KbN6EviMqhHdgU84aN0d97Qez4IU4xtAik
         jhhsZ/ZC3N4rTvGpp3o07++vCQUvt3de80VZ1x4qdRcwWga/omDfh2itdGPttbTQrDrI
         3Bnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yi0hIKAz2bHj1gClqya73Veoh6oAoi4qrsywjGJhsy8=;
        b=CS97VWXwIGOOviBV58SIRadAILdUq48TArIWaaUXrguyVoYfyOGHaEBc+3MZD30eQm
         /gT7G4iYzqxjxy3DCddo3zqE82kYW2pIkQakVLtI2S7SAEFYxp6bHb5CcwbSzR6OESpK
         aKvF+LHkuaSf6AG9ZNC/CejIK1GoDUYXTnCSoOOvuvDxau7MHKqiU8N/h3ac5V+QjWdR
         L2vSFaSnX4f3GTdqsHNGBZHDTIoL7JDF8gQKPdcPFyMs2TkxwC0g3ixji/jTmk0sEbw9
         iT0YxjGSCZJZ9+OT4vaTs6CrJ2a2xQdNKrWgi1iCeS70xklbvSe33nqjndYxxZglF6v6
         Rplw==
X-Gm-Message-State: ANoB5pmCQI3AohzqSc4uEk/L4vZRihMB1STsoSON3OsOHUPVjWq/Pysq
        35iUx9BL6C5LEjPEllXgAL20GQ==
X-Google-Smtp-Source: AA0mqf6qrbMy8Ze7AjvsmlamNTbl2zjFogRE/pqUD+XtUqybBzT7XNAEm64b6OAJgP03mVFyu1RjUA==
X-Received: by 2002:a63:5511:0:b0:477:ce06:6c94 with SMTP id j17-20020a635511000000b00477ce066c94mr22415439pgb.138.1669708512526;
        Mon, 28 Nov 2022 23:55:12 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.55.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:55:12 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v9 5/8] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Tue, 29 Nov 2022 13:24:21 +0530
Message-Id: <20221129075424.189655-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edgeble AI is an Artificial Intelligence company with a focus on
deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9, v8, v7, v6:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c601f5438b02..dfc071548e91 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -370,6 +370,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1

