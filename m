Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 479F471FD0B
	for <lists+devicetree@lfdr.de>; Fri,  2 Jun 2023 11:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232404AbjFBJFA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Jun 2023 05:05:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235057AbjFBJEM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Jun 2023 05:04:12 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1BCC10CF
        for <devicetree@vger.kernel.org>; Fri,  2 Jun 2023 02:03:49 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-96fd3a658eeso257892566b.1
        for <devicetree@vger.kernel.org>; Fri, 02 Jun 2023 02:03:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pqrs.dk; s=google; t=1685696628; x=1688288628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ppOouDsw2ZJBp9Pb63smrW3GHRr3r6Vq+ntYkWdxiUU=;
        b=W7A072+4L5LVDFH8xeLtIvjZhQinq7JukGEfUyDMsfu3Ltgt+G1BtIcw7ak1xEEHGl
         hAUqRouAfhJg//9Q+p9+8CJGUpYPUOHUrUGQLFmt/FgEgERYhiqusJZ/e0ZQu9O6eSc4
         DmqOcdWC7yH1yDWj3Mg1nCVroO1VyUTPGMiUYTYRge94t/W+DcZlKQs6ItelryoyQ93m
         AEse3zS9XK/8Xz0VxP5mXPBfOf9dJj5ZVZ6CBqR4kiMc1Y4YCpeB0HjfKGSca7+rNxCz
         j7/GQhJUvGMovqQPDjqKV+Ah7gqBFlQFoVekcAxbhOM1gWsPj9HXrKGxgdKQrIOH6NjA
         ZO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685696628; x=1688288628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ppOouDsw2ZJBp9Pb63smrW3GHRr3r6Vq+ntYkWdxiUU=;
        b=eemp7lVo1Drt8UuQWkr4vg+zIsT5NITd/ocBYwyWrVY6rF6vpmdycSrSBQLCLXHsAp
         V9bDyhfeY7+6wcD29k/B71SVNMW15gTgmxzStkPycdM02kapn7aCYokv9uiED1y0wtRc
         OCymbeJ6Y7TsOHmXE0zLsBCabanTL+vkxy/C4rSgvwkiF9TAUDIy9O+l4a+0rvxUxBUs
         R6NJ0lKChMKZTfo+2Bs/iD9NC6NofYEV2bEJ8g4flcmSP4nsP0Cw3fSgTcYK8pZtTnfl
         WpdwtqXewW8gOKW/GP67fQLMKG1FM5EsX6B98mci1YNCza2NwQeWY+lNZGUay00x6VgX
         VpvA==
X-Gm-Message-State: AC+VfDw71Rj+eciQMCHK+66aBLFZRJ4DB1eAUhqIOn68vjGaPFmDk35w
        myZDPvBY2cqnlKHSXldARmUpSg==
X-Google-Smtp-Source: ACHHUZ4S9FTeGd8RGDT+UXj2VgaTZT2QVwDEvvsYF+21upP5MdbUrrtn+d9nL+oT4j4acVNL6wfeEg==
X-Received: by 2002:a17:907:d17:b0:966:eb8:2f12 with SMTP id gn23-20020a1709070d1700b009660eb82f12mr10334273ejc.11.1685696628034;
        Fri, 02 Jun 2023 02:03:48 -0700 (PDT)
Received: from localhost.localdomain (80.71.142.18.ipv4.parknet.dk. [80.71.142.18])
        by smtp.gmail.com with ESMTPSA id w23-20020a170906385700b009707fa1c316sm488031ejc.213.2023.06.02.02.03.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jun 2023 02:03:47 -0700 (PDT)
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
Subject: [PATCH 3/4] ASoC: audio-graph-card2: parse symmetric-clock-roles property
Date:   Fri,  2 Jun 2023 11:03:20 +0200
Message-Id: <20230602090322.1876359-4-alvin@pqrs.dk>
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
have the same clock consumer/provider roles. Like with parsing of DAI
format, the property can be specified in multiple places:

	ports {
 (A)
		port {
 (B)
			endpoint {
 (C)
			};
		};
	};

So each place has to be checked. In case the clock roles are symmetric,
there is then no need to flip the role when parsing the DAI format on
the CPU side, as it should then be the same on the Codec side.

Signed-off-by: Alvin Šipraga <alsi@bang-olufsen.dk>
---
 sound/soc/generic/audio-graph-card2.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/sound/soc/generic/audio-graph-card2.c b/sound/soc/generic/audio-graph-card2.c
index 25aa79dd55b3..9b4ebfd0c0b6 100644
--- a/sound/soc/generic/audio-graph-card2.c
+++ b/sound/soc/generic/audio-graph-card2.c
@@ -721,13 +721,18 @@ static void graph_link_init(struct asoc_simple_priv *priv,
 	if (of_node_name_eq(ports, "ports"))
 		graph_parse_daifmt(ports, &daifmt, &bit_frame);	/* (A) */
 
+	if (of_property_read_bool(ep, "symmetric-clock-roles") ||
+	    of_property_read_bool(port, "symmetric-clock-roles") ||
+	    of_property_read_bool(ports, "symmetric-clock-roles"))
+		dai_link->symmetric_clock_roles = 1;
+
 	/*
 	 * convert bit_frame
 	 * We need to flip clock_provider if it was CPU node,
 	 * because it is Codec base.
 	 */
 	daiclk = snd_soc_daifmt_clock_provider_from_bitmap(bit_frame);
-	if (is_cpu_node)
+	if (is_cpu_node && !dai_link->symmetric_clock_roles)
 		daiclk = snd_soc_daifmt_clock_provider_flipped(daiclk);
 
 	dai_link->dai_fmt	= daifmt | daiclk;
-- 
2.40.0

