Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F0F3734BE2E
	for <lists+devicetree@lfdr.de>; Sun, 28 Mar 2021 20:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231391AbhC1SLp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Mar 2021 14:11:45 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:38673 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231247AbhC1SLW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Mar 2021 14:11:22 -0400
Received: from mail-ed1-f70.google.com ([209.85.208.70])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lQZsf-0005wL-4c
        for devicetree@vger.kernel.org; Sun, 28 Mar 2021 18:11:21 +0000
Received: by mail-ed1-f70.google.com with SMTP id w18so7542302edu.5
        for <devicetree@vger.kernel.org>; Sun, 28 Mar 2021 11:11:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Rey3AlF6bNMfZTTg+jkx/LiRPjc90KdJa4L+s9E+65I=;
        b=OdUag9ka8MBfYBlnp6bjHX8EHNsRymjRezWMLaRPgrLMU2qkXcmO/PjnwzL8Yx3cTU
         3qm5H1zHN/H0RArEBqSowX+8FRfTp2JJ1ayeeHAJZ5/Cym07JrGIBCpYk/vTRyMMjBqW
         ByVhA3y5axlFjscDKehWj6Jxpy/d2IF3FlhC2uYr5FZWlufXAqibsZra6KKBj1QNsaYH
         AOaA7rOOTpnD+G04SVyqHFH8ez+C+NUzxkJfVkLgUm7LTe5+v84q3C6Ne+B5xekKx02y
         TeD8SZBWDOcuRXI6Hv13TrkdQRlaYIObRr0arVb7sDTC0Ft5EIhe7xHkjcMZ+aDCR12g
         bnHw==
X-Gm-Message-State: AOAM530EPwHG6EdHAzh0MRamKede4LL1/aKWG66+5hIOU75jwOUyb728
        sci+J7K9pH7ytdfYZut8bs+bUw1wbyQzNEKEbu5TtU4UNLrwFpn/OwOy00Tx+huXvjr9w7oLvWc
        49oh3L24s4oMhxG2FEFqrDHH7kZhcjqoFjPFpULQ=
X-Received: by 2002:a17:906:5495:: with SMTP id r21mr25458709ejo.471.1616955080888;
        Sun, 28 Mar 2021 11:11:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyMqzeyTcGYaM/gLqBM9Eh62h3335SF++m0WO+Z/UFRWGHlTnAkUvRVICLPJ2uKs+ueEa0cVg==
X-Received: by 2002:a17:906:5495:: with SMTP id r21mr25458700ejo.471.1616955080791;
        Sun, 28 Mar 2021 11:11:20 -0700 (PDT)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id bt14sm7670364edb.92.2021.03.28.11.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Mar 2021 11:11:20 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Timon Baetz <timon.baetz@protonmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2] ARM: dts: exynos: Add front camera support to I9100
Date:   Sun, 28 Mar 2021 20:11:16 +0200
Message-Id: <161695507016.4212.18409865650409500354.b4-ty@canonical.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210327200851.777327-1-timon.baetz@protonmail.com>
References: <20210327200851.777327-1-timon.baetz@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 27 Mar 2021 20:09:01 +0000, Timon Baetz wrote:
> Add node for Samsung S5K5BAF CMOS image sensor and
> enable the associated MIPI CSI-2 receiver node.

Applied, thanks!

[1/1] ARM: dts: exynos: Add front camera support to I9100
      commit: 7f4ebf3e4ce10a1ed8ff2aee5d75568dc3522b2f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
