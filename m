Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 611B6543E07
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 22:57:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233972AbiFHU4i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 16:56:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232316AbiFHU4g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 16:56:36 -0400
Received: from mail-oa1-x2d.google.com (mail-oa1-x2d.google.com [IPv6:2001:4860:4864:20::2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4ABEB203A28
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 13:56:35 -0700 (PDT)
Received: by mail-oa1-x2d.google.com with SMTP id 586e51a60fabf-fb6b4da1dfso10790714fac.4
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 13:56:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=uoflk9ZD42yTqlWFFFtt2B3OyFO93fCK9K2LB5UTMT8=;
        b=mspAVxZx07cISScTn8vphHUwaC9+I1lJP/rNe4vCeLEPkIMfrye3kzXFsg8y30kNUQ
         E8axWJREnFK7kgXPPdhb40iW94D8vS94Xa+Q1cGSDK+kpoAIHLcEnO9xUwW2BqULnlQt
         JgsziaHWOF+CdH+0ugkPKHjk7GSuBnZrUas/E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=uoflk9ZD42yTqlWFFFtt2B3OyFO93fCK9K2LB5UTMT8=;
        b=Nf94dXalz1dE7Zz6w8xorCQNlt4UJWMm9HqdV2pY8vH6G4+rh+1pPRgwSqc028joEg
         OR9JGXh/10QCetJT6Py1OjfdykLU/s/GUnJ0pfJ16O50pXQ39U9Y8Pnug84DWZ5aN/jq
         kzb1ZbC+00In39FWOO875zeRuNItyOU+h9qEpDKLRg/osFv/QnTCYQhlP31OD2mE0IcU
         1AUlzp85Bubbv2SzX0tKKu8B8UvRzqpv3ftHfQuUKgqmEy2Qd8n2cKWhBp3fDzze9koS
         vv6HJ0cmm5Ee3jMJk3Aos3v1j+v92iLAzzREr3fCF2FmlhBopJYOK4zWU2R2zAlFssxA
         egmg==
X-Gm-Message-State: AOAM5314U2vTGFohhXSIf8/g7MrB4Oq/y5vMUw1BjXMBsRd+stFeeqgZ
        6StSUhFOJBGgzJYvZ5zW41kdvv+KeGEk9qobN2CYHg==
X-Google-Smtp-Source: ABdhPJyIaQ3UiUYUvaiSPO44e3POU/qNgkGu5ZFpgew9NSUx88rB+R+DEX5E3FMCjq8MpcqYcFKBsJcgHwyAMwkkIzQ=
X-Received: by 2002:a05:6870:240d:b0:f1:b878:e97c with SMTP id
 n13-20020a056870240d00b000f1b878e97cmr3367934oap.193.1654721794575; Wed, 08
 Jun 2022 13:56:34 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jun 2022 13:56:34 -0700
MIME-Version: 1.0
In-Reply-To: <20220608120723.2987843-3-dmitry.baryshkov@linaro.org>
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org> <20220608120723.2987843-3-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 8 Jun 2022 13:56:34 -0700
Message-ID: <CAE-0n53UGHQXcU++xk+sXxNTg78_Na=Cw4Jjtmn_JtknW=r+5w@mail.gmail.com>
Subject: Re: [PATCH v2 02/12] dt-bindings: display/msm: hdmi: mark old GPIO
 properties as deprecated
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-06-08 05:07:13)
> Mark obsolete GPIO properties as deprecated. They are not used by
> existing device trees. While we are at it, also drop them from the
> schema example.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
