Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 038E12EEE70
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 09:18:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726294AbhAHISe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 03:18:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725965AbhAHISe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 03:18:34 -0500
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EACCAC0612F5
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 00:17:53 -0800 (PST)
Received: by mail-qk1-x749.google.com with SMTP id p21so8682264qke.6
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 00:17:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=h/f0Sezv5E7gowm2IVkdW/Hc+xS2w4KSaSPNUtJ3G4s=;
        b=NdP6wNH+93ntnELzijpUGrug3vc8TILMasJEq8bChHTeLhS9+UCzjJK/7ml/Y3BCI6
         zwBOso7tmkzW9SJtT4qx3fX3ljnozs0XQ1q/2McWW/WODq81JIxFWFgCbe3dDCwP3QIi
         SVMvmPLsmJCtAjPYWk/dife/BGsLOzS566JmI/Uxr6RaMPiPrY4GD4WLmn6QEVKSYFCl
         ukm0Ax08crXpSFYtS2HYyvSdt9sV+D+zjDgcBDmx3kLwSa6XrvnnWGiMOOSZFGre0rvW
         CxMpYZRAeTn69paSaaIVBTtLawZWZ7vOvACeG78GcYI0nUKAcTFboARmlbyz24/Skk2o
         XKPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=h/f0Sezv5E7gowm2IVkdW/Hc+xS2w4KSaSPNUtJ3G4s=;
        b=UbNZC1i6zowiyAySQD4GKswOttidu8XJ54qjE2HozmckQVpbPH066RpnzvjciZM5S9
         zsGo7OPf3qvzoyoU9bRVdd85F0+8ce2S5dn9pU+26sP3ycFExZr8W6XitPjudxGUunfW
         /6QC4cQZy8SdD+fmCUjdYI/+Q689NoMVJftsDj+jtahgZnYDqApluMAIw9hER7ZZhFiy
         /S32LwusxmbwxS21a/HTVdndU/+dshK1G5s+SaB8SXeWOy3mlnNB50ViLBe6lESyBJLo
         GBGJS+lrQEO1k110EG/NHan/Zh/m28ylvNMN5oD8A4S9amu3JCru6mUGv0UXJi+E2tsQ
         xGkg==
X-Gm-Message-State: AOAM532n71YseW8fRS5zjcnmMcc/z5EnRxsfzbBbgaHZupFZCKoLILpH
        hjIE0suGdGbabHbbX87mKBRaTV2+jfWT
X-Google-Smtp-Source: ABdhPJxH+xzloJvfPk+mEmyk1fhEyLc3F/iKaV5CFbzljxIu7V5/Ld0yM+l56aUf/z1P6Lnk5AWbn2pG4FLo
Sender: "tzungbi via sendgmr" <tzungbi@tzungbi-z840.tpe.corp.google.com>
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a05:6214:cb:: with SMTP id
 f11mr2346237qvs.15.1610093872893; Fri, 08 Jan 2021 00:17:52 -0800 (PST)
Date:   Fri,  8 Jan 2021 16:17:34 +0800
Message-Id: <20210108081738.2175224-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH v2 0/4] remoteproc/mediatek: support L1TCM for MT8192 SCP
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, matthias.bgg@gmail.com,
        linux-mediatek@lists.infradead.org, mathieu.poirier@linaro.org,
        devicetree@vger.kernel.org, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series supports L1TCM which is a high performance memory region in
MT8192 SCP.

The 1st patch replaces platform_get_resource_byname() and
devm_ioremap_resource() pairs per [1] suggested.

The 2nd patch enables MPU for all memory regions.  The patch was
independent but merged to this series per [2] suggested.

The 3rd patch adds a new reg-name "l1tcm" for L1TCM.

The 4th patch supports L1TCM in the firmware loader.  Note that MT8192
SCP is still under development.  The patch breaks early MT8192 SCP
firmware which should only break our own development environment.

Changes from v1[3]:
- Adds 2 patches at beginning of the series.

[1]: https://patchwork.kernel.org/project/linux-remoteproc/patch/20201214050521.845396-3-tzungbi@google.com/#23879113
[2]: https://patchwork.kernel.org/project/linux-remoteproc/patch/20210107023020.3224002-1-tzungbi@google.com/#23879623
[3]: https://patchwork.kernel.org/project/linux-remoteproc/list/?series=401287

Tzung-Bi Shih (4):
  remoteproc/mediatek: use devm_platform_ioremap_resource_byname
  remoteproc/mediatek: enable MPU for all memory regions in MT8192 SCP
  dt-bindings: remoteproc: mediatek: add L1TCM memory region
  remoteproc/mediatek: support L1TCM

 .../bindings/remoteproc/mtk,scp.txt           |  8 +--
 drivers/remoteproc/mtk_common.h               |  6 ++
 drivers/remoteproc/mtk_scp.c                  | 62 +++++++++++++++++--
 3 files changed, 68 insertions(+), 8 deletions(-)

-- 
2.29.2.729.g45daf8777d-goog

