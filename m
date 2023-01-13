Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35B2966A4FA
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 22:18:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231356AbjAMVSP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 16:18:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231361AbjAMVR6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 16:17:58 -0500
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DBC958D5FB
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 13:15:05 -0800 (PST)
Received: by mail-yb1-xb2e.google.com with SMTP id d62so7741560ybh.8
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 13:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rE5GJmOWoLrmmtmr1ZiRc6lZFA32Ba8YbTIiq8KjYCU=;
        b=FbJNsENvCy8Q3dEkgzHZ2B+QydIyecG+w7hnVY1jI+O3K866Fs/TyVz+PSQeAFHS8P
         qkGTGdkeB/ttCAtTOlOTsmclCJMp4Rj5N2kLAQW9a5eE0aG3on81N1iy2XrjxwaBQA38
         PsqorpTvfS/snpkyxDBAVfZwrWqok7wrqwMOsfLLyOP1Er6LO8x82me0cvB4FdZFozmf
         CWunX4JJAYyF81qLTuy8WfqLZzX6tjjtXu+uA+3gxW7UQw68D5Z0e1rXn0FIj4y63QWl
         WLKPP/YuHMKq0CLBnR7N4a2eKQ6oKU4YOXLYR6kI8xNw+rTExeBtmFS3NObr2bYOvM6u
         oynQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rE5GJmOWoLrmmtmr1ZiRc6lZFA32Ba8YbTIiq8KjYCU=;
        b=HQgQe+nME77CPXb6jVpAX8hy6+rTK7LUI4mJ+wB3bYXoqWdMLWcKQnEQAPdPk4Vbzq
         F35THgEHzcoGtJuLHwTqHuYb81+HArjVWmgpyLAMgtm8B2TXN8eOhTuSt0bJsNdEL224
         bdxhZ6wjsF3+EPwYXGldpKkaAb2sK381wpgziq+eRObYJrBsUhMwfZZ4IOiDVBuCtUQg
         FhT7kVGC3Asfw3KHW5RVux5IkXvVPbVoVnZg3EZl/a8v5z9W08riNff96tzwzE0NCHJu
         1cf6PtuP07cQkyhrX9y9/jeiObj5LoC3Qbs+J1Nh1mFtAvOrqwWmQwvp6UaEh1224dPH
         uqIA==
X-Gm-Message-State: AFqh2krRHWeBjEI5+GPoJICGLHBfNM5UGIo0O11kDAD2VDq9S5GXEwM5
        Yite5Yec7FX7N2iFS5P6XOlp4TzB8GJbEn8yc0OMHA==
X-Google-Smtp-Source: AMrXdXufM+a0cNtAKwMruSwOhgbSmi5XuyfWOrdPyVuvRaWuv8J3cB39OBZ954HOwr1pSUGSX4+KqoQrdXapS/PccDg=
X-Received: by 2002:a25:606:0:b0:709:9335:236e with SMTP id
 6-20020a250606000000b007099335236emr7297951ybg.288.1673644503066; Fri, 13 Jan
 2023 13:15:03 -0800 (PST)
MIME-Version: 1.0
References: <20230113063351.24131-1-dmitry.baryshkov@linaro.org> <20230113210807.GA2901424-robh@kernel.org>
In-Reply-To: <20230113210807.GA2901424-robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 13 Jan 2023 23:14:52 +0200
Message-ID: <CAA8EJppi2254wTxMhC=M=Cfo3eA+K0aVqDVzbFAbYHCTnFF85w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display/msm/dsi-phy: drop unused allOf clauses
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
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

On Fri, 13 Jan 2023 at 23:08, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Jan 13, 2023 at 08:33:51AM +0200, Dmitry Baryshkov wrote:
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../devicetree/bindings/display/msm/dsi-phy-10nm.yaml          | 3 +--
> >  .../devicetree/bindings/display/msm/dsi-phy-14nm.yaml          | 3 +--
> >  .../devicetree/bindings/display/msm/dsi-phy-20nm.yaml          | 3 +--
> >  .../devicetree/bindings/display/msm/dsi-phy-28nm.yaml          | 3 +--
> >  Documentation/devicetree/bindings/display/msm/dsi-phy-7nm.yaml | 3 +--
> >  5 files changed, 5 insertions(+), 10 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> > index 3ec466c3ab38..71702151bafa 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> > @@ -9,8 +9,7 @@ title: Qualcomm Display DSI 10nm PHY
> >  maintainers:
> >    - Krishna Manikandan <quic_mkrishn@quicinc.com>
> >
> > -allOf:
> > -  - $ref: dsi-phy-common.yaml#
> > +$ref: dsi-phy-common.yaml#
>
> Convention is how it was. Partly this is legacy because earlier versions
> of json-schema required the 'allOf' form or everything in addition to
> the $ref would be ignored. I left these thinking more than 1 $ref here
> might be common. But probably more common is a $ref and if/then schemas
> and I'd somewhat rather keep $ref at the top and if/then schemas at the
> bottom. So maybe this is the right direction.
>
> I don't really care to define one way or the other if we can't enforce
> it in the meta-schema. I don't need more nits to look for in reviews.
> Adding a check (i.e. allOf must have 2 or more entries) would be quite
> invasive and wouldn't allow having 1 entry when we expect a 2nd entry
> soonish.

Ack, I'll drop the patch for now then, If I got your message correctly.


-- 
With best wishes
Dmitry
