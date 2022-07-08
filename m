Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9756456B032
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 03:53:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237009AbiGHBdV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 21:33:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236988AbiGHBdV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 21:33:21 -0400
Received: from mail-oa1-x2a.google.com (mail-oa1-x2a.google.com [IPv6:2001:4860:4864:20::2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFEB572EED
        for <devicetree@vger.kernel.org>; Thu,  7 Jul 2022 18:33:18 -0700 (PDT)
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-f2a4c51c45so27542968fac.9
        for <devicetree@vger.kernel.org>; Thu, 07 Jul 2022 18:33:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=4V1jJFFBwe0tkM3Ad5Ot/7v9+0qxLzwLjVqs7lYKRhs=;
        b=RHCML0O3BeCec/megjPGrCsRqQ5mbPdK58IEcrU+PY/dNU56gGGgb1h46RpENStZxq
         LhL7qLe4+vgxQ0h08J35HhTUyTqFH/C6E9v+ObEaM0TNh96UOLTbA+gPbTcaI97SKXgt
         7N23jcUWTGzK1fcK2Nu1mavb5UOqAigxH/+KU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=4V1jJFFBwe0tkM3Ad5Ot/7v9+0qxLzwLjVqs7lYKRhs=;
        b=Isyxe/UNaA3URAXTyUeHbE60LtlFfomaEE7VO/T3O7ebw+0vw+9JC0YLGH7C6BHtl7
         YvuPs5/w1YOkZ0KtD0lD4nZBAadmX+1Q7nzgOqLbhGMDNluscJtpZNFbalkWnDoaKKxA
         rGwPMIkMgVOjYbU2GcQymoYsix1S8WmU2ZS9AfOzuP7pek5Oou4rjYD/wVPabBoXkFmh
         +Pzo4ieWZPg2Z9QYCU3dhKyy2gmRkBZQ3LRVNuMkH8mEqdfSktQof8jDRYYJ2NgauRCA
         NX1jJwiNKyAU4FnmeQFiJyp/K0wzjO2VBKvGV3Q2sF7NMlzCt29rzeWwaodyDr1ab9lI
         ay3w==
X-Gm-Message-State: AJIora8gLqd5Xxa/4yIUbj2UQnh/OKy+rWUijxa3RcU4deDewEALeoQf
        QtJBokHUm5zLcg238JuCqWK6rVgEZaoVPlGtrZrn+g==
X-Google-Smtp-Source: AGRyM1uZd+As7N/om9IBZ/Qo1/4OAME0XQal8tqtiWDDQMG8lxaPRcreILzi1QA3h+/OQ1eKkqN1gCUup3mg5cMWJGk=
X-Received: by 2002:a05:6870:b381:b0:fe:2004:b3b5 with SMTP id
 w1-20020a056870b38100b000fe2004b3b5mr545769oap.63.1657243998193; Thu, 07 Jul
 2022 18:33:18 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 7 Jul 2022 18:33:17 -0700
MIME-Version: 1.0
In-Reply-To: <20220707213204.2605816-7-dmitry.baryshkov@linaro.org>
References: <20220707213204.2605816-1-dmitry.baryshkov@linaro.org> <20220707213204.2605816-7-dmitry.baryshkov@linaro.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 7 Jul 2022 18:33:17 -0700
Message-ID: <CAE-0n51EA+YQudOwFU0S9OS17gc-iBEDUT3DYYHVbd2G1zWL=g@mail.gmail.com>
Subject: Re: [PATCH 6/9] dt-bindings: msm/dp: handle DP vs eDP difference
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

Quoting Dmitry Baryshkov (2022-07-07 14:32:01)
> The #sound-dai-cells property should be used only for DP controllers. It
> doesn't make sense for eDP, there is no support for audio output. Also
> aux-bus should not be used for DP controllers. Take care of these
> differences.
>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
