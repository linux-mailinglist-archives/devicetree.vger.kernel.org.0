Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAE49754D6
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 18:59:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389805AbfGYQ7y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 12:59:54 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:40451 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388471AbfGYQ7y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 12:59:54 -0400
Received: by mail-wm1-f67.google.com with SMTP id v19so45402205wmj.5
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5T1q+s41fPQD7eof6Tqonl1CLLGxvvozknwhIlqSeIY=;
        b=vSIN5SQO0xC2DiwEc0YeIVtaqLm9xmsTf3t4eAWsBsGaCKiGOK2vgJal9mP8efVMko
         b7K7SHaczX6wzGVIJLowJ89Sig8RGT2vQBqW3UKxd6ok4KM/4XfH2Z1u0WaYmzbvgVka
         e5zhJaCjapKNyqA9aVJLo6T6SStoKByttTvZPPWMNKOQvkMLS/Z3tPyJGSLt7jJp/tqc
         ARjufuz5KjsxoP9SlZp+lrMhoet+SUuKk6IN1bJcohCnML3Z5VOZVa+wVErhZyfKF1C/
         NnjdXCeQAzlByQinXhS1sXYZwHRbaQwyN0r7MpBvmz6N3/lNSs62XIwO3PatT85KPyYa
         I0pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5T1q+s41fPQD7eof6Tqonl1CLLGxvvozknwhIlqSeIY=;
        b=FJD1J4J6qUX2QPdpmJkLk6O0sFco/BYAY+3JB3+nTijL/8kn25C03ycVybA2x7y8H7
         aYMouhZvpc9cMI2eTuCtyYaqJpFwcwOQlu1dILPakBk4b7q0xHnFa5mPhzju+UXb/Isx
         mAmxbPWiQT8ftuvwdtvb1DmXVixajZ7UF73iQZ8i4BI14nLyB7w4FKaKQ4F/wgFAEsfp
         yspLbhkK8GgMmTNWy7HZRUA7dVoD24YiWfyEEE+fwy+A9586sRKP81cOvbrNMZed+auO
         agMG8PzKZAQXKQqXss1114hrXbbPZukD6xYeExrxZZA/lVXyOZswDK5P664y3YVEV+Ax
         RutA==
X-Gm-Message-State: APjAAAW8nYlBJM5vkqdgjRmRfNneRpTSRqTnpzs+kc2lW9aNpJ6ARuio
        xq9hVEfOzAn4i9baFFfN9Qu8JQ==
X-Google-Smtp-Source: APXvYqz87XeGxJ4blumupC5s6LoHjrpUGm7ver3gc6XTezwuwOx9Uc66ViyO7ps4q4zmS4zTE9TXGg==
X-Received: by 2002:a1c:acc8:: with SMTP id v191mr82951769wme.177.1564073992368;
        Thu, 25 Jul 2019 09:59:52 -0700 (PDT)
Received: from starbuck.baylibre.local (uluru.liltaz.com. [163.172.81.188])
        by smtp.googlemail.com with ESMTPSA id q10sm53627199wrf.32.2019.07.25.09.59.51
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 25 Jul 2019 09:59:51 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH v2 0/6] ASoC: improve codec to codec link support
Date:   Thu, 25 Jul 2019 18:59:43 +0200
Message-Id: <20190725165949.29699-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As explained in this previous series [0], on Amlogic, we are using codec to
codec links to deal with the glue which is between the i2s backends and the
synopsys hdmi controller.

This worked well until I tried to .get_eld() support in the dw-hdmi-i2s
driver.  Doing so adds channel mapping controls to the codec. This shown
several problem

1) .pcm_new() is not called on codec to codec links.
   struct snd_soc_pcm_runtime do not even have a valid .pcm
2) struct snd_pcm_substream and struct snd_pcm_runtime are ephemeral
   This is a problem if a control needs to access them

The goal of this patchset is to resolve the above issues and improve the
codec to codec link support enough to correctly handle the hdmi-codec

The support of these codec to codec links could probably be improved in the
future to behave like any other link and use soc_pcm_open(),
soc_pcm_hw_params(), etc...

The challenge lies in the dapm mutex. The soc_pcm call dapm function locking
this mutex but the dapm mutex is already held in snd_soc_dai_link_event()

Changes since v1 [1]:
* Fix rebase on Murimoto-san's patches
* Allocate params dynamically again and refactor the pre_pmu code to
  simplify the error handling and rollback a bit

[0]: https://lkml.kernel.org/r/20190515131858.32130-1-jbrunet@baylibre.com
[1]: https://lkml.kernel.org/r/20190724162405.6574-1-jbrunet@baylibre.com

Jerome Brunet (6):
  ASoC: codec2codec: run callbacks in order
  ASoC: codec2codec: name link using stream direction
  ASoC: codec2codec: deal with params when necessary
  ASoC: create pcm for codec2codec links as well
  ASoC: codec2codec: remove ephemeral variables
  ASoC: codec2codec: fill some of the runtime stream parameters

 sound/soc/soc-core.c |  42 +++------
 sound/soc/soc-dapm.c | 220 +++++++++++++++++++++++++++----------------
 sound/soc/soc-pcm.c  |  35 ++++++-
 3 files changed, 182 insertions(+), 115 deletions(-)

-- 
2.21.0

