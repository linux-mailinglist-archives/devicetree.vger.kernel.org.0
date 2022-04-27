Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F3B75122C4
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 21:31:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232509AbiD0TeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 15:34:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234874AbiD0TeC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 15:34:02 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75931242
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:30:40 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id n8so2457419plh.1
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 12:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nqHaRTfHThJkqhALCqIT5LeqKtw4VE1vM52q4z/IlSc=;
        b=SMZS3v8YjUqrZkSPCI7d6K3hmAKcRimgium9aZBybxcLq1tbveraUj7dWHzdXP7i0t
         xh7dWhI1nMlp1JbdH0Ge8BcDE5OInxMlN3sHeZIwCeWWp9kZz/mbkwtNxs5bys+l8bD6
         1tQRWQJyzayy6s5kujObAT5jVzswctCcB2p2S+WWRUSaL9aGNbuy6DKNXnU2kCQnCwe8
         T921ZaJZGoaSl/0JSAHrlBKheRoNZYTuQxgH0TLnwy6Z++J1to049cDDBDc+MK+k0+8K
         Ioksu8Sa1g7ylWGlxrV4PqDQP0FYRgSgKiBOEvoh5R/jI4Q6WRWSeEi/ViH4LoxwjTp6
         s4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nqHaRTfHThJkqhALCqIT5LeqKtw4VE1vM52q4z/IlSc=;
        b=NTuHb8Zod5v+pfrIxJGk5Z9+SRpmsziKg/C7VDGwNoq5fUoh2Mp/0YDnWdlwtVqL7b
         wi7SJou0CxF+WZjA9SunjNjZAbJXMoWqeaKC3LPZlnTg0qUnXtfBHw2C1P8U90zNKPWt
         P1Jqk/pf/44X8WrF6/M5mMYzXKSZMv1sEjKQyyve7yrOO7jHcWF0bs3Q/IC+qcC+2JF/
         uauu5QJOUwOC2EYmXy7Zu4Mzo6FkwKJQ5FncvT89V9v0u4LZsqo3Hb8HKYLHbBe1aJDi
         8EMR6Z10bIq8V8SQ0nnljsN6K/p+3HRa7hJ6TNDlRo1W6AtuTzxKw1nST4HHMvyLMBnR
         iokQ==
X-Gm-Message-State: AOAM530oU7KipgSsRdKa5ka4Lsx+akYNVYtmri65IBLGTvf3grGZnG/k
        1XskDmQdzHaBai78X2rhbdlAIh4ZwNFpZPJq6MMpKQ==
X-Google-Smtp-Source: ABdhPJzPt2me5zAU0/rrKiJB9unrBPzqakZtEinMjw00JI2fGizxCw95qhMp2gcDUpMIssgcgnDYOfYxVS/ePSoGLoU=
X-Received: by 2002:a17:902:8306:b0:158:ea27:307d with SMTP id
 bd6-20020a170902830600b00158ea27307dmr29744990plb.164.1651087839950; Wed, 27
 Apr 2022 12:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <20220427161533.647837-1-krzysztof.kozlowski@linaro.org> <YmmLRbb4XNmpEn1b@robh.at.kernel.org>
In-Reply-To: <YmmLRbb4XNmpEn1b@robh.at.kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date:   Wed, 27 Apr 2022 21:30:27 +0200
Message-ID: <CAGE=qrrg-9v+4o31ZGDDOZuAHMVTUbo1dNLJDcFYdi0amWeUxA@mail.gmail.com>
Subject: Re: [PATCH 0/2] dmaengine/ARM: use proper 'dma-channels/requests' properties
To:     Rob Herring <robh@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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

On Wed, 27 Apr 2022 at 20:28, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Apr 27, 2022 at 06:15:31PM +0200, Krzysztof Kozlowski wrote:
> > Hi,
> >
> > The core DT schema defines generic 'dma-channels' and 'dma-requests'
> > properties, so in preparation to moving bindings to DT schema, convert
> > existing users of '#dma-channels' and '#dma-requests' to the generic
> > variant.
> >
> > Not tested on hardware.
> >
> > IMPORTANT
> > =========
> > The patchset is not bisectable! The DTS patches should be applied a
> > release *after* driver change is accepted.
>
> There's no driver change though...

Indeed, copy paste cover letter. This FSL dma driver does not use the
properties, so it's only in the bindings and in the DTS. The patchset
can be taken as-is, without in-kernel ABI break. Only out-of-tree
users of DTSI will be affected.

Best regards,
Krzysztof
