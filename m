Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 13D5F50903B
	for <lists+devicetree@lfdr.de>; Wed, 20 Apr 2022 21:17:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344512AbiDTTUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Apr 2022 15:20:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351834AbiDTTUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Apr 2022 15:20:04 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2CD8BF4A
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 12:17:16 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-e5c42b6e31so2983179fac.12
        for <devicetree@vger.kernel.org>; Wed, 20 Apr 2022 12:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1TCOhglIGNgOTRPzEMPv22iNf7fy3Rv4APS9ZnU1ZjQ=;
        b=Y7PF7PZmbKiZEOcuh53wZ5s5U4XZvi4C9SUp9uAOPuM9Nd3jxF0g6Wn1C6g7udlzzJ
         5mZoXebGfzee8t6mClwtLEmfeE3q7cO7ZoHgMA7kxQqApBf9KX97hNEIuLJuWOtsmukv
         cqGtGT4I2CIlAZN7WGGA/okNy/9GTaEAUnf06nf4opWJV6e4knXQ5KirfJak5PrgZI3/
         ikum6xC/i9L8xTOgaLuHOCAtOdVPoKihz5IRhuWeqC1/SNlGw5hekFmaiEMbRzyxdyl4
         jJwBZXqN87mTp5C0lctA4FRMhxrKnIcj/FUfh9F1L2Cv4alF5XxkgIMfdKXC5lq3aWB6
         VMRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1TCOhglIGNgOTRPzEMPv22iNf7fy3Rv4APS9ZnU1ZjQ=;
        b=pmgR4l7v1xja3rHbzy2d4Y4d8g3KABG4C+pK5XcMHq50wWOKFeBqDTXUKJhaEMsXET
         E2Oo5RJSwIy/QHseOT6WHWFFenjO+9scpEGP+ft/RnaYziNTOiZb8k71ix4AbGtOSxWT
         d0LumoAS5zUjgXXvoApI2PK2TJSvkE+MjLd421FNK0wB6GGCtlkMsHiA5sXbKpJY8Tfk
         bPp0lV7vgzYXRLaztm5jIRvR2Uwu9EAq57+wuyKfmo2NqWCI4rpiofnoTi9QEOjNPiMo
         ypbbBYZEHCTlPSccO7yaGGbZcP+4v0Je/yryrA+Y0zHZwepYZxb+hUpb3VAXEuma4gRR
         O/ZA==
X-Gm-Message-State: AOAM533G6KLZF6mYBBbHlrkrImJwOYSk8VAe4Nn/TDQCEF2sJtEKMYCW
        IifDekiYXy3cHMYB51+KlzjzF3q97cofYB0IxEtGNw==
X-Google-Smtp-Source: ABdhPJyjiEM+F7UrwLUCs8qvqdo9Zmqdb6JokHc7sEV/Yazs36hKuO9v8MlsW9+iYXtnbXtJeKjY84S9iXLG3vhl7wE=
X-Received: by 2002:a05:6870:2156:b0:e5:bb8d:f6e3 with SMTP id
 g22-20020a056870215600b000e5bb8df6e3mr2280187oae.48.1650482236169; Wed, 20
 Apr 2022 12:17:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220410175056.79330-1-singh.kuldeep87k@gmail.com>
 <20220410175056.79330-7-singh.kuldeep87k@gmail.com> <CAH=2Ntx1D8C6xu+RysO0o5OkG5kPMMJ-Xr+B-udLtizY+4HiaQ@mail.gmail.com>
 <20220418192012.GA6868@9a2d8922b8f1> <1965ed9f-0258-cd28-f1c3-ef87272f6c03@linaro.org>
 <20220420132955.GA63070@9a2d8922b8f1> <20220420153316.GA63129@9a2d8922b8f1>
In-Reply-To: <20220420153316.GA63129@9a2d8922b8f1>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Thu, 21 Apr 2022 00:47:04 +0530
Message-ID: <CAH=2NtwxX5Gj9bD3ymN0bJcqNnwi-pr2sDkm1s8iBOaMFJRvWQ@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: dma: Convert Qualcomm BAM DMA binding
 to json format
To:     Kuldeep Singh <singh.kuldeep87k@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dmaengine@vger.kernel.org
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

On Wed, 20 Apr 2022 at 21:03, Kuldeep Singh <singh.kuldeep87k@gmail.com> wrote:
>
> On Wed, Apr 20, 2022 at 06:59:55PM +0530, Kuldeep Singh wrote:
> > > I appreciate your work Kuldeep, it is important and valuable
> > > contribution. It is sad to see duplicated effort, I don't like it for my
> > > own patches either. In general, I believe the FIFO approach should be
> > > applied, so in this case Bhupesh patches.
> >
> > Yep, I also agree with FIFO approach w.r.t contributions. But one thing
> > daunts me here is the waiting time with latest revision, it's too high.
> >
> > Anyway, Bhupesh had more than BAM changes and was already on v5, I can
> > give benefit of doubt to him and won't argue much here.
> >
> > Bhupesh, feel free to include my armv7 based dts patches in your series
> > otherwise you might stumble DT checks warnings.
>
> Or do you want me to keep my changes separate? Sorry for spam.

Please send your changes separately, as my patchset already exceeds 25
patches or so in the current form.

Thanks,
Bhupesh
