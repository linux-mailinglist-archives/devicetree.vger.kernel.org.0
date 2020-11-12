Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 985972AFF49
	for <lists+devicetree@lfdr.de>; Thu, 12 Nov 2020 06:45:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727805AbgKLFcp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Nov 2020 00:32:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729302AbgKLBnr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Nov 2020 20:43:47 -0500
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24F2CC0617A7
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 17:43:47 -0800 (PST)
Received: by mail-pl1-x641.google.com with SMTP id u2so1942267pls.10
        for <devicetree@vger.kernel.org>; Wed, 11 Nov 2020 17:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z7QBX/BgardFaKvLv1+8d41yalYkEi5pE27cczcK9p4=;
        b=QZ/PChYoddyuq3JaN/kKbFxu64rCiVockPcVMwx/lHoclsRoTl/jjlsJx3IgyHe6rc
         HlwpFPqbkpDUGYmKIiGP5GobmHvpRmOFjSSl8j13zKo3zqEak2xVHx7faykxEgDlInvG
         VEEAshdF6ZhTn0Wr1a21gVDHaQjovXRMvSBGTevGFEFJGbOVh1bsT4qX/oT369gDUkEo
         h6ptvoCyPoHJpQQxykx0bGWAzNiNxQ5KCeVV7D3BvWlu1hFaU3nSWzZHVHU7OQlBrg/n
         EwKBjo+ez9+0eyXZpEQoa5xw6oRDRvONS2fJOoC9LIB9mYYRuPfPdlAIHyk7lHjw+dIj
         2xhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z7QBX/BgardFaKvLv1+8d41yalYkEi5pE27cczcK9p4=;
        b=AI6oZhmQRqyhjIm8lRWecZrPLKYRPabI3D4v7eVowfNoxFCR+QsuBOK/LVqe/krevk
         obVFFJjMd5gJtVRhzzdFflSV1YGEJ33SAMGl6qx3zl6Vw2gsisvJ9oSn6ADoFs4QpR8h
         E0vcjJNEIWdvovh7jLesNGYoRyOWJ4hxQ+4LTj56LmK0TAwy/JftgW3p+yvaYsT+c9AC
         Aol4fBPx+9uh116gSL/sUvAySCAiUXzeFpaPXp6/nHPjk7Mh+Zk/JBWvbQFd+cypc1gA
         crdip4Jx80nRujSVrdh9f3wTl/BO9V8lvhJdfg8N1S3HvbQxFdC3OIjFqUnCnDO5Ua1L
         8kbA==
X-Gm-Message-State: AOAM5326i69LQdI163KEuPnC5nMgxaud+7w1eNxcPMgzL0CxoiHx0fom
        avQYES23/AibDEQGbqeDCtMg
X-Google-Smtp-Source: ABdhPJzedmVR729LAKa3+B0hZGeKE4pYmHO6lasGnkD1nL/whI3qy1v7blA8jiftDQqSoyWXN7fPAg==
X-Received: by 2002:a17:902:9a4c:b029:d6:a250:ab9f with SMTP id x12-20020a1709029a4cb02900d6a250ab9fmr24126046plv.20.1605145426755;
        Wed, 11 Nov 2020 17:43:46 -0800 (PST)
Received: from xuyuqing-ZenBook-UX425JA-UX425JA.huaqin.com ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id m6sm4062413pfa.61.2020.11.11.17.43.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Nov 2020 17:43:46 -0800 (PST)
From:   xuyuqing <xuyuqing@huaqin.corp-partner.google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org, cychiang@chromium.org,
        judyhsiao@chromium.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        zhouguohui@huaqin.corp-partner.google.com,
        xuyuqing@huaqin.corp-partner.google.com
Subject: [PATCH v2 1/2] ASoC: google: dt-bindings: add new compatible for sc7180-coachz
Date:   Thu, 12 Nov 2020 09:43:27 +0800
Message-Id: <20201112014328.695232-2-xuyuqing@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201112014328.695232-1-xuyuqing@huaqin.corp-partner.google.com>
References: <20201112014328.695232-1-xuyuqing@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for coachz in documentation file

Signed-off-by: xuyuqing <xuyuqing@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/sound/google,sc7180-trogdor.yaml      | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml b/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml
index ce050a9dec94..5095b780e2c7 100644
--- a/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml
+++ b/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml
@@ -15,7 +15,9 @@ description:
 
 properties:
   compatible:
-    const: google,sc7180-trogdor
+    enum:
+      - google,sc7180-trogdor
+      - google,sc7180-coachz
 
   audio-routing:
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
-- 
2.25.1

