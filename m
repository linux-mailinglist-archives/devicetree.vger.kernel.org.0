Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A91F57C691
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 10:39:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232519AbiGUIjj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 04:39:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231814AbiGUIjO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 04:39:14 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E3FD7E831
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 01:39:13 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id 23so1026328pgc.8
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 01:39:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p/BNkggYGO5wbhXNiM6UQj7ulNxqOcTRhO0RLDvuzKM=;
        b=jdCG6+nifZGncJSVnMdZqWcPjB8hTEnufni1x24Oe2zkcR6ptHZNYFJrjGjt5OfhID
         FH9IMr+HFxCZaLnyI2Bky2/JAJNvjn3uFpBEP8luR59eI4vrZNfvUXosVYBL4rsfH7CX
         rxiyS8JXf6tbqMladHEzyG9kguZI0+2IFtbi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p/BNkggYGO5wbhXNiM6UQj7ulNxqOcTRhO0RLDvuzKM=;
        b=H0z6fF0aZG1UlTUnoBkJuyB8dF02r2qyN2EpM09ZsAa8iBtPYV33hFQOpnZAaQ0M2C
         4BrOyk1I01TF/6sHgqQr4Vbw7S/nzg2xRNC7q2gwSibWfxB2TfT+qGtte8sSFxwJQ64/
         JlIboe2Jov0DpAI9TsgvZ6cUpHovUvsXBDJms+YCwh8q/2NEeNRry/m3JU1AtY/opHmo
         HyPRh8n09ectPaNBiMuXfxz0IA01+XxKe1eUE5PoT8uYMbnD0kX5qnZlBiSxruACaJJh
         H53sSqKvVfCKLBfVkjOuJf5zO3fg4rp7gUFzNGd/0YRu7imvxC9M7b7ZTFHztJ4PIG/5
         flmA==
X-Gm-Message-State: AJIora+qWAJjJkw16l/ojB4UcV0AnN06yx2Uz+OR9BkbCjd2ojSuf6yw
        7v78xApXMmkF51Qlw6jN5vxqog==
X-Google-Smtp-Source: AGRyM1u2dh8hcZHr6mbWIJJwSX9EOohj8nIWfo64hoGPL2tA8Bq50XE9v2BEM8Gz72vRy0bGBjk0GQ==
X-Received: by 2002:a63:1759:0:b0:40d:5aba:4bb0 with SMTP id 25-20020a631759000000b0040d5aba4bb0mr37760805pgx.496.1658392753209;
        Thu, 21 Jul 2022 01:39:13 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id l18-20020a170903121200b0016cd74e5f87sm1025943plh.240.2022.07.21.01.39.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 01:39:12 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Andy Gross <agross@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v4 3/3] arm64: dts: qcom: sc7280: Include sc7280-herobrine-audio-rt5682.dtsi in herobrine-r1
Date:   Thu, 21 Jul 2022 08:38:49 +0000
Message-Id: <20220721083849.1571744-4-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.170.g444d1eabd0-goog
In-Reply-To: <20220721083849.1571744-1-judyhsiao@chromium.org>
References: <20220721083849.1571744-1-judyhsiao@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Include sc7280-herobrine-audio-rt5682.dtsi in herobrine-r1
as it uses rt5682 codec.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
 arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
index c1647a85a371..98280436813d 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sc7280-herobrine.dtsi"
+#include "sc7280-herobrine-audio-rt5682.dtsi"
 
 / {
 	model = "Google Herobrine (rev1+)";
-- 
2.37.0.170.g444d1eabd0-goog

