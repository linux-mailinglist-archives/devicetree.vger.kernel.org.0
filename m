Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 378F53FF17A
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 18:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346371AbhIBQdo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Sep 2021 12:33:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346372AbhIBQdf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Sep 2021 12:33:35 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11339C0613CF
        for <devicetree@vger.kernel.org>; Thu,  2 Sep 2021 09:32:36 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id x6so3886657wrv.13
        for <devicetree@vger.kernel.org>; Thu, 02 Sep 2021 09:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+rko8rH0vKgZWDO5CKa9vNIDxF09jxtMTFxE6tbHF/Y=;
        b=rtVbOnowKNO4IEPIigTOl2H7xa6sTvsUOw4AK+gMWT6UolyGCoBc/86hw6PV5wUZkt
         ZRxQ7mp2gPjojjaAkhdt34XbO+wEoQxA8xv+9qJmWeOHmwz06LyQ32WT0Q9kgbnM3Zqy
         fWBfR6wnUsu6vYInU/Kkv+FKFtFHIUKOB38zGxAtL2eq20kjKB9ZoMPHl2IuvcgPbqfL
         6niqWLp3wCFAAeFYSobQYKRi+1OBJPBfYweMuv0uwbBLs4FRcZcffswfaZuvy+qWLrCE
         vt2doQwHJdxCIfarqnqdZLMt2eJ09bAtzrK0E/MYYXZRrt/vxXnMmtC8bxSPuxveDilZ
         vFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+rko8rH0vKgZWDO5CKa9vNIDxF09jxtMTFxE6tbHF/Y=;
        b=qwYXvq0kW6ajl2evP0ufMWjJb8IjuhQfx0fJmtqwJ9LQLPv6XTSXzVlcsTOjuh6++9
         qrQNe63NJdiLhOEO/ncTnf2bQ6COgDeDeROLOuOHLHv466CZiV6UIvicxwrqlDqtvJoX
         dxyV6T9a5dMi08Ov3C9q2BaEmXrZuXUuhwBFD7pGGYZe5cIo5SQkze3TOVsT0q4JLJLj
         BPWQ/QVH3c02zKfO/SZR+QlUq3pCxzSLwtnWk+4gVz8Sa++wGsmsFnccaKvmKK5L62Qg
         pnjjcBpx4zdB0LRiicNh+2c3+5s2bHkdN5fuqkIlg+Q4ENJ0vCI2p7MkpAhN3pgwMXwY
         X7LQ==
X-Gm-Message-State: AOAM532tN2t6vwBiTUzwjcQQjFzFX3ZwTevZN8q8PlznR9AMfvzRqrSz
        O9x62MQI9SVVYFmRcCJceamNXH4VutNgGu9OsnP3Sw==
X-Google-Smtp-Source: ABdhPJxod47UB0j/BsLqS6EDdfTjS6lz+pTfnQW2dxEn0QgUg93fFNOBy3/fLQ1GJPAkac5czz8vQ+WoOxRIsSXLfCQ=
X-Received: by 2002:adf:fd51:: with SMTP id h17mr4630912wrs.178.1630600354656;
 Thu, 02 Sep 2021 09:32:34 -0700 (PDT)
MIME-Version: 1.0
References: <20210901131049.1365367-1-tanmay@marvell.com>
In-Reply-To: <20210901131049.1365367-1-tanmay@marvell.com>
From:   Mike Leach <mike.leach@linaro.org>
Date:   Thu, 2 Sep 2021 17:32:24 +0100
Message-ID: <CAJ9a7VhJ-KC3VPCbgw8nqsZNMypsEACxyZstF9hinWYL+xa-tQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] coresight: tmc: Add support to configure AXI burst size
To:     Tanmay Jagdale <tanmay@marvell.com>
Cc:     Mathieu Poirier <mathieu.poirier@linaro.org>,
        "Suzuki K. Poulose" <suzuki.poulose@arm.com>,
        Leo Yan <leo.yan@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Coresight ML <coresight@lists.linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org, Al Grant <al.grant@arm.com>,
        Sunil Kovvuri Goutham <sgoutham@marvell.com>,
        Linu Cherian <lcherian@marvell.com>,
        Bharat Bhushan <bbhushan2@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi

Looks good from a driver  / hw perspective.
As long as the device tree people are happy with the binding then this
set seems OK to me.

Regards

Mike

On Wed, 1 Sept 2021 at 14:11, Tanmay Jagdale <tanmay@marvell.com> wrote:
>
> Add a new device tree parameter, "arm,max-burst-size" to configure
> the max burst size that can be initiated by TMC-ETR on the AXI bus.
>
> Also add description of this property in coresight documentation.
>
> This patch series applies on top of the coresight next branch [1].
> https://git.kernel.org/pub/scm/linux/kernel/git/coresight/linux.git/log/?h=next
>
> Tanmay Jagdale (2):
>   dt-bindings: coresight: Add burst size for TMC
>   coresight: tmc: Configure AXI write burst size
>
>  .../devicetree/bindings/arm/coresight.txt     |  5 +++++
>  .../hwtracing/coresight/coresight-tmc-core.c  | 21 +++++++++++++++++--
>  .../hwtracing/coresight/coresight-tmc-etr.c   |  3 ++-
>  drivers/hwtracing/coresight/coresight-tmc.h   |  6 +++++-
>  4 files changed, 31 insertions(+), 4 deletions(-)
>
> --
> 2.25.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK
