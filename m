Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6384634EAE3
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 16:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231951AbhC3Or4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 10:47:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231933AbhC3Orc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 10:47:32 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0A28C061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:29 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id a7so25244024ejs.3
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DfVVbnMRBjcx8lxNFkrBcP8VRW/be3uoR/xr+g+P8/g=;
        b=oFDj0OGchZRxC1Omw0WtmvRq0/GM+VLpoXoleMFmvHTzAiIr+Rn6H+Rmzxhe88NmNv
         Z1GrbQZycWAC5zdbfHCfKbZBrmtLBnsrQcBAchpIYbQE3dkx2jmwuW3omn1myUsSepmj
         GYO2UTZN8v3HtuY0OeM0cR8TMMSR+Kir2zuoKDWHwV9Ydm6alo1nqH8K7KkpUbhJDJq3
         2XYBtc54JpUNuFFyi+0UHTo1HQgpcg2ajYVGN/y2EjLOJg4f7Uh73WXdpExmgc+Kk5wk
         4PVGwtFtVgaiuxThFgOSjEnh67kI1GHi018M7OBZlikSo/xxk+v578R5MyzI1QtKMoxN
         rbjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DfVVbnMRBjcx8lxNFkrBcP8VRW/be3uoR/xr+g+P8/g=;
        b=FdIkduywN23GQUPSPaoPW4pas4jHRx+vE1qmuvw0RCTXocNH0C8dyz8ruEkAje/gCF
         E8c7ICd83tMegiA4X4DYAa9G1lJWUZQe8W+yVIjYEfC/iDp0B9EVVEkxKG8m5CIE4gLf
         pwZxkTvE/7il3EzqotYpbHkv19Z6YKUUisiv4kTDvEvJdH4UqzaridsLxSVpuW1UaBmc
         6sDP0x0uwguOz+aTAJz5rEbZX9DQ/9HKO7I4o83TUxBxLnV6EXqGbpKS8CVoPZLl/Y9u
         ZiSWmIvyye/GqROdF0skUksw5Js3apm5/kTf4vP/XRf/bSQPnijf1FUdVDu4rtOZJM4z
         nRsA==
X-Gm-Message-State: AOAM532+slTbvktJQ2EuSEt+LYGNkhbOYZpcGHu1ongW5IrYDqfUBLe2
        Zaf35K9Sa6boN9tSvyP2DrPkKA==
X-Google-Smtp-Source: ABdhPJwMYcNcpviBb5ac79qkVKzN8+9vV5ejGiXA/bJ95PIHeV+lX2+wvv6h+0qMbfCyOcGzSZUU1w==
X-Received: by 2002:a17:906:9b2:: with SMTP id q18mr6858760eje.147.1617115648503;
        Tue, 30 Mar 2021 07:47:28 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n16sm11520383edr.42.2021.03.30.07.47.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 07:47:27 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 0/9] soundwire: qcom: various improvements
Date:   Tue, 30 Mar 2021 15:47:10 +0100
Message-Id: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks for reviewing v5 of this patchset!

During testing SoundWire controller on SM8250 MTP, we found
few issues like all the interrupts are not handled,
all transport parameters are not read from device tree.
Patch to add Auto Enumeration supported by the controller
is also part of this series.

Other major issue was register read/writes which was interrupt based
was an overhead and puts lot of limitation on context it can be used from.

With previous approach number of interrupts generated
after enumeration are around 130:
$ cat /proc/interrupts  | grep soundwire
21: 130 0 0 0 0 0 0 0 GICv3 234 Edge      soundwire
    
after this patch they are just 3 interrupts
$ cat /proc/interrupts  | grep soundwire
21: 3 0 0 0 0 0 0 0 GICv3 234 Edge      soundwire

So this patchset add various improvements to the existing driver
to address above issues.

Tested it on SM8250 MTP with 2x WSA881x speakers, HeadPhones on
WCD938x via lpass-rx-macro and Analog MICs via lpass-tx-macro.
Also tested on DragonBoard DB845c with 2xWSA881x speakers.

Changes since v5:
	- Use BIT macro in interrupt routine
	- add comment for fifo write

Srinivas Kandagatla (9):
  dt-bindings: soundwire: qcom: clarify data port bus parameters
  soundwire: qcom: add support to missing transport params
  soundwire: qcom: set continue execution flag for ignored commands
  soundwire: qcom: start the clock during initialization
  soundwire: qcom: update register read/write routine
  soundwire: qcom: add support to new interrupts
  soundwire: export sdw_compare_devid, sdw_extract_slave_id and
    sdw_slave_add
  soundwire: qcom: add auto enumeration support
  soundwire: qcom: wait for enumeration to be complete in probe

 .../bindings/soundwire/qcom,sdw.txt           |  20 +
 drivers/soundwire/bus.c                       |   4 +-
 drivers/soundwire/qcom.c                      | 529 ++++++++++++++----
 drivers/soundwire/slave.c                     |   1 +
 include/linux/soundwire/sdw.h                 |   2 +
 5 files changed, 443 insertions(+), 113 deletions(-)

-- 
2.21.0

