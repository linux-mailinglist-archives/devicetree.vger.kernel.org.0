Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F055B9DCF3
	for <lists+devicetree@lfdr.de>; Tue, 27 Aug 2019 07:06:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729139AbfH0FGa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Aug 2019 01:06:30 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:45231 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725795AbfH0FG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Aug 2019 01:06:29 -0400
Received: by mail-pg1-f196.google.com with SMTP id o13so11928361pgp.12
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2019 22:06:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=bk+JaA9Wm7oz2NoF52hCcBz04mg8rRkowz0Je01pv/o=;
        b=ACmTv+sLluHVTa5psjJ02RKShK7i0i9u1wgYGE7mrIr27NYnWxyVpGgxOzII3/NkyE
         dcoF0oVkDA3ndBTXpDNr8h+v5nvKj60M9IB055E6ZLm8qKCtCdTHLKRU7m/4NeGBFukc
         rHO7CjH0RFgBg4lMAavNeYOr7y5MuBhvmKspsGrtop7wf6QqmRhh03Wc39j197QoXCSU
         i3XIUBDvUp73QKxExLUVdEYRU0e6OKJyjQSbc0rRVtpLYQRIjhNxX7u3Ie5e8vh8bkmB
         BGteBb35BoV3Sd1/lVG4AnrWhtD9XuEksL6oFgBBiLn0JRaayRVtCgrnvS5UOQWJ8eI1
         hgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=bk+JaA9Wm7oz2NoF52hCcBz04mg8rRkowz0Je01pv/o=;
        b=tIUbaA13e5hn86JpMxzMLPoDnpPPzHNQVTnINE+xP89RHDof36SwIidv6DPJP5ttut
         sEjCTXjQwY27zdFqRvf7wwZhftKsujai66SwnECsJBlHiMm7ajjX8l5gaxMk1FrfRP1S
         KEro76KeigoRPA+IXdQCRPWM//qKP8XVk1FlylpF1JKO5MPPJ37GAEm4472rZ3FwdmE2
         tYtM6F+c/vYFnzwRmBAqYg3IAQjH0ACaDT/NyQ4aCBIpQKLgiFjDMjJErqFxoPZS1+Zf
         hbz6OCQLe7DfzvcrnyPtQPeUQ0dVwkgYSc/Xmz8StgyEaVcktB86whLabfEPC/TEeaCb
         IFUQ==
X-Gm-Message-State: APjAAAVwf+BLL3ub8rcEntwacU8C+dTPlIF7zU0ACY0eMOiZJoIL92nG
        cD7HwXi0UO1B1LqbrZZ4EbG0OA==
X-Google-Smtp-Source: APXvYqx2+mfszF4XOEdf2VyJdPl/56BfxhDiG//VfH7sfIzgWmV7i6pR1y1dd5w9xBmLxpAPPz0suA==
X-Received: by 2002:aa7:9e4f:: with SMTP id z15mr23349159pfq.89.1566882389075;
        Mon, 26 Aug 2019 22:06:29 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id q8sm896414pjq.20.2019.08.26.22.06.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Aug 2019 22:06:28 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     davem@davemloft.net, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        nicolas.ferre@microchip.com, palmer@sifive.com,
        paul.walmsley@sifive.com, ynezz@true.cz, sachin.ghadi@sifive.com,
        Yash Shah <yash.shah@sifive.com>
Subject: [PATCH v2 0/2] Update ethernet compatible string for SiFive FU540
Date:   Tue, 27 Aug 2019 10:36:02 +0530
Message-Id: <1566882364-23891-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series renames the compatible property to a more appropriate
string. The patchset is based on Linux-5.3-rc6 and tested on SiFive
Unleashed board

Change history:
Since v1:
- Dropped PATCH3 because it's already merged
- Change the reference url in the patch descriptions to point to a
  'lore.kernel.org' link instead of 'lkml.org'

Yash Shah (2):
  macb: bindings doc: update sifive fu540-c000 binding
  macb: Update compatibility string for SiFive FU540-C000

 Documentation/devicetree/bindings/net/macb.txt | 4 ++--
 drivers/net/ethernet/cadence/macb_main.c       | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
1.9.1

