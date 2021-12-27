Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B42C647FD5D
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:32:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234009AbhL0NcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:32:12 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39452
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234075AbhL0NcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:32:10 -0500
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com [209.85.208.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BE28640703
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640611928;
        bh=Ys8+KWWv6cblvYfRfABL3+M+hNb6oCdRIvi8aT4vj7M=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Ju7MzlygWJ0Zv78VFg089a4OoptRcBGnGjD9shFxoWDIvfU8YCsoR1TsvOB4IJaGY
         v0xv8/8YIYcmf20Vnt5gZxnymPGx3A8qIYZwaDbopbcufOo6cV9hf2zB+8rMLMC/al
         v2B3YVDWmkzj/o0iUmvWxy3NEZ66stM8Z4yvdGb9fmV9y4nWQjbCapZMsLIAV5rmOU
         sXk2kAzrzk8p8S5D0k0TzKvkUSb9Nj8EPhBzhrR4CulTvYLgnOw3BfxbEuJx4AB8t/
         kapDSXijaV2OH3b13aZ3bIPFSph/IgROsD9MBeAqFDnbdKn6PyLEcfd01xkjp+emoq
         qVaW6Vr4bzYAw==
Received: by mail-lj1-f200.google.com with SMTP id l6-20020a2e8686000000b0022d9a4d18d5so3951287lji.19
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:32:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ys8+KWWv6cblvYfRfABL3+M+hNb6oCdRIvi8aT4vj7M=;
        b=pHBcpj9DNgKpw4NvmRDX2TYFiiSQ6DQ2BRKajRFg8tOJtmATUL8AYVNyO3wF6KQ9Jm
         7jZE/STA30FocDkN1ocowQ5i4AOqAc31ew8IM1lROkSR90qMnOH4NpYXEfPUrEhJMSY9
         aynhAi976YGYSkM56PuUMPzWFMQIs03iyRKMsYyoyWhvWBZMv+DgNYV8XgqkL956J8FG
         7hQ4fEKcndeL1AoT+JwYtXu6KN3jcdV1yUsXyWsPKQNFdcEUJ7nkgbvJuYqIB3p9d16b
         dCnU070+w7IEYSxBYTLo6GmG02ix4QBtiHFIh4+wDD5bbAHY6+wLJuQA0o1GzDZcWbVT
         +a0g==
X-Gm-Message-State: AOAM531pn8le4ib2/yiUOXRvQG5NNCUfDiJRM92lCiq8NA3pnRFtJP8F
        e8snAA7xzyEHtGnNRHCQfcdIxrSazrv3hVHARG6ivjTfxz+vf2a43LAE6khxNKAYKkJ+Nb4EcAh
        KXQyDiWgLJWMI5MWcP7uLSiYiPgxKANaqRBVbcfg=
X-Received: by 2002:a05:651c:1054:: with SMTP id x20mr13675250ljm.445.1640611927041;
        Mon, 27 Dec 2021 05:32:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzazX3ZCxB4v/l+C8+nXPPq3MgFAHSUlHAZU6sucg0O4uB9a/5/Rs9mH1zRhW8sZSfsXxuJnA==
X-Received: by 2002:a05:651c:1054:: with SMTP id x20mr13675234ljm.445.1640611926892;
        Mon, 27 Dec 2021 05:32:06 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d14sm1433510lfg.18.2021.12.27.05.32.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:32:06 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 04/19] dt-bindings: altera: document Arria 10 based board compatibles
Date:   Mon, 27 Dec 2021 14:31:16 +0100
Message-Id: <20211227133131.134369-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new compatible for Arria 10 based boards.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 3d7a2f699279..963c83904010 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -23,6 +23,9 @@ properties:
 
       - description: Arria 10 boards
         items:
+          - enum:
+              - altr,socfpga-arria10-socdk
+              - enclustra,mercury-aa1
           - const: altr,socfpga-arria10
           - const: altr,socfpga
 
-- 
2.32.0

