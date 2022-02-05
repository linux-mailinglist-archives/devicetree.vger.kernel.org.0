Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 454294AA879
	for <lists+devicetree@lfdr.de>; Sat,  5 Feb 2022 13:00:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357608AbiBEMAv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Feb 2022 07:00:51 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51870
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1356134AbiBEMAu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Feb 2022 07:00:50 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 0E2633F199
        for <devicetree@vger.kernel.org>; Sat,  5 Feb 2022 12:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644062450;
        bh=8wAviCrGHuoenIiFKnf3hRWDAAKCr7OKFFOofFuNyGY=;
        h=From:To:Subject:Date:Message-Id:MIME-Version;
        b=SqFKeAEcZeOBouql39ZqpkY2cyCjGVTr9JW32Bwu6tgAqEqHQBVpnr1RiGkHMufQd
         6ma3i30C/Xro/J3GBd6cKuYBSdDNpRaoeemP8JOiMdAGgdPwb/81Z5DZRXFD8wSc4l
         SN8juFU4rsKq91d5D2wu50ctbmmySLC/VnADZBopNIKXgPiRbP9MVccqqmFJSoi6h5
         yWsc4D8oDUH1YVRLlnB0NyEmQPS3Er0nnAAoQDTHIutNR9UHxNcCXAFuIbXiOaD+25
         0HqdBNEkffg4ZTRXl07XXI3psdUgQrywpKlmyUcBIIEFTHO4Q5m3WD3dLvbQv5Y3HO
         mch7h3I3kEO3g==
Received: by mail-ed1-f71.google.com with SMTP id o25-20020a056402039900b0040631c2a67dso4505313edv.19
        for <devicetree@vger.kernel.org>; Sat, 05 Feb 2022 04:00:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8wAviCrGHuoenIiFKnf3hRWDAAKCr7OKFFOofFuNyGY=;
        b=2iApdkKBo7RI8lsez/rGdwGdBBYZ0AMJR1yOP4I/C9uYD7UJKSLVYoaMaOd2JVSac/
         8vhd8fpO8yuyODA+XFtu/XBnzMh+gF6+B4kuKrxrXb7J8sSD4XAluVHnHJugRrgXRACl
         4hhmQGovL7w48EZXr1VYzy8TlURJ3/x0c8Cfbg0S69uqP1/NtjtLdB20p9185XO031lo
         c9WNA/bf2pb5vMwG3z7G04gSVZ6RBL6VZrzoN4XGmCZZFpqKDWSKdYbE9q6W3wuetImq
         cb5GnDpjTPvqTlj2EzyFr+mhuhvz2Mjm3kyhp+T2AGvaHHtan7aHpUcN3n/O/KbM+azE
         hZRw==
X-Gm-Message-State: AOAM531SY7hK8wSoCn90QdaXXjQOaAG3DOuCYl0PbE+6CGuzl3XwXCwz
        nys3Uc/udZHBG3DIP6JykNUaHnCUDnRbe1v6fm9ARh9YZpAjksVtp9q93O03CKLdqPT0VgvirJC
        Rwej0lhWRIb5KmhILtBBGPBoy/U2sPtdcJ9qDYt0=
X-Received: by 2002:a17:907:6d8d:: with SMTP id sb13mr2866367ejc.5.1644062449704;
        Sat, 05 Feb 2022 04:00:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy42lu0XD09NIeU/WCEo08QuiM9SqE6oFHO3LNiz0b5WmMfck8Xm2lLt5OxUpWLoNt2kE76iQ==
X-Received: by 2002:a17:907:6d8d:: with SMTP id sb13mr2866347ejc.5.1644062449471;
        Sat, 05 Feb 2022 04:00:49 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id m12sm1534185ejr.218.2022.02.05.04.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Feb 2022 04:00:48 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 0/5] dt-bindings: memory: convert to dtschema
Date:   Sat,  5 Feb 2022 13:00:38 +0100
Message-Id: <20220205120043.8337-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v1:
1. Drop patch 1 (ARM dts) - applied.
2. Correct description in lpddr2-timings (Dmitry).

Best regards,
Krzysztof

Krzysztof Kozlowski (5):
  dt-bindings: memory: lpddr3: convert to dtschema
  dt-bindings: memory: lpddr3: adjust IO width to spec
  dt-bindings: memory: lpddr3: deprecated manufacturer ID
  dt-bindings: memory: lpddr3-timings: convert to dtschema
  dt-bindings: memory: lpddr2-timings: convert to dtschema

 .../ddr/jedec,lpddr2-timings.yaml             | 135 +++++++++
 .../memory-controllers/ddr/jedec,lpddr2.yaml  |   6 +-
 .../ddr/jedec,lpddr3-timings.yaml             | 153 ++++++++++
 .../memory-controllers/ddr/jedec,lpddr3.yaml  | 265 ++++++++++++++++++
 .../memory-controllers/ddr/lpddr2-timings.txt |  52 ----
 .../memory-controllers/ddr/lpddr3-timings.txt |  58 ----
 .../memory-controllers/ddr/lpddr3.txt         | 107 -------
 7 files changed, 555 insertions(+), 221 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr2-timings.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3-timings.yaml
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/jedec,lpddr3.yaml
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr2-timings.txt
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr3-timings.txt
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/ddr/lpddr3.txt

-- 
2.32.0

