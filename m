Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 500B429E8C8
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 11:16:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725920AbgJ2KQB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Oct 2020 06:16:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726319AbgJ2KQA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Oct 2020 06:16:00 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFECCC0613D3
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 03:15:59 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id n18so2105318wrs.5
        for <devicetree@vger.kernel.org>; Thu, 29 Oct 2020 03:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i74O5NY+sTiDci0iVom9weNEC9VKdMsGWfdVhOUj4Xk=;
        b=QOQ7mU5WYK5nyIpw5goqHMmsDSJMRHJi7oEVLYhjcY05Ep9bxWWdfS1vEpBCsYdiGV
         ON9iuONq3yODrxlinvhw/tHBi45DHvBHl6ZUqUk/IHG7RA06GD21Ej2t00A0OP9mD+0A
         z3E+FgeqB8kmrVeALkdA0zemjJFO75HIAPns/O7YlpqUbd7S9+wn7su9FPS+CrB6uSBk
         qvZfUDapwV7z0KOmE5iPq/qf4OXjcZJrHOAe6/kl98pd7rkEHxblIvDJkYPLETT2FMzr
         /aJV7nTRfMaT+WBkbauH17hXn+QhTSgR1TtATAbuZE6K/EAQ4Vq9KuEQD8mPL8udiV3q
         vrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i74O5NY+sTiDci0iVom9weNEC9VKdMsGWfdVhOUj4Xk=;
        b=IwYzTCASRMHPwWSMHVDtox2gIYdBQltyaph5bcmP2u9gu4+YemZca22X5XBfbPJN3E
         4wWdR9tql2JyxpS+eSnXeDa9wiw08k3iI4VcxG2ksQiM5w2Rd5racajFw8bj05CQDMNW
         3kgs/N3y7NZvQP+XEXppoefU4TGkuUn4ZV3EfeLWgpdkWkpaOlKzOcYGSMvatGRQB187
         WKjorZsJ5JRulXIxQILaf37uRPcqlnW15stRc0VBEBjikHxxg/gtfdX84FLCc6cziC6A
         CwMiv3crGfSx4DHsV7G+/h+encCVc9LdVOj++j6+sNzAbx/lhlRafPMWVy49EgrfolUH
         jYkw==
X-Gm-Message-State: AOAM532rsVy6v1HQRLRZn3c9erzzCPvc4rEXLPojs3IOO6ViFHiI+c8W
        uyTEdpyQP/2vQP5zBXmbjYh8ZQ==
X-Google-Smtp-Source: ABdhPJxFoVwhtInQxp4YNuWp2oFll6oAB0fdAsEjCqEVIm6c5GIOXbS3RSbETDmBOXb4v/2rIw8nxg==
X-Received: by 2002:adf:fd49:: with SMTP id h9mr4784034wrs.115.1603966558585;
        Thu, 29 Oct 2020 03:15:58 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id 32sm4222495wro.31.2020.10.29.03.15.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 03:15:58 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     perex@perex.cz, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH 2/2] ASoC: qcom: sm8250: update compatible with new bindings
Date:   Thu, 29 Oct 2020 10:15:50 +0000
Message-Id: <20201029101550.31695-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20201029101550.31695-1-srinivas.kandagatla@linaro.org>
References: <20201029101550.31695-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update compatible string as board compatible and device compatible
should not be same!. Make the driver inline with the new bindings.

Fixes: aa2e2785545a ("ASoC: qcom: sm8250: add sound card qrb5165-rb5 support")
Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 sound/soc/qcom/sm8250.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
index 52c40512102f..315ed6ccb7c4 100644
--- a/sound/soc/qcom/sm8250.c
+++ b/sound/soc/qcom/sm8250.c
@@ -207,8 +207,8 @@ static int sm8250_platform_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id snd_sm8250_dt_match[] = {
-	{.compatible = "qcom,sdm8250"},
-	{.compatible = "qcom,qrb5165-rb5"},
+	{.compatible = "qcom,sm8250-sndcard"},
+	{.compatible = "qcom,qrb5165-rb5-sndcard"},
 	{}
 };
 
-- 
2.21.0

