Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8B25D3C5E1A
	for <lists+devicetree@lfdr.de>; Mon, 12 Jul 2021 16:14:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233683AbhGLORn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jul 2021 10:17:43 -0400
Received: from mail.kernel.org ([198.145.29.99]:59676 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231451AbhGLORm (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 12 Jul 2021 10:17:42 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7CF5B610E6
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 14:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1626099294;
        bh=M7RO+RWPIWf1rQ0XqWqxE/RpS+BV7Z3JI+wL6wmiVKM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=pmLakHO3vrLY46iKPBqiAMsjDZB+ZCK1NeC8ZQRa3DpesodNuc3zbT3G9gvzlxpZd
         qXGRClOulRighbevWXdK1/FL8KdpEezSi4Svl8z+O01ay6IZ2SHv67xBvSzY5ayjBF
         LsJoqxosEe/vmBf6PV2emjnWx48vDPjFPl3g1tKUJ3izKOQHQSMfal9ecQcWHacZXM
         eTJF1vQGTHG6GGeZqIraqju0gDLs+Sp2yXj0/knwWyQcZqVlj+yqC9iVXTQSGVwK5V
         HDZQVmMter7cEItJV62mU1EUVIC+gEiLT2dxRpToepbjcYLBq9levBA83Ogdrbyobs
         JHne5Poxd+hzQ==
Received: by mail-ed1-f50.google.com with SMTP id dj21so8389226edb.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jul 2021 07:14:54 -0700 (PDT)
X-Gm-Message-State: AOAM532DZ+tjCmep9bnYfOvRLXBdm5RqyC1lEzLQj4b1ThUc0KYfKlJx
        2TRKiOoe6uT8JOiUOfVkXhWcKhpPh+FSEXaonA==
X-Google-Smtp-Source: ABdhPJwxFNeu4wAHDnUBgPJUAs8EZ3+VHvO9PoFbz+ttM23NmS8zTLIb6XxscDAS5VTuu0SP15AcETtLc6co95gJxOY=
X-Received: by 2002:aa7:c89a:: with SMTP id p26mr10847846eds.373.1626099293098;
 Mon, 12 Jul 2021 07:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210621140036.2879563-1-thierry.reding@gmail.com> <162442779339.5511.14827117243689906234.b4-ty@canonical.com>
In-Reply-To: <162442779339.5511.14827117243689906234.b4-ty@canonical.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 12 Jul 2021 08:14:41 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL3WMOrPNzF-juqL8y20dAjt0BZaZU-yLnekKKCjTqmMA@mail.gmail.com>
Message-ID: <CAL_JsqL3WMOrPNzF-juqL8y20dAjt0BZaZU-yLnekKKCjTqmMA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm-smmu: Fix json-schema syntax
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
        Will Deacon <will@kernel.org>,
        Linux IOMMU <iommu@lists.linux-foundation.org>,
        Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 22, 2021 at 11:56 PM Krzysztof Kozlowski
<krzysztof.kozlowski@canonical.com> wrote:
>
> On Mon, 21 Jun 2021 16:00:36 +0200, Thierry Reding wrote:
> > Commit 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible
> > string") introduced a jsonschema syntax error as a result of a rebase
> > gone wrong. Fix it.
>
> Applied, thanks!
>
> [1/1] dt-bindings: arm-smmu: Fix json-schema syntax
>       commit: bf3ec9deaa33889630722c47f7bb86ba58872ea7

Applied where? Now Linus's master is broken.

Rob
