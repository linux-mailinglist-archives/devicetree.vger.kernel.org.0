Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F19B72FCC88
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 09:17:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730364AbhATIPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 03:15:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56210 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730353AbhATIKE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 03:10:04 -0500
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA5BAC061794
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:18 -0800 (PST)
Received: by mail-yb1-xb4a.google.com with SMTP id e74so29432952ybh.19
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 00:09:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=Y+Fx4Q3xTRwBEn5hZJB1lpjzFFSmiRd0H1yYDfLlDsM=;
        b=vxgOFOdsDQzr5aEd2YVIbLvshnoCoC/VERiplfYPU24l+TSlB98fGzz2Obmxp+OUKm
         cu4aBejiuqpcX2Lr2v2PrD0Y/Mo2cofT8fHOxIWKNEHkIpCHviRli0zXK7TPUqmL8dAS
         7ofKtcHbvMbcvZGIR4xh0jwTqDuaCVvQnpa7g2ZY828MIeTlXa9rzwE5HY8TBuQ24EbH
         F22E2Kfua9yrRPawIekUNYvseOiatHx/U31JkBNQsHUwozXQHKraFxhjuSmKzxyN+gwJ
         Xr49ZK74JsNUX3+kAcVd/1urKJdvVtkWU8Q+BBHHkIV6lWQYc4pQ7CHcAWwxhVYqIn8Z
         AU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=Y+Fx4Q3xTRwBEn5hZJB1lpjzFFSmiRd0H1yYDfLlDsM=;
        b=Seu9r4LlkHXimNnFjbErxVlnCA7hDVZxAWqdQbLIJm+B8MkBEcEV0O5PvpIY2kjpSI
         GhPF94PycHAjSP94bPEpCuLs85C3caVWZNkCKfrjKY9p6URQNZWdg8sh+wTpGpb4Sod/
         SpuiGuihXs6Bmg0tnQRvSJgeyHLAcQFIawkMWueR3WhKyef4VrvZVndHrDQ4S2X7KCHW
         Km8Z6/35ZGrlc3eV4kL8PRB4YafdgIejqdd05MiOWypvc/ql3UjDYnZ528b9zcywDUxG
         wG71ewrr468uK3XI7+OTCptgQErE2Oto4nob5rgmdgd/GN3jowQMK1VAGUjlgPuQkNzS
         T1Mw==
X-Gm-Message-State: AOAM532/oKq/TWToLYOz0bDHL4MnCCDnF6KZ5p0B6VLqzqokSqw58n7D
        VD5JMKePW+P+DsYPbwM8K+1CwgFEqsVn
X-Google-Smtp-Source: ABdhPJxqem2Ny4Ah8ScsPr/Hgjfex9iupmb+ZO1O4sdHmta+oHMFwOypJuwrF8TGgOpJyI/ofGdmGNQUpdMy
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:1164:8893:969a:b338])
 (user=tzungbi job=sendgmr) by 2002:a25:f02:: with SMTP id 2mr11570686ybp.190.1611130158185;
 Wed, 20 Jan 2021 00:09:18 -0800 (PST)
Date:   Wed, 20 Jan 2021 16:08:49 +0800
In-Reply-To: <20210120080850.699354-1-tzungbi@google.com>
Message-Id: <20210120080850.699354-5-tzungbi@google.com>
Mime-Version: 1.0
References: <20210120080850.699354-1-tzungbi@google.com>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
Subject: [PATCH 4/5] ASoC: dt-bindings: mt8192-mt6359: add hdmi-codec property
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds optional property "hdmi-codec".

If specified, the machine driver should:
- Exposes a device that can write audio data to the DP bridge.
- Detects jack plug events.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
index 54650823b29a..5a5b765b859a 100644
--- a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
@@ -23,6 +23,10 @@ properties:
     $ref: "/schemas/types.yaml#/definitions/phandle"
     description: The phandle of MT8192 ASoC platform.
 
+  mediatek,hdmi-codec:
+    $ref: "/schemas/types.yaml#/definitions/phandle"
+    description: The phandle of HDMI codec.
+
 additionalProperties: false
 
 required:
@@ -35,6 +39,7 @@ examples:
     sound: mt8192-sound {
         compatible = "mediatek,mt8192_mt6359_rt1015_rt5682";
         mediatek,platform = <&afe>;
+        mediatek,hdmi-codec = <&anx_bridge_dp>;
         pinctrl-names = "aud_clk_mosi_off",
                         "aud_clk_mosi_on";
         pinctrl-0 = <&aud_clk_mosi_off>;
-- 
2.30.0.284.gd98b1dd5eaa7-goog

