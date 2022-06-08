Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B765C543E05
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 22:57:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234302AbiFHU5T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 16:57:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234139AbiFHU5R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 16:57:17 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E282208B07
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 13:57:15 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-e5e433d66dso28753689fac.5
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 13:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=7HuOLi1pz8TClFoTL+rZB2VywOYDNgZNcPsKAhcwhDU=;
        b=G21/aKkUSjkrb1rz382eogv0q+fqealbOBP6erxKAk6hOhSVN1Gb5tADqPrMJrcTpE
         LBGyoN22m373bi4xwyHHpBY7THXwbBjsdKkd2QEiW1VylqSYPJCMzQ+98B2QamS3jBr9
         D6LDnHUesGUIrGR/j6Q/1b/o0kaR7DNAXo45Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=7HuOLi1pz8TClFoTL+rZB2VywOYDNgZNcPsKAhcwhDU=;
        b=px8599zB5pAyWbITVuluRSDe9rPO+Y5k0EFhwKzdI6pX91SUTnFlOXIVlFUBRSjGY0
         EqGSQaolM9Di/a2IVCuKVqriyCSXqFkSwCuY+JOM5VRQWWVdnnCvLGrhUESU0rDfp5jM
         IoMA3FAMSzxrz/hqdOfd7vMmRtgp9a1W+DQ0PUwvOExGC6rkB9BpaKx0aKPdZU546XVn
         VUYqSs7gUXIQ8uIgFA8Tfn6PJyAFqEyM6W64Kf8003lJHqtk+pTF1X2pj+oUG8PRLEW+
         9k/trUlDN+pOwjI7WxN6MFYh/OzCaLp4qZmfpLgogdOn1hlibtXfs4QI4RKFrB1YmXRh
         Vg7g==
X-Gm-Message-State: AOAM531WBr6tor9ROI7uSzELBhsUsXAeLEtdAdGNea3H9jiywSuUe+Qz
        KELhQ+qgGoWnwOE8I3cfreGh/mrcJxQQ5QcHfZfzcA==
X-Google-Smtp-Source: ABdhPJwENV+5v4HsKCmxScnymfhi+4EFnfR5wionjJb+lf3WPyLHg71mAzkYzbBGADbUwxuUs6CBt/xEv3nXYPRu8Mk=
X-Received: by 2002:a05:6870:b381:b0:fe:2004:b3b5 with SMTP id
 w1-20020a056870b38100b000fe2004b3b5mr1751882oap.63.1654721834435; Wed, 08 Jun
 2022 13:57:14 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 8 Jun 2022 13:57:14 -0700
MIME-Version: 1.0
In-Reply-To: <20220608120723.2987843-5-dmitry.baryshkov@linaro.org>
References: <20220608120723.2987843-1-dmitry.baryshkov@linaro.org> <20220608120723.2987843-5-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Wed, 8 Jun 2022 13:57:14 -0700
Message-ID: <CAE-0n53MTinLneHvkyf8UY=nzy3jTK8-f56BusQJ+0G+CSiMyw@mail.gmail.com>
Subject: Re: [PATCH v2 04/12] arm: dts: qcom: apq8064-ifc6410: drop hdmi-mux-supply
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
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Dmitry Baryshkov (2022-06-08 05:07:15)
> The HDMI circuitry on the IFC6410 is not powered by the 3v3. Drop the
> hdmi-mux-supply property.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
