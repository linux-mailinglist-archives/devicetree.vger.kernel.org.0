Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B07B67E5E8
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 13:58:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231130AbjA0M6o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 07:58:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232369AbjA0M6n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 07:58:43 -0500
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 510927D2B3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:58:14 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-506609635cbso65763387b3.4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 04:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Vh+bKXtdb/z1QCPxI2/PQtGdcBrzsfUgycixwIlm1Is=;
        b=Rr8xhv/OSS7204WgMEKkwF53NcpYDuZMgCQvnk07CQgUmvxNYUMA1RASA9ajGe2IUm
         PGUHbdjtv2Rxm0kppk9PehUhB8HOQE84PDOOidRDcJnHYDTgyjf+cpH98vOqAok2zNb1
         D+nluFpWnwX6ZTnIy75oPmz0VgkhtWTs/aTq+WlyFKMvwLErBewvb8O2QqnwUH8prP10
         7JQKsz37fibUYPXt59nDJnw8tr4saHruJxiDb3vmnk+5PSX5EXsUDydoexGlmMJNNvAY
         XNZeBoaxWxT+BKQK5fxGD+oeCTp8bNrHV5fqp3nlV4iAU7IzNrh/McMlxTE4p28Ja3Os
         /SHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vh+bKXtdb/z1QCPxI2/PQtGdcBrzsfUgycixwIlm1Is=;
        b=oGHeq516C69pAsqMybhmaz4so7KVdVVm1ANs9y6BBQft+7ruEgBKRUYQmLGVCmZJ0e
         SsGNxkjpIS8vq9zPiTKIalEQm7UmAbAtkRFlb/B/EF3afHyTDvt6ISrUXMagMbXz0lHC
         sGQbDJg+Nnv5+vdF3oFzxTAAelPg1MKdl5A3YUjrNPy4VEgaUOmC26CkGzONEtIRRFGr
         BD0tgViMxNazVHD55/cV9yGkA2ERgHQIazPa1J5RAEGhFxDufVHbKABlSqvdIsXManN9
         RmjwBO27/52W6dbZ82iNEarJQmaDUnBymCzKNmTpiW6a+EhqDjukRi3zHvb506eFx6nn
         +zEQ==
X-Gm-Message-State: AO0yUKWOPcg2T5bLkw4fLlGgiGaSerigWkjQA/6Xx6SDa4PWSBMhSWiR
        X0yCE4ugh4r4TpQfJePDMT4qvuSds0hm68z4n9zuUvCArKH0WQ==
X-Google-Smtp-Source: AK7set/pmEFwy14DSxUIoFhgRvUHxwHId97MCz3n4bGfCrxDLXaTZoxTOHGysbJaigoBiETZhxOz45r0mMfJ1dv4PhI=
X-Received: by 2002:a05:690c:706:b0:506:6952:b9c9 with SMTP id
 bs6-20020a05690c070600b005066952b9c9mr1266249ywb.477.1674824288171; Fri, 27
 Jan 2023 04:58:08 -0800 (PST)
MIME-Version: 1.0
References: <20230126-gpio-mmio-fix-v1-0-8a20ce0e8275@ncr.com> <20230126-gpio-mmio-fix-v1-1-8a20ce0e8275@ncr.com>
In-Reply-To: <20230126-gpio-mmio-fix-v1-1-8a20ce0e8275@ncr.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 27 Jan 2023 13:57:57 +0100
Message-ID: <CACRpkdYyRXx-Q4NYEUzpvmBEvyW5b9TVw7DngphhV56VJJCESw@mail.gmail.com>
Subject: Re: [PATCH 1/3] gpio: dt-bindings: add new property to wd,mbl-gpio bindings
To:     nl250060@ncr.com
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Niall,

thanks for your patch!

On Thu, Jan 26, 2023 at 11:18 AM Niall Leonard via B4 Submission
Endpoint <devnull+nl250060.ncr.com@kernel.org> wrote:

>  Optional properties:
>         - no-output: GPIOs are read-only.
> +       - no-input: GPIOs are write-only. Read is via a shadow register.

"Shadow register" is unclear technical lingo.

Just write "GPIO output registers are write-only"

DT bindings are OS neutral, the fact that Linux and other OS:es need to
cache ("shadow") this value is an implementation detail.

Yours,
Linus Walleij
