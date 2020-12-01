Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFD3A2CA3CB
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:28:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727843AbgLAN1J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:27:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725977AbgLAN1J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:27:09 -0500
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com [IPv6:2607:f8b0:4864:20::74a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 411FDC0613CF
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:26:29 -0800 (PST)
Received: by mail-qk1-x74a.google.com with SMTP id h189so1308556qke.19
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=acp8e1gkaaB/fBTyrmi5rUj2D525BAkZdj4ZlarzG/Y=;
        b=FLKL7IRgdv6w+hgodjLl/76+I1MghdIFjJQTn9sr5pu1jNSL8mZ2GzPzm2q/pvXvkW
         j30kVLbZxHuSvxvEX0OC67PAT59zHu/Zp8NuVG6Fno3vzkmcGO0zrlbtxcGjs9/1eb4u
         1Dms54fBu1Ni+m6MS/96FtaDg5caQQAOXSXYhOStMBvR24l7/htBLpX5P59EO5u5ardB
         jiahVr+8ZY4lR/j7+kcDa5UBPc4BkJ55amzBf20ZQbmE2TBVdrlrqrEl2uc8bfISRADg
         mVGTxQ+bh8R2xAEaKlC9EWXAkEvID8jXnMbLGK+J4I5Y0ULsV/Hvyw9Fq/LU3se3Ibtd
         l8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=acp8e1gkaaB/fBTyrmi5rUj2D525BAkZdj4ZlarzG/Y=;
        b=KeSi59zp4gd2i3uR9OJisO4OXc21UWZfDCaxuSrVBYqiui9RtdliypqU8EvhNyYzFQ
         8MQgFvZkJy8lx2gPaHJ3zetJ+1TLD8hCSMkykAnxWc1HWJzCeE2Q8mlM4EMxU+dwCZjZ
         Ze4A0Zkrnu9Pjnnjhsl6C/kwbo6trDxlxa7DjE8K+elfKNGfomPeXAQhwAKj7ROk2xCY
         ajw+IwpHVTD90zZsGlSZpE7vt1+f0YkdfefU1yGeRqfbuCpx9xUBN3q6lUB5pBWwMr9M
         PfcdJrT7YXg5qBspmLIzv50qjb416ILSgu2lrGCW9OXOjIpjJNbjXb0SCMQfS6N2g47E
         orXg==
X-Gm-Message-State: AOAM533sLWtr/Sed2ndy5Ojhp0juuo3uR0/Xg38y2fTFV9fx9sOsiOrc
        QfkuCTUjlaj66zj/SNV35GB+reXwhi3b
X-Google-Smtp-Source: ABdhPJznxXASo+FIoy7Hqj6qPfeCxXNWpiIORMqGrpNHjWA6EBSGcZ0DhAY8r3b+9DdMcnFV5v3U3B3nqAe/
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:ad4:5587:: with SMTP id
 e7mr3109888qvx.33.1606829188401; Tue, 01 Dec 2020 05:26:28 -0800 (PST)
Date:   Tue,  1 Dec 2020 21:26:08 +0800
Message-Id: <20201201132614.1691352-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [RESEND PATCH 0/6] ASoC: mediatek: mt8192: support new machine rt1015p_rt5682
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series supports new machines with rt1015p and rt5682.  Reuses most of
the code in mt8192-mt6359-rt1015-rt5682.c.

The first 3 patches refactor the existing mt8192-mt6359-rt1015-rt5682.c.
For easier to support newly added components later.

The 4th patch fixes a typo in DT bindings document.

The 5th patch proposes a new compatible string "mt8192_mt6359_rt1015p_rt5682"
for machines with rt1015p and rt5682.

The 6th patch reuses the existing machine driver to support machines with
rt1015p and rt5682.

Tzung-Bi Shih (6):
  ASoC: mediatek: mt8192: rename common symbols
  ASoC: mediatek: mt8192: extract rt1015_rt5682 specific DAI link
  ASoC: mediatek: mt8192: move rt1015_rt5682 specific data
  ASoC: dt-bindings: mt8192-mt6359: fix typo in the example
  ASoC: dt-bindings: mt8192-mt6359: add new compatible for using rt1015p
  ASoC: mediatek: mt8192: support rt1015p_rt5682

 .../sound/mt8192-mt6359-rt1015-rt5682.yaml    |   6 +-
 sound/soc/mediatek/Kconfig                    |   1 +
 .../mt8192/mt8192-mt6359-rt1015-rt5682.c      | 171 +++++++++++++-----
 3 files changed, 129 insertions(+), 49 deletions(-)

-- 
2.29.2.454.gaff20da3a2-goog

