Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BD032643A7
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 12:17:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730268AbgIJKRz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 06:17:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725912AbgIJKRt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 06:17:49 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0A22C061756
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 03:17:48 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id k18so5215980wmj.5
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 03:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8Yn9H//prDI3nzfubjnDYZsOWLfIwC4u9zL7Q5L5NuY=;
        b=CoqKYihr/LAknPrSQbIbvPU2gLR7FOIH7ggzqjsh9z15qaPyfyrhevRI2T+LSxmQdS
         /P944BCbCATI4ndCviuSg3z7h8gkBd8AfUpk756wQ+QVHhVwnUc377v33rnx4r+I0y7f
         yy653d0neKXvV6G2HNZkJj83sq3Msz98IJgqrW69nlqAok2crk4ny0zWgR/aqRekA1Jq
         XZNJDRralB2ssmWk3SdWzDwtmUwOmx0lIIqwgvNHyH9ex2vs/wkUa74vJAlCN3LgsRPk
         Ks9dVnyXV19La4pBynnDCb/3LbWV7O3S8cBbM9ztVpG9cWD+Zt3yh95JlWyP1YnOClAd
         2+tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8Yn9H//prDI3nzfubjnDYZsOWLfIwC4u9zL7Q5L5NuY=;
        b=euFj2/h+c2iS0uQHYvekpuc+LCTDd8e43ppHmN08MM7CNorKTweo5RAM8RP/JxO+9c
         P0Vr5aGd6RWp30Mplbn1n/Di0CudWSKUZFaP28fmnnNWsGNJA9Ci7t1xAvFzx0nVejAU
         o5Z4wKVaWNvcwPsA0ue7KTdwfdwOMP8bfrajRlScDj3mIsavqST8lWZZs/wc4iuFYfJ4
         lNZVVGNEdUgo89NkBOQBDpRDheyxaWH1OpIYawg6NaeM6brbgWQOkC91gbi7ZRsFga88
         HQfi0Bium3weimzsld4f459qh9mF2ijqIvjEe8oGGiVCUwTjKt5VipSByK3WovMCeOpf
         5lLQ==
X-Gm-Message-State: AOAM5324Dhe0ZxZ4yqOsXemL/x4Ii30Xxky4cof0sJxw6ytP0cREjSvr
        ng5s2wxNVyEQOvJLGBu90tGKNg==
X-Google-Smtp-Source: ABdhPJxcPLylHepCovWDrGxeRaGOCbbA84z0OyPHZyCk3TmQmQLuLKvH4O+kUQQuUZyJGZRCB5Texw==
X-Received: by 2002:a05:600c:4103:: with SMTP id j3mr7653661wmi.130.1599733067588;
        Thu, 10 Sep 2020 03:17:47 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id m4sm8851731wro.18.2020.09.10.03.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 03:17:46 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     lgirdwood@gmail.com, robh+dt@kernel.org, plai@codeaurora.org,
        bgoswami@codeaurora.org, perex@perex.cz, tiwai@suse.com,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/8] ASoC: q6dsp: Add support to Codec Ports.
Date:   Thu, 10 Sep 2020 11:17:24 +0100
Message-Id: <20200910101732.23484-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

LPASS IP on SoCs like SM8250 has Digital Codec part integrated into it.
This ports are exposed in Q6DSP as Codec ports. This patchset adds
support to those q6afe ports along with q6routing and q6afe-dai.

This patchset has been tested along with other patches on
Qualcomm Robotics RB5 Platform with Soundwire and WSA8815 Codec.

Thanks,
srini

Srinivas Kandagatla (8):
  ASoC: q6dsp: q6afe: add support to Codec DMA ports
  ASoC: q6dsp: q6routing: add support to Codec DMA ports
  ASoC: q6dsp: q6afe: prepare afe_apr_send_pkt to take response opcode
  ASoC: q6dsp: q6afe: add global q6afe waitqueue
  ASoC: q6dsp: q6afe: add lpass hw voting support
  ASoC: q6dsp: q6afe: update q6afe_set_param to support global clocks
  ASoC: q6dsp: q6afe: add codec lpass clocks
  ASoC: q6dsp: q6afe-dai: add support to Codec DMA ports

 include/dt-bindings/sound/qcom,q6afe.h |  22 ++
 sound/soc/qcom/qdsp6/q6afe-dai.c       | 229 ++++++++++++++++++
 sound/soc/qcom/qdsp6/q6afe.c           | 308 +++++++++++++++++++++++--
 sound/soc/qcom/qdsp6/q6afe.h           |  33 ++-
 sound/soc/qcom/qdsp6/q6routing.c       | 121 +++++++++-
 5 files changed, 689 insertions(+), 24 deletions(-)

-- 
2.21.0

