Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1474F391C57
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 17:47:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234553AbhEZPsr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 11:48:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51404 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232537AbhEZPsp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 11:48:45 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85D6FC061574
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 08:47:14 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id h20-20020a17090aa894b029015db8f3969eso583607pjq.3
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 08:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y5Bgd0Jh4nDL9nxbYQPkXNJczysNVELPbL2b6pe0vik=;
        b=YZVXRZQbI8i/iFl06Wmwupv7VoVvO+LkA88TmHrBpNc5HmcF+NbaKX2TFhOM610pMQ
         pXpgHaJo6u7iq0DmOtJuOAjNRelr9HOVxQhnqZ+SPfkU6JyRr//jVwL1GOProkuEm2vu
         LnRLaWlOMtwbyBSClwdDseICaM6hWrZOwWD68=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y5Bgd0Jh4nDL9nxbYQPkXNJczysNVELPbL2b6pe0vik=;
        b=hgSqS75gTRsgAuU0OQzM0o1ttGjOBLQB+0rTCoYXe8/PjBi5ic5F9iE1pkRt8xHjoQ
         WzoobV77pBjIfFL1mB5cUyGYKP85ba8X8YnPMTYMMvy+EwB9ZwdKXe5PMViVMs2Cm/QD
         wcLok+yp3LvhxbPDuDduyxckCZ+XkIVK9qep4IkLlgLkTNVGlgwindtGaBEzZUfKe7yp
         uKZGp7xXqUVQgfDTEe3CGD9PumeDLbKKBXwIf5PHmNydNQIQKMRCymASi9zBZpuFch5U
         JRFCtuXtO2NW9FbntqKJi+CUAEK+BlckZpZWgexVGbEYQ0VDmNeBkL6txbIXR7SlTsI+
         +Akw==
X-Gm-Message-State: AOAM530sYy3SBS/duGLLY6KLU0Ous61PP/fmuyariEe+6mvvOkivqfUl
        Q6e1rjP46jvyOesR5dtdNGUUSg==
X-Google-Smtp-Source: ABdhPJwJ7oSD990XEzL/3FSdH74tC6Kpu2hlE7hlvuRBr87zJMb2XZIAZ4P6rxWAAh7RG/1HmDSbnA==
X-Received: by 2002:a17:902:c213:b029:f0:bbdf:3852 with SMTP id 19-20020a170902c213b02900f0bbdf3852mr36626293pll.56.1622044034046;
        Wed, 26 May 2021 08:47:14 -0700 (PDT)
Received: from judyhsiao-p920.tpe.corp.google.com ([2401:fa00:1:10:ef05:d69e:64e4:1d96])
        by smtp.gmail.com with ESMTPSA id k21sm16830456pgb.56.2021.05.26.08.47.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 08:47:13 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     broonie@kernel.org
Cc:     Taniya Das <tdas@codeaurora.org>,
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
        dgreid@chromium.org, cychiang@google.com, tzungbi@chromium.org,
        swboyd@chromium.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH] ASoC: max98357a: set channels_max to 4
Date:   Wed, 26 May 2021 23:47:04 +0800
Message-Id: <20210526154704.114957-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sets channels_max to 4 to support QUAD channel.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 sound/soc/codecs/max98357a.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/max98357a.c b/sound/soc/codecs/max98357a.c
index 918812763884..c3cf1743caad 100644
--- a/sound/soc/codecs/max98357a.c
+++ b/sound/soc/codecs/max98357a.c
@@ -117,7 +117,7 @@ static struct snd_soc_dai_driver max98357a_dai_driver = {
 		.rate_min	= 8000,
 		.rate_max	= 96000,
 		.channels_min	= 1,
-		.channels_max	= 2,
+		.channels_max	= 4,
 	},
 	.ops    = &max98357a_dai_ops,
 };
-- 
2.31.0

