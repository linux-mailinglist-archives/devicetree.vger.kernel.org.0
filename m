Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DB6863A8AC
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 13:45:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230281AbiK1MpC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 07:45:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231187AbiK1Mo6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 07:44:58 -0500
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 507729587
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 04:44:57 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id l67so13134782ybl.1
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 04:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=x5L92L6sWI/+mEWBmBL3DtHPyW1jrzK/QlQTZzSwQBI=;
        b=Mygr6yQSUM5fS8H6tqebwAnMYYMV5asAEjAdIHLZWUuRsaaJh47JXIwLyq6w7kU9fH
         Dx8VY3uEtrRnPXOExf0PqEUZygw09IAuWk1vo9KEXrTEPkE5I5jNBlzcGOz7e3m6Z/TB
         qSIphXTQSA6T0gWAZoPOKVkMyaxj+QZlVMiznxElGNykjYLe00WkX3JDBxOTJ/F4KUGr
         E0dF2hVqVTZohzaqRjaqdFfnRS8fJMzUlFdSoTuNnxPetqNtaXGqJ8k2VRz2+dOmDJn2
         VDHTKCXrC9KdovNkpJnr9YnumkZBZfiF+dV2zXvMYXkpqffwCCVErvSgl+vi6F+Mluor
         W7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x5L92L6sWI/+mEWBmBL3DtHPyW1jrzK/QlQTZzSwQBI=;
        b=ioR4opkmXz0T3ckOLA+ogoWkp42fB/GFw4seDC7LznLHWiwdvTWACRM8z+LGT9zK7Y
         kW0FvGfGaGYPC/3leyXCGAj2Xabn1Hniko44vXIs84sKpeNIQ9XDlAlGLUT4WYMWnOvE
         ue1ejlpCtWTLxQHJx9kOhMXe4SpwkEy9Ui6yu6IDu4hOBLF9VxKRfl1mDuP/mANWSDWA
         xMgEojZ8qTPoiYTAKm1X2Y7egjsrU6JlfKqtqhGtWIvYMENv/ruT5DagRbPf6nfd/l50
         oi2c625Rl+P7uzWOvUoGw9Bdde588AcpRjP23owaBCwvz3K+OZHm6qeUinC71CIGv9Rk
         w1QA==
X-Gm-Message-State: ANoB5pk5IUgOFXyca9j/pb6vaSx9OEpP38qdNuQS7UKxSlBG6ODOfUCh
        lP5LEVU0Vg1xEmPMNKn+4SnfI+TXof/GEEGkxfS23g==
X-Google-Smtp-Source: AA0mqf5Sn4jHKFKdQcFa691WYR9rNCynIRXa9CGR9ccLIcawSxkCvfobdAo43wTafqOGnZNywSN2TTxO5daqjB41s2s=
X-Received: by 2002:a25:910c:0:b0:6dd:ac4a:65e1 with SMTP id
 v12-20020a25910c000000b006ddac4a65e1mr48492491ybl.288.1669639496489; Mon, 28
 Nov 2022 04:44:56 -0800 (PST)
MIME-Version: 1.0
References: <20221127181835.806410-1-luca@z3ntu.xyz> <CAA8EJpoe09FZcfVXuknmFWO5qg-iYDOBVN3=qr=DeJjvHw56Mw@mail.gmail.com>
 <f0a15b01-81b6-5c73-6c35-ce3a8c71b4ad@linaro.org> <CAA8EJppEXpv-wVAAXhZ6NiPzDGzP+evnKrT=an5esOx610D+dw@mail.gmail.com>
 <f6bb5759-453b-fa05-c6e1-f1d57abeaffa@linaro.org>
In-Reply-To: <f6bb5759-453b-fa05-c6e1-f1d57abeaffa@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 28 Nov 2022 14:44:45 +0200
Message-ID: <CAA8EJpofyGs=OEvDB5vx_odJBYHMCsry09PnjgH86bfsyo63jw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Document oneplus,bacon device
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Mon, 28 Nov 2022 at 10:34, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 27/11/2022 22:43, Dmitry Baryshkov wrote:
> > On Sun, 27 Nov 2022 at 23:30, Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >>
> >> On 27/11/2022 22:25, Dmitry Baryshkov wrote:
> >>> On Sun, 27 Nov 2022 at 20:19, Luca Weiss <luca@z3ntu.xyz> wrote:
> >>>>
> >>>> Document the OnePlus One ("bacon") which is a smartphone based on the
> >>>> Snapdragon 801 SoC.
> >>>>
> >>>> Also allow msm8974 devices to use qcom,msm-id and qcom,board-id.
> >>>
> >>> The patch itself is good. However it raised a broader question for me.
> >>> Up to now all msm8974pro devices use qcom,msm8974 as a top-level
> >>> compatibility string. Should it be changed to use pro-specific one
> >>> (e.g. qcom,msm8974pro)?
> >>
> >> Yes, makes sense.
> >
> > Would you make the patch?
>
> I do not plan to. I don't know which ones are Pro which aren't.

Ack, I'll do it then.

-- 
With best wishes
Dmitry
