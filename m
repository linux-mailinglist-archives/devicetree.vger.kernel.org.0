Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E9F52D76DD
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 14:49:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390828AbgLKNrw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Dec 2020 08:47:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389370AbgLKNrt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Dec 2020 08:47:49 -0500
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com [IPv6:2607:f8b0:4864:20::e41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 947B6C061794
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 05:47:08 -0800 (PST)
Received: by mail-vs1-xe41.google.com with SMTP id z16so4795469vsp.5
        for <devicetree@vger.kernel.org>; Fri, 11 Dec 2020 05:47:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FfZ8Hbqg5JOVMCVU7zFQQsVHbxKEp1AAS0eJ5Y7LnV4=;
        b=nsFbhL9mAsmWp/jt5PSJgGDYNEwHYlwEVqGJ2AEAoidm6SBverb74n1+1qnawRF61O
         Wm+qq9KhtiBet5cXimLfrtOXbxmTAyvRuSuQZy0kcPtlrwbi3lIRlWdfw1zmv6XkCY/j
         O1XqtKw+zE1Cx3aKWQInx+KTqEbBV5/8SGFirjTVzHbJbJNVA7UDHc5cLC3q19uA87BI
         2ElrfG/qvsWy1DnGU3q95X7jPcct1+GoMPD59/ywMAvpXBbbeb76Sf1lQMmTo+67i8k5
         VNnDEp19Jc9RMHkO2NN7lve4ZSyAdBE7ZDM8gJ2URSETW7xq0+1PvRuOMjQ7H6Rzg8jk
         S5FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FfZ8Hbqg5JOVMCVU7zFQQsVHbxKEp1AAS0eJ5Y7LnV4=;
        b=V3zBWrtIC0NZeAGDdgVJmKNPGbfUW6o+UzJH0YFC3ex7sWJzTuKr4VuASbyL12+Q+0
         fXI7euIb4C01b3fVkZV+ImhDSCCM+v8GyuYqjQBhKEPU0Jpw10fumfkiG/GjWFs7u6LM
         jyvRuNfaHrtw1QlEJY78tQX6xRjmBMj6z/4skwtIerzUzURfymTBVCG6qtzVCDfPfjsG
         tOScykUTffaDDEzYZrfqwrbWxvnh4Qt/QrC4E5YbdN7cB0RM2vhWf4Gnil6pk8xEhxcc
         /m4ld8W7TA84rulSmLdAnUTzAFD4KxE8hhKlx1G+uq2I9KCKzxRGK0peY08nDzZdLQrK
         ucQw==
X-Gm-Message-State: AOAM533E4VtYQaiNTtmBJXKc48u/dettirY0eE4cpWLven+RsT2mOyNH
        /kJ4jfokMvjyOdzcWdFbQo3CaKtN905dQco/9/3XYw==
X-Google-Smtp-Source: ABdhPJylD1P8t8sm/PPT2AIOH0OZEU0uw5g6BFwZEtaYiQ6BCREPd64WU7PMO3pXVotWlSLhn2H07FbQkf+hp2l5rd4=
X-Received: by 2002:a05:6102:2127:: with SMTP id f7mr13236500vsg.48.1607694427887;
 Fri, 11 Dec 2020 05:47:07 -0800 (PST)
MIME-Version: 1.0
References: <20201207032626.1445-1-thunder.leizhen@huawei.com> <20201207032626.1445-2-thunder.leizhen@huawei.com>
In-Reply-To: <20201207032626.1445-2-thunder.leizhen@huawei.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 11 Dec 2020 14:46:31 +0100
Message-ID: <CAPDyKFqJrb5SQ0o4cc9=Yv=GAZ3chjQoDRrKjPUUnUi__g7iiw@mail.gmail.com>
Subject: Re: [PATCH 1/1] dt-bindings: mmc: eliminate yamllint warnings
To:     Zhen Lei <thunder.leizhen@huawei.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-mediatek <linux-mediatek@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 7 Dec 2020 at 04:27, Zhen Lei <thunder.leizhen@huawei.com> wrote:
>
> Eliminate the following yamllint warnings:
> ./Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> :20:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
> :30:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
> :33:9: [warning] wrong indentation: expected 10 but found 8 (indentation)
>
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/mtk-sd.yaml | 26 +++++++++++------------
>  1 file changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index 030e3fdce49293a..01630b0ecea773e 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -17,21 +17,21 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> -        - mediatek,mt2701-mmc
> -        - mediatek,mt2712-mmc
> -        - mediatek,mt6779-mmc
> -        - mediatek,mt7620-mmc
> -        - mediatek,mt7622-mmc
> -        - mediatek,mt8135-mmc
> -        - mediatek,mt8173-mmc
> -        - mediatek,mt8183-mmc
> -        - mediatek,mt8516-mmc
> +          - mediatek,mt2701-mmc
> +          - mediatek,mt2712-mmc
> +          - mediatek,mt6779-mmc
> +          - mediatek,mt7620-mmc
> +          - mediatek,mt7622-mmc
> +          - mediatek,mt8135-mmc
> +          - mediatek,mt8173-mmc
> +          - mediatek,mt8183-mmc
> +          - mediatek,mt8516-mmc
>        - items:
> -        - const: mediatek,mt7623-mmc
> -        - const: mediatek,mt2701-mmc
> +          - const: mediatek,mt7623-mmc
> +          - const: mediatek,mt2701-mmc
>        - items:
> -        - const: mediatek,mt8192-mmc
> -        - const: mediatek,mt8183-mmc
> +          - const: mediatek,mt8192-mmc
> +          - const: mediatek,mt8183-mmc
>
>    clocks:
>      description:
> --
> 1.8.3
>
>
