Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE67A3B0A44
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 18:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbhFVQ1M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 12:27:12 -0400
Received: from mail.kernel.org ([198.145.29.99]:53756 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229718AbhFVQ1M (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 22 Jun 2021 12:27:12 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7FAB8611CE
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 16:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1624379096;
        bh=9YcXrpKKqcySYVdTGcAYXn0Qnpqnm7JMdtLyxXuKF3k=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=r2j/rbAmBjtCqXDc5B4JpXikk0tmxMLUUd9le6SyIbiRvSqJx5pdmzLtwcLN35j+R
         vWT/hU1Uj//iHS25xbDzWJ5IWLa+I2nLjPo4Iz568RGf1gLo9IyFucDOh3z/0c6MDK
         ++ypeeccrWdsg6LzKYIFj5qsE1rJqVzBaJU/sSQpwIMRudiDPalnlYFtVgm4HpfDte
         wKOnwsx/JXvUWnkYf1Z3qiV9+p08FMYIjSI3h/SDOvd9pE07BmID3rc5okHAcrg5gd
         kWapq3K0V2fF6grUX0A0XoprrrjbIoagkRpop4JCaRjKLaGbOXZ12Zz884jdilEwvG
         L23+0Z8Y0VHNw==
Received: by mail-ed1-f53.google.com with SMTP id t3so24475589edc.7
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 09:24:56 -0700 (PDT)
X-Gm-Message-State: AOAM530KOWHXZXVCxDX3WvWYkMJ8UiYeS/VUb+u/1laCgDfnG/VEK2rz
        02keNdU61w7F/HWSezOiBKfDrKUCl9+yDujKPg==
X-Google-Smtp-Source: ABdhPJz2hJEe5Y5tnMkc8uKDAV4QNLw9/gGuefIt+WY3Hctlj1z/OSB0gS6FMkhV1XgFau+MVMbXqfZfYqQPWOxl+gQ=
X-Received: by 2002:aa7:cac9:: with SMTP id l9mr6122024edt.373.1624379095019;
 Tue, 22 Jun 2021 09:24:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210621140036.2879563-1-thierry.reding@gmail.com>
In-Reply-To: <20210621140036.2879563-1-thierry.reding@gmail.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Tue, 22 Jun 2021 10:24:42 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK4zFzWGG=j1yqGfCwt7p_k=ExhN64+RxeBYB4PqDGvXg@mail.gmail.com>
Message-ID: <CAL_JsqK4zFzWGG=j1yqGfCwt7p_k=ExhN64+RxeBYB4PqDGvXg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm-smmu: Fix json-schema syntax
To:     Thierry Reding <thierry.reding@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, devicetree@vger.kernel.org,
        Linux IOMMU <iommu@lists.linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 21, 2021 at 7:58 AM Thierry Reding <thierry.reding@gmail.com> wrote:
>
> From: Thierry Reding <treding@nvidia.com>
>
> Commit 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible
> string") introduced a jsonschema syntax error as a result of a rebase
> gone wrong. Fix it.
>
> Fixes: 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible string")
> Reported-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)

Acked-by: Rob Herring <robh@kernel.org>
