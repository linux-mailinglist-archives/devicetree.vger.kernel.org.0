Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2902F2CA3D0
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:28:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387617AbgLAN1z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:27:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387597AbgLAN1z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:27:55 -0500
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 733D4C061A04
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:26:47 -0800 (PST)
Received: by mail-yb1-xb49.google.com with SMTP id m186so2343540ybm.22
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:26:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=JYH8VKIBKyMDH0Ua+cEyxJiCIfU2UCkNUgqzQ0+FSHQ=;
        b=gawY4KvQYxLnXVich4sbLw4qZ9XnWAQ4QG9MRpYRMH0NA364UkmMfMAXOyqTnz4HMB
         MRRtqt6Ca9aEuvg70c59TRXpiUL4Egt60CUyC6VrhSI07ZTSQ2eVNxUg2MxQkNITa2vf
         BvvVQ03fRcdoHp9v9Zk9zsTF9Teg1Ag1ysXQykRkrASYX6l+dHutNRUR5rS3wm2Ekgy0
         BVLtI0YI1+tIT2kcj72wExA4Hr28x5EIk8K1TQyWPPKxCq9C7jZcl351gk0jQ6HZqwS+
         jZSHcm76s7ONapIcKwWzAsiQcNKmKYhLufxermjPGeFuu8w1fH9+vFIb/vQYnU+laqQy
         HMcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=JYH8VKIBKyMDH0Ua+cEyxJiCIfU2UCkNUgqzQ0+FSHQ=;
        b=BWcsXOrweiua8NKQ//E13l8sB+Z/5HVQEZx2GlW+aZ/BL73PlPMB6iSoafDD1uKT1f
         mWnD1IUnjp0W3fL3LEPwaX9ZXbDTIvLBqBLDWJukC6WXhh4+eeNOdT1SyfbXx4CsqLZH
         m0PmhvbT3Wi0ZFN0yJ+ZNwChEPpSCtsc0wxFMu4NV+27vW98kaIzKEqhkKeYNRizts/Y
         BtPi0v1josCwpN0XdVWLVXncyVtb1pdNi9bIZYO32/bfmjP1a+yTX+mnlRc1j3u8BIfb
         cwY6iOqwQY23Ex7c5XPLEUrqgwOeRwajaNfyLjkKzmHdCxEklvOCxQEMXrSW4McETkRm
         L3cg==
X-Gm-Message-State: AOAM532uPunUellwbLC5ih889LEqhPGAbOvBfy5FeNkAgpFLMQ8g2OMB
        RPuZ+cfFQQL+xIUWuspEJuixqmcTCIum
X-Google-Smtp-Source: ABdhPJz2mgI11dnyDE96PGO73oIHHV1Zfer/vm0OidGuO2eh2yboOBrF6DVQOJRJR//vJyspsAv1lfxx3jbs
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a25:5ce:: with SMTP id 197mr3913927ybf.53.1606829206732;
 Tue, 01 Dec 2020 05:26:46 -0800 (PST)
Date:   Tue,  1 Dec 2020 21:26:13 +0800
In-Reply-To: <20201201132614.1691352-1-tzungbi@google.com>
Message-Id: <20201201132614.1691352-6-tzungbi@google.com>
Mime-Version: 1.0
References: <20201201132614.1691352-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [RESEND PATCH 5/6] ASoC: dt-bindings: mt8192-mt6359: add new
 compatible for using rt1015p
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds new compatible string "mt8192_mt6359_rt1015p_rt5682" for machines
with rt1015p and rt5682.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml           | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
index b336a42bbb16..bf8c8ba25009 100644
--- a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
@@ -15,7 +15,9 @@ description:
 
 properties:
   compatible:
-      const: mediatek,mt8192_mt6359_rt1015_rt5682
+    enum:
+      - mediatek,mt8192_mt6359_rt1015_rt5682
+      - mediatek,mt8192_mt6359_rt1015p_rt5682
 
   mediatek,platform:
     $ref: "/schemas/types.yaml#/definitions/phandle"
-- 
2.29.2.454.gaff20da3a2-goog

