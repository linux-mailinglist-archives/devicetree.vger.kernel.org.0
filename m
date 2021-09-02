Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 87BCF3FF157
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 18:27:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235934AbhIBQ2m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Sep 2021 12:28:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234786AbhIBQ2l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Sep 2021 12:28:41 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 300F7C061575
        for <devicetree@vger.kernel.org>; Thu,  2 Sep 2021 09:27:43 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id u9so3881394wrg.8
        for <devicetree@vger.kernel.org>; Thu, 02 Sep 2021 09:27:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cw+aX6NyiiKZvuCxCxL1xwJWCn64zlbFG4e+28oP6ac=;
        b=yWGCIrZYQZEezX9g3+I7leIZ9F5xwvZBESGZlfdIpj2uPbl+hGCgX6SwNOpa1GiGlT
         VTXlk5c4GRUbjAWvYXL6+GfBiZRx7Rg64/ePLW9AUZqN/4u6g13CXPwdLC0TvtQIhy/n
         iJy81AZvmjxPzyx2ep2I/IRLeRlPi4P1VLHuE+Zp1Ap1hqVZUNtG7MizVnVU0NPDaMGh
         Rvem5eDCFyKBHpPwst2dxEciWHNvY5tfisd2QNaNPao7smlcOiqRdaXqIWiss00SM8HY
         PI0jgcHcnO6/hC/R92dArUoRvuBQfKaQbft0l9eNqhNwummsuA5TMyf/vPxldA483fdD
         ssnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cw+aX6NyiiKZvuCxCxL1xwJWCn64zlbFG4e+28oP6ac=;
        b=pIJpqfKAjVV5Pxjvygpcfq3BYviC3E4kf13ZI35YvmoeaiD1qo2qpqKxCHZYuH73XN
         iYCU9lCDblSHipQhseWko4v0Zs6qTirsSM+enXwBbv6NV/1/jQzvMqromt7FYAHl+CkU
         kRtqL4h2Ch0fvJGINaTw77oBsARBJpKgFGPjHU9W8LVW3vOQpdPULDOgx9vyLorVaSNG
         0emOlFdtS7jWdKyMmkWmUSNHmKSnCkWUgQ/baQ/Pui2qusAxJUDPn2efqhFYVFL2/c0i
         gN6qb0PcodO8K44jD1TRpHVDF51PV6TGqvGw8P5sadLSJWKkdkZtBnh0TbwUShW5skrJ
         +TRw==
X-Gm-Message-State: AOAM531aKqMiMwmAYmKavGe2ecqXYwr8sYxoDSH4wOZDD9vXEB16COuf
        w/lkqQf2ntjKTAWx8DQ/so/uKI/VXHCNgMYb/kwd3A==
X-Google-Smtp-Source: ABdhPJwBRbj0wryOX8mcPIXWdxTuSytpxjVRZuShfT7rsNWhPhE8HTEOX+C5RGVPtCeDZtVeUKIeyH7Lt8wgipd9wjA=
X-Received: by 2002:adf:9e49:: with SMTP id v9mr4703958wre.39.1630600061786;
 Thu, 02 Sep 2021 09:27:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210901131049.1365367-1-tanmay@marvell.com> <20210901131049.1365367-2-tanmay@marvell.com>
In-Reply-To: <20210901131049.1365367-2-tanmay@marvell.com>
From:   Mike Leach <mike.leach@linaro.org>
Date:   Thu, 2 Sep 2021 17:27:31 +0100
Message-ID: <CAJ9a7Vhh_0_D9_59At38D-okpLkARWmTpq=U6K=eRTEzoOEhMw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: coresight: Add burst size for TMC
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

On Wed, 1 Sept 2021 at 14:12, Tanmay Jagdale <tanmay@marvell.com> wrote:
>
> Add "arm,max-burst-size" optional property for TMC ETR.
> If specified, this value indicates the maximum burst size
> that can be initiated by TMC on the AXI bus.
>
> Signed-off-by: Tanmay Jagdale <tanmay@marvell.com>
> ---
>  Documentation/devicetree/bindings/arm/coresight.txt | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight.txt b/Documentation/devicetree/bindings/arm/coresight.txt
> index 7f9c1ca87487..7971f8dba2ee 100644
> --- a/Documentation/devicetree/bindings/arm/coresight.txt
> +++ b/Documentation/devicetree/bindings/arm/coresight.txt
> @@ -127,6 +127,11 @@ its hardware characteristcs.
>         * arm,scatter-gather: boolean. Indicates that the TMC-ETR can safely
>           use the SG mode on this system.
>
> +       * arm,max-burst-size: The maximum burst size initiated by TMC on the
> +         AXI master interface. The burst size can be in the range [0..15],
> +         the setting supports one data transfer per burst upto a maximum of
> +         16 data transfers per burst.
> +
>  * Optional property for CATU :
>         * interrupts : Exactly one SPI may be listed for reporting the address
>           error
> --
> 2.25.1
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK
