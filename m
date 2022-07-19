Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 323F6578EEF
	for <lists+devicetree@lfdr.de>; Tue, 19 Jul 2022 02:13:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236635AbiGSANB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 20:13:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236619AbiGSAM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 20:12:57 -0400
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D221B37F93
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 17:12:55 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id o16-20020a9d4110000000b0061cac66bd6dso2122653ote.11
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 17:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=uQR+n69n3dnYzqYwl3ly3mEn2ZxY8NPwKeE+kxZpS2M=;
        b=fJcui/2VkpHokc0d1YV8OjT923oZ5Oc+KoVy7FjZmyH1L/6cmgxWpbexuOmc0YKmZk
         QDyyZc7KOfterT0xRHhb4S5PTWC2f+MIFb0+d3F3b3jmiii9CDrUVfi8zFGi+DpWYrSi
         LylhOa2dqucibVAMfjQS8IJGOkt8dNfjrC9NI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=uQR+n69n3dnYzqYwl3ly3mEn2ZxY8NPwKeE+kxZpS2M=;
        b=Zi1QYytDd5Bd95GRG/xaIhJ3+eSphcMNd7UeKKd3Uc/gxyyoj9CRj4OMq8EswKcow1
         +kcAAG6DF9C2boQzReA2icqTh7AeDbBShstSxz4gw4DR6w8ZqJUv2HqEM/mTz+hg+nFt
         Ou/UXiGaCASbr1Qi1u4PzWxuSjawSkKGODgkublBWjNIUR3pp3qT18u/CV6hockVP6DE
         ZPmkbCQYS6R8jLqwWF1Wg4Da+NzsKWSs7seegZMoF7E67ENCU36BiCdVfyOtU/dJpi39
         xav58HsEwxEUrGPWm+GE1UIeyUY2ruk9xlLXjAy3VhefiV82XRGNjsY0VmwPNl2G//3S
         2fmw==
X-Gm-Message-State: AJIora91njP4wl6UOMDh+afeD3gTeAuasGLIUhoChBTkfKqX8iW710WM
        AKklkWiVJIXF1UKOBy73Ens2qgn3Zanc8dN+JFn14g==
X-Google-Smtp-Source: AGRyM1tj45Y8RF+Rd3jNFk+0LcP8DpTPSuHkSuaqNuMLN/z98asVBWyEOSMFjlQpphhLUMzVXQGKWxbYTin3OQ1opFA=
X-Received: by 2002:a05:6830:2aa0:b0:61c:9501:bb26 with SMTP id
 s32-20020a0568302aa000b0061c9501bb26mr5172172otu.73.1658189575184; Mon, 18
 Jul 2022 17:12:55 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 18 Jul 2022 20:12:54 -0400
MIME-Version: 1.0
In-Reply-To: <20220710084133.30976-2-dmitry.baryshkov@linaro.org>
References: <20220710084133.30976-1-dmitry.baryshkov@linaro.org> <20220710084133.30976-2-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Mon, 18 Jul 2022 20:12:54 -0400
Message-ID: <CAE-0n53StEjfWrNwmSZ5U-6M-EqEbaXHU+A69a-9-CTxw5GdiA@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] arm64: dts: qcom: sc7180: split register block for
 DP controller
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
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-07-10 01:41:25)
> Follow the schema for the DP controller and declare 5 register regions
> instead of using a single region for all the registers. Note, this
> extends the dts by adding p1 region to the DP node (to be used for DP
> MST).
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
