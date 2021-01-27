Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C15A03055E4
	for <lists+devicetree@lfdr.de>; Wed, 27 Jan 2021 09:37:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbhA0Igo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jan 2021 03:36:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231331AbhA0IeM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jan 2021 03:34:12 -0500
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 385B2C06178B
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 00:32:37 -0800 (PST)
Received: by mail-pg1-x54a.google.com with SMTP id i124so1076880pgd.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jan 2021 00:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=LGZTxpAXqFWtECT4mU7eGwfUfjYEwbaGaOmL3s+WPHY=;
        b=Mk8UO9d9k5Z55wJIilDYOJbDVrADuEvo1RU1iq6uOFWQ2fpZhKzOBeUq40bTXbRUhW
         H9Nd9XfdYWaApv8HgACBsOSQIMZ9Q/3vTbecNY/Qps4GTc5lhFlAGQWsX9ovK/wsGDh5
         0UWExHtK6vDsOFjf/kVISrSdNxBzzWdmNJmnZmUd5HnK+Ek75aatKN7s4buu1pQ/uCKo
         TdxneGiJN2fv9e7ZRAi9kYTlCnRSyFrrcjcJNtBR7kUjRwvWFO3mHbo/bMHOMRnk86tx
         oMIO8+9hrYWPcva2sgwg+r4M/1tpmOF1ANT3UzZ0ZwtgXaNrcJQ1mn2bTF3FO74hBpHO
         dGmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=LGZTxpAXqFWtECT4mU7eGwfUfjYEwbaGaOmL3s+WPHY=;
        b=KWOhYwsesVKOwNctNr/DwOI//XHG5UnyVW3ySRBQIqtcmOprch7PUAdKFBHPz9evRQ
         6Gkc73wXfoO/q5hdaPcteo0D4NLF76wJjqj8+9dTrZdzlhiLso+jraV7faicxRyddkNp
         mD4GLTJsOOq5deVkWymEzPoBJsopbnwt8s72BXrlY/xH+ux7AHOn/+v/6sKDidfTgN9E
         gdWSVRSSuxr/+v1oxvh5brCZvQp+8S5qObkrEV9gugS5RBBeoTjC9bQg3XgKvaLtYImV
         mUSGlK2fGzWJFS5TxQZ8+QZnY4VbQoiEZ2jp+/9vHz6JaGhAa1ZBuA+KE/NP5PdaIc9u
         cnVA==
X-Gm-Message-State: AOAM532cd0Y9z86rHkOMre4YPkhWP1BpdDj0cA3oVyOdvzvrSN9az9NQ
        hD/YWsj+0EdF1ph8nSDzsYtLMvANLMOh
X-Google-Smtp-Source: ABdhPJy8uOr6FzvmT069kx+Pz1AfQycAO6RoKVfv9FAjkZesiSjZw9ppOmVHAroDlr7jOix3x2+itbb2+XU4
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:d17d:c7bb:69a2:7e2f])
 (user=tzungbi job=sendgmr) by 2002:a62:ce8b:0:b029:1bc:39bd:13ad with SMTP id
 y133-20020a62ce8b0000b02901bc39bd13admr9563175pfg.24.1611736356753; Wed, 27
 Jan 2021 00:32:36 -0800 (PST)
Date:   Wed, 27 Jan 2021 16:31:35 +0800
In-Reply-To: <20210127083136.3745652-1-tzungbi@google.com>
Message-Id: <20210127083136.3745652-4-tzungbi@google.com>
Mime-Version: 1.0
References: <20210127083136.3745652-1-tzungbi@google.com>
X-Mailer: git-send-email 2.30.0.280.ga3ce27912f-goog
Subject: [PATCH v3 3/4] dt-bindings: remoteproc: mediatek: add L1TCM memory region
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, mathieu.poirier@linaro.org,
        devicetree@vger.kernel.org, tzungbi@google.com,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds L1TCM memory region.  The reg-name is "l1tcm".

Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 Documentation/devicetree/bindings/remoteproc/mtk,scp.txt | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
index 3ba668bab14b..3f5f78764b60 100644
--- a/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
+++ b/Documentation/devicetree/bindings/remoteproc/mtk,scp.txt
@@ -6,10 +6,10 @@ Mediatek SoCs.
 
 Required properties:
 - compatible		Should be "mediatek,mt8183-scp"
-- reg			Should contain the address ranges for the two memory
-			regions, SRAM and CFG.
-- reg-names		Contains the corresponding names for the two memory
-			regions. These should be named "sram" & "cfg".
+- reg			Should contain the address ranges for memory regions:
+			SRAM, CFG, and L1TCM.
+- reg-names		Contains the corresponding names for the memory regions:
+			"sram", "cfg", and "l1tcm".
 - clocks		Clock for co-processor (See: ../clock/clock-bindings.txt)
 - clock-names		Contains the corresponding name for the clock. This
 			should be named "main".
-- 
2.30.0.280.ga3ce27912f-goog

