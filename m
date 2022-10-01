Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 894EE5F1F12
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 22:02:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229481AbiJAUCJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 16:02:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44722 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229447AbiJAUCJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 16:02:09 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DC3C27DD6
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 13:02:08 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id f23so6654300plr.6
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 13:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=ZWAeA4Sa1ifawPVMtTP+pp0uH23CxEW9tP2Hk70DSVo=;
        b=T2nO/bjO6RmI+Oq7jfv4fZK6mgqcXlBjcpWtasvkdB7eIFQzDfDKam0MoyyHzvjJNO
         dtPgQiqxVFZahjbkopkuwyy5kgn5O2Z3ilnoEs5UnGA6eCyv0gjoHtpFDv4se5aK2KSj
         zCHCW5Iez1kaAIUA0+3YrhdsJW8xvR7C+gtuQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=ZWAeA4Sa1ifawPVMtTP+pp0uH23CxEW9tP2Hk70DSVo=;
        b=F1anQwwQKA0WX1UlEcEFghT5nra8lXQRFGzAhe2Wj1FYwWuUumsOxhcJ1CCZqkExGE
         2uYd/aPPvNwuF6PWcddtogPgmQBUHjq+9dYOdfwVIuijc2B15kgiSI7QFCoVgZDFejjm
         4RV/Lr4TcHdzY2MhLpX5q8mxuWpgViJXup4gj9aLkDLS3RjCgN6IWyUSpkQXtjLKNyM6
         jvVwQMLgHfJNHRcxKlbADYLTVkMf/50brS/GttWF7ivqSOf9t13OVr0YXwBlErLVxcYT
         5UAoPkK34yFmxmXTDtA3HHiSXk9Cfx3+P60wBkKFsuBB+tuyRr8lo5ZQb/gQxGS4YlEm
         A+rg==
X-Gm-Message-State: ACrzQf08mkw57SN1iF7DhijW4/F1andNARAYRmHPbGNkPn9u5NkSTICK
        GtNoqUcLRags/DAIROQHV+NWwA==
X-Google-Smtp-Source: AMsMyM6CxcnHsw/RFWto95wzipp0WqdEGgeHj33uekZXp4/kS/QAETKAk/pZPtYER2hq/f4kscBKhw==
X-Received: by 2002:a17:902:6bc8:b0:178:81db:c6d9 with SMTP id m8-20020a1709026bc800b0017881dbc6d9mr15180623plt.56.1664654527733;
        Sat, 01 Oct 2022 13:02:07 -0700 (PDT)
Received: from doug-ryzen-5700G.. ([50.45.132.124])
        by smtp.gmail.com with ESMTPSA id l18-20020a170903121200b0017a8aed0a5asm4313593plh.136.2022.10.01.13.02.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Oct 2022 13:02:07 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Doug Brown <doug@schmorgal.com>
Subject: [PATCH 0/2] ASoC: add devicetree support for WM8961 codec
Date:   Sat,  1 Oct 2022 13:00:37 -0700
Message-Id: <20221001200039.21049-1-doug@schmorgal.com>
X-Mailer: git-send-email 2.34.1
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

This series adds devicetree support for the Wolfson WM8961 codec. The
first patch adds a schema, and the second patch hooks it up in the code.

Doug Brown (2):
  ASoC: dt-bindings: add schema for WM8961
  ASoC: wm8961: add support for devicetree

 .../devicetree/bindings/sound/wlf,wm8961.yaml | 40 +++++++++++++++++++
 sound/soc/codecs/Kconfig                      |  2 +-
 sound/soc/codecs/wm8961.c                     |  6 +++
 3 files changed, 47 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8961.yaml

-- 
2.34.1

