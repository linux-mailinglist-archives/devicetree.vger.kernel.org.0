Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D92E6573F08
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 23:32:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237516AbiGMVcw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 17:32:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237550AbiGMVcr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 17:32:47 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5132B2494C
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 14:32:46 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id by10-20020a056830608a00b0061c1ac80e1dso9261545otb.13
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 14:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KMcZaOI1pkMPzYIua3VuB4fL4UqUR3gQmB+xGyPu7QM=;
        b=EgJHs96mxk4tNDPUW3eCN/fvFCRBhPOzRXy6DAY0v+0GdsJseQ8CgMTxM7fCZYt73w
         BOI38G2Dn+JUoNK8C+UshRHgMS09ajx3F+gCN1kLJCot8clpn+7B/D9mKFFHeWj6gVyf
         vkJRPIcEZUfVDWBuZzRIHyd0neo6xM5XFYBXPn7slT7yXMyZJp1RaslAeoY+/Hp1/5JO
         Z5nI9TSKNxnzpo4+3oxuSUFfQsJZYgly2IUp9sPm1a6tDJZqG8oGp4KzOVrdDbIx09TQ
         TeiSBJ4ZsB10pY41WmA+t0accVkpA3iPhTZ4vSka+f2Q6MppAyjc1JQffSUY9TEW/ty5
         AVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KMcZaOI1pkMPzYIua3VuB4fL4UqUR3gQmB+xGyPu7QM=;
        b=MD2dmQ3IIL8ppcis/WtADkxxbKqiGL7z2UiA+x40rWDsS6fvF99uZy6gdtzMY4rZTS
         WPNjk8NOFV3ipYAf/plFcKb1QU409rMlIPYPKLVWlk3XUBo/CtEYr5NWLe3zghvZW3bz
         SCd+hfgmE4zRzZstWpq3opmoxrl9ePl1eXc131+EJnQMpr0PK2wVPGj9X1JT3TrZvM1U
         tcavGbHPJIfuWzixMw3e+vASnRGAbVtLS7Boj4WmPgd9NS8HPz55xtxkK9EPOixTdqSq
         ZHQPoMxGaDKtN8ViypYU3gtP5IoDVFUy7CPRNDFBlloGgflZlok26asQ5+DRxlyqCz1J
         2BvA==
X-Gm-Message-State: AJIora9MWfJjHOYAZxBzkb7HvIBCXsJIsYntx1jTOa2tC6zKz4AkKzVC
        CeTOkrz1ayo6/cgAbeyVSx1vhA==
X-Google-Smtp-Source: AGRyM1tdI/BVkfAWRhAGpOWIOiePCL5uX9PVHFsgBKsefi693i/n4CRhg9lEq6x/dmREF/ZscHgi1w==
X-Received: by 2002:a9d:19c9:0:b0:618:ce28:bcf7 with SMTP id k67-20020a9d19c9000000b00618ce28bcf7mr2108300otk.285.1657747965648;
        Wed, 13 Jul 2022 14:32:45 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id v37-20020a05687070a500b000f342119f41sm6559223oae.42.2022.07.13.14.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 14:32:45 -0700 (PDT)
Date:   Wed, 13 Jul 2022 16:32:43 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Yassine Oudjana <yassine.oudjana@gmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Yassine Oudjana <y.oudjana@protonmail.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] clk: qcom: msm8996-cpu: Cleanup and migrate to
 parent_data
Message-ID: <Ys85+7rYjQOSPvD/@builder.lan>
References: <20220621160621.24415-1-y.oudjana@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220621160621.24415-1-y.oudjana@protonmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 21 Jun 11:06 CDT 2022, Yassine Oudjana wrote:

> This series includes some cleanup of the MSM8996 CPU clock driver, as well as
> migration from parent_names to parent_data for all of its clocks. The DT schema
> is also fixed in this series to show the actual clocks consumed by the clock
> controller and pass checks.

This series looks almost ready to be merged, could you (or Dmitry?)
update the two outstanding items?

Thanks,
Bjorn

> 
> Yassine Oudjana (6):
>   clk: qcom: msm8996-cpu: Rename DIV_2_INDEX to SMUX_INDEX
>   clk: qcom: msm8996-cpu: Statically define PLL dividers
>   clk: qcom: msm8996-cpu: Unify cluster order
>   clk: qcom: msm8996-cpu: Convert secondary muxes to clk_regmap_mux
>   dt-bindings: clock: qcom,msm8996-apcc: Fix clocks
>   clk: qcom: msm8996-cpu: Use parent_data for all clocks
> 
>  .../bindings/clock/qcom,msm8996-apcc.yaml     |  15 +-
>  drivers/clk/qcom/clk-cpu-8996.c               | 235 ++++++++++--------
>  2 files changed, 140 insertions(+), 110 deletions(-)
> 
> -- 
> 2.36.1
> 
