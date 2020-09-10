Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 37192263C17
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 06:33:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725855AbgIJEdo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 00:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725372AbgIJEdm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 00:33:42 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CDEDC061573
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 21:33:41 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id k3so4330559ybp.1
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 21:33:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=hAy5Z2kT60SpmL91IykD2jWw5/FSREturFd1fEa37go=;
        b=CIGkn/UCeDdFagywqDsyikKmKILOpsFf96fZQFOgdsmjLhCs9ybLL3lszg9kRlY472
         oC6C6fKFltlfHxJq7z+4aQ666d986n/bZTWmksfg0uU6EwE+hfVrS+hFRN6tiDgXroj4
         RMLB9tahb8X853pW1HW8EhwjCQTHaeekyWbATlSrVv3x+luuU4PMGUh9a2b0W1crIVGO
         qFx+wiAO2bb36ri6TyuTTbD9vMpc0Le1A6LA96cYTC7TUy1dyilqV/SDXC2P4KXHJtgd
         UQLyyeeghUioTeyphu/JR+z0zAD6c5+4O9Feszww6+u/eo2+MTylOF60uVXax+uwb/bS
         JVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=hAy5Z2kT60SpmL91IykD2jWw5/FSREturFd1fEa37go=;
        b=RidxeBez4pilLq8/KzBtufJQdCik7Y8Zbc87E1rotH7fInMfOmx6rqqQOraEWkYBqO
         UcS3OIZhXCohnE8gK5XYp89jhcuzsE88nf6RC32R+f4JWImg/2rhFs2w73g1p0X54QTH
         VpN6FOhmm3Lc7eRsUVziaTYeZA/VA5DuLAnnCQU1wa7HQL3PZdIkFRc78m77YdGMbOhh
         S9ZalYf1VvJ3/wzWY5dIcVQXYR77jGB4ld73vUx8Q4E4L8ItMrD85fmwLKqW9ZcDnYvj
         Zy4B8B3KFUQKlURAu1CL++E+KNYdwkQkCSMZLKWlNuEIxomieWuAT7mKc9D0j1th/9md
         080w==
X-Gm-Message-State: AOAM531UC+ylh8QmWMcioeQywCwkLZC8IXYKfyZQuS1VnM6wNuS29pdz
        1uS+D9WISY0i6MV1eJu8euu8bNyZXtIS
X-Google-Smtp-Source: ABdhPJy7IpxXAOQkJCvR9c3wPh5GOPAG0UEhUv7ALXkm3rL+RTzFUyPpyDsliQaecFQkjBpuMtEZOjMJjSt5
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a25:bc04:: with SMTP id
 i4mr10746629ybh.32.1599712420296; Wed, 09 Sep 2020 21:33:40 -0700 (PDT)
Date:   Thu, 10 Sep 2020 12:33:29 +0800
Message-Id: <20200910043331.3808223-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH RESEND 0/2] ASoC: rt1015p: add rt1015p codec driver
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, jack.yu@realtek.com,
        tzungbi@google.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds rt1015p codec driver.

Tzung-Bi Shih (2):
  ASoC: rt1015p: add codec driver
  ASoC: dt-bindings: rt1015p: add document

 .../bindings/sound/realtek,rt1015p.yaml       |  36 +++++
 sound/soc/codecs/Kconfig                      |   7 +
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/rt1015p.c                    | 148 ++++++++++++++++++
 4 files changed, 193 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/realtek,rt1015p.yaml
 create mode 100644 sound/soc/codecs/rt1015p.c

-- 
2.28.0.526.ge36021eeef-goog

