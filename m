Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AD755EB486
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 00:26:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229844AbiIZW05 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 18:26:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbiIZW04 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 18:26:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 869508E997
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 15:26:55 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2B77D614B0
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 22:26:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 935BBC43140
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 22:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1664231214;
        bh=wcYE9M8ijRqSDSr5BsuRtnLvrNWnMcPeWOckcANE2CA=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=VFnBApnqclQ6KB4PGoCFA/qf0P0iPOu3WoOg+JoYM4WrZfzllS+JxxdGFEn/nsA+k
         ySoQyeTgvhpaqtNFFbJPFj6JJFKOnAiRG7L/1NkvrI/JG3vAwmejwk2lBc0D49PJ0k
         oulz0PfUqsorkBjHIwq5i9zRJ24nFg9zPiRRJXFI/Vln9ubCeX7eSVcTR8kz4LkZPn
         FAyh3BJLqSXMmL+3I1aDVDIM+NOKu0YAsBTvfHF4V4O0SIaq0Lbag6VnZgKKql8yls
         zl+s/8Go1pMEhEoRN8oSMlIyV6EJ8ZlbQSkf0n43IKGulbrahh+lsAyt+Op53ByNK0
         f/yUxxqDipTtA==
Received: by mail-ua1-f52.google.com with SMTP id s2so617256uae.1
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 15:26:54 -0700 (PDT)
X-Gm-Message-State: ACrzQf2LRxYU7dikYYwF5+QCjFShhvkrFoyjfphiRtkgXUcq3MoOVmHm
        EQtLhg1YSzCgJZeGlSMyN3RqtE63+giNvSrKvg==
X-Google-Smtp-Source: AMsMyM7E8xGJRct+CnZ9p0EHZWcWNbWQOZGN1JjsRpfZtMm4FGh/MblAQ1Zm1QXSrO7bNywYg+cpegS44/rsQWWAWNw=
X-Received: by 2002:ab0:2715:0:b0:3c9:90c2:1aea with SMTP id
 s21-20020ab02715000000b003c990c21aeamr7329284uao.77.1664231213526; Mon, 26
 Sep 2022 15:26:53 -0700 (PDT)
MIME-Version: 1.0
References: <20220926222003.527171-1-marex@denx.de>
In-Reply-To: <20220926222003.527171-1-marex@denx.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Mon, 26 Sep 2022 17:26:42 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLfLsTW-c82GgUQhv5U52tmefFBLKKT_QTtgV0Bza84rQ@mail.gmail.com>
Message-ID: <CAL_JsqLfLsTW-c82GgUQhv5U52tmefFBLKKT_QTtgV0Bza84rQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: memory-controller: st,stm32: Fix st,fmc2_ebi-cs-write-address-setup-ns
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 26, 2022 at 5:20 PM Marek Vasut <marex@denx.de> wrote:
>
> The property st,fmc2_ebi-cs-write-address-setup-ns should really be
> st,fmc2-ebi-cs-write-address-setup-ns (there is underscore _ between
> fmc2 and ebi and there should be a dash - instead). This is a remnant
> from conversion of old non-upstream bindings. Fix it.
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Christophe Kerello <christophe.kerello@foss.st.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> To: linux-arm-kernel@lists.infradead.org
> ---
>  .../bindings/memory-controllers/st,stm32-fmc2-ebi.yaml          | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Acked-by: Rob Herring <robh@kernel.org>
