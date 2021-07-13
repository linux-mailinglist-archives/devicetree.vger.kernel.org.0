Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06E3F3C6BF6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jul 2021 10:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234396AbhGMIaU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jul 2021 04:30:20 -0400
Received: from smtp-relay-canonical-1.canonical.com ([185.125.188.121]:33600
        "EHLO smtp-relay-canonical-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234305AbhGMIaU (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 13 Jul 2021 04:30:20 -0400
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-canonical-1.canonical.com (Postfix) with ESMTPS id 87ACC40618
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 08:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1626164849;
        bh=90RfES78KpkRVfn+LDGEBestSWCPHLKDvATyG+mU35k=;
        h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type;
        b=YWeTI36B0kgYg15aAF40wfbi3IITOo9U51Oj4LMsGAvLArUyDfzbkaFoasJ/6yPnA
         YYEZGpz2w0NHQJW9E97Uql45XcrivpwuG3KL0ZxZxMKWeaf+QW7oK6ckTyznOCBlXP
         c0gYaC/KRJ0gQpTXiy2nsA31vcq03kokCvDwBqEJnvy930BTjxFPcYpOjgPYROqT6n
         cTnyDGwhqkYS21b68SAF88kzmrcJqOfiqvSP4Adgd+63T8rbiWflZcaH9swFbBrdLE
         KmgwOrlz2Jn2ch6Y0uZfpbEYtrC9XCj1NVl3OwmL7MVc4hiaBFlmcIaVMB6q3+jIgE
         e5scM8DfOxfNg==
Received: by mail-ed1-f71.google.com with SMTP id o8-20020aa7dd480000b02903954c05c938so11527193edw.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 01:27:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=90RfES78KpkRVfn+LDGEBestSWCPHLKDvATyG+mU35k=;
        b=qpbqbaJuPWKYKCgzQQEX37Zjet5mgDl0uwAVpx0MTap5TkujcN/fQHY3rvfNz11Jmy
         CIz+X+lt6fHtRxqUDsZ4yybYQJWf6FquPk6AsyTpN9d0NeMYmQt2kboV17wmRDTgNlIJ
         pMKdCVSCuzFUUh4+lGqy6kjyr3tNjFkUPiopgz3jTRUEYnnzZx09L2CY8YRjcDF5gnA8
         W6Dp1DWg6FmYYKyAHiItWWJ4xEdxZAXFQcsswlsGP23tzQAJCtf9KHrmrRE1TjsMlKxz
         dNFgOGp2NrnlRWqVGzrOx97upueLrD7QZzjYiFB7aKbnMPPD0RRkQPjbA9KVNit3BBXP
         cyiA==
X-Gm-Message-State: AOAM531PerwzMXV4sC0fMB06UtLnmkgCFr9XJ1te7mUuQSOvY9rZo5ZI
        wosXwaQYb9jJ/kkc8Gdfui0fpaayoqP6KwfL4BVfCXvduJujUdCFyoq/LPcJ8xhyM7g/IGl2qX6
        Ox5c+5UzHyUn5IjTpd7iZYUCGJDXUDLL8DFc3lDnPwHNzAbS3V9HpUPk=
X-Received: by 2002:a05:6402:22c6:: with SMTP id dm6mr4216570edb.228.1626164849064;
        Tue, 13 Jul 2021 01:27:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx6pMwHXiAOSlFdfU7dpEd4HNiijqnguwMj60Om1zIodF74a4IJRoAK85lRX6uXsRE4r1JyfuuOAOPiOEGbvtY=
X-Received: by 2002:a05:6402:22c6:: with SMTP id dm6mr4216563edb.228.1626164848899;
 Tue, 13 Jul 2021 01:27:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210621140036.2879563-1-thierry.reding@gmail.com>
 <162442779339.5511.14827117243689906234.b4-ty@canonical.com> <CAL_JsqL3WMOrPNzF-juqL8y20dAjt0BZaZU-yLnekKKCjTqmMA@mail.gmail.com>
In-Reply-To: <CAL_JsqL3WMOrPNzF-juqL8y20dAjt0BZaZU-yLnekKKCjTqmMA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Tue, 13 Jul 2021 10:27:18 +0200
Message-ID: <CA+Eumj6hSOLJ32u5P00684BiLe3=1QztxWc9BFXWe5iQHSA9mA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm-smmu: Fix json-schema syntax
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>,
        Will Deacon <will@kernel.org>,
        Linux IOMMU <iommu@lists.linux-foundation.org>,
        Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Jul 2021 at 16:14, Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Jun 22, 2021 at 11:56 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@canonical.com> wrote:
> >
> > On Mon, 21 Jun 2021 16:00:36 +0200, Thierry Reding wrote:
> > > Commit 4287861dca9d ("dt-bindings: arm-smmu: Add Tegra186 compatible
> > > string") introduced a jsonschema syntax error as a result of a rebase
> > > gone wrong. Fix it.
> >
> > Applied, thanks!
> >
> > [1/1] dt-bindings: arm-smmu: Fix json-schema syntax
> >       commit: bf3ec9deaa33889630722c47f7bb86ba58872ea7
>
> Applied where? Now Linus's master is broken.

To memory controller drivers tree. Pushed to soc folks some time ago:
https://lore.kernel.org/lkml/20210625073604.13562-1-krzysztof.kozlowski@canonical.com/

Cc: Arnd and Olof,
Any comments on merging these fixes? They should go to current RC.

Best regards,
Krzysztof
