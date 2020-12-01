Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DAD42CA3CE
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:28:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390701AbgLAN1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:27:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387597AbgLAN1Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:27:24 -0500
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com [IPv6:2607:f8b0:4864:20::f4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D63B9C0617A7
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:26:43 -0800 (PST)
Received: by mail-qv1-xf4a.google.com with SMTP id fb9so1160757qvb.21
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc;
        bh=YyZbO8wYD/ijX6J9aI2QPdV/RaONINl7Yn5VzMFPwgs=;
        b=sYku0+yIV+TpbWJs23S2nPniHCKLiIqZbltuaDx0QiZwXcTkCn4I3lEwMP64DZcTYE
         vKkE56FOjRuPVAIxPhZhSdsRVYMhWRU6S0AI474h68Tji0/RvTc8IapXx4IhZPlleZ5F
         OH+R9cWBXn/YXPniJubnJX4XQdqHeG/WIk6Os9yx9+0P9gH3sr/WJLJMwr50ZPvGH3x1
         PHhBnpJhoajXVbmY6ma7RYgf/eT/9sS4EhcO8CBKmyGh0qzBjvNmHqstppQK252Rf6gb
         o17zo98nGp/25YnbNyJI9GAnUfPV1Ah/oHH5KD1q6rh0jEkoCLBPedf7UPrz9/3XwMKl
         P6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=YyZbO8wYD/ijX6J9aI2QPdV/RaONINl7Yn5VzMFPwgs=;
        b=SDb4xUjBu6/9aEI4EzASCQgY0jm7TUxqbur9Xlc/N0V4dC1iy4CA6qI6JzwUmlZeHY
         H4z627CPUIjfDmCpn6SvBsuuUfrlSmSuitDEkSa1+CXwtfqVExwpkaaz9g5seBEfYh8z
         u3a3iqPDKWCEp6jUcS1S2/bm7X/YxgTWQRq4Pt4IV0IV9IctWGs649QcEA06Z1rx6Sln
         WkiKAN5+1s0paoH3z6rLj4yxQyJLk0L9lhpUWrsbDBPsZo4i1h2brRDOoR2fD7z2N/9K
         OiZAANpMZBgrp1rc2Rak3Gz+w1H8xIqW23tjSdHwN/MqQHYh8WutlkF4r9y50kRQONCb
         hhUg==
X-Gm-Message-State: AOAM5339DIVclsSraht2k9cR/XLt5cAS8mFAK6hKqpN9W6QxqsxlNizc
        VVvzcwBSmqEqqix8ypXEKIsGm2drP/4H
X-Google-Smtp-Source: ABdhPJzbKgwauq201Rit1w4qEPd73jwpCpDpUdjUQsesLo5XUsbzwVoULzf/ttBPz6/cxR1bTNFkm7IAoABy
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a0c:916d:: with SMTP id
 q100mr2847720qvq.29.1606829203011; Tue, 01 Dec 2020 05:26:43 -0800 (PST)
Date:   Tue,  1 Dec 2020 21:26:12 +0800
In-Reply-To: <20201201132614.1691352-1-tzungbi@google.com>
Message-Id: <20201201132614.1691352-5-tzungbi@google.com>
Mime-Version: 1.0
References: <20201201132614.1691352-1-tzungbi@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [RESEND PATCH 4/6] ASoC: dt-bindings: mt8192-mt6359: fix typo in the example
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Both driver "sound/soc/mediatek/mt8192/mt8192-mt6359-rt1015-rt5682.c"
and DT binding property use underscore version compatible string.

Fixes the typo in the example.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml  | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
index 342232a61cfb..b336a42bbb16 100644
--- a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
@@ -31,7 +31,7 @@ examples:
   - |
 
     sound: mt8192-sound {
-        compatible = "mediatek,mt8192-mt6359-rt1015-rt5682";
+        compatible = "mediatek,mt8192_mt6359_rt1015_rt5682";
         mediatek,platform = <&afe>;
         pinctrl-names = "aud_clk_mosi_off",
                         "aud_clk_mosi_on";
-- 
2.29.2.454.gaff20da3a2-goog

