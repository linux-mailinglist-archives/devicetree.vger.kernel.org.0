Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5D4C1336ABA
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 04:32:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230214AbhCKDcW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Mar 2021 22:32:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230422AbhCKDcI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Mar 2021 22:32:08 -0500
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com [IPv6:2607:f8b0:4864:20::84a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1FB6C061574
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 19:32:08 -0800 (PST)
Received: by mail-qt1-x84a.google.com with SMTP id m8so12486896qtp.14
        for <devicetree@vger.kernel.org>; Wed, 10 Mar 2021 19:32:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=HMm4MRHAOUO6q/qB3ald2mJ4l+Vj1lVMKFNrrOxOXpk=;
        b=tqoHmWuO6wk4I/vjVamFwtXI/50tsZpij77oUpWrxO2bYjYtZ0MdDrJ+HOwhXzlmuZ
         6k+bBE7lFiostWcqX1vV8FEKGi7t1hdaz5Pi9lDdHqk6tJIvpnUlOZvdcQl7n0HZEC8o
         0BpIL2fNQKKZiqklXHEOHOiVGSv5zp91WJN7+qrSo1fNdjm9N0TFBQOfv1Rvg98ip5Oy
         eflxBj8wPh/PfCKT7Dk+0VDZw4qL4UZRBdfT5Uwp+JsICxKGddhHnmj26ajPdSqGgrCi
         4RB6HiHxX8DDVwodIAcctJTELrq3n5r1CcycRZ6B5uAUBdv0uUcg2TyOV4LVxQsbE4Ex
         KGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=HMm4MRHAOUO6q/qB3ald2mJ4l+Vj1lVMKFNrrOxOXpk=;
        b=PZ69AWaWnp9cy8ouD5pg+QxwfZ8GRugmxXYjJpv8Dy0XEkXmaNcYRgEpr6zYU1ejRU
         2ebUZIOeIC30wdgC5ria4b7zFbmiwrNycTacBJcpzHpCUPiujC3e9KD0kBXcJPN2MXUZ
         zm14F14bjIAVFIeug1EfqX7QEnES9JlJDO6Wk7i/raoIkY5z5GqYL8dxGwO5sCm6HmAD
         /UC5V7Yh8roqB2j3NRcxbX7q6tVCQGcq1uURyXuuBIqlhDbb9HqE6xxtUA76HpimoJ2K
         cxBAitWtLsmk1chURY0BWdH5gJEHODuoLHVXIYRTpKUPcEZSIds7kugsBkaS7r9ukK+y
         LsvA==
X-Gm-Message-State: AOAM533wCif8nZmSfJVhhTNm196Jj+MV7s1LrgQBhKlC/FxgLdYXFk9S
        8+Tg4wpyVdJbKzc2MVKJygeTUxSBqKJP
X-Google-Smtp-Source: ABdhPJxUNgUf6oF12k8JFP6QL+1PUgrKdyzn6V5HrQuJsiiJTZ/SLn79hhVb3eLsoEchuS0rhKUYzrxoyAu4
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:b:d958:2f3:afb:68a3])
 (user=tzungbi job=sendgmr) by 2002:a05:6214:1c45:: with SMTP id
 if5mr6125060qvb.9.1615433527865; Wed, 10 Mar 2021 19:32:07 -0800 (PST)
Date:   Thu, 11 Mar 2021 11:31:49 +0800
Message-Id: <20210311033151.1818603-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
Subject: [PATCH 0/2] ASoC: mediatek: mt8183-mt6358: support machine driver for rt1015p
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, tzungbi@google.com,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series reuses mt8183-mt6358-ts3a227-max98357.c for supporting
machine driver with rt1015p speaker amplifier.

The 1st patch adds document for the new proposed compatible string.

The 2nd patch changes the machine driver to support "RT1015P" codec.

Tzung-Bi Shih (2):
  ASoC: dt-bindings: mt8183: add compatible string for using rt1015p
  ASoC: mediatek: mt8183: support machine driver with rt1015p

 .../sound/mt8183-mt6358-ts3a227-max98357.txt  |  1 +
 sound/soc/mediatek/Kconfig                    |  1 +
 .../mt8183/mt8183-mt6358-ts3a227-max98357.c   | 29 +++++++++++++++++++
 3 files changed, 31 insertions(+)

-- 
2.31.0.rc2.261.g7f71774620-goog

