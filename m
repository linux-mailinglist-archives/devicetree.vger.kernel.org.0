Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 071832B736B
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 02:00:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727154AbgKRA7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Nov 2020 19:59:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726205AbgKRA7J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Nov 2020 19:59:09 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A60EC061A4D
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 16:59:08 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id q5so325698pfk.6
        for <devicetree@vger.kernel.org>; Tue, 17 Nov 2020 16:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fZiwxZqojFgPo5SsCHfj9x1Lcm6wX0ajQ1bLVVWx3jU=;
        b=ugCJDASvWGrjrU1UVd1kTuc8cB+gPeGsAKwTgHP8RzvZ0d6D/Pxx21h1wZ9Mp+0KsG
         +uWpI2aJ60/fEeEzI+J6ACWHKv2MbSBk8jalOWRY/q8erFFlS6t7zHdBkrLQqSxjJCzW
         +aOPdyQdKTLx3ry0J5m9p7c1Hb2If/PjwgPfdGCfbRJpREBw77df27MpbwuZWgjGYjIX
         I1WE5Aizi+Y5PSrmbANDMgyPT4JZAPKN65HApfP3EoAVN13k72QCGLAKFMyIgfW07Npf
         iAUfHAwR1boa5U8/DNAVA0dgBWGkdosCBjIdo4RjOrUovlQviOl2XLY+0xHLgRBf6Ffi
         RfPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=fZiwxZqojFgPo5SsCHfj9x1Lcm6wX0ajQ1bLVVWx3jU=;
        b=ZycdpW2t2HDUFN8m7r84HV6nh7/H+D1vARe0ieYRYN2a9a2JdxlNmniRxf49gtfH9F
         a8lMYPvjZ3aG0KvBLeQN6/tKJd66/0tZIqYhqvjaxnB9OUuWDseXI6hXugOKoMDJRwSC
         nRJGBoo6ddRzYAiQWMPHHwXXwfqS74P2L6daoMPplcGPAqhPAPpxB688g8dEFJY8Sd3P
         ty2iO4NvehQnpGwNOTnsZFIBZAki6kn0HbkvxYmmpa7DSEkry0Sog0tL0k1uRWMVzn7p
         mcZVjTLSo62PEylAOvQjeSpPAh0ufz2nl5rOvo7JbSKlip3GkvyoUc0+Nq0Zj5oxpM0n
         9sog==
X-Gm-Message-State: AOAM531xw4+rH7CTp6icrapoaS0czj1vNbKc92396OzCpApA9pjZ3piS
        2bgLQQSMMZl6zZe+oRHS0KuJ
X-Google-Smtp-Source: ABdhPJxdQinxTZFO5n5EZ6IWDpmbfN2LzGmaJN6gn2i345FWRsV2HD3cz7OaPvnK63UNxoAFSui30Q==
X-Received: by 2002:a05:6a00:78d:b029:18b:f46:5262 with SMTP id g13-20020a056a00078db029018b0f465262mr2266304pfu.74.1605661147582;
        Tue, 17 Nov 2020 16:59:07 -0800 (PST)
Received: from xuyuqing-ZenBook-UX425JA-UX425JA.huaqin.com ([101.78.151.194])
        by smtp.gmail.com with ESMTPSA id y10sm307159pjm.34.2020.11.17.16.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Nov 2020 16:59:07 -0800 (PST)
From:   xuyuqing <xuyuqing@huaqin.corp-partner.google.com>
To:     linux-kernel@vger.kernel.org
Cc:     Mark Brown <broonie@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, tzungbi@chromium.org, cychiang@chromium.org,
        judyhsiao@chromium.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        zhouguohui@huaqin.corp-partner.google.com,
        xuyuqing@huaqin.corp-partner.google.com
Subject: [PATCH v1 0/1] Fix 32 bit format for adau7002
Date:   Wed, 18 Nov 2020 08:58:57 +0800
Message-Id: <20201118005858.123013-1-xuyuqing@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

the microphone is attached to external codec(adau7002)
instead of rt5682.We need to always use 32 bit format on sc7180
to meet the clock requirement of adau7002:
The ADAU7002 requires a BCLK rate 
that is a minimum of 64× the LRCLK sample rate

xuyuqing (1):
  ASoC: qcom: sc7180: fix 32 bit format for adau7002

 sound/soc/qcom/sc7180.c | 3 +++
 1 file changed, 3 insertions(+)

-- 
2.25.1

