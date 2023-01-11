Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90F2E66664B
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 23:36:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232580AbjAKWgK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 17:36:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231848AbjAKWgB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 17:36:01 -0500
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [5.144.164.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD95C64EE
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 14:35:57 -0800 (PST)
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 216673F319;
        Wed, 11 Jan 2023 23:35:55 +0100 (CET)
Date:   Wed, 11 Jan 2023 23:35:53 +0100
From:   Marijn Suijten <marijn.suijten@somainline.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: Re: [PATCH v5 1/4] dt-bindings: display/msm: convert MDP5 schema to
 YAML format
Message-ID: <20230111223553.e3xrxmdys5zxxleh@SoMainline.org>
References: <20230109050152.316606-1-dmitry.baryshkov@linaro.org>
 <20230109050152.316606-2-dmitry.baryshkov@linaro.org>
 <20230109074947.5vnfrn6shzpm6iqi@SoMainline.org>
 <997dbd09-03d6-d60d-1dce-db0bc6415582@linaro.org>
 <20230111222903.otbur6yi4iv4mpgz@SoMainline.org>
 <1d371e40-0639-16f8-abef-afcd05e72e22@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1d371e40-0639-16f8-abef-afcd05e72e22@linaro.org>
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2023-01-12 00:31:33, Dmitry Baryshkov wrote:
> On 12/01/2023 00:29, Marijn Suijten wrote:
> > On 2023-01-10 06:40:27, Dmitry Baryshkov wrote:
> >> On 09/01/2023 09:49, Marijn Suijten wrote:
> >>> On 2023-01-09 07:01:49, Dmitry Baryshkov wrote:
> > <snip>
> >>>> +    description: |
> >>>
> >>> Should multiline descriptions be treated as a oneline string with `>`?
> >>
> >> Ack, I'm fine with either of them, let's use the >
> >>
> >>>
> >>>> +      Contains the list of output ports from DPU device. These ports
> >>>> +      connect to interfaces that are external to the DPU hardware,
> >>>> +      such as DSI, DP etc. MDP5 devices support up to 4 ports::
> >>>
> >>> How do these double colons render?  Is this intentional?
> >>
> >> double colons is an escape for a single colon if I remember correcly.
> > 
> > I thought no escaping was necessary here, especially since this is
> > already a value - it is a multiline string.
> 
> I was mostly following examples, grep :: through the dt-bindings.

Saw that, maybe these "freeform" description strings are intended to be
RST to support more elaborate rendering if/when that happens?

> >> BTW: how to render the DT schema?
> > 
> > I'm not sure if there's currently any rendering tool to view these docs
> > in a "friendly" manner, e.g. an html page, or whether they're only used
> > as specifications for DT validation.
> 
> Probably there will be one at some point. It might make good addition to 
> devicetree.org.

Would be super cool to have some "interactive" / properly
rendered/colored docs up there for DT :)

- Marijn
