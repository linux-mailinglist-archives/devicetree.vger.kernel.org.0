Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 436A866A4EA
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 22:13:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230418AbjAMVNt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 16:13:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbjAMVNR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 16:13:17 -0500
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC5348BAB2
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 13:12:39 -0800 (PST)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-4a2f8ad29d5so302006637b3.8
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 13:12:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GVPEQvUee51sc8pEGSlqlDJ9IbHcx8EvmRAXbKUQO/Y=;
        b=F2yzNL0KgENVhhP++XHK4RacOn9CcOnd4ePCfWRY6Z6LY9KV62izf9dDDtpF2c0/qk
         f14PiHPyI5199XoUz22fTMI1pJWjS8Z3p6ckLCfyzUZ45Lc49CL+eVbSa/cTikbiR4Xh
         nZ4a8iX4i6U68uDry2jJh0e59Pb1J6VAmd0FAtJtepC68+vCfbVqXJ7xT9tp15j2B+x8
         1UvRA30tI9XkRCCX58Hr93LtIV8A/0+W/y28L5wmoHVlsBGkoIJ416KdefEa6WrTxY7F
         /rPvbs/L6HvyngCOwoysw3X/zUb5sDv86vWtgtTmJwepvv4KIRE9L9C1ho+ifLiDdFIc
         xMRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GVPEQvUee51sc8pEGSlqlDJ9IbHcx8EvmRAXbKUQO/Y=;
        b=ZkE7Jga0tItsOqOmi8w/zL7GLaQJIpTZ4SAfklZTROUfgeXYlaQNINVFBCjmHeHpov
         g32iODPxJXv9s7ED5ch1/H0YfoEnr8n0vRf7D96yFsT074eqQOuPGnYMXiJ0DOTgqted
         vXSy+dK0D/fgVZ6LbOOqRx0T2cHVmeSAbaxvUOo5TQvANs6Syo9AFaw22WcTyWe/HAXS
         MsS6sxWe4AtZcQ8U9PA7JZ5BJDwLAgpfNL34Qbbx2oDb6c6ylMGvDiSfSh2b5TTl+/ST
         L8ClHIx3HVYI2QPJaC2AioAHwEXNygXeXemZOnpXye640y0RXv+kySNcSljVOJzwccE5
         3RLg==
X-Gm-Message-State: AFqh2kp2qiS95a+dLRXSUGb4jzwHCCPlcQj1cgt0KdQGyc0LH6JnfUfM
        6aPmN+mTkosAJby8Jki1aepogF+wC5egk9T0zZ9aFQ==
X-Google-Smtp-Source: AMrXdXv8z967fovvduNbguAX3BsI6mdBhZdHHit2dAOds2+jQ5QPiDPjrY0Z+ZlckJcFfGw7C2QdM19zDRz3HC5fU8Q=
X-Received: by 2002:a81:670b:0:b0:3d6:2151:4038 with SMTP id
 b11-20020a81670b000000b003d621514038mr3340982ywc.418.1673644359176; Fri, 13
 Jan 2023 13:12:39 -0800 (PST)
MIME-Version: 1.0
References: <20230113083720.39224-1-dmitry.baryshkov@linaro.org>
 <20230113083720.39224-2-dmitry.baryshkov@linaro.org> <167362343145.2212490.16180994187587985655.robh@kernel.org>
 <20230113211114.GA2925393-robh@kernel.org>
In-Reply-To: <20230113211114.GA2925393-robh@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 13 Jan 2023 23:12:28 +0200
Message-ID: <CAA8EJpq4kfYWYdOhvWbkWAWLPpVpMbvzHhNWsq9x+SWGiTjDLw@mail.gmail.com>
Subject: Re: [PATCH v6 01/11] dt-bindings: display/msm: convert MDP5 schema to
 YAML format
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        dri-devel@lists.freedesktop.org, Sean Paul <sean@poorly.run>,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        David Airlie <airlied@gmail.com>, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Jan 2023 at 23:11, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Jan 13, 2023 at 09:26:52AM -0600, Rob Herring wrote:
> >
> > On Fri, 13 Jan 2023 10:37:10 +0200, Dmitry Baryshkov wrote:
> > > Convert the mdp5.txt into the yaml format. Changes to the existing (txt) schema:
> > >  - MSM8996 has additional "iommu" clock, define it separately
> > >  - Add new properties used on some of platforms:
> > >    - interconnects, interconnect-names
> > >    - iommus
> > >    - power-domains
> > >    - operating-points-v2, opp-table
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > >  .../devicetree/bindings/display/msm/mdp5.txt  | 132 -----------------
> > >  .../bindings/display/msm/qcom,mdp5.yaml       | 138 ++++++++++++++++++
> > >  2 files changed, 138 insertions(+), 132 deletions(-)
> > >  delete mode 100644 Documentation/devicetree/bindings/display/msm/mdp5.txt
> > >  create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml
> > >
> >
> > Running 'make dtbs_check' with the schema in this patch gives the
> > following warnings. Consider if they are expected or the schema is
> > incorrect. These may not be new warnings.
> >
> > Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> > This will change in the future.
> >
> > Full log is available here: https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230113083720.39224-2-dmitry.baryshkov@linaro.org
> >
> >
> > mdp@1a01000: compatible:0: 'qcom,mdp5' was expected
> >       arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dtb
> >
> > mdp@1a01000: compatible: ['qcom,msm8953-mdp5', 'qcom,mdp5'] is too long
> >       arch/arm64/boot/dts/qcom/sdm632-fairphone-fp3.dtb
>
> If your thought is to drop 'qcom,msm8953-mdp5' here that doesn't really
> seem great.

No, quite the opposite. Please see the explanation in the email I sent
a minute ago.

-- 
With best wishes
Dmitry
