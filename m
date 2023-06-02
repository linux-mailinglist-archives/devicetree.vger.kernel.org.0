Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EE2971FD07
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 11:05:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234303AbjFBJFC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 05:05:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234834AbjFBJEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 05:04:12 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0929C10D1
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 02:03:51 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51494659d49so2631456a12.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 02:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1685696629; x=1688288629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FMKaght3EZRcwtR4hLhGpGozkma4rbwmuu+0lxvlO3A=;
        b=aG3Fb8X3K9WKKxNliXyqCzqEZZLOAoC6+28JL4RDvnce9WPai1yKdx0ChsOA6lzB7y
         sgOHuV1st30My66XqPWbpZNBLehHxsHl9kFZRb4hR8CuRGTZfAUA8pTLXzixnF/cixb5
         jPt1Pdg3POHJ5A2WTe56XJ2P0GNmJmOCmrvIIQUviHJgSY5tVV5CvfpKte6P6z/3oh4l
         PSHUkwTIQqidY85LpUOWYubwIctytCIgg7cbqb6ySfLJr/0Jw9w1RQU2wNtJGYmfrmaS
         RZyfs8UuR7zTmy/p6b+RZIJkHQg+dM/aGHLTvzNl2PD0I6gI2Ldpn2M+nbY4iTKv7H4X
         d5Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685696629; x=1688288629;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FMKaght3EZRcwtR4hLhGpGozkma4rbwmuu+0lxvlO3A=;
        b=a7WZFTbu3fmeYlnLP8rIAcGbQDUuHMb4sLnAH/9xtqCpG4ZVhcKIQWgzK+CK84n/Vg
         Bsckmvc8oJAiyxepJrIZmEHX2uxCkXiCn2pq16cRc8aM9zpRCs2ZkKsbV/bInfJpYqMT
         ktol5iUzHCrCUQ3TL+6Rx7cym/vTyt6IC8OBhxDw40WV4u0KA6toWxw0DrREkdPuF/1V
         0yvVJ8TfnykKPoI7DNWoYDEAUVVH3TDhr1h2W6sWh7GTxHiLBCJ6UOeH2sbfRXC3Oope
         3hsX2ZtWchxt9rIHiZUsiZSlH4tr5d8334YiXAcW7qNXW2A6TiJNrAjPesFFTk1jNkAH
         af8Q==
X-Gm-Message-State: AC+VfDzva4RTPeKCCw+N0Tp5myHDpezGe55rBezJKgjKElKjWt5LZARi
        q/0g+CAlhOIg+/P1YcifA+mppw==
X-Google-Smtp-Source: ACHHUZ4jmlviWCEZ9d2sqlZKV0HRtlTNsu09RrXOh72/ySDy+4DwbEEj8oyV65wODyolmmip16qHpg==
X-Received: by 2002:a17:906:d550:b0:974:6334:f6b2 with SMTP id cr16-20020a170906d55000b009746334f6b2mr806371ejc.22.1685696629567;
        Fri, 02 Jun 2023 02:03:49 -0700 (PDT)
Received: from localhost.localdomain (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id w23-20020a170906385700b009707fa1c316sm488031ejc.213.2023.06.02.02.03.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 02:03:49 -0700 (PDT)
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
Subject: [PATCH 4/4] ASoC: simple-card: parse symmetric-clock-roles property
Date:   Fri,  2 Jun 2023 11:03:21 +0200
Message-Id: <20230602090322.1876359-5-alvin@pqrs.dk>
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

The property, when set, specifies that both ends of the dai-link should
have the same clock consumer/provider roles. As with other simple-card
properties, a prefix can be specified.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 sound/soc/generic/simple-card.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/sound/soc/generic/simple-card.c b/sound/soc/generic/simple-card.c
index 5a5e4ecd0f61..4513e30948b7 100644
--- a/sound/soc/generic/simple-card.c
+++ b/sound/soc/generic/simple-card.c
@@ -181,6 +181,7 @@ static int simple_link_init(struct asoc_simple_priv *priv,
 {
 	struct device *dev = simple_priv_to_dev(priv);
 	struct snd_soc_dai_link *dai_link = simple_priv_to_link(priv, li->link);
+	char prop[128];
 	int ret;
 
 	ret = asoc_simple_parse_daifmt(dev, node, codec,
@@ -188,6 +189,9 @@ static int simple_link_init(struct asoc_simple_priv *priv,
 	if (ret < 0)
 		return 0;
 
+	snprintf(prop, sizeof(prop), "%ssymmetric-clock-roles", prefix);
+	dai_link->symmetric_clock_roles = of_property_read_bool(node, prop);
+
 	dai_link->init			= asoc_simple_dai_init;
 	dai_link->ops			= &simple_ops;
 
-- 
2.40.0

