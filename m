Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE4835F27D4
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 05:24:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbiJCDYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 23:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40122 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229542AbiJCDYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 23:24:45 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3023F6B
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 20:24:43 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id q7so1523506pfl.9
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 20:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=DQquaZAcXIy4M+b8mdS34VA7TR7HzahIgM8NzE1IWeY=;
        b=S0YyQndTN+fah/mp3zVqA/pfagjsIfATDQ3UQziRxt9h8+mrZxLvlmQyE8EtyRL+U1
         8A3ZwvPrgvcegiSczlVPSQaQD0C+POgsCUm+oKbvsi8xOL8fpLGJg6nQNn3VkYADIZnW
         blO6kGP+xVXZo8d6Q7heb+TT+GDI2COYLl2Pk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=DQquaZAcXIy4M+b8mdS34VA7TR7HzahIgM8NzE1IWeY=;
        b=cpfYxdUSpmaJnruuzfu42aYOGvbPJuXiwpDaiAY8QQNIgggQGkgpWzhvgMmETUdn/6
         AFP0aqs0/DjDz/Ogwf+0jB8v1Lsk4kf9npmIvlcTgjgM6X3RJpdg8iaCI5WWrmGoHuQ6
         n2r085piv6mrK6KPyGTNWzIAGCPueybmlzcXQxIgZB9qwXP56szKViJCFJNR711tMa51
         NkTtEJw1mVkfgndXe3XJgS/sNF0brTZWD3R+8rT+NUCRPZXqPVymcSu3tmU9mUQNxQwe
         v8t86q+744JfZXoQ3Dp0atyMyUsZBrp4jf5eC+1VVTC30doGExTG+O35LtYjAmB7IaZD
         4pFg==
X-Gm-Message-State: ACrzQf3u4P3gP/ZUQ5IS2x+1B6Whnf42yQ++33L4T6k1Zz5xaOQs+PEt
        UawJEjy7KHuicvfyRQMnxMDpqA==
X-Google-Smtp-Source: AMsMyM65B5CKIKoAtOoSsD0JpIFTe51j6BtOH9csjXvYeIEUaRkmVf8q4zPaQd9DaX2ABMPbeB+JHw==
X-Received: by 2002:aa7:9710:0:b0:561:7692:fa11 with SMTP id a16-20020aa79710000000b005617692fa11mr2402055pfg.39.1664767483319;
        Sun, 02 Oct 2022 20:24:43 -0700 (PDT)
Received: from doug-ryzen-5700G.. ([50.45.132.124])
        by smtp.gmail.com with ESMTPSA id y25-20020aa78f39000000b0053e7d3b8d6dsm6157977pfr.1.2022.10.02.20.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Oct 2022 20:24:43 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Doug Brown <doug@schmorgal.com>
Subject: [PATCH v2 3/3] ASoC: codecs: allow WM8961 to be selected by the user
Date:   Sun,  2 Oct 2022 20:24:14 -0700
Message-Id: <20221003032414.248326-4-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221003032414.248326-1-doug@schmorgal.com>
References: <20221003032414.248326-1-doug@schmorgal.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow the WM8961 driver to be enabled independently now that it is
usable with devicetree.

Signed-off-by: Doug Brown <doug@schmorgal.com>
---
 sound/soc/codecs/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index e3b90c425faf..2b5787ee8d31 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -1929,7 +1929,7 @@ config SND_SOC_WM8960
 	depends on I2C
 
 config SND_SOC_WM8961
-	tristate
+	tristate "Wolfson Microelectronics WM8961 CODEC"
 	depends on I2C
 
 config SND_SOC_WM8962
-- 
2.34.1

