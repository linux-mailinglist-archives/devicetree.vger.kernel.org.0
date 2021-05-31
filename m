Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE6A239646B
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 17:56:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232358AbhEaP6K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 11:58:10 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:42787 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233322AbhEaP4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 11:56:01 -0400
Received: from mail-wr1-f72.google.com ([209.85.221.72])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lnkF8-0001Fu-FS
        for devicetree@vger.kernel.org; Mon, 31 May 2021 15:54:18 +0000
Received: by mail-wr1-f72.google.com with SMTP id c4-20020adfed840000b029011617ea0440so1078899wro.10
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 08:54:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sBsy4F7jKH3SpIbmGFnwxwge6ODZS5L/G/FMfomXAiA=;
        b=GszvoqW+5jVWp1WeRarVfESiBOtUnjaDLM0z5KFE8+rpJ6FihaYfx4pcF7GME9GbSH
         aNUFRIX89qlR8KMSw4Yyc7PSEvbOIa09/R/TpUC7soFN602DGFzTlV0lhted+5JCiZTf
         EF/Eww1GE6xvo3K6jton8xVzX10BByh65a/VnRF+m4W64jC3XDkeQ8LZt1kBbkvRAwaQ
         vIy4dei7NQwbumjUtxe94xdIayCq3uXMGt1pk+JAZDNjAAn9edN2pRL+s99NXIlMqsGo
         CUaP+zC5h4CIsjoqa2rJzfvdAfaiQV6j6Wv0DQ/FBgVm1kG062oyPzgBVYYhiSmuPoBl
         3hBw==
X-Gm-Message-State: AOAM531+aJrZleLjLqKNWpetTwWAGnWm3A7kp5o1Y1psk099Lboq1fw4
        VATzjPAguRMzW2rkGYaNikuj5CuEoW+lb/p4bOt7gSpN5vRyLMkW0P/cJC59bQYfb5fAP6S9Byi
        2Hg/+l/4mer4ZU5MV0M2k/s9ciWi1+n2Ct0eA1EE=
X-Received: by 2002:a5d:6e04:: with SMTP id h4mr22526590wrz.256.1622476458294;
        Mon, 31 May 2021 08:54:18 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxc5/XqtsAvzunerv9scOT0vi0T+fqQgLaptB/fTaUryshQ2AateJkvN0M3O1eK/oaFSwSLqg==
X-Received: by 2002:a5d:6e04:: with SMTP id h4mr22526580wrz.256.1622476458147;
        Mon, 31 May 2021 08:54:18 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-185-9.adslplus.ch. [188.155.185.9])
        by smtp.gmail.com with ESMTPSA id u18sm15309089wmj.15.2021.05.31.08.54.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 08:54:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Timon Baetz <timon.baetz@protonmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Rob Herring <robh+dt@kernel.org>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: exynos: Disable unused camera input for I9100
Date:   Mon, 31 May 2021 17:54:13 +0200
Message-Id: <162247639430.59481.5717460828748837476.b4-ty@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210530105535.4165-1-timon.baetz@protonmail.com>
References: <20210530105535.4165-1-timon.baetz@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 30 May 2021 10:55:44 +0000, Timon Baetz wrote:
> As the back camera is not implemented disable the second pair of fimc
> child nodes as they are not functional. This prevents creating the
> associated /dev/videoX devices.

Applied, thanks!

[1/1] ARM: dts: exynos: Disable unused camera input for I9100
      commit: 135adbbee4c66f89b57519633cbf8c3c35b6c4da

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
