Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A6841480B61
	for <lists+devicetree@lfdr.de>; Tue, 28 Dec 2021 17:39:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236077AbhL1Qjh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Dec 2021 11:39:37 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:49170
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S236044AbhL1Qjh (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Dec 2021 11:39:37 -0500
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com [209.85.208.197])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 505913F31F
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 16:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640709575;
        bh=HGuU3G/CmacYFKUeANclkwpOH3maXtk12cKoz5IJaT0=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=oxxN6eSWF7AXk4UAgg/175iDP8hmfpEDN1ZnkOItg3GnAAV8mg/Y7D7sOPyrjzRcC
         6m2XhJuKSYgwRwLLWIf+JbP4BVs/31EIC9Cn1ut+1WkTN6RrtLdfnnASUGcl1omKmN
         HDGk97b8wIj0V5RoFUY0kipcX61vKZjCnvNU5EAdxH8ErPQxZAX1dB2BZuHK74W18i
         w3+YVLp9WgODqPwAdS3pemiG25UpeceDqBDmJl2uJ4JkhJhXVwUXaDCuw5yQFB1+FJ
         4daaf9eTSGy0o9bZd/+fNE+sa+2quqmfuBpMXqbhFphcInc06uPdnUOeKGQr5v2Lwf
         dfeOkC/jDeElQ==
Received: by mail-lj1-f197.google.com with SMTP id r20-20020a2eb894000000b0021a4e932846so6242913ljp.6
        for <devicetree@vger.kernel.org>; Tue, 28 Dec 2021 08:39:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HGuU3G/CmacYFKUeANclkwpOH3maXtk12cKoz5IJaT0=;
        b=XgR/AKIHH1kGoqzKlcEJWUVJasD27DY4pl2VTJZ6dy9CIaq3DOsbPlWsNEcJozKxkG
         fttexdCN8zo9ErK3Pv2WkmNRhDSua1KXIvQA7CTGVckwzo+Drhd/Aa3rTdPiLAqiR4ir
         DY8icl/1X2JaUC/LiKT27uYfKog+RDx9quFoKyg5RV/Ka9aoRIqiIpQigAuNrZcmdIHe
         osV2Er4rqacAuLiNCNoE78cECNKtQiCHtn3RxS4mBhg0h/tr4QJdKm93Q9KeOaCCPOwU
         6/99VrlwZdoF8apy9YrXMskzwsibZru2G1abUgqwEGE+OCpdANduoHyRBnRoDrbsi4rI
         D73g==
X-Gm-Message-State: AOAM533du9gMVJITb2AdRpf71yIAUa8P5tvoThwsVYz1NsPYZde4mQHa
        /W8zlSwkc6jPufddJ5atYe23xJ8pu3FE3n/aeNJo4CVL26s6KyN7nqd7oLy7AOdykGfJmZsFJS6
        gL9isrAj7IHXcigCwt1a4Sz/Kj563N//MpJqar7A=
X-Received: by 2002:a2e:894b:: with SMTP id b11mr12168955ljk.22.1640709574632;
        Tue, 28 Dec 2021 08:39:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz2R4OjcmDuYU5dFgZyIsJA+br3TJLYbRM0hsPoVHlotH5EqETNcXzL7aQK6WUoOnCtKUrTgQ==
X-Received: by 2002:a2e:894b:: with SMTP id b11mr12168917ljk.22.1640709574002;
        Tue, 28 Dec 2021 08:39:34 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d3sm1972876lfs.204.2021.12.28.08.39.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Dec 2021 08:39:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-kernel@vger.kernel.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Subject: [PATCH 0/4] leds/power/regulator/mfd: dt-bindings: maxim,max77693: convert to dtschema
Date:   Tue, 28 Dec 2021 17:39:26 +0100
Message-Id: <20211228163930.35524-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

The final patch - MFD maxim,max77693 bindings conversion - depends on
all previous. Therefore this could go via Rob's or Lee's trees.

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  dt-bindings: leds: maxim,max77693: convert to dtschema
  dt-bindings: power: supply: maxim,max77693: convert to dtschema
  regulator: dt-bindings: maxim,max77693: convert to dtschema
  dt-bindings: mfd: maxim,max77693: convert to dtschema

 .../bindings/leds/maxim,max77693.yaml         | 105 ++++++++++
 .../devicetree/bindings/mfd/max77693.txt      | 194 ------------------
 .../bindings/mfd/maxim,max77693.yaml          | 139 +++++++++++++
 .../bindings/power/supply/maxim,max77693.yaml |  70 +++++++
 .../bindings/regulator/maxim,max77693.yaml    |  49 +++++
 MAINTAINERS                                   |   3 +-
 6 files changed, 365 insertions(+), 195 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/leds/maxim,max77693.yaml
 delete mode 100644 Documentation/devicetree/bindings/mfd/max77693.txt
 create mode 100644 Documentation/devicetree/bindings/mfd/maxim,max77693.yaml
 create mode 100644 Documentation/devicetree/bindings/power/supply/maxim,max77693.yaml
 create mode 100644 Documentation/devicetree/bindings/regulator/maxim,max77693.yaml

-- 
2.32.0

