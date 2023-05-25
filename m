Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3BC7108F5
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 11:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240595AbjEYJc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 05:32:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240488AbjEYJcj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 05:32:39 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1563AE76
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 02:32:35 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-64d18d772bdso2242945b3a.3
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 02:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20221208.gappssmtp.com; s=20221208; t=1685007154; x=1687599154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NEBP16jDdKfZXyVFFhpDGWBgOGBnuO/n8Kvdd4MlHEQ=;
        b=E1lchoRKqh4f4ZUFki4pw8mfo4rMNua5RcMc+MWnevA9YtkkXpVROTwrUDZEiDtWeL
         tNcqrCl4iJASRQsW1+cFXPNBcjEEGggzuMRLNyV5CEJYCbKw/0IFxiWamCVf2vSM7yf6
         NJtchNkfCgyJTR8+/aHW5GlWZyGB6nDpVS2H9HdHMUtA75U5x/7qRGvY29qLwoS0+dlN
         fVZeIt8zr7mnPnpqd+p5KebMsub1YfvhiZLSesFrHb8i7xv/gjaDHa2dQRLL1odWPkbm
         g3Q5e54KFaYcKfxHqODK1fssSkA70tEGh6cXb/4nK0mR55BHD5Xp9QCY+kB6tl1LFRGU
         Awgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685007154; x=1687599154;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEBP16jDdKfZXyVFFhpDGWBgOGBnuO/n8Kvdd4MlHEQ=;
        b=N8bFjAw00M5BDVGbDanTMIimFEmc6jECV09EsMw64NWzuP4gVp1A1DzndqzvvHT2SL
         bahSa2vw5Gr16KeNuLUPjTEZjDdT2HSs1E0TAMF/KHnRVE/5Dup2O5KOeIU1iYNPAlu/
         7KJnygy+vAUfR9gWtk7cUqbsUOApWdRk1zAMXY9CBP6DPKg9xMEJ8EarOQ77j6iTK/FL
         omBENwGddUFx7HqVGy2YvaG1gNOGWHQkUdH3DMKXQIYKg81vD8HwEESl8BAHZHlqkhJ8
         snbWUbBfMS0/FfKckYeIeiPfwTC+E7VFNpcCD7YfVzSGed0m59eVrRHrz+rb0YuqBd1F
         qAMA==
X-Gm-Message-State: AC+VfDwBsG14flv7IwAUMqdlQkXy++WPV+dgOAlYllQRf9z9EJaNhn1D
        IIope3qywEmb7Owd0WpnzC+xeg==
X-Google-Smtp-Source: ACHHUZ7Wknhza6eW2w0FdEJ/4YWXU217OHtYXIc5S28EmaL+HE3+gflmnDcvtOMV9Pa1H7Pz5BJKZw==
X-Received: by 2002:a17:903:1c7:b0:1ae:1a33:6c with SMTP id e7-20020a17090301c700b001ae1a33006cmr1108130plh.31.1685007154520;
        Thu, 25 May 2023 02:32:34 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id n6-20020a170902e54600b001afa7040a70sm951039plf.276.2023.05.25.02.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 02:32:34 -0700 (PDT)
From:   Cong Yang <yangcong5@huaqin.corp-partner.google.com>
To:     dianders@google.com, daniel@ffwll.ch, neil.armstrong@linaro.org,
        sam@ravnborg.org, airlied@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, hsinyi@google.com,
        conor+dt@kernel.org
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-kernel@vger.kernel.org,
        Cong Yang <yangcong5@huaqin.corp-partner.google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [v4 3/4] dt-bindings: display: panel: Add compatible for Starry ili9882t
Date:   Thu, 25 May 2023 17:31:50 +0800
Message-Id: <20230525093151.2338370-4-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com>
References: <1adda828-cf35-fb2c-6db5-f9ca91b5b62a@linaro.org>
 <20230525093151.2338370-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The STARRY ili9882t is a 10.51" WUXGA TFT LCD panel,
which fits in nicely with the existing panel-boe-tv101wum-nl6
driver. Hence, we add a new compatible with panel specific config.

Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml     | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 28a7beeb8f92..906ef62709b8 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -34,6 +34,8 @@ properties:
       - starry,2081101qfh032011-53g
         # STARRY himax83102-j02 10.51" WUXGA TFT LCD panel
       - starry,himax83102-j02
+        # STARRY ili9882t 10.51" WUXGA TFT LCD panel
+      - starry,ili9882t
 
   reg:
     description: the virtual channel number of a DSI peripheral
-- 
2.25.1

