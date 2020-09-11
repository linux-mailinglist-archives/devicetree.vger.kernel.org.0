Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35E06265718
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 04:48:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725807AbgIKCsz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 22:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbgIKCsx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 22:48:53 -0400
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com [IPv6:2607:f8b0:4864:20::1049])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26684C061573
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 19:48:53 -0700 (PDT)
Received: by mail-pj1-x1049.google.com with SMTP id ng5so2457041pjb.0
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 19:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=4pIPobb5AlgUGEMfysrRJHFq6zLtRtS5EYu72+YPbUM=;
        b=EqW17f9WxN1mDEFhB/Wlj2aTOV0oShJcWsNESsBp4Hng1bSJaPNXH95M2pYVuYqzXN
         KCX5EdsNNM+gHjNttBdt6Qu/7bgXLzqUgCMwX4WsA8hVmERQ1s+NDAZhSewIiLG1uGMP
         ADD5IKd+PXLYgz5W8GrwnchdZswZVVN/A3N1UgKMLu7q0Wer7dmf/9RjwKnuezlRlTRy
         lgh3xm0paudRTXqeaNXZ3MhNxYjr/Owieee5SbH92zNYMHRfZRsewY1nsj0P6JppKfrd
         9oRLgaUI8nMo7qEOBUJXupA6BIMENdI0SIedRfjPpyYFU9J7BdXBG3/CS/iMHtZ6jVPs
         J/cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=4pIPobb5AlgUGEMfysrRJHFq6zLtRtS5EYu72+YPbUM=;
        b=Q/kBp6taYN328Ud0dJV/7y/sfaYiQrhaCh6baFXS9iJaHOqGMZMNoB1mffLGX/ztk9
         weXB+A3e5+HYUWwlAIYrPOGM2zkWpaowrdOU4AYDkz2/dMXKwGIKwYI5gjjUMPchoYqA
         ajKxYo8Ei93XergBSOG/0ewpxPMET28PDNkdPzMfdAmYNQWACBMhTQ4AUfR0chPGkMZj
         jKWQMCUp9SfW98DQwk4ZrjUIbJayTQVyO19tfmwV/FaTZQXzOLdmRXWMxF3wvVPHJIY4
         7Vp3Fimv037bgdsbbeJrZF9o6k6budRJ8siT+3DT7e7rOXfvjfhF+aYmtahkjvQmrQ5r
         9uIw==
X-Gm-Message-State: AOAM530uuijJqmM84BTc/BXGn8GD70nnvfsOIfv5B6bH5EXJ3qwv/KgV
        l2TaHNjOUVP7dPIL2mnrkdbhoVGAZyPR
X-Google-Smtp-Source: ABdhPJy6essnKk+7oD+gP3wuNyoJ4kJ9U7Z/b6znYdo0xqyVr7uOCVdHo42opLwfPWFPjvac97+xFCELDrFR
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a17:902:6bc9:b029:d0:cb2d:f272 with SMTP
 id m9-20020a1709026bc9b02900d0cb2df272mr207398plt.11.1599792532293; Thu, 10
 Sep 2020 19:48:52 -0700 (PDT)
Date:   Fri, 11 Sep 2020 10:48:32 +0800
In-Reply-To: <20200911024833.1673961-1-tzungbi@google.com>
Message-Id: <20200911024833.1673961-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20200911024833.1673961-1-tzungbi@google.com>
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH 1/2] ASoC: dt-bindings: mt8183-da7219: add compatible string
 for using rt1015p
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Machines with rt1015p should use the compatible string
"mediatek,mt8183_da7219_rt1015p".

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../devicetree/bindings/sound/mt8183-da7219-max98357.txt         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-da7219-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-da7219-max98357.txt
index 6787ce8789dd..f276dfc74b46 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-da7219-max98357.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-da7219-max98357.txt
@@ -3,6 +3,7 @@ MT8183 with MT6358, DA7219, MAX98357, and RT1015 CODECS
 Required properties:
 - compatible : "mediatek,mt8183_da7219_max98357" for MAX98357A codec
                "mediatek,mt8183_da7219_rt1015" for RT1015 codec
+               "mediatek,mt8183_da7219_rt1015p" for RT1015P codec
 - mediatek,headset-codec: the phandles of da7219 codecs
 - mediatek,platform: the phandle of MT8183 ASoC platform
 
-- 
2.28.0.526.ge36021eeef-goog

