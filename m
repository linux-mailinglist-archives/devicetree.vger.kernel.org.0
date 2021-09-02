Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 663B33FF79A
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 01:04:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347966AbhIBXFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Sep 2021 19:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55986 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347901AbhIBXFp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Sep 2021 19:05:45 -0400
Received: from mail-qk1-x749.google.com (mail-qk1-x749.google.com [IPv6:2607:f8b0:4864:20::749])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF092C061757
        for <devicetree@vger.kernel.org>; Thu,  2 Sep 2021 16:04:46 -0700 (PDT)
Received: by mail-qk1-x749.google.com with SMTP id 23-20020a05620a071700b00426392c0e6eso4590290qkc.4
        for <devicetree@vger.kernel.org>; Thu, 02 Sep 2021 16:04:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=FYCWYSXBc6FIVn19Crt/oR7pcjs0mJQ6ExafdZiEYsM=;
        b=rEz8YekBJcOLpB0Yr51lk57pwWHu5IaxK6klbo7yxGgoqDX0L+/hl4ADHWiaQprNGY
         hDJhYrmi61hZNnpbMEc3wRp9/NgA+jVI8U03UQnqYO2axHzbabnF3HQ6ViCs18Tyb12H
         vv3hKvbVRbp84KKWsxD/paoZD1rt/wFvnWhg7jn6bQX0oesLmvTbcx4xC1Yo1vVhE6Ht
         S6Jm/g0wT3fNsIaxanFe2GX+QoA5HE3bHvUP0V+A5wMqO+9Oq2QQtlzvxa4mPgC27PsF
         aIHB6JRlJcbnO8c3imuyzsfUgBgnTT5MLUyU9B42lL8crtZTz3FuhKVrb3lC8jAdqeQq
         5nAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=FYCWYSXBc6FIVn19Crt/oR7pcjs0mJQ6ExafdZiEYsM=;
        b=aJCk4kj/O+XA5j1+jMdToWG+ZTCxXaRs+TYTQ5cHD2bcJrLNhMKYHyDe29yjrNlc+6
         /8tS9/zGqmGJkbnUlV9TFrhtPFBAeUIVrW8MAdLJv8FSipm4VNSXyQCjjXR/Om3PLtv2
         YVrEaoo3+yBPsR2uMzW30KHl0ij8XU/XsB1XQOo8e61F8+ikabc+HPPisdb7XvREEF6p
         S9e3Vn7AmH0IlqqZXsG1Q3BPkx5rCBX51FspoX9+BnoEEcvXcZYNoTzNrxIhM6gQBhdw
         1Hf8fPlg42bv1tpIuZ3/HbmgM0RAGWtzafDDvM0vJdf3f9rNaG9Hffr+Yxog7uoRW7oD
         UI7g==
X-Gm-Message-State: AOAM533DoSfDmiRKiWKJpkmbCokvOlcLN7SYctVkPmR6Mgm2PWKif/UH
        rUcKhhShG9aOH1vP6h6VurnM51QYq8sWqNA=
X-Google-Smtp-Source: ABdhPJyzaPQSgONUgdNvm0oNiRziH/8EMfiopu5de6V4d/iTqvBntGX5IinA77mXVpz1LBXwGfg1S21WTpCnlJk=
X-Received: from saravanak.san.corp.google.com ([2620:15c:2d:3:7cb7:1ee7:33cb:da76])
 (user=saravanak job=sendgmr) by 2002:a05:6214:d8a:: with SMTP id
 e10mr462742qve.52.1630623885909; Thu, 02 Sep 2021 16:04:45 -0700 (PDT)
Date:   Thu,  2 Sep 2021 16:04:39 -0700
Message-Id: <20210902230442.1515531-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
Subject: [PATCH v2 0/2] Fix simple-bus issues with fw_devlink
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        kernel-team@android.com, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Ulf reported an issue[1] with fw_devlink. This series tries to fix that
issue.

I replicated a similar set up on my end and I confirmed these patches work.

Ulf, mind testing this?

Thanks,
Saravana
[1] - https://lore.kernel.org/lkml/CAPDyKFo9Bxremkb1dDrr4OcXSpE0keVze94Cm=zrkOVxHHxBmQ@mail.gmail.com/

Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>

Saravana Kannan (2):
  of: platform: Make sure bus only devices get probed
  drivers: bus: simple-pm-bus: Add support for probing simple bus only
    devices

 drivers/bus/simple-pm-bus.c |  7 ++++++
 drivers/of/platform.c       | 45 +++++++++++++++++++++++++++++++++++++
 2 files changed, 52 insertions(+)

-- 
2.33.0.153.gba50c8fa24-goog

