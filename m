Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1C2756B02B
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 03:53:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236971AbiGHBae (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 21:30:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46810 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236970AbiGHBad (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 21:30:33 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A821572EEB
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 18:30:32 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id l81so25421732oif.9
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 18:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=mGR8qW/qcR3tV8N518zXTOtY5AVTv6L2Gv4vwTMvX2c=;
        b=Ue0qNkMJastmFq+YudyeYt2KIe+niHTqyrivhnn+9BmvMSOmjJzkOt/UBQWfBf2b53
         cC1+vGvZvdYF516WCMQwCHxWN3Q/j7JhyJOecljID8oFeNWFvSQkgWYcRvUfp8fhypoT
         fqeCky+as3DBGScPTDOT6uHMYWv6Qge4d41+Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=mGR8qW/qcR3tV8N518zXTOtY5AVTv6L2Gv4vwTMvX2c=;
        b=1iUebL6kKD0EglwKt+EPwpKBW2BeMfwqm59bN+oQuI60v8zjE5vMElkX+a0J2NPcVJ
         EpcXHktjMnFqarZyu5IHFU4RWDZSyIyW+Hl1YQtrdsJuaN8+4qv1BPDP4gZPb8KIX3tz
         2q3R7MiEhvdWuKxIByjBc1ATl+DPTHwUdwyBoJlkBjmcQ7mJQH3rq+GgAzquw3YzpP6h
         CfW1C++XCfFVXARcna7FHZ/eEQ+ZBxXLRh9HLBMGANa8c39kdt2tH3dzKgUWRoliStpB
         Z0fOD2G7sg/R0gQdJDR4mTkEvypoOavFioBmSQ74+ggktsV7fIdIRSCRzUVEEuKJOCFq
         x4Dw==
X-Gm-Message-State: AJIora9rLLo0Hb00OjnDL8CwKi98944ocPmHa5ahL8c9s0Ary9ko8Nyd
        R83zIoGPzydyXm6wHg4iIi76vHuuFudOZZ+p4Ud0+Q==
X-Google-Smtp-Source: AGRyM1seFnmCmW9IUueoNP90VpqA1jwKAoGBliX7GDJogEyAv6R8J1FU+8CcIIRVxUr4LlXHPKu47wp3cT8ZmPpjRSE=
X-Received: by 2002:a05:6808:171c:b0:334:9342:63ef with SMTP id
 bc28-20020a056808171c00b00334934263efmr498377oib.63.1657243832038; Thu, 07
 Jul 2022 18:30:32 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 7 Jul 2022 18:30:31 -0700
MIME-Version: 1.0
In-Reply-To: <20220707213204.2605816-5-dmitry.baryshkov@linaro.org>
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org> <20220707213204.2605816-5-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 7 Jul 2022 18:30:31 -0700
Message-ID: <CAE-0n53ES+cLCWpd_T1bohybNrw4V7ntj87AbsesQJcmFedcgw@mail.gmail.com>
Subject: Re: [PATCH 4/9] dt-bindings: msm/dp: add missing properties
To:     Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-07-07 14:31:59)
> Document missing definitions for opp-table (DP controller OPPs), aux-bus
> (eDP AUX BUS) and data-lanes (DP/eDP lanes mapping) properties.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
