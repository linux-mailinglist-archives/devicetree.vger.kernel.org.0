Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C3CD50CC04
	for <lists+devicetree@lfdr.de>; Sat, 23 Apr 2022 17:55:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234792AbiDWP5V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 11:57:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233814AbiDWP5U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 11:57:20 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 154EB202269
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 08:54:23 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id a10so12339783oif.9
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 08:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hrGPwkbDgIWnJ4Onq4/Uw+01BRMLP89hoICAxPX1lZg=;
        b=phBNBzVskW/COz4zfKD/DezyL5LTtjRofDqci3Srne5x2R+gtrqEhHytCh78rJsO90
         mtHvp8Qtrz3S4xvbF4AHktkGtMBk0X1nmUcWk660VXeYJObzTHlHNRmZIe3m6Cq8duQ5
         gKMISYiBRrToNq6aId2OMigdjXLMCrCeLz7XBkufalIkbnO5dDM9C3vttXXpApWepY6i
         EK3RlAZyAvH16nYOhmlzO0fgiRadqi4I0C4bMQLaPODTuP4bgy8BHmay6ZZi3ptFiYdG
         2Eo9LsMk6nVaruBUA/CTeyIG2WiK18d31FQAnOHE50/xc3G4uyvAOIpr4x4ZDcwbusIk
         CAxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hrGPwkbDgIWnJ4Onq4/Uw+01BRMLP89hoICAxPX1lZg=;
        b=37oRIwMpg7NL5nIQMngL8tEFTtvRzgj7arwjgLItlbpCpP13et3P0vlp45Mp+dd5wj
         WQ4MgIw4RpmM0hvCTdAjyNfHPcpQmRlMeABu5DDBZnu4k3ShbBT2NYjvXOrNiNBLQrj/
         xXDZQzDRLfLeUGexCTLSaMoNfc7BKrTStBSt6ojpOuFCmGK19bvxrmaia0vmtizDAGMU
         kqLdjpm2PxMC18+FINaRHuXUfuIL7eg5yFfbELHCKCwDmIzu9jSwRRS7iJ5EIUZXTJWP
         xY/fswiqJ33CLS0Pl6UbIyWhyfhbnyPCC/oijUpCKOYFrRpTBY1Cn14vRImR5xEpsj3Y
         JZ0g==
X-Gm-Message-State: AOAM5329Sf61lqyfk+MVZJegDxxY9kpn4piyr/9Wo6vDfrR+/JIjBZVk
        PiMgu1gEWJhbyhyzxA9at3jLdA==
X-Google-Smtp-Source: ABdhPJwLI+vAZIQMAK7ev1g3Xpqgo1rOXHieHQmvJPiguFY8z0G2GNpRD4EJ2n+MK1ojus7g7RX6jw==
X-Received: by 2002:a05:6808:f90:b0:325:4a7:5555 with SMTP id o16-20020a0568080f9000b0032504a75555mr1422399oiw.157.1650729262444;
        Sat, 23 Apr 2022 08:54:22 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id s6-20020a4ae546000000b0032480834193sm2098338oot.46.2022.04.23.08.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Apr 2022 08:54:21 -0700 (PDT)
Date:   Sat, 23 Apr 2022 08:56:22 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        bhupesh.linux@gmail.com, agross@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, vkoul@kernel.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: qcom,qmp: Describe
 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Message-ID: <YmQhpsmiYJzR99LK@ripper>
References: <20220418205509.1102109-1-bhupesh.sharma@linaro.org>
 <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220418205509.1102109-3-bhupesh.sharma@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 18 Apr 13:55 PDT 2022, Bhupesh Sharma wrote:

> Since a few boards based on QCoM qmp phy use the
> 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties to
> describe the ufs phy nodes, add them to the dt-bindings doc as well.
> 
> This fixes the following '$ make dtbs_check' warning(s):
> 
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   'vdda-max-microamp', 'vdda-pll-max-microamp' do not match any of
>    the regexes: '^phy@[0-9a-f]+$', 'pinctrl-[0-9]+'
> 
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index c39ead81ecd7..411c79dbfa15 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -90,6 +90,14 @@ properties:
>      minItems: 1
>      maxItems: 3
>  
> +  vdda-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from phy supply.
> +
> +  vdda-pll-max-microamp:
> +    description:
> +      Specifies max. load that can be drawn from pll supply.

It's not clear to me what an implementation would do with this
information. As expressed here it sounds like it's a property of the
specified regulator, so the driver should just request that information
from the regulator framework.

So let's wait with introducing such properties until we know.

Thanks,
Bjorn

> +
>    vdda-phy-supply:
>      description:
>        Phandle to a regulator supply to PHY core block.
> -- 
> 2.35.1
> 
