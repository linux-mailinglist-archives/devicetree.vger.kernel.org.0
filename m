Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C011F74EEDE
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:30:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230505AbjGKMad (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:30:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34298 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231509AbjGKMaa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:30:30 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36FE8E6F
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:29:54 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-51f90f713b2so380741a12.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689078523; x=1691670523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K8XB0b36gPmdiQ9so1TqDakH13y4NHB3DOms10+ba6o=;
        b=nUaFBtgzet2dkcuyHSNEGAGO31f3sAAK3Te/SCzMaAqZspJuCpdnO1/+poA6SqE0cl
         MWXhOQ2lL8vsWhoZc4AwOR9/NjY3nJ+LhGLGnCc6hiYlVcAa2FJgViVjlf16p1iG7wRk
         mSgSUBfP7K5n017xXFxUVPNX/nQZ1BPTjycIlb1Rw/T4DEaIlNes4I5goC+o9u/AWquP
         jbGs58Zu43MWGsZFFCH344XxyU8FstlcmXbMMh+0azkjQc1YIv128s7dS86y5jvMDgtQ
         MoIUYDRh8nz0GALqw/axLzJc1whgfJSFsongnIlA7jhT8VQE2t96ZGqqu3yKW8KOuwYx
         /HdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689078523; x=1691670523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K8XB0b36gPmdiQ9so1TqDakH13y4NHB3DOms10+ba6o=;
        b=fB/Uh+W8FBb8HxkCy5ThlboWR8uK2Amgex2+N9+Ed60w2FVdvWxTOo8+ohmC21dQ7z
         bT0/qXoh2Nyp7KNgdOsvCokDeKs6R1lrzKqj26VUKn0Rahm2Vcze48wD1YIZYn26wemt
         7lq9GEk2bv4eSVCxBDwzpA3waSZKpNzTkgZv2bIguSY6nITOTrr4PNZit4lLlZ+LhTM2
         7aTk9e0vct8jN53sHnVKK9qs2kjeTVA3OpMlOxDOkULz9hFoMppvtmAqlIzX1hPoVL9y
         +kUq7smBn1V0FNEPBAwt0wWwvtmN6I4CJGWODhG/egf/DFd1JRwh2DLvJBxdIpcH4rJ+
         JK/g==
X-Gm-Message-State: ABy/qLaxu6mdJDop/zT3a8rdNKdAEV+d3Xq98ExX1RMXtyipKu6jpxio
        9pvg4J9N5R6/77iRkaQlO0S4NUAAJuHx/G+EZnUIbA==
X-Google-Smtp-Source: APBJJlE2RazEk7jWnWIxzhvB388i+Jz4v5pKbVm5lv2aHkI0z0joWOUIEUNAb0Q0D9yXNDXQA3SC2A==
X-Received: by 2002:a2e:7802:0:b0:2b6:fcd0:2aa1 with SMTP id t2-20020a2e7802000000b002b6fcd02aa1mr14054251ljc.43.1689077974872;
        Tue, 11 Jul 2023 05:19:34 -0700 (PDT)
Received: from [192.168.1.101] (abyl96.neoplus.adsl.tpnet.pl. [83.9.31.96])
        by smtp.gmail.com with ESMTPSA id d18-20020a2e96d2000000b002b708450951sm435563ljj.88.2023.07.11.05.19.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:19:34 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 11 Jul 2023 14:18:51 +0200
Subject: [PATCH 52/53] interconnect: qcom: sm8550: Point display paths to
 the display RSC
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230708-topic-rpmh_icc_rsc-v1-52-b223bd2ac8dd@linaro.org>
References: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
In-Reply-To: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689077904; l=1733;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=JL7o0mask7WGyT5OOgpXbZTfu4QypRbPSv6ivg1xHjk=;
 b=g5PEcaastA0+757hGRpamUu4K391F2PnVaPxUU5BCcKmXycbS8JudpIcZ1n14tPUfV/YxXGAr
 u3V8Yb4LTMMDYFOs18dH266Gk0UlXoW91XeF42ZqHdbF8MAGoK9VKp+
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The _DISP paths are expected to go through the DISP RSC. Point them to the
correct place.

Fixes: e6f0d6a30f73 ("interconnect: qcom: Add SM8550 interconnect provider driver")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/interconnect/qcom/sm8550.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/interconnect/qcom/sm8550.c b/drivers/interconnect/qcom/sm8550.c
index 40740cf5e41d..41314b214cbe 100644
--- a/drivers/interconnect/qcom/sm8550.c
+++ b/drivers/interconnect/qcom/sm8550.c
@@ -1659,28 +1659,28 @@ static struct qcom_icc_bcm bcm_sn7 = {
 static struct qcom_icc_bcm bcm_acv_disp = {
 	.name = "ACV",
 	.enable_mask = 0x1,
-	.voter_idx = ICC_BCM_VOTER_APPS,
+	.voter_idx = ICC_BCM_VOTER_DISP,
 	.num_nodes = 1,
 	.nodes = { &ebi_disp },
 };
 
 static struct qcom_icc_bcm bcm_mc0_disp = {
 	.name = "MC0",
-	.voter_idx = ICC_BCM_VOTER_APPS,
+	.voter_idx = ICC_BCM_VOTER_DISP,
 	.num_nodes = 1,
 	.nodes = { &ebi_disp },
 };
 
 static struct qcom_icc_bcm bcm_mm0_disp = {
 	.name = "MM0",
-	.voter_idx = ICC_BCM_VOTER_APPS,
+	.voter_idx = ICC_BCM_VOTER_DISP,
 	.num_nodes = 1,
 	.nodes = { &qns_mem_noc_hf_disp },
 };
 
 static struct qcom_icc_bcm bcm_sh0_disp = {
 	.name = "SH0",
-	.voter_idx = ICC_BCM_VOTER_APPS,
+	.voter_idx = ICC_BCM_VOTER_DISP,
 	.num_nodes = 1,
 	.nodes = { &qns_llcc_disp },
 };
@@ -1688,7 +1688,7 @@ static struct qcom_icc_bcm bcm_sh0_disp = {
 static struct qcom_icc_bcm bcm_sh1_disp = {
 	.name = "SH1",
 	.enable_mask = 0x1,
-	.voter_idx = ICC_BCM_VOTER_APPS,
+	.voter_idx = ICC_BCM_VOTER_DISP,
 	.num_nodes = 2,
 	.nodes = { &qnm_mnoc_hf_disp, &qnm_pcie_disp },
 };

-- 
2.41.0

