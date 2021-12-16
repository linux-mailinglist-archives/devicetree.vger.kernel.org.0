Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B174D47798E
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 17:47:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233043AbhLPQre (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 11:47:34 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:44030
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232770AbhLPQre (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Dec 2021 11:47:34 -0500
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com [209.85.128.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 6C6A73F0EB
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1639673253;
        bh=UJoL1Inyw8vu/KLNbBVbc+OxgIDQlc0M+xAVjgBLGQY=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=awLkskXEYJwxNobBKbVfCvLmy3SUvIJybvaCyYBqqHOsWv2nZQhrygy95qPrJlzUj
         u7gmjpPdvOqBGtTJDUgI9OjUgmZovHf15QVZLfTra+8h8IJshnJciMvX5idWX/M1wk
         o4RDVee1gh5RJa2Qmkk3hTK6defRdIbtIzHoWoyoODbxSnq3VrD/nRC0ruI6eCudCq
         xzQEIUlCwzvtG4GhX15FmeiWvBtXXzI5Oo56Kk9onSQC8sEVhxkue9QeJFJq27RUw4
         tBKcMihcTP0om/56LaXAqpBvCQLhs+wg0BX77Tm7frb9w0QW8sOAthDSLvaHfvqDuA
         hLTF1fd0W/kPw==
Received: by mail-wm1-f71.google.com with SMTP id n16-20020a05600c3b9000b003331973fdbbso10481301wms.0
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 08:47:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UJoL1Inyw8vu/KLNbBVbc+OxgIDQlc0M+xAVjgBLGQY=;
        b=pa1lPhisMx0l5SIz1wJqkDx2pCgas4bO+CrIUy4BEimGoMbs3TpAQ/jSOgi4rWfnrf
         hoSoXMXhqZOCZh0sky08udyrsBXyrFOqjBRssuu8RiHNiIlr3O6HZMLPzChKOent6Yzs
         Nduto+yPql5GNn1MAMdLNBk4cp47/zwxIT9ZwpigcAWRt1WUGMSBDQxnN0LXJ5kHbp6Y
         BSEPTBAkKkHG+ZRNpRKCDj44a6V2lUebMSgv1RUxH73Pq14W9kA1yNV4KCuMwqP1vLVo
         jzl2iFnopRmkRvmoK9Yf78Slu3mNP7kwhWgRjSAZuJjhlgTxJ/ebi7bIEsegyQJz9TIU
         Dyyw==
X-Gm-Message-State: AOAM531baNv7e3vrcxila8T9BJuZqZMA9oPgFIq8kcCt8c4LflRUi6jZ
        D5kMUiRiji3IBG/prKY/i+aXEDbkquuAYGCWe828lDxxhYIkvIW+dff5CrgZLa/19CzVhEDu40C
        UxV46tQZaBSJG59TIqDf7yqtnqagqLLWtlnSoB9M=
X-Received: by 2002:a05:600c:1d97:: with SMTP id p23mr5888864wms.186.1639673253057;
        Thu, 16 Dec 2021 08:47:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwSS7rjab89jQAa03AtLuhGWfMnnTjqjL82jdXNrlyrN8nt24cOgkR/2XukFsqAxO08PB4brA==
X-Received: by 2002:a05:600c:1d97:: with SMTP id p23mr5888850wms.186.1639673252902;
        Thu, 16 Dec 2021 08:47:32 -0800 (PST)
Received: from alex.home (lfbn-gre-1-195-1.w90-112.abo.wanadoo.fr. [90.112.158.1])
        by smtp.gmail.com with ESMTPSA id t8sm5323151wrv.30.2021.12.16.08.47.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 08:47:32 -0800 (PST)
From:   Alexandre Ghiti <alexandre.ghiti@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Alexandre Ghiti <alexandre.ghiti@canonical.com>
Subject: [PATCH] Documentation: bindings: Warn about yamllint and dt-schema before submitting patches
Date:   Thu, 16 Dec 2021 17:47:27 +0100
Message-Id: <20211216164727.2888916-1-alexandre.ghiti@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Make sure people know that yamllint must be installed and dt-schema up
to date before they submit device tree bindings patches.

Signed-off-by: Alexandre Ghiti <alexandre.ghiti@canonical.com>
---
 Documentation/devicetree/bindings/submitting-patches.rst | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/submitting-patches.rst b/Documentation/devicetree/bindings/submitting-patches.rst
index 36a17b250ccc..3553e90bef5a 100644
--- a/Documentation/devicetree/bindings/submitting-patches.rst
+++ b/Documentation/devicetree/bindings/submitting-patches.rst
@@ -25,6 +25,10 @@ I. For patch submitters
 
        make dt_binding_check
 
+     Make sure yamllint is installed and dt-schema is up to date::
+
+       pip3 install dtschema --upgrade
+
      See Documentation/devicetree/bindings/writing-schema.rst for more details
      about schema and tools setup.
 
-- 
2.32.0

