Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0D045A1A85
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 22:45:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbiHYUpR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 16:45:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231658AbiHYUpQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 16:45:16 -0400
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com [IPv6:2607:f8b0:4864:20::72c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D73E13DFA
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 13:45:14 -0700 (PDT)
Received: by mail-qk1-x72c.google.com with SMTP id g21so16165681qka.5
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 13:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=JSdjfSerwO9g3FetOi7P2/z3DUhKbfEFMVDhVV6tWU0=;
        b=QwTxLxiLBlzJmnpR4e5JEgqt2ejJY07csEDIYEFOKyxGG8zoSOVOQJwlxOuHZ5frEt
         JTXlELuo6jb8ZoEpTAaNbc0NUs2IMgYOwyN0DTNm2UQPyyEdAvVZMnVVizGw2ECi3f8S
         i2+gcxgq1DocFRWxm6XC/9VViqnzDs/YGI8knWlOQTUezobvptwaAQXlwux87HUyXoYX
         fUVtBPrbmNdRMh9jCwAGxa0akKcKCFrbzbnllbiNmqXcqtJJTLECllEh8mhy8S5eRckp
         HS+4WzBG0sXXMP6Exo9g8nyR23Me8b4FfTr3U0V0MCckQkjX19lokUHv/6KT33baTmO2
         pyEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=JSdjfSerwO9g3FetOi7P2/z3DUhKbfEFMVDhVV6tWU0=;
        b=4jMwJ+XEVIwCqxXqwbWyf1NESZtM+1xspLzy99U0El0s27lwWzVIqU1oAL3ieVKfMo
         ls2u2JkbY4AmVs6Z6go0Pe2VJw0q9QIW8rX+pFHX6Bba9v8JyVVy/8MwxOiDkU2jx9Ie
         2x6Z5VUFkuiRmRZOHRLBQ+12ROJIO8txW+qGwur+jAEYuf8vhLMlW1HTGR/rHHKgI9Jl
         t0Mvi35ro3kzszJR7ffIWpzCD2ZLq9+3NACGMrDX1itGEdNnz/V+lBcOlsBpUCsS8lJY
         fy/ft5l3/9QAbZ6p3ls0t5LmmtbJx/jnhmmNf/CHwIqYpG448UXha5xJLkJSdV7UB3CH
         0+SA==
X-Gm-Message-State: ACgBeo32XvHrlnj73225r/YZBf581qRXYBZ8iWCzzt9TXB8XeOi6fhrW
        bpqNGgvs4PZ0KkKohXd+IhL8QWS2lionqivsqxRv+eiJG+E=
X-Google-Smtp-Source: AA6agR59SBka8UoNuAgg3yQp3xn9OsXleeXOcLXhYq5qifIsMU113ZdZhZAiLqMuR+VCW+SW/t1ph6ZO1ZtCVG0UVnU=
X-Received: by 2002:ae9:ed0a:0:b0:6ba:d20b:1002 with SMTP id
 c10-20020ae9ed0a000000b006bad20b1002mr4454602qkg.30.1661460313180; Thu, 25
 Aug 2022 13:45:13 -0700 (PDT)
MIME-Version: 1.0
References: <20220825095103.624891-1-dmitry.baryshkov@linaro.org> <20220825201148.GA1607980-robh@kernel.org>
In-Reply-To: <20220825201148.GA1607980-robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 25 Aug 2022 23:45:02 +0300
Message-ID: <CAA8EJpptkjYVcz+CtLmYHk0gdqXfGPDJaS5XJtJcQNs9m4ZGBw@mail.gmail.com>
Subject: Re: [PATCH v4 00/10] dt-bindings: display/msm: rework MDSS and DPU bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 25 Aug 2022 at 23:11, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Aug 25, 2022 at 12:50:53PM +0300, Dmitry Baryshkov wrote:
> > Create separate YAML schema for MDSS devicesd$ (both for MDP5 and DPU
> > devices). Cleanup DPU schema files, so that they do not contain schema
> > for both MDSS and DPU nodes. Apply misc small fixes to the DPU schema
> > afterwards.
> >
> > Changes since v3:
> >  - Changed mdss->(dpu, dsi, etc.) relationship into the tight binding
> >    dependin on the mdss compatible string.
> >  - Added sm8250 dpu schema and added qcom,sm8250-mdss to mdss.yaml
>
> My scripts tell me I reviewed these, but I don't really follow what's
> changed.

Previously I used the $ref for the mdss child nodes (which resulted in
errors for disabled DSI PHY nodes). These were replaced with binding
dpu/dsi/hdmi/phy nodes using the compatible properties rather than
using $ref.


-- 
With best wishes
Dmitry
