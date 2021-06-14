Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 19CF33A7182
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 23:45:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229613AbhFNVrr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 17:47:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229499AbhFNVrr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 17:47:47 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EEA9C061574
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 14:45:31 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id p13so11663946pfw.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 14:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tE83joOLGGHG+6LYIjaFeBXyGSvmADIRz7I0QGk9qxY=;
        b=dDSa3pQOe1iJEtyk1yR3YVeb9dFmxzCngZS0BPMoQ4nnKJG5wtoT1RD/pZ2IJmG5X4
         8kfv2LGNVPbR1PM6Wm+XhOAH5pKGpMJqBqXHOA9Hilv5Qapy4XCttTeD804XCY+PDij6
         N70frEF5fzbsP/OI/THShbMy2RoILW9beigISackh2dR9sRy5EYOvQ0K4TVaPTNtTPtR
         pC3UlCJP2uCZCtffDcloMEtv127hrFSFzG9CNQJJcJtMwOzQad1oOwnJsEm/nXL3OBzX
         Zweni+GW2XG3RkQjaW5sVTDyIpsdkrXgdjhCQtH7S2q+DAavOn5Hm9O/HYRnMIgcoLCa
         HrMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tE83joOLGGHG+6LYIjaFeBXyGSvmADIRz7I0QGk9qxY=;
        b=fhNaP140cU6GOH/gY/WpIpQzfRlzol4RKP0EUmgmtSFaya9NhMlAp1Q3IFfOwXGuLE
         X/incm0NmSo/eFxIOkfE8EBYl+7QdUiHjPeoOnApHItYLZpxnDNmfD+21tbODqrww7UI
         DEieteRGzVdI5zZpqkubHYoGFFRYBC8KF+wDHa9hSOLfaiTAw6xaSVTGiGOmNXOPb8DW
         JM+dW4Dk9oojED8EIJYSzMEzX9hn0BvTLsZtK9YI3MVOGqbEa13dYTgDC3KQXvYfqXba
         2Up2gEmKto7whqiJbKMftatXDiZ4HZYkK+6PSNwqbtCQcWdMCNzAtt1gcklfy+n9d18m
         9X+g==
X-Gm-Message-State: AOAM532uoFBw3Y2mr9lhOnvB5FxP5zlypHWdEucNsFnRdWibj++R2xQ+
        G6KuqROubv+x/HPxg4Sz3hgSMZNm5UWrjA==
X-Google-Smtp-Source: ABdhPJzZamMFo0TWSikXUQJzaMeW3kiIJnomzGh31/Mx96oxXcs4Pi/1lnVELg5LUivE+kXAR/cOZw==
X-Received: by 2002:aa7:9569:0:b029:2f8:15b7:efc4 with SMTP id x9-20020aa795690000b02902f815b7efc4mr1251935pfq.2.1623707130605;
        Mon, 14 Jun 2021 14:45:30 -0700 (PDT)
Received: from kir-rhat.lan (c-76-104-243-248.hsd1.wa.comcast.net. [76.104.243.248])
        by smtp.gmail.com with ESMTPSA id u20sm13255815pfn.192.2021.06.14.14.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 14:45:30 -0700 (PDT)
From:   Kir Kolyshkin <kolyshkin@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     lee.jones@linaro.org, robh+dt@kernel.org,
        Kir Kolyshkin <kolyshkin@gmail.com>,
        Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH] docs: fix bad cross-links in motorola-cpcap
Date:   Mon, 14 Jun 2021 14:45:27 -0700
Message-Id: <20210614214527.208384-1-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commits 3c5be0454 and ce49e4282 renamed the files being referenced,
but forgot to modify the document that references them.

This fixes the following warnings:

> Warning: Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> references a file that doesn't exist:
> Documentation/devicetree/bindings/power/supply/cpcap-battery.txt

> Warning: Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
> references a file that doesn't exist:
> Documentation/devicetree/bindings/power/supply/cpcap-charger.txt

Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 Documentation/devicetree/bindings/mfd/motorola-cpcap.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt b/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
index b52e7a33f0f9..190230216de8 100644
--- a/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
+++ b/Documentation/devicetree/bindings/mfd/motorola-cpcap.txt
@@ -16,8 +16,8 @@ Optional subnodes:
 The sub-functions of CPCAP get their own node with their own compatible values,
 which are described in the following files:
 
-- Documentation/devicetree/bindings/power/supply/cpcap-battery.txt
-- Documentation/devicetree/bindings/power/supply/cpcap-charger.txt
+- Documentation/devicetree/bindings/power/supply/cpcap-battery.yaml
+- Documentation/devicetree/bindings/power/supply/cpcap-charger.yaml
 - Documentation/devicetree/bindings/regulator/cpcap-regulator.txt
 - Documentation/devicetree/bindings/phy/phy-cpcap-usb.txt
 - Documentation/devicetree/bindings/input/cpcap-pwrbutton.txt
-- 
2.31.1

