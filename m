Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3214F41B1CD
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 16:14:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240794AbhI1OQN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 10:16:13 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39368
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233878AbhI1OQM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Sep 2021 10:16:12 -0400
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com [209.85.167.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 7D6E7402F8
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 14:14:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632838472;
        bh=h8MrqkfxIEKH6PXbKDTwFiG0JUImLj/0uwHBzSWaKXc=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=TmUYL2xfOd598NQMuvwzesGx/S/9z1ha+1J6N/aPgmVvnj0isDIm1XcnIAFGwjufu
         ESSkB6f4HOrFPjopA076jr7eR4oo6oW8uIZXyS5PZCa2fK9NiYuN0ycpobbpuesSJn
         zWrLFsEDsIo7SyIcz1c3NtqwwX2oOP/glbJOtT9qvL/WrAPoQYRtyS2DzPYy26aI6Z
         wsD71CevGdg5CYf1RYcTXER119fswdWN9gQ+Wnv2xuW+OlFYAZh3y/jeuEPAEdUk+o
         kOOElrHfDZOrOyqkZfiCb/wFdmzB5maRUXt0u1dx22jyP2KHLWKDFzMmbaFDpCaN6x
         3xymOtrEbXLGg==
Received: by mail-lf1-f71.google.com with SMTP id o4-20020a056512230400b003fc39bb96c7so19501912lfu.8
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 07:14:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=h8MrqkfxIEKH6PXbKDTwFiG0JUImLj/0uwHBzSWaKXc=;
        b=C1DPetb65ACUsBZM3HX4z3ucVMHNnuhEVapqdEowxBdVzCn9Rknpl6WvDCexraiBNR
         I2tX2fxWoHIXkB0s289v4cnX0sXdKhcS5kNfEesgSuVrI+7SeBQnOdYk0gS4p6ynDYZm
         lryOAWLxgRty961eCi7UW6C6r0CtWnh0v/H1ifA0f91cYI8/VXSPT3PKYlKYxDUv4R2Q
         z1/uthIpZTbeeTC7eqOEiKxeg/2fNsPZUr2t/+DNjHUn53tUaqnT9KdaA1aTtyY0Hnkw
         bYCJlKIOtTTt0pbqfba4kTzp7IZM/1j/ZN+rMTRNXT6wRvig/Jt9+5L6GTihAHsTOAZ3
         UlbQ==
X-Gm-Message-State: AOAM532Wzh2YeaUJ5c5xMRejgwiiPvJkVVs10wH74txJtPtR8FFz7Un5
        thbobj0yVj14nO5UMq1dSmWDjLhYk2U6ToSNvHHfr2xVQOEJzSQpKOqwWTWzU3rcm5DnGFZZc8b
        UnZ43hpPVBAx8BFIc7+RxCxs5QvvYyrWWL0KFy50=
X-Received: by 2002:a05:651c:201e:: with SMTP id s30mr218809ljo.244.1632838471708;
        Tue, 28 Sep 2021 07:14:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwlIyVSoE6g9lgr6Y3M0HsgsZLfCq9YnhaWnZnO3VLHcSblRxhjhOqFYEYv0/gKe2YAnWkshQ==
X-Received: by 2002:a05:651c:201e:: with SMTP id s30mr218784ljo.244.1632838471542;
        Tue, 28 Sep 2021 07:14:31 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w19sm2353241ljd.110.2021.09.28.07.14.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 07:14:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] mfd/regulator: dt-bindings: max77686: convert to dtschema
Date:   Tue, 28 Sep 2021 16:13:51 +0200
Message-Id: <20210928141353.112619-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Convert Maxim MAX77686 bindings to dtschema.  The MFD patch (2/2)
depends on regulator, so this should go via one tree, for example Rob's.

Patch 1 (regulator) notes
=========================
Only few regulators support maxim,ena-gpios property. I tried to include
this in dtschema but because of unevaluatedProperties this part is not
actually effective.  Any ideas here would be welcomed.

Clock bindings
==============
Existing Documentation/devicetree/bindings/clock/maxim,max77686.txt are
left untouched. The file is still used/referenced by other Maxim
devices: MAX77620 and MAX77802.

Best regards,
Krzysztof


Krzysztof Kozlowski (2):
  regulator: dt-bindings: maxim,max77686: convert to dtschema
  mfd: dt-bindings: maxim,max77686: convert to dtschema

 .../devicetree/bindings/mfd/max77686.txt      |  26 ----
 .../bindings/mfd/maxim,max77686.yaml          | 124 ++++++++++++++++++
 .../bindings/regulator/max77686.txt           |  71 ----------
 .../bindings/regulator/maxim,max77686.yaml    |  92 +++++++++++++
 MAINTAINERS                                   |   2 +-
 5 files changed, 217 insertions(+), 98 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mfd/max77686.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77686.yaml
 delete mode 100644 Documentation/devicetree/bindings/regulator/max77686.txt
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77686.yaml

-- 
2.30.2

