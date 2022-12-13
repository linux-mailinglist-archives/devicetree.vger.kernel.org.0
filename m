Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85EAF64B222
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 10:20:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234752AbiLMJT6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 04:19:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234897AbiLMJT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 04:19:26 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D16061CFCB
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 01:17:09 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id s11so16871617ybe.2
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 01:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OrCcU/eLo13ZBVFGTuTaNxXPpehWwnnZY10XGNdHAy8=;
        b=jY8Iifm5eNOXeLtqgcNeEtLlg72Z/GFVeA7N47+JQ66xQyPDLLq20dYbg2wKPZdwNw
         iH7E1kFNGGcrazr8YZ3qPHSLlH0l7Kc//qxuQ1J8QBTu2TnB8fhHHa2vBb3W0AEgFo3k
         PFfzEeBC1lTImi6i4N02iDVgFC/qxA474cU3WCKLuPurhu3A+Jy61GfL2HziN0sA2pea
         +n9tpHRvnvPE5L0b/yXtRMr5tSeqCkRXv+toB3EI+zsdt67LXXrn1aCZH1IzdXO/CKYn
         KZo59t2aIpdTpmVDM78MDa88CjIlKJuSstU5wBAeuGRDUT/uA+3TgtxWcXP9GbydUKym
         s8sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OrCcU/eLo13ZBVFGTuTaNxXPpehWwnnZY10XGNdHAy8=;
        b=Ct/2OmGMlyx9uWNUDIM0ltgvOG9wffzXNHx6Ns0JhWrDFJS12A235fOQAbfrVRoqon
         99EX/PRB1R83XWgquQPvrYdTjndc+69gyCzOUfTegzNZoKGXlnnssetgE7h2Y5XTMfzC
         OWeVQpRXhxh5YV6ZzoVK704R6lZ0efNN8SxUMOfGrq4qsdScHOYv4jv9ErlmGtEfRAk4
         oTjI2SWGA37gf4Afr0SLD+PvVUvxAfzZkYeu3fTiq6JH18pL9Avy6Z0ihNvUdUFyxO5x
         DfhkKkZup0VlpNPlmZ+RshBjafdgPYmkEos6Wz6v1YeE5Xqdmf7TJRBMesNO2B8JuJRs
         deYA==
X-Gm-Message-State: ANoB5pmCtuX7fZH7GIDpPflUx/Kb3cTxdcMHGlRtrwjHm1KQc6xTkGpi
        bScgZjTQgkDfd+/y1kNKUC6C9Lx3PW8YNbrdWGdOyg==
X-Google-Smtp-Source: AA0mqf7NaYcP+HSZvjgXCfXIqcmGoJ7EEDAPulojvkUQ4Lxe9RcBpGs+kV9gyCL2iiuFo3IeiBvYrEt9jY3WxC3+i4I=
X-Received: by 2002:a25:cc0b:0:b0:6f3:f978:efaf with SMTP id
 l11-20020a25cc0b000000b006f3f978efafmr56605874ybf.596.1670923029086; Tue, 13
 Dec 2022 01:17:09 -0800 (PST)
MIME-Version: 1.0
References: <20221205105931.410686-1-vadym.kochan@plvision.eu>
 <20221205105931.410686-4-vadym.kochan@plvision.eu> <18cf4197-adce-3e47-7802-80b0d078368b@intel.com>
 <VI1P190MB0317641905664AFF51F9F4EA951C9@VI1P190MB0317.EURP190.PROD.OUTLOOK.COM>
 <ce870974-3e4f-107f-2047-89dcaebff1a2@intel.com> <VI1P190MB0317A616976EC99EA0C44F47951C9@VI1P190MB0317.EURP190.PROD.OUTLOOK.COM>
 <69dd8714-4be1-6b1b-fa07-04c790a6c6fc@intel.com> <VI1P190MB0317DADE7450282444BFED32951C9@VI1P190MB0317.EURP190.PROD.OUTLOOK.COM>
 <44f642bc-8810-80d9-368a-15994de7f50d@intel.com>
In-Reply-To: <44f642bc-8810-80d9-368a-15994de7f50d@intel.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 13 Dec 2022 10:16:57 +0100
Message-ID: <CACRpkdZhjrze4q39SPjATESRCQ_RW4XJn1a1SMDy-hApXu9VEg@mail.gmail.com>
Subject: Re: [PATCH v3 3/3] mmc: xenon: Fix 2G limitation on AC5 SoC
To:     Adrian Hunter <adrian.hunter@intel.com>
Cc:     Vadym Kochan <vadym.kochan@plvision.eu>,
        Hu Ziji <huziji@marvell.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Elad Nachman <enachman@marvell.com>,
        Chris Packham <chris.packham@alliedtelesis.co.nz>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 12, 2022 at 9:43 AM Adrian Hunter <adrian.hunter@intel.com> wrote:

> >> Right but I guess I meant what about 0x3_00000000..0x3_ffffffff ?
> >> Isn't that also in DMA_BIT_MASK(34)
> >
> > Yes, you are right.
>
> So it would fail in that case?  Is it possible to use devicetree
> reserved memory or some such, to set aside 64k for the bounce
> buffer DMA mapping?

Yups spot on, reserved-memory can be used along with the kernel
CONFIG_DMA_CMA to achieve exactly this:
Documentation/devicetree/bindings/reserved-memory/reserved-memory.yaml
kernel/dma/Kconfig

Yours,
Linus Walleij
