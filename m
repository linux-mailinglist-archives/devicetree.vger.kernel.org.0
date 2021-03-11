Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 09CFD336AB8
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 04:32:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229775AbhCKDcX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 22:32:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59652 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230429AbhCKDcM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 22:32:12 -0500
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com [IPv6:2607:f8b0:4864:20::54a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E87C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 19:32:12 -0800 (PST)
Received: by mail-pg1-x54a.google.com with SMTP id o27so10643358pgb.14
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 19:32:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=vWRGu6ac1CU71L1EhgQAbk5BTr1mdHtAx7TUA+9sOUo=;
        b=DH8ioX0kBsCcbAU16wET0Glx6KhyIunE+Qt6f8SLjou5bu5aYd2lCA0JmfAzwG5Rtv
         j8ViUY/95FCOD3HS76LSDt+PBTTitVAUqtBahQeCRA5yPR7Oh/+ABWDc81ma39Vy263a
         qsDDUb8hyR+uPuUt9m+LPkVtkoO2W8bCumDpMZOminhsfvQ6e1IZCdLqHdlxG9DMo9NW
         dOEr+rW4llfhEXhWvwywemTmG1EF6akV/hOxuVQj6g8/ejXvPDOX40aQAfbw2fVsgbzW
         RPprxJODNcMCPNAxMH9Pr89sRfGkXcxezikzzs/6zC8Tq+iE8t21ELLZ8PQpVOA1hBm2
         1vXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=vWRGu6ac1CU71L1EhgQAbk5BTr1mdHtAx7TUA+9sOUo=;
        b=Z+zOcZ9NaHNIFQ6gkkevO1Z3ogDQA7hAFmOwuGI2dwQ8yGOs4dljj6do1Y0Bbbykak
         WtB8Si3P0aeu/aE1CImLSxpQjnnEbVXgo5afhZh3eutVFXO3aIbe6mq+zvFTIoJqoY2+
         WEWdNH1tccr26ODFC2hVGC4mrlUm9QslEIbhyRppXwJas0Il0yOvE5/wHCqS18L/8W+R
         Y5Qljhs530huw5xxZq2vO5T7PZINKRzpfo6wnIrVH9UZus5JolU8nXEEumepJBvqKH77
         Nkftbezw/EHdK30gAMnz7Bb1PF1fcZy5RgQODHzCWD4nzMEv+cCzOX49iHWY8N0MiWut
         Cl9w==
X-Gm-Message-State: AOAM533pv3gKj4PfE35k879rPZABxBpuMlAR6tSzx0A8yVr/KCmZX59h
        Fp6VQiytQ6SkV0DbyeJmEY9Tx/ygX+EY
X-Google-Smtp-Source: ABdhPJz5Ft5tOEG5ExH9oG032AKa/Ybe6PIoGHTcorIO5zMUnYpUT6sF6LzhMsnfxpNXFERahWeBOd5p0M4W
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:d958:2f3:afb:68a3])
 (user=tzungbi job=sendgmr) by 2002:a62:764c:0:b029:1ef:20d2:b44 with SMTP id
 r73-20020a62764c0000b02901ef20d20b44mr5580092pfc.45.1615433531788; Wed, 10
 Mar 2021 19:32:11 -0800 (PST)
Date:   Thu, 11 Mar 2021 11:31:50 +0800
In-Reply-To: <20210311033151.1818603-1-tzungbi@google.com>
Message-Id: <20210311033151.1818603-2-tzungbi@google.com>
Mime-Version: 1.0
References: <20210311033151.1818603-1-tzungbi@google.com>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH 1/2] ASoC: dt-bindings: mt8183: add compatible string for
 using rt1015p
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Machines with rt1015p should use the compatible string
"mt8183-mt6358-ts3a227-rt1015p".

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
index 235eac8aea7b..ecd46ed8eb98 100644
--- a/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
+++ b/Documentation/devicetree/bindings/sound/mt8183-mt6358-ts3a227-max98357.txt
@@ -4,6 +4,7 @@ Required properties:
 - compatible : "mediatek,mt8183_mt6358_ts3a227_max98357" for MAX98357A codec
                "mediatek,mt8183_mt6358_ts3a227_max98357b" for MAX98357B codec
                "mediatek,mt8183_mt6358_ts3a227_rt1015" for RT1015 codec
+               "mediatek,mt8183_mt6358_ts3a227_rt1015p" for RT1015P codec
 - mediatek,platform: the phandle of MT8183 ASoC platform
 
 Optional properties:
-- 
2.31.0.rc2.261.g7f71774620-goog

