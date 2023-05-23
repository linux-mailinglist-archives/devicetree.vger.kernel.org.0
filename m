Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 487A470E76E
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:38:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238629AbjEWVig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:38:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237819AbjEWVif (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:38:35 -0400
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com [IPv6:2607:f8b0:4864:20::c2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79DFA11A
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:33 -0700 (PDT)
Received: by mail-oo1-xc2b.google.com with SMTP id 006d021491bc7-54feb6cb568so175781eaf.0
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VI4om0ZWAsAxPDpD0mRnXUe2apysOtTyxuri6O2D2jQ=;
        b=IxRFm84jrNoDiWcn5yW738bsCP5iCB0+EmH3a0i5BluwYlfXaNm4/LO8GY3bKEzmJk
         aCUSC36WK9GhGYMwwepdNTbFoMHV+9TH1Ejv1JYzw5H3OvwuyM24dFrcbPcCDReJJ6Kr
         8cvW4zgnlcdef4f+/ud0PKulsS+offM0b4j5G/PpjSgQvaMfFsEU1iSRwDnvXhDXcRTe
         46yPBK/3n5BC8K/XM8nT30CAWlpnUdlK4IHeL9973nRjPXGsjhek9YbZ+zWCLD1/L+ew
         iHluVRTd64DZ++VBCcP8GyEJxneQgfoWmLWDH2UJdk4ZZDp6zVOqV7imaCV51v09G+Cr
         f/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877913; x=1687469913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VI4om0ZWAsAxPDpD0mRnXUe2apysOtTyxuri6O2D2jQ=;
        b=RYgXZNT1MR81lCtUjeIA6gsxoxeUSToJLEH1Ss34fsTR3KEvtBrWFAKgija9lTueWE
         1SIUFe0XhIDDUrKQWCtWI5dfJbbuP6LyoO70wkQIIRwzEc7HFjhkrWDroen8rXiGltUd
         97BqT72NdMI+oDJvRQR2LJUQDUNuQCVU92h/IhdoI6aVHNpGjlbn5Qex3/m4rzUbZ3ey
         MLdC7FRLeq93mSU102VTMZOyTWxsyxYL1sXymVDG+MuKe5L07gTG/hzmoaLrguDHlWRN
         wFVxmUcf0Ld9SqZ/pavI7oxIEAPtYJgc2bN4xg452vLOJDHlO4tBgbitxBdnApsnPAYC
         ELSg==
X-Gm-Message-State: AC+VfDyuRNO1ohY9XZlpvG0lHKVN2+11ZtMktEIih8cE+pkF7YHudage
        avHcDl8S3F0BApI4odBnFOk=
X-Google-Smtp-Source: ACHHUZ49snHGywQm22s3ZruIpUwwW0LIO0zG7T/h5lkdyPqari17yoPFvSZJS3L1hb8wzc7tjabbWQ==
X-Received: by 2002:a05:6808:4043:b0:398:9ae:50cc with SMTP id cz3-20020a056808404300b0039809ae50ccmr4312004oib.41.1684877912654;
        Tue, 23 May 2023 14:38:32 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:32 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, sebastian.reichel@collabora.com,
        andyshrk@163.com, jagan@amarulasolutions.com, broonie@kernel.org,
        perex@perex.cz, tiwai@suse.com, lgirdwood@gmail.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/6] ASoC: es8328: Enabling support for 12Mhz sysclk
Date:   Tue, 23 May 2023 16:38:20 -0500
Message-Id: <20230523213825.120077-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Enable support for 12Mhz sysclk on es8328. This sysclk value is used on
the Indiedroid Nova rk3588s based single board computer.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Chris Zhong <zyw@rock-chips.com>
---
 sound/soc/codecs/es8328.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/sound/soc/codecs/es8328.c b/sound/soc/codecs/es8328.c
index 160adc706cc6..3918be5fc3f1 100644
--- a/sound/soc/codecs/es8328.c
+++ b/sound/soc/codecs/es8328.c
@@ -36,6 +36,16 @@ static const struct snd_pcm_hw_constraint_list constraints_12288 = {
 	.list	= rates_12288,
 };
 
+static unsigned int ratios_12000[] = {
+	8000, 11025, 12000, 16000, 22050, 24000, 32000, 44100, 48000,
+	48000, 88235, 96000,
+};
+
+static struct snd_pcm_hw_constraint_list constraints_12000 = {
+	.count = ARRAY_SIZE(ratios_12000),
+	.list = ratios_12000,
+};
+
 static const unsigned int rates_11289[] = {
 	8018, 11025, 22050, 44100, 88200,
 };
@@ -577,6 +587,13 @@ static int es8328_set_sysclk(struct snd_soc_dai *codec_dai,
 		es8328->sysclk_constraints = &constraints_12288;
 		es8328->mclk_ratios = ratios_12288;
 		break;
+	case 24000000:
+		mclkdiv2 = 1;
+		fallthrough;
+	case 12000000:
+		es8328->sysclk_constraints = &constraints_12000;
+		es8328->mclk_ratios = ratios_12000;
+		break;
 	default:
 		return -EINVAL;
 	}
-- 
2.34.1

