Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 899F1265717
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 04:48:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725800AbgIKCsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 22:48:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725799AbgIKCst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 22:48:49 -0400
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com [IPv6:2607:f8b0:4864:20::104a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F09C061573
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 19:48:49 -0700 (PDT)
Received: by mail-pj1-x104a.google.com with SMTP id hr13so1200459pjb.3
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 19:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc;
        bh=bLNTRYbIes188tpc0mDmg8PeKqWkLkLsLS+cEmRfJ4Q=;
        b=YCPcf4zW9n2xKiuS5+Sk6CHvfpFrQXUtAG/znA41cDBEii323Cv+ykNKyUkB3Q5pbd
         vTxTyvi+ZeQTvz26dBGf43cou2OZ128LsjlxxL1DcuH/Echu1+uSnS3hk45Lg2aahSqM
         mr0yVHhFOM6TWFkxi3QJI7EK/LuguF4NyPg6TKV5wt2gOfNRZKBnHeBymysJileSGytE
         YGCIlyEHvzkc2ZsvBC84VwRA9U/HNNP9XBXIIUqwEA0ck/pg2hJLlhQ/5VPiLkMtvHN5
         P/RAOiKrliU8Nxr1woz73U+1dNizWjUCpLgg+YUgJrZuLQKSFk5uZum+4wv5veQHFdM+
         KB8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc;
        bh=bLNTRYbIes188tpc0mDmg8PeKqWkLkLsLS+cEmRfJ4Q=;
        b=rXb3cjFGTMI3e7g2Bl4akCHMpFZTl2H1vFFaUXdb6wHQNdccDUrTvU/q0C5ZB0sZ9p
         21jouPVJ2MNsI19Kwuxoh7fUY97Bbu+qe59yz670b3xcxCQXIpamnyT2dd8TiooLWbPA
         SJZCzipmAeXVrHJ6uLbASxomZvwNtiZ9xbiyJlOLJhDmZOxo/Y5oWYqmpXWtBLNFegRR
         7zW4Y69mxp45AjLHuQkxb3gDdoh24aZsu9oP7AHu4rogDpeXNkYBrqmRynU9W78aquZ5
         bIhm7kB9J0HNCZ+8KGtdw1kGHXfX62aBtf+Ptvfc+FcdIXmcrffxKqY/ZCtTCwug2XH0
         rqEg==
X-Gm-Message-State: AOAM5300ISumQ/2joCy9GkPDmffNQGuTwTxL58JOHPTLbgxD482k4fte
        zQdcU3vc4PpTCb7NdLn1R3M1bPq2hGuI
X-Google-Smtp-Source: ABdhPJyIfmz+RgSdsE9dxfSUuq4vYwku/EgyIMRrTQZW+Sp90HxOGM4j3hTDem3RAzXvTIqjnn63jWgqGf2s
X-Received: from tzungbi-z840.tpe.corp.google.com ([2401:fa00:1:10:725a:fff:fe41:c6a5])
 (user=tzungbi job=sendgmr) by 2002:a17:90b:941:: with SMTP id
 dw1mr602456pjb.1.1599792528048; Thu, 10 Sep 2020 19:48:48 -0700 (PDT)
Date:   Fri, 11 Sep 2020 10:48:31 +0800
Message-Id: <20200911024833.1673961-1-tzungbi@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.28.0.526.ge36021eeef-goog
Subject: [PATCH 0/2] ASoC: mediatek: mt8183-da7219: support machine driver for rt1015p
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org, robh+dt@kernel.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series reuses mt8183-da7219-max98357.c for supporting machine
driver with rt1015p speaker amplifier.

The 1st patch adds document for the new proposed compatible string.

The 2nd patch changes the machine driver to support "RT1015P" codec.

Tzung-Bi Shih (2):
  ASoC: dt-bindings: mt8183-da7219: add compatible string for using
    rt1015p
  ASoC: mediatek: mt8183-da7219: support machine driver with rt1015p

 .../bindings/sound/mt8183-da7219-max98357.txt |  1 +
 sound/soc/mediatek/Kconfig                    |  1 +
 .../mediatek/mt8183/mt8183-da7219-max98357.c  | 40 +++++++++++++++++++
 3 files changed, 42 insertions(+)

-- 
2.28.0.526.ge36021eeef-goog

