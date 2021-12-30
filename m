Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DCBB481CB2
	for <lists+devicetree@lfdr.de>; Thu, 30 Dec 2021 15:01:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239745AbhL3OBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Dec 2021 09:01:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235496AbhL3OBC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Dec 2021 09:01:02 -0500
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 214CCC06173F
        for <devicetree@vger.kernel.org>; Thu, 30 Dec 2021 06:01:02 -0800 (PST)
Received: by mail-qv1-xf34.google.com with SMTP id fq10so22133467qvb.10
        for <devicetree@vger.kernel.org>; Thu, 30 Dec 2021 06:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DARIRUyKixjDrkgi6thwAX0I/tkeXzUp7pYBAMvHcik=;
        b=o+4Ko9dlc80surFGX5vVwGzb5c0ETDQSkrNniT1RhUajJtbke5ejdnEQdrpYRC2aih
         VWkRLiWRv9geVnd/zJTopRXySrnbVMRrlTYvdgaZH7t93PLF9Rbx8xtjaTfjXv594UbL
         b7zNCmyRS0OzMiCVTL/0r03bd4toCRyvgXvdOerFJretUUJkg9UeZ7ET5Wn4xVrrtdOI
         pLYqPJEgU8XsxsfOB+Mra2infcJhM/cQY8/pJKqp6FbSq7IMjsVA8SkY6/zkDzJATRKo
         9OdzEvSbw9TO/yiYrJ9PI8ogruGMkPYuCnmejWNy299fPZQSylEnBcAg0jQWZo3jeI92
         xIEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DARIRUyKixjDrkgi6thwAX0I/tkeXzUp7pYBAMvHcik=;
        b=uqdKHnEmw6GKdF82VAAJoEmDYnKB0JwU9cwHb3KFfIAJOP3XquVrHTwgIYtqnmRUYz
         avLo3D5MlKOMqiwBA6ZVWzp2Wsvhrc4laL8pAhwZzYnWspzTI6pf1X/y6NWOPR8zS1LU
         hDXORTSVaSyt+AJsMmRFqLhnRelcI+hsNhGUZon4J91WLLG+dVTvKNqzCgFoD8LPVBq3
         soAklegpTXg5Ai7MBuNTuNSRnn84nQdVEWmzepfjY1r8iQL8uNnZ7K6U5CZuAkHL4owZ
         hVWWX5DtEugzaxI4pOJRt3sOA49nfiB3pLTu/N8KRXIGqk+9tdO5ajjyeNkWTRRuumQz
         v9mQ==
X-Gm-Message-State: AOAM531jOVBLzRr0zXTQWW5ZH8DEMF2IX/mmo08CfDTdMh6rjpB9ch2K
        gjoeGrBYaZ5vr9ytS4/kmuFd+0+vew7XhReGOyHhSg==
X-Google-Smtp-Source: ABdhPJzI5hJNYB9BiClkHNkpWJpsy0r+CCHtNuPM3lBUlcbQsrm/hksxpm6NB1KIf4ASty1FzjWa3Th+WWHhWw7Y8XA=
X-Received: by 2002:a05:6214:260b:: with SMTP id gu11mr27691426qvb.55.1640872860787;
 Thu, 30 Dec 2021 06:01:00 -0800 (PST)
MIME-Version: 1.0
References: <1640856276-14697-1-git-send-email-quic_rajeevny@quicinc.com> <1640856276-14697-2-git-send-email-quic_rajeevny@quicinc.com>
In-Reply-To: <1640856276-14697-2-git-send-email-quic_rajeevny@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 30 Dec 2021 17:00:49 +0300
Message-ID: <CAA8EJpptEvS6Y+MEX=VxmUSf1=GAp_oV5PWCCGUzMYP13_QsRg@mail.gmail.com>
Subject: Re: [v1 1/2] dt-bindings: msm/dsi: Add 10nm dsi phy tuning properties
To:     Rajeev Nandan <quic_rajeevny@quicinc.com>
Cc:     dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sean@poorly.run, robdclark@gmail.com,
        robh+dt@kernel.org, robh@kernel.org, quic_abhinavk@quicinc.com,
        quic_kalyant@quicinc.com, quic_mkrishn@quicinc.com,
        jonathan@marek.ca, airlied@linux.ie, daniel@ffwll.ch,
        swboyd@chromium.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 30 Dec 2021 at 12:25, Rajeev Nandan <quic_rajeevny@quicinc.com> wrote:
>
> Add 10nm dsi phy tuning properties for phy drive strength and
> phy drive level adjustemnt.
>
> Signed-off-by: Rajeev Nandan <quic_rajeevny@quicinc.com>
> ---
>  .../devicetree/bindings/display/msm/dsi-phy-10nm.yaml | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> index 4399715..9406982 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> @@ -35,6 +35,18 @@ properties:
>        Connected to DSI0_MIPI_DSI_PLL_VDDA0P9 pin for sc7180 target and
>        connected to VDDA_MIPI_DSI_0_PLL_0P9 pin for sdm845 target
>
> +  phy-drive-strength-cfg:
> +    type: array
> +    description:
> +      Register values of DSIPHY_RESCODE_OFFSET_TOP and DSIPHY_RESCODE_OFFSET_BOT
> +      for all five lanes to adjust the phy drive strength.
> +
> +  phy-drive-level-cfg:
> +    type: array
> +    description:
> +      Register values of DSIPHY_RESCODE_OFFSET_TOP for all five lanes to adjust
> +      phy drive level/amplitude.


Description is incorrect, it's not the RESCODE_OFFSET_TOP register.

> +
>  required:
>    - compatible
>    - reg
> @@ -64,5 +76,12 @@ examples:
>           clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
>                    <&rpmhcc RPMH_CXO_CLK>;
>           clock-names = "iface", "ref";
> +
> +         phy-drive-strength-cfg = [00 00
> +                                   00 00
> +                                   00 00
> +                                   00 00
> +                                   00 00];
> +         phy-drive-level-cfg = [59 59 59 59 59];

You are writing this value into the PHY_CMN_VREG_CTRL register. So
specifying 5 values here does not make sense.

>       };
>  ...
> --
> 2.7.4
>


-- 
With best wishes
Dmitry
