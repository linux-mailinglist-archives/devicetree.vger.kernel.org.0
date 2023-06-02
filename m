Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D919171FD1A
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 11:06:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234552AbjFBJGv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 05:06:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234187AbjFBJEI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 05:04:08 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE45110C8
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 02:03:47 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-97460240863so74998966b.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 02:03:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1685696626; x=1688288626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8/iuC9pgq+loj7BUT0q2UIND8pBHqchhclkWSDPXeDM=;
        b=K1yBeMpBVIyXpZOk4aIP0ge7LNiFJvDqYOSNIVpD86eYCYyy8DH0RfBt7XJAG4NSRk
         5RKTKtJKP/1Oa0yeujEtwik60eVCbWz6w175oko0mwaI+fY0LUHU39kh/wpADcdnjOwa
         NqDT95GmEvI13yF+WnHDrTE8xsAFdkWt40HxiB4+Wrue8DmFxzQVSAyPbWghNCMdspfk
         NlNHWIdVoWhLNGrnrxxrPvE7w/CXasgvunm/4116b9qSZ173Cjp7zZHfUfsdbp297AcE
         FGMwB5xdCy7hUFh7R0RsYEtEsEfHpOl5YNbJKDaWOfWsnIkZs+k6n19ff7HNoKfTrw3F
         /xrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685696626; x=1688288626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8/iuC9pgq+loj7BUT0q2UIND8pBHqchhclkWSDPXeDM=;
        b=e5qLpORrrFG5wmaCIgQArB83jFrVqhClO63rde4YPQk0I1bpKCdPRP2bIWkuzIw359
         syL4Cps7a0F5om3gft2ImWFrlZAULJHlv5iyrz1PwVgY4kiW+LZbOOiIanue7jexCZID
         v2GOOxTzwt9x4eQN9HTQDltGbuJ9wo7DmQQSi8pmCD+r9cuDayBU69G4Irqgw2Tbf5sS
         E4EcMZMgHIqUeyiyA8EnY0nts6ILMnA4uYrchAo3TH49O9Ump2wRem46qNdL+b+a3LRp
         wl3fK6JkCnrCpKJi5mEQTDt8/0hUUSFhmOZ6U1FS8pDvYxAAj+P3luX5zk4G4nK+DLKz
         fK+w==
X-Gm-Message-State: AC+VfDzucc5kDUbR9Y8zfS+EJXlHnf/Rb8vQXcz+nkSHHgmrzwRli0lE
        7T+/SVYV6fFOEjlU8UpeSC70IQ==
X-Google-Smtp-Source: ACHHUZ57MiVriTCuxX+gZLPjT5VoffIDc1r1ZvgGusNN8s74xGZXqvkznPNQ/GUhKpf/VK5I52mxjQ==
X-Received: by 2002:a17:907:3e14:b0:974:545d:cfa3 with SMTP id hp20-20020a1709073e1400b00974545dcfa3mr2630054ejc.64.1685696626324;
        Fri, 02 Jun 2023 02:03:46 -0700 (PDT)
Received: from localhost.localdomain (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id w23-20020a170906385700b009707fa1c316sm488031ejc.213.2023.06.02.02.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 02:03:46 -0700 (PDT)
From:   =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alvin@pqrs.dk>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     =?UTF-8?q?Alvin=20=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] ASoC: core: add support for dai-links with symmetric clock roles
Date:   Fri,  2 Jun 2023 11:03:19 +0200
Message-Id: <20230602090322.1876359-3-alvin@pqrs.dk>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230602090322.1876359-1-alvin@pqrs.dk>
References: <20230602090322.1876359-1-alvin@pqrs.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alvin Šipraga <alsi@bang-olufsen.dk>

The snd_soc_dai_link::dai_fmt field contains the nominal bit- and
frame-clock consumer/provider role from the point of view of the codec.
The ASoC core then assumes that it should flip the roles when
initializing the format on the CPU. But in cases where both the CPU and
codec are clock consumers, e.g. because of an external clock source,
this assumption breaks down.

To allow for proper configuration of the backing CPU/codec drivers for
consumer roles, introduce support for a symmetric_clock_roles flag. The
role flipping will be skipped when this flag is set.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 include/sound/soc.h  | 3 +++
 sound/soc/soc-core.c | 4 +++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/include/sound/soc.h b/include/sound/soc.h
index 533e553a343f..87f4fb3d4b20 100644
--- a/include/sound/soc.h
+++ b/include/sound/soc.h
@@ -718,6 +718,9 @@ struct snd_soc_dai_link {
 	/* Keep DAI active over suspend */
 	unsigned int ignore_suspend:1;
 
+	/* Assume CPU/Codec have the same clock consumer/provider role */
+	unsigned int symmetric_clock_roles:1;
+
 	/* Symmetry requirements */
 	unsigned int symmetric_rate:1;
 	unsigned int symmetric_channels:1;
diff --git a/sound/soc/soc-core.c b/sound/soc/soc-core.c
index b48efc3a08d2..7817b86dd93d 100644
--- a/sound/soc/soc-core.c
+++ b/sound/soc/soc-core.c
@@ -1216,6 +1216,7 @@ static void snd_soc_runtime_get_dai_fmt(struct snd_soc_pcm_runtime *rtd)
 int snd_soc_runtime_set_dai_fmt(struct snd_soc_pcm_runtime *rtd,
 				unsigned int dai_fmt)
 {
+	struct snd_soc_dai_link *dai_link = rtd->dai_link;
 	struct snd_soc_dai *cpu_dai;
 	struct snd_soc_dai *codec_dai;
 	unsigned int i;
@@ -1231,7 +1232,8 @@ int snd_soc_runtime_set_dai_fmt(struct snd_soc_pcm_runtime *rtd,
 	}
 
 	/* Flip the polarity for the "CPU" end of link */
-	dai_fmt = snd_soc_daifmt_clock_provider_flipped(dai_fmt);
+	if (!dai_link->symmetric_clock_roles)
+		dai_fmt = snd_soc_daifmt_clock_provider_flipped(dai_fmt);
 
 	for_each_rtd_cpu_dais(rtd, i, cpu_dai) {
 		ret = snd_soc_dai_set_fmt(cpu_dai, dai_fmt);
-- 
2.40.0

