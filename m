Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A7BF2AB509
	for <lists+devicetree@lfdr.de>; Mon,  9 Nov 2020 11:34:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726423AbgKIKe0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 05:34:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727826AbgKIKe0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 05:34:26 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63AE3C0613D3
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 02:34:26 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id e7so7708825pfn.12
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 02:34:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KTmupo/EpjgAy2pPuwp43MJbMbOqAR0YnTyRbouORaM=;
        b=DIeqnSAfnkOX68rTluPtTr1Z/ka/uBkkJE++R5AZx3vtaCnXWhpOlbW7q6Pchny2LW
         nmpKKNAk0Kqmu2QugOYA5xZUpku0kpAb8JVxgrykC3wSOJZZZIzFlfQ8S9+YjQEVR8NY
         ogbIU0upC+fJ3ZgVbZYFAKoVWSRCFHev5GFUQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=KTmupo/EpjgAy2pPuwp43MJbMbOqAR0YnTyRbouORaM=;
        b=KLegS7kf+7fbSZylMQgiohI8dhKcGnG9t7L+TGDBzLs2anPaAMUG56tgRNxjvoePn5
         SmcYUBXjXyrtlpa/vqbhc2AuwUjC+jwOgto36tBvIl91NU7yzJrpfF0dWQdtoUrnsl8I
         XHywPDNCpL/iBr97m1kfE3ZhGD5zg/36V5MyjrqsXK62dCG99zRfPPZKmSrvzQYAvhjt
         RIFU3ALAxaeEn7WsaTUa8ZEdd2Krqf3v0bjk1yahH/XZlU1iuWjZXH/l0epHwbfQndIF
         g8eQv8JcKAeRD0QV+n83SmYbdh/iKxkL112XrS71Pt3xQGnjk54LaFbhIrBQ4RRSaQn8
         n+yA==
X-Gm-Message-State: AOAM531xVi3Cx5v4zPCPJrKPz4slB/fQCNxTDvp9H48vGJC/r/1wr/rb
        xi+gkXXc/wkbDTjdqtr6UY9niQ==
X-Google-Smtp-Source: ABdhPJyaNypAicS4XX7Fl08mgehF6nQZq7ki3Z9aXq2gKlrGrFfmnvTBvnq8T/JTZ4f0aahG8xTzeg==
X-Received: by 2002:a63:2a83:: with SMTP id q125mr12000933pgq.84.1604918065859;
        Mon, 09 Nov 2020 02:34:25 -0800 (PST)
Received: from localhost ([2401:fa00:1:10:de4a:3eff:fe7d:d39c])
        by smtp.gmail.com with ESMTPSA id w131sm10662101pfd.14.2020.11.09.02.34.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 02:34:24 -0800 (PST)
From:   Cheng-Yi Chiang <cychiang@chromium.org>
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
        Stephan Gerhold <stephan@gerhold.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Srinivasa Rao <srivasam@codeaurora.org>,
        Ajye Huang <ajye_huang@compal.corp-partner.google.com>,
        xuyuqing@huaqin.corp-partner.google.com, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org, judyhsiao@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Cheng-Yi Chiang <cychiang@chromium.org>
Subject: [PATCH] ASoC: qcom: sc7180: Add missing PM ops
Date:   Mon,  9 Nov 2020 18:34:15 +0800
Message-Id: <20201109103415.607495-1-cychiang@chromium.org>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use PM ops snd_soc_pm_ops to handle suspend/resume like other machine
drivers.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 sound/soc/qcom/sc7180.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/qcom/sc7180.c b/sound/soc/qcom/sc7180.c
index b391f64c3a80..42e366ecc689 100644
--- a/sound/soc/qcom/sc7180.c
+++ b/sound/soc/qcom/sc7180.c
@@ -258,6 +258,7 @@ static struct platform_driver sc7180_snd_driver = {
 	.driver = {
 		.name = "msm-snd-sc7180",
 		.of_match_table = sc7180_snd_device_id,
+		.pm = &snd_soc_pm_ops,
 	},
 };
 module_platform_driver(sc7180_snd_driver);
-- 
2.29.2.222.g5d2a92d10f8-goog

