Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 652233B138F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jun 2021 07:56:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbhFWF7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Jun 2021 01:59:00 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:47849 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229794AbhFWF67 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Jun 2021 01:58:59 -0400
Received: from mail-wr1-f69.google.com ([209.85.221.69])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lvvsP-0002Gu-Dy
        for devicetree@vger.kernel.org; Wed, 23 Jun 2021 05:56:41 +0000
Received: by mail-wr1-f69.google.com with SMTP id j1-20020adfb3010000b02901232ed22e14so640684wrd.5
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 22:56:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Y1jDlUMkwrAiNSpYqmp6DTWEmsBUMLxkuAWlef8a84E=;
        b=QsGz4ZYvlyNrw/R6x2sJxaWcSiRq8mI4TXkWqto2ix9bTMu/Dhi1zOIM0urGQYZbAu
         EL48fRD89LDZM94ay7d6cfloH6IFRsMT4QhIxk+FxisSse1SWymHT6MMaUmlvjGvGYJk
         IM9OW0rMfW0BUqHWUN8cls6IFwlvCMj2p2EIforsA2T3Uef0Ebu8Mhg5rOP2q3N7iZC+
         M+DJ6pn464BlqhqOJhgpI8RNRa8p4VCKdYnn33ycnhYMcw0O2wVwpEpUi1KeDApYu1d0
         864HPYP+KiLdpPQClCHBlT9ZOy5yGXn2b/3ndX8E3YorpKYAS55d6T2l456QL3SWEeCo
         LIfg==
X-Gm-Message-State: AOAM533PlwFrwic2emSc7kjhFPezNTG4WwwJ4Q8WR6R0M+OLrSdRTDpK
        4HeU+lDc+j/8MW2rTrWof/r9p+FbNvg/DdSeiMICRaMIiTtaYKrJhzSUzk8/+vB5EZH9ZQ3nhrL
        HQaAK/999+T/BjQznrs3HK5CygxcMyWU/rEunZEA=
X-Received: by 2002:a05:600c:2e53:: with SMTP id q19mr8945299wmf.39.1624427801155;
        Tue, 22 Jun 2021 22:56:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyze8HeAsFtSsdRC1iygn/4uNoruW16F+7eeE14pFIaQkDBttwj9NY01uUA8WINYMF7R2Dr4w==
X-Received: by 2002:a05:600c:2e53:: with SMTP id q19mr8945284wmf.39.1624427801039;
        Tue, 22 Jun 2021 22:56:41 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id r3sm4301005wmq.8.2021.06.22.22.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 22:56:40 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
        Will Deacon <will@kernel.org>,
        iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH] dt-bindings: arm-smmu: Fix json-schema syntax
Date:   Wed, 23 Jun 2021 07:56:37 +0200
Message-Id: <162442779339.5511.14827117243689906234.b4-ty@canonical.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210621140036.2879563-1-thierry.reding@gmail.com>
References: <20210621140036.2879563-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Jun 2021 16:00:36 +0200, Thierry Reding wrote:
> Commit 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible
> string") introduced a jsonschema syntax error as a result of a rebase
> gone wrong. Fix it.

Applied, thanks!

[1/1] dt-bindings: arm-smmu: Fix json-schema syntax
      commit: bf3ec9deaa33889630722c47f7bb86ba58872ea7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
