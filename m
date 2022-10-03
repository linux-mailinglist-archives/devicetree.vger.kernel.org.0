Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 716C75F27D1
	for <lists+devicetree@lfdr.de>; Mon,  3 Oct 2022 05:24:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbiJCDYn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 23:24:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229539AbiJCDYl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 23:24:41 -0400
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DCC9E94
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 20:24:36 -0700 (PDT)
Received: by mail-pj1-x1033.google.com with SMTP id b15so753010pje.1
        for <devicetree@vger.kernel.org>; Sun, 02 Oct 2022 20:24:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=schmorgal.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=z2kbdiQ3OWBq1OvUH8zoDFLqMD73DnTq2ErCwWOA2RA=;
        b=dthz2xeLnmFZLYt4QnpN+sJBIsvLr+HB4X1NvD6x2OgwGSBFqfhe4/AYfP+dY66Dgt
         Ycff6Pqrqt1+Yu4ZIn2pgh7yeZzpnuZhKulrsy/0tduiSLgohvJlUzgObFxaE2NJyl/l
         mWqs8HrrNXyKHrFEmVDf70FeRs2P/GCyV0IJ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=z2kbdiQ3OWBq1OvUH8zoDFLqMD73DnTq2ErCwWOA2RA=;
        b=Wopanl/Zo01BtzthreHerwvFqrsB6fDE5wXgqP3eLd/xCBciH8sL41/ReRDxfRSXxd
         qO56MehfawXpHLRCFtwDpoZx/oPascYfFzmYXG03zY8AI0GKcASywtHu+ivRy1V3Qp3X
         DSuRiV8exbyPYAe8OcZyQhHpL1VmOaMqr1q9VWDgD9hchU4eUd8N1H3Cb+mH560e+pkD
         xXS0Oxr99UTPz/ci3q4GPn0o2Wqelvs49RBow9RnzVCOGvIa5IKJm6YnuK2FP7eI/J4n
         596AlnCgl0VGq0QDIntBbTuoJTAZ5QK/Rh8dr23GVsZ620+yShj6hCUPYUcA2zZyJLVl
         rudw==
X-Gm-Message-State: ACrzQf3+qD7YHJLB0Ds6kOgOCtAPbA7sjVlaU2runZV2teQSu02ISAT9
        s1WRJq44CMQm6whbhfJJKnrYQw==
X-Google-Smtp-Source: AMsMyM7nUxPuP0qW4Mt1Ael7EqKpHyqrpOExEwnTRZ42vB7J5GdEAud0K0SH/+QkiTG8+5UPNpNuIw==
X-Received: by 2002:a17:902:d4ce:b0:177:fe49:19d2 with SMTP id o14-20020a170902d4ce00b00177fe4919d2mr20305345plg.4.1664767475830;
        Sun, 02 Oct 2022 20:24:35 -0700 (PDT)
Received: from doug-ryzen-5700G.. ([50.45.132.124])
        by smtp.gmail.com with ESMTPSA id y25-20020aa78f39000000b0053e7d3b8d6dsm6157977pfr.1.2022.10.02.20.24.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Oct 2022 20:24:35 -0700 (PDT)
From:   Doug Brown <doug@schmorgal.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, Doug Brown <doug@schmorgal.com>
Subject: [PATCH v2 0/3] ASoC: add devicetree support for WM8961 codec
Date:   Sun,  2 Oct 2022 20:24:11 -0700
Message-Id: <20221003032414.248326-1-doug@schmorgal.com>
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
first patch adds a schema, the second patch hooks it up in the code, and
the third patch allows it to be selected in Kconfig.

Changes since v1:
- Fix ordering of property lists and example in schema
- Fix wording of commit message
- Fix unused variable warning
- Split Kconfig change to separate commit

Doug Brown (3):
  ASoC: dt-bindings: add schema for WM8961
  ASoC: wm8961: add support for devicetree
  ASoC: codecs: allow WM8961 to be selected by the user

 .../devicetree/bindings/sound/wlf,wm8961.yaml | 40 +++++++++++++++++++
 sound/soc/codecs/Kconfig                      |  2 +-
 sound/soc/codecs/wm8961.c                     |  7 ++++
 3 files changed, 48 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8961.yaml

-- 
2.34.1

