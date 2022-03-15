Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7AD34D9A64
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 12:30:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347915AbiCOLcF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 07:32:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347876AbiCOLcF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 07:32:05 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 684654F9CF
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 04:30:53 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id x15so28403026wru.13
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 04:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=EYYuHyt2hfMuLYpzRmaFvZ7rGRg3CV+dVi1SACxyN1g=;
        b=J+LJeudlY3t+gwvfFTXzkdnQpLh2Vj8tw00WlB0O9qqa3aPI4alG1186vge0CJ1IOV
         tpITaGr5NwuM2R+iv9cPpweCc82A23MBdrOVmLYETVIl0SV17Zr4mMdY5bpAMzDa9f8O
         tAJyITYew27Svl8gPkJpzVpPuzyJMw5yxjWYl86u8b4reveTiktUBjkpXPhDP6NWf90T
         GHMBosdezWzCAav4lH3BWQB/bR5PYByglm4MZjDqSk/2dYbYy1PizAtYRyuc1HWV7OFe
         xWXMuaxCQUaQthNaKz59LSa7/1XXgTNRhvn88YxhxerCHMDcw708MaXnfYH0aU/ZmmeR
         q2GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=EYYuHyt2hfMuLYpzRmaFvZ7rGRg3CV+dVi1SACxyN1g=;
        b=NuYesV2+FAV+uJHJFjdGKyMwg6LWWUW87ueMH/WJzf4E86OV/1aYHo6fdBwKV7/lTE
         CEbvxWuLE8Xa3X+ONzZd4iw2xoxThsAKgDppHBlDZa8tYSGjvKWTN9JyT+RW8RD498uI
         XG+PHBHM92MhQIq9DO2pamIo/bGCsG8ZbX2X9DQrG+DuuLSa3EUJ7WTUeUPZEorXWmkU
         dzYYntKOwl8as+XhjSB+7BP3wj+B+BUkaOoUGHjolR0wfxIXw/KbJjRC47vT+2n5tWvI
         IrS3jF+1jR6bs5sR+qM5VO7uL7kPyWeXINX9oSZ6BAtZ0fIW8zmE5Xpy71IN8TYO3JXj
         QShA==
X-Gm-Message-State: AOAM532RleviN3zlZI20mrO4KDXcFuDCgWYol6AcmJifPp+U4tRYk/AE
        TQGU20r4hKpMxnF7P+ybyp2A0A==
X-Google-Smtp-Source: ABdhPJz9/IHvVKOJyJQXyPB3LrlixMC2NTiqc9RfTL3qZ+GtdUt7xPPjp89EHJ0DeLXO6RZC/i52xw==
X-Received: by 2002:a5d:6c62:0:b0:203:9579:c3b0 with SMTP id r2-20020a5d6c62000000b002039579c3b0mr14973421wrz.139.1647343851982;
        Tue, 15 Mar 2022 04:30:51 -0700 (PDT)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id o41-20020a05600c512900b00389d8c3e2b9sm2143181wms.15.2022.03.15.04.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 04:30:51 -0700 (PDT)
Date:   Tue, 15 Mar 2022 11:30:49 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>
Subject: Re: [PATCH 1/2] dt-bindings: mfd: Add ChromeOS fingerprint binding
Message-ID: <YjB46Sq3IwvgR8MB@google.com>
References: <20220314232214.4183078-1-swboyd@chromium.org>
 <20220314232214.4183078-2-swboyd@chromium.org>
 <e7f9466e-03c9-7754-0dc6-a04823d1047a@canonical.com>
 <YjB0JOKysPpg2KGF@google.com>
 <9ec3c26a-3b85-4bea-5a5b-de9ac570cfca@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <9ec3c26a-3b85-4bea-5a5b-de9ac570cfca@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Mar 2022, Krzysztof Kozlowski wrote:

> On 15/03/2022 12:10, Lee Jones wrote:
> > On Tue, 15 Mar 2022, Krzysztof Kozlowski wrote:
> > 
> >> On 15/03/2022 00:22, Stephen Boyd wrote:
> >>> Add a binding to describe the fingerprint processor found on Chromeboks
> >>> with a fingerprint sensor.
> >>>
> >>> Cc: Rob Herring <robh+dt@kernel.org>
> >>> Cc: <devicetree@vger.kernel.org>
> >>> Cc: Guenter Roeck <groeck@chromium.org>
> >>> Cc: Douglas Anderson <dianders@chromium.org>
> >>> Cc: Craig Hesling <hesling@chromium.org>
> >>> Cc: Tom Hughes <tomhughes@chromium.org>
> >>> Cc: Alexandru M Stan <amstan@chromium.org>
> >>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
> >>> ---
> >>>  .../bindings/mfd/google,cros-ec-fp.yaml       | 89 +++++++++++++++++++
> >>>  1 file changed, 89 insertions(+)
> >>>  create mode 100644 Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> >>> new file mode 100644
> >>> index 000000000000..05d2b2b9b713
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
> >>> @@ -0,0 +1,89 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/mfd/google,cros-ec-fp.yaml#
> >>
> >> Why is this in the MFD directory? Is it really a Multi Function Device?
> >> Description is rather opposite. You also did not CC MFD maintainer.
> > 
> > A lot of the ChromeOS Embedded Controller support used to be located
> > in MFD.  There are still remnants, but most was moved to
> > drivers/platform IIRC.
> > 
> > Please see: drivers/mfd/cros_ec_dev.c
> 
> Yes, I know, that part is a MFD. But why the fingerprint controller part
> is MFD? To me it is closer to input device.

It's tough to say from what I was sent above.

But yes, sounds like it.

We do not want any device 'functionality' in MFD ideally.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
