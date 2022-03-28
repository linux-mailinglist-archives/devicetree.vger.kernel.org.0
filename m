Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6BA7D4E9C8F
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 18:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237853AbiC1Qpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 12:45:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242615AbiC1Qpu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 12:45:50 -0400
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42EB3205C3
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 09:44:06 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id e22so12258950qvf.9
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 09:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZFIdehZrTxdj/RvUPXGwNiJz0CBRPSutTAor/H+cLso=;
        b=HY7BqZqay1vHlPzQoQMjzcnyQyiXyRjGp+TAREShAf3pydiqV7DKYRaYQoqT77XomN
         95E7RQUXQwKi69JGzrCjskWWNF3VvTACp2QapXR/gcLtFij4dmvrqC42wjHDRht+Dxwb
         qrIJkT4BC1sa/5QqCEZkCH+19SGG/vuhKj0p/2nrtMZgOoINM+J0EN7chOuZyCcc4kGp
         BLWLjETKDhQZZGTerzv3Gytz8FVyy1LGew3BsoJfUBA122woOjL/N4+SDb/dJnBMc26y
         6gtJ4loim8gQik4TgrcYztnMPkWzZvgrTAlLASvqNfzpk87vgb//cv2hRAzehoBw8tDz
         8ISA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZFIdehZrTxdj/RvUPXGwNiJz0CBRPSutTAor/H+cLso=;
        b=GDCR8Bk8tS6KPhXA6Lve/NKjHvzdgMLxDV7a2+dfR1jAQf6wQCGWIBmNLbFkv2E/jw
         sDQEvI/PVpX8n3q0Aqf2AMXPNbcJlp93N+cDuIUjrgrPNNCI1yG5lPiPrAQj0TCS5FzD
         XH4F98P9vZgl+ODRgN18rY4WBHD6Sh7sFNuDIbKU8x002JaRxZdcn3cIUeYF9GhBo4+Y
         oNzOsI7ME7z7RxPzUEGGde5yB5+nnNWFvPvgkdQfSuthseziDCo/y3zINXmbY+yRfIAH
         PL6q8nXGTXLuok7bkF+tPkIAw2utRivaKk4iR/QiLBZMFAzu0D+qG2tGvZBy6MsfdCwh
         kdPw==
X-Gm-Message-State: AOAM530Q7/Fw8l7SfZbEUPHWPjhUPvxHma493XGq4olwx06HKtCP7WFf
        YekQISXAoWESKok+0Cx12BidAiDitkpL2J9ODW+EKA==
X-Google-Smtp-Source: ABdhPJzliM5etgMj0wPTZaXVmyqbng42nS8uHRrcWTfKZ4sLgNctWWdu5gzWqP4wan4eEECcgE1dx/vzA6PVuddrJ4s=
X-Received: by 2002:a0c:b2cb:0:b0:435:cb61:322e with SMTP id
 d11-20020a0cb2cb000000b00435cb61322emr21682847qvf.122.1648485844212; Mon, 28
 Mar 2022 09:44:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220328152923.90623-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220328152923.90623-1-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 28 Mar 2022 19:43:53 +0300
Message-ID: <CAA8EJprWoxWwk5EWEfWdLquPR+2=u6V0-v1-+wHMHOk8HiEyNw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: display: msm: dsi: remove address/size cells
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 28 Mar 2022 at 18:30, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> The DSI node is not a bus and the children do not have unit addresses.
>
> Reported-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

NAK.
DSI panels are children of the DSI device tree node with the reg = <0>; address.
This is the convention used by other platforms too (see e.g.
arch/arm64/boot/dts/freescale/imx8mq-evk.dts).

With the DSI split link it is possible to attach two panels to a
single DSI host, so addresses are necessary.

> ---
>  .../bindings/display/msm/dsi-controller-main.yaml          | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index 7095ec3c890d..57f238f72326 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -51,10 +51,6 @@ properties:
>    phy-names:
>      const: dsi
>
> -  "#address-cells": true
> -
> -  "#size-cells": true
> -
>    syscon-sfpb:
>      description: A phandle to mmss_sfpb syscon node (only for DSIv2).
>      $ref: "/schemas/types.yaml#/definitions/phandle"
> @@ -154,9 +150,6 @@ examples:
>             reg = <0x0ae94000 0x400>;
>             reg-names = "dsi_ctrl";
>
> -           #address-cells = <1>;
> -           #size-cells = <0>;
> -
>             interrupt-parent = <&mdss>;
>             interrupts = <4>;
>
> --
> 2.32.0
>


-- 
With best wishes
Dmitry
