Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADD0A38E4D0
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 13:07:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232627AbhEXLIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 07:08:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232513AbhEXLIn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 May 2021 07:08:43 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6005EC061756
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 04:07:14 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id y184-20020a1ce1c10000b02901769b409001so10774154wmg.3
        for <devicetree@vger.kernel.org>; Mon, 24 May 2021 04:07:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PeNUaTE63OPp+/pR7NHJmfmMhfGonz4QjPJgw0MkZAc=;
        b=To5iUCbvc0iB46YPV/5/JxR+nQ9JAWj9JUsjp6O0kyzHG0axIaQe8SYrkTwH3Ic4ME
         3oQ2NfgtinD2tECA3TqIAT7Pt+S6ML3VaNM00x1Zx7tAIBqbi9QVqlImudHOzRCXzxX4
         m5TH1ZmEvGuMM7Z4w/lLINBSx7pqnYxUB70EtZsNVuRA45SNK4T6OMJyrByPmdC5C+sr
         D6BMuh7/U8JYNgLKjeFZo+lOrpdzx4G6+hGL27kF9g0fJx7MhBUSkfyD12Rk0ZFA2eK7
         0etiG8NcxsIPB+qsHs0fVMYhVpZiuoA6tcsapwrgIYVQnT38l44tH/34kKFqVldPv63I
         6P6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PeNUaTE63OPp+/pR7NHJmfmMhfGonz4QjPJgw0MkZAc=;
        b=JG8m2ASjKc38u9Yy9vrWBxRUvAKh25IUA+YxGui3d3MyaYNk8aSUpfL2W5XrWYuoW+
         +VM3FgRX8eDg2RO5O7fhC75gy6CY6MyupjhjUN3J0Lj0/U4N3qxEfG/TeQL3O3C3TN0I
         FeQNwUdPvJbk/E7qcWHdHpIYGeGi1QINnyCfXc1vfW4dD+REDL94YA7BqGWpTx7Z48KG
         2MmwYy+DBti0APnDS3yReBD+LfEFXO5SBaN9TNZ55icX4aTkoMPs5B0B3hUwBZC1OdXN
         jBvChaRfU7lv90WFuuMNmRazuGIZ/owga0bmim6cQUJdAAmudQ9Y7w2JgjxWVfYk7+4q
         ZwQw==
X-Gm-Message-State: AOAM531C5R+YacezwOGu5amvgHF5ylBEJcajTRfTNUor1BPN8qgt8sVU
        EbMArJyQBfPNdkDb8O99lWn1Yg==
X-Google-Smtp-Source: ABdhPJybdhcDmR3vk8QtWydP3CWuM3+mky3U8jM/MPQ90E6wddjNJZXuyX7EmzrsCXWxMhnaJphFNg==
X-Received: by 2002:a05:600c:2f17:: with SMTP id r23mr18652643wmn.94.1621854432855;
        Mon, 24 May 2021 04:07:12 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id x4sm7590978wmj.17.2021.05.24.04.07.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 May 2021 04:07:12 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org
Cc:     robh@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        lgirdwood@gmail.com,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 0/4] ASoC: codecs: wcd934x: add Headset and button detection support
Date:   Mon, 24 May 2021 12:06:56 +0100
Message-Id: <20210524110700.27077-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds support to MBHC(Multi Button Headset Control) block found in
Qualcomm WCD codecs. MBHC support headset type detection, both Mechanical and
electrical insert/removal detection along with 8 buttons detection,
Over current interrupts on HPHL/R, Impedance Measurements on HPHL/R.

Eventhough MBHC block supports things like OverCurrent detection, Currently its
reported as a kernel debug message. Should this be reported as an uevent to
userspace? like the way USB reports? 
Any suggestions?

First patch adds a common mbhc driver and the second one wcd934x specific driver
changes along with sdm845 soundcard related changes.

Common wcd-mbhc-v2 driver should be reusable across multiple codecs like
WCD9335, WCD934x, WCD937x and WCD938x.

Most of the work is derived from downstream Qualcomm kernels.
Credits to various Qualcomm authors from Patrick Lai's team who have
contributed to this code.

This patchset

thanks,
srini

Changes since v1:
	- updated buttons-vthreshold bindings from review comments for wcd938x

Srinivas Kandagatla (4):
  ASoC: dt-bindings: wcd934x: add bindings for Headset Button detection
  ASoC: codecs: wcd: add multi button Headset detection support
  ASoC: codecs: wcd934x: add mbhc support
  ASoC: qcom: sdm845: add jack support for WCD934x

 .../bindings/sound/qcom,wcd934x.yaml          |   30 +
 include/linux/mfd/wcd934x/registers.h         |   57 +
 sound/soc/codecs/Kconfig                      |    4 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/wcd-mbhc-v2.c                | 1468 +++++++++++++++++
 sound/soc/codecs/wcd-mbhc-v2.h                |  340 ++++
 sound/soc/codecs/wcd934x.c                    |  884 +++++++++-
 sound/soc/qcom/sdm845.c                       |    8 +
 8 files changed, 2778 insertions(+), 15 deletions(-)
 create mode 100644 sound/soc/codecs/wcd-mbhc-v2.c
 create mode 100644 sound/soc/codecs/wcd-mbhc-v2.h

-- 
2.21.0

