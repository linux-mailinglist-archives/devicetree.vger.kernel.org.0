Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8289C47FD60
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:32:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234140AbhL0NcN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:32:13 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39448
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234026AbhL0NcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:32:10 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5DE37406EA
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640611927;
        bh=S+o/cTHgVGk8oN2RoEmSgbuWSZI8JE9I4STOFcdfAwY=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=rnKQw9yltOL7wXqtDN/5sfszoC3BqeQ5vn6aB9E7LLWE3ccy+MOQix1k6npQg0QyB
         ZemS+G9zKCHmJqZ0PouaF0o+uiMz4JwiowG+4WBz0C3RyVo93nexY4gNlt0nAGItpe
         t6mOZYKTqJdA5qKYv6dmGQ47NB/RPB81HEYwZkaxZSwugLgo1SowgQerWDu0acKfVk
         +mNtKV7ceSFQ4s9+epChcw0plzea/aWDmQfS2tObUKhMR4izASVsukaBuhJsDLEB+Y
         RgXwVhlyb5sbIdFU2enC6xJj/G5tIHYRkiGrUslf7joBgutLiSdppc/IoruIeF4i14
         lnkUc47DmFR0Q==
Received: by mail-lj1-f198.google.com with SMTP id r20-20020a2eb894000000b0021a4e932846so4972582ljp.6
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:32:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=S+o/cTHgVGk8oN2RoEmSgbuWSZI8JE9I4STOFcdfAwY=;
        b=v0SbOosHjZz2dxK7iXNCs9oHQzppnoMSV8E/jSCic4sMYVl3t1KbpMWaoqfXDcPxIK
         pP/LvlxrqGc1oIld6hRowDcMYSKriNi2026YoeLn/WtSutRU4zmlCvEHD8Bs16BOelEW
         tgYdEn8ohnFjpY0d/tDo74N21egJEHVNaSgAdh6+WwTVDxaEXafx6S8bdf2WyGEMb6nK
         Sfb2E72ns5PklymUUCiXLsTu0xwEjqfVvRz0jbKG+P7QES5jJggZXIC9Hx2YNvgC6LyI
         WI3+v6taSXD7QqUld4RUi3zBJ60ccdshU+KsQe84YSlfdeT+4xjNdjHYGgp7vxqmGUVX
         mLoQ==
X-Gm-Message-State: AOAM532GZLLZItmkFrje1DPppuF8dsFALlhevsrTd28wI6wahEWEFsi7
        nLx/m7fB1YGft13fLowQPfr3paVGJZqlNNdrqGyyhmTxj2++oK4z1yElH1wqiO6oThjvxoSd6X8
        Y1A9LsWQay3yw8DV0245sCuvqYq+Cj2EvfP2jSz0=
X-Received: by 2002:a2e:90cb:: with SMTP id o11mr4607894ljg.158.1640611926166;
        Mon, 27 Dec 2021 05:32:06 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzfR0HHsehFPMnWJ0yUHJl8w0VYLiWVXHnAJyeoCCtKtnHHUQOP+KGCTsRZ/23U6d9NTCKISg==
X-Received: by 2002:a2e:90cb:: with SMTP id o11mr4607878ljg.158.1640611925634;
        Mon, 27 Dec 2021 05:32:05 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d14sm1433510lfg.18.2021.12.27.05.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:32:05 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 03/19] dt-bindings: altera: document Arria 5 based board compatibles
Date:   Mon, 27 Dec 2021 14:31:15 +0100
Message-Id: <20211227133131.134369-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new compatible for Arria 5 based boards.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 0d62c2bde053..3d7a2f699279 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -16,6 +16,8 @@ properties:
     oneOf:
       - description: Arria 5 boards
         items:
+          - enum:
+              - altr,socfpga-arria5-socdk
           - const: altr,socfpga-arria5
           - const: altr,socfpga
 
-- 
2.32.0

