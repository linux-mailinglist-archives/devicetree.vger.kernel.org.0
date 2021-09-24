Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6ABAB417172
	for <lists+devicetree@lfdr.de>; Fri, 24 Sep 2021 14:01:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245656AbhIXMD1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Sep 2021 08:03:27 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:56710
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244811AbhIXMDZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 24 Sep 2021 08:03:25 -0400
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8898440784
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 12:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632484911;
        bh=TKyRV9O1Y/ljz5T9kCOw405tGOgzBL0k1lCSjTA1wYI=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=L9HjsOhFCpjV5nJxzwpdhvyGToD7aFtNO2XR0c5uP3t3dWhCjDpO/cMZoD5mPLMRb
         kb4J/cQ7OMudK8bk5MeEJ3ZVfNWYhDLuvdlde/fAa2WIjkwF7jEanKpXwlqC5tGUy+
         TurNDf8oFF0Ssjze/OtyH3iPpm4vnsoimmEM1QW0vuS9diwUv4r2ucGRMspLeupCRl
         Kxks8MMChTA87dgtNfg9AXXCOf+H76g0ybWFOVk57gKOWIlbCNfu7TayxqwNqqMqVa
         nFy81nGJ3FF0dkXgHkbfy5Q+0BFcM+Dx9va1AOs2JDuY7AkBiqz1B3J0fTTVh3H11b
         cPW6T6gngurlA==
Received: by mail-wr1-f72.google.com with SMTP id s14-20020adff80e000000b001601b124f50so7862699wrp.5
        for <devicetree@vger.kernel.org>; Fri, 24 Sep 2021 05:01:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TKyRV9O1Y/ljz5T9kCOw405tGOgzBL0k1lCSjTA1wYI=;
        b=QFPAjVHCB3nbuiuL5GVDrkiDt1nDRIkhoKQebDa55AQSNDHrIrHQGw8inKk1Y1GTz6
         NHOzv6eRxVj1yrNfpmX/j5BMUW2/CnRIZDbtGnlfzkjXgwUe7av7ddMtfmIe7zlHf+cB
         YXgxmo8xYSYZpuzIa9adR3CInCCFw2EKW4Usxv2IK19E0G0PtSlbnPFbwn8ba7vYHM94
         dMAcNR0EBoV+T1gaxSwuGJ3dQXeBLjl4nyrjMY9kru9xhBfPNznkrchEZeRFt1UkSUyw
         BMjSXxjgwcAo7eW3gjGJE/WR2Y7kcfer6zGDsglRZNcVA7gxlm3sHp6nOhzuCuQ8/KF8
         S29w==
X-Gm-Message-State: AOAM530D+0lFIzkTQR6dIaaNNdh0HZL6wvnYkvsBYoOodn7SgVr41eK5
        Jb1tFftn/pNXCAF5qynijeSFITeUtsxalnnFC+V0/KavNYbsZgT7DfaaDa4PhrSmXAEBZX87Fk1
        OVAE/zblGuErVbtR7P+aVidy7VPIr2+wHL0FhCHo=
X-Received: by 2002:a05:6000:14d:: with SMTP id r13mr11212096wrx.420.1632484911268;
        Fri, 24 Sep 2021 05:01:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzquSMRBcbVZ+YVahWJFTiZdrKlthMmH22osg55fb8riVZxx8aZY78k3Bx0kxcH0Mf93sm1aw==
X-Received: by 2002:a05:6000:14d:: with SMTP id r13mr11212062wrx.420.1632484911102;
        Fri, 24 Sep 2021 05:01:51 -0700 (PDT)
Received: from localhost.localdomain (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id o7sm10100619wro.45.2021.09.24.05.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Sep 2021 05:01:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     linux-kernel@vger.kernel.org,
        Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sergei Shtylyov <sergei.shtylyov@gmail.com>,
        linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: rpc: renesas-rpc-if: Add support for the R8A779A0 RPC-IF
Date:   Fri, 24 Sep 2021 14:01:12 +0200
Message-Id: <163248485488.53812.2936557522765718572.b4-ty@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922085831.5375-1-wsa+renesas@sang-engineering.com>
References: <20210922085831.5375-1-wsa+renesas@sang-engineering.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 22 Sep 2021 10:58:31 +0200, Wolfram Sang wrote:
> 


Applied with added simple commit msg, thanks!

[1/1] dt-bindings: rpc: renesas-rpc-if: Add support for the R8A779A0 RPC-IF
      commit: 797f082738b10ff397c8d3b7804b747d766e62e6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
