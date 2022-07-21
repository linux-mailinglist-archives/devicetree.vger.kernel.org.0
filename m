Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 078BE57CECD
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 17:24:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230439AbiGUPX7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 11:23:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230136AbiGUPX6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 11:23:58 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBDD31FCE3
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 08:23:57 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-2ef5380669cso20811227b3.9
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 08:23:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TqcBUj6RpDv4Q/dkUaR18hTOJrvkDfY07f4ujZ79jTs=;
        b=iz5GwhyGW12u3bXBOkkKtH2Pk83XhRkSEFoiGBeLYzMkJC4zlVbwzrsFwQM4V7XTkn
         btBqklKV5E3VfJbu0qnNfqmTn6Fy4bvjUFqeLmAkxTO8JOEdzMWLwAX2vTF9lpVyhk+G
         xgxNGdQA/HtNVWX9YQlcscM0lvNU5oL8wou15C41nBZLNGV6tcjoPL0Shx7BVtjAuNA8
         IJA8TjKZRd/Jc0fWqBOXlSTjNVWRk5/qZgq+waqA54Wt5W6eTh0Sf38o/KeVheib4ApU
         Z9WwC4I292oZmvM1wiFOgsZ09BTl+XyI+uLcKrES7PeubGDsYIfKWgTqnxU/YgZWK/6N
         W2TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TqcBUj6RpDv4Q/dkUaR18hTOJrvkDfY07f4ujZ79jTs=;
        b=1Ka6MaI2ci4LmS+JlwvcBG/83nLx4WbwTUWpz+CzCbqAoVzYbxeVEWZ49uw1fIyDKG
         mmquRrDb6frLkbCMNNLPrIzXDiAEU9IqmkJUv7w35et3wbCJCskJwOBanyGuYV8PmXOW
         QsbrJO5wVqGi7I+cHx4DaIgPIfxoNMnjdDGtRq7a6m8QGqVW1DAmilt0TpoghFqKDU4j
         WZRHzLcSq4zQepRtlaDFoWLzbqOY7V7vHCAbG50swncmW9tCxIsrHluYa5NmeMIZcGib
         qDCckGC+PDrmaco32blTlKXQ5x7qSYE0SLrDH/g+N2kCtAOWmCuqzTk8cSSV+Dl5rGQz
         GBtg==
X-Gm-Message-State: AJIora8NJFun8z/bnYTCwbKyxb/QwsBNGLB89cyDoaUtwbMyKD4BLDxM
        V8jnSVcEbz7qpSJJizROeBEqlvhTnn4ocQbLzqE=
X-Google-Smtp-Source: AGRyM1vvUdYZkmer6vKTQW8CPRIbEszqtSu4T8TcssWCacVtxuFpmLZxxZP6vltu/vNaptAk3jRCtPQUFYzNjerIwH4=
X-Received: by 2002:a0d:d909:0:b0:31e:6adb:95f4 with SMTP id
 b9-20020a0dd909000000b0031e6adb95f4mr8833458ywe.355.1658417036952; Thu, 21
 Jul 2022 08:23:56 -0700 (PDT)
MIME-Version: 1.0
References: <CA+V-a8uBSDOqcgqfO2YWNKwoRsKdMcK+yi5DzFEWrP0gJOMWig@mail.gmail.com>
 <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org>
In-Reply-To: <5c9db23e-1706-a638-360e-46c8cb4b5f9a@linaro.org>
From:   "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date:   Thu, 21 Jul 2022 16:23:29 +0100
Message-ID: <CA+V-a8vp7agGmHEJyLSLm973ddOs-cD21jRbwFnjSfc7DxrjrQ@mail.gmail.com>
Subject: Re: dtbs_check issue
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Thu, Jul 21, 2022 at 4:12 PM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/07/2022 17:07, Lad, Prabhakar wrote:
> > Fyi keeping even a single SMARC board in arm renesas.yaml schema I see
> > dtbs_check failures.
> >
> > Any pointers on how I can get around this issue?
>
> Few months ago:
> https://lore.kernel.org/linux-devicetree/cf7728fd-b5c8-cd3d-6074-d27f38f86545@linaro.org/
>
Thanks for the link.

> Although Rob admitted in the thread this is in general allowed
> configuration, to me it is still confusing - the left-most compatible is
> not the most specific. Non obvious, confusing and it seems dtschema does
> not support it?
>
It looks like dtschema does not support it.

Cheers,
Prabhakar
