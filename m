Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CFD7426AEB
	for <lists+devicetree@lfdr.de>; Fri,  8 Oct 2021 14:36:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230084AbhJHMiX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Oct 2021 08:38:23 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:36000
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230226AbhJHMiX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Oct 2021 08:38:23 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 069E03FFFE
        for <devicetree@vger.kernel.org>; Fri,  8 Oct 2021 12:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1633696587;
        bh=T0LoLWvZvtlDWhwjSbT7TYS+NQTdyx8FG8IjVwQJMaE=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=ft0IjBjPAIsKmuJxjSarxOpzLgrbXAcphRF4V5aeTRMPsQTFD5yzCkv3hXVdf6FgO
         xM1GqPx8BfoJc2OsQGJdxn0scn7Tsj9EPtOWBod3aFfYkz4V3+H29Gj0Sw8TM3OhZT
         KMX5uHtGd2KHeMlqkYOFT5lnDhWNPj4IelhdWNwkqAjjZBQO8O7YlYJruDRAbM4gB0
         3c0nxz018NkzUHJMlLiZhY2OPS8VuzUwqTcwWjpA+HK2pOE1zJyfWwatjQHObUrqXw
         2770tHcAdiNzcDCV/khulXdJUYQoxILodHvfPSTvwNG48ebKcjW4lsLmLN4P2HwBqU
         2B0X+t4jg8/bw==
Received: by mail-ed1-f71.google.com with SMTP id u17-20020a50d511000000b003daa3828c13so9050630edi.12
        for <devicetree@vger.kernel.org>; Fri, 08 Oct 2021 05:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T0LoLWvZvtlDWhwjSbT7TYS+NQTdyx8FG8IjVwQJMaE=;
        b=RzzAnTG6HT2zZuJQ2N8Cl2HOHMR4iRPWbPdcZpITeaWb7JlFn6V3jjZIWTQSgV8lX6
         i47Mw1sjwsueF4jhAmHq1yNZM0QUs8Py5yWM8prZyoqLYHJpAtLxwqwdbIAM30rfhVzt
         ChZFBF4PAZdseN6SZAkY1vbm3CvwOVzEMrw3RiPwBLBSmDUm0bSuN45HTfatUfbU0UTL
         u9tA4PhGdtoDt6FBcMM3H+GQgtqUpaYhTv6HglOq0Q2HcqjE+KvLE4JejxAOEIXGj2jS
         D7F2nK9ywySVjTbVlsE18CU0VSrsodUu44/KsdqSNgevdK8ZyNEzfvx6HpVEMihpFe5U
         8kvg==
X-Gm-Message-State: AOAM533Rgrh0o828IJpiN5SBJw7xuoVf7hMRImD4jQySu4iuWLBGrqDl
        fEa4iUEDxUPd3Zyy2nA5jkI5lgz+loBGtVVKmi9wWjSG/SLmqFqfpjkkUwqCdV1nwARX0pPfSyJ
        ZRFsksS4nffhK23vUg+6/dQO7mylFXAvePBOt+gc=
X-Received: by 2002:aa7:c7c2:: with SMTP id o2mr14319965eds.166.1633696586384;
        Fri, 08 Oct 2021 05:36:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzekLqKDJIvnYL2LBBBZmh7BTV+GyH6NcdTjHGv2l5VvVB557QGplTQ+A/xrpizRISOX/z0kA==
X-Received: by 2002:aa7:c7c2:: with SMTP id o2mr14319949eds.166.1633696586230;
        Fri, 08 Oct 2021 05:36:26 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-186-13.adslplus.ch. [188.155.186.13])
        by smtp.gmail.com with ESMTPSA id f25sm860239ejb.34.2021.10.08.05.36.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Oct 2021 05:36:25 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/2] mfd/regulator: dt-bindings: max77686: convert to dtschema
Date:   Fri,  8 Oct 2021 14:35:50 +0200
Message-Id: <20211008123552.191384-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Convert Maxim MAX77686 bindings to dtschema.  The MFD patch (2/2)
depends on regulator, so this should go via one tree, for example MFD or DT.

Changes since v1:
=================
See individual patches.

Clock bindings
==============
Existing Documentation/devicetree/bindings/clock/maxim,max77686.txt are
left untouched. The file is still used/referenced by other Maxim
devices: MAX77620 and MAX77802.

Best regards,
Krzysztof

Krzysztof Kozlowski (2):
  regulator: dt-bindings: maxim,max77686: convert to dtschema
  dt-bindings: mfd: maxim,max77686: convert to dtschema

 .../devicetree/bindings/mfd/max77686.txt      |  26 ----
 .../bindings/mfd/maxim,max77686.yaml          | 132 ++++++++++++++++++
 .../bindings/regulator/max77686.txt           |  71 ----------
 .../bindings/regulator/maxim,max77686.yaml    |  83 +++++++++++
 MAINTAINERS                                   |   2 +-
 5 files changed, 216 insertions(+), 98 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/max77686.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/max77686.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77686.yaml

-- 
2.30.2

