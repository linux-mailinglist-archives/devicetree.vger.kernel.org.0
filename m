Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A37844C2EB2
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 15:53:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235616AbiBXOx3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 09:53:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232207AbiBXOx1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 09:53:27 -0500
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E99D13CEF5
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 06:52:57 -0800 (PST)
Received: by mail-qv1-xf2a.google.com with SMTP id w7so3954753qvr.3
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 06:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tI8CvWg+ssaQJOFIxe9Ug9FFFdfMXmAocHJte6H9sd8=;
        b=L+2YgQH+bKNqze7jBfAY65lTykr+fyqXwFDfq4qmu87DLjRqZShxhlIhZHzUudkU8H
         etIUeZYJweFhWZrxn+YWHuJYij9oGbnZIG2HCtkkGT/XUeUimOaHjMCJi3f/VpvEePr6
         zntfT9yIfCBvSOUEmsPIYussYZzW7EZpe/C0i/CUYTmDq9GGyHKg8TRRmTmtszJUShyp
         e+PBf8Otcyb0a/mJM9AdMp9LmtVAxYpqg+AykkEDeCnqxdyGsbHvIa0Wat6ydjU31jQO
         t7xo8T4J9EuwFJ/x+xNNOsiDjtVYtATHzx8hrJqyObtjG+Gb6ejUgAjYguuXo3Mv4+dx
         JcAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tI8CvWg+ssaQJOFIxe9Ug9FFFdfMXmAocHJte6H9sd8=;
        b=CM660pkdFV3P+lefuwqfULBWfZptacBur6+Yc6t7ZN/1j7cpgT/2mEA5zZS6qbf5KG
         B9DECsvIqTVd1z0XL4NUUZbOVGEE6Qg7gexttFq9d0/yG185ABhAtrJsWTGb3XLJs5nB
         EKbXMSVlIQ9h+JVSMNwxbhtXY4gR9/BGfhriaaj+N3BCsqDjeXjWLNBZz/PWJFRto8Ot
         lsEu8xQv2P0syapMyD4paRzSPufIiBgRAkVQ5mupcmuXiEuCqhZOWUTt5KJiHAjaxvRM
         uZB9j+TCT2B6NTL8/jaLt61tMB6E/BxsxZCWJ/iB3rU/Mi9LMnzwvh2MPtPpZH8cWZvU
         LqKg==
X-Gm-Message-State: AOAM532vHJtFvfnLzB64jdhGkn0L6SEcMYLBcms2EdrDY+9VRYCbr3Lt
        k3VQ8OE/l97Eyby/kuYxPjdHLyq2dta7PUkxKkpFEw==
X-Google-Smtp-Source: ABdhPJyipTRKZTc+dDLKioP00ztl/m1yyc6CIiZX/LXNRpWTBXH6mmehjqQNSw5u2Ap+TGvrEpB+JURvzQCFTP3QfT8=
X-Received: by 2002:ac8:5cc9:0:b0:2de:8838:5888 with SMTP id
 s9-20020ac85cc9000000b002de88385888mr2646241qta.370.1645714376485; Thu, 24
 Feb 2022 06:52:56 -0800 (PST)
MIME-Version: 1.0
References: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
In-Reply-To: <20220224123248.67073-1-bhupesh.sharma@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 24 Feb 2022 17:52:45 +0300
Message-ID: <CAA8EJprRgsZRSXBQumveAn029j+w6xO8K2kZUO4rzZaefuYe7Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Mark '#clock-cells' as a
 'optional' property
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.linux@gmail.com,
        agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>
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

On Thu, 24 Feb 2022 at 15:33, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> Since '#clock-cells' is not a required property for several
> QCoM boards supporting qmp-phy(s) (for e.g. sm8150, sm8250 or sm8350 SoC
> based boards), mark it as an optional property instead.

I believe the description is not correct. the clock-cells should not
be used at all, so it should be removed from the root node.
Also we should describe phy@ properties.

>
> This fixes the following '$ make dtbs_check' warning(s):
>
> sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
>   '#clock-cells' is a required property
>
> Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> index 9e0f60e682c4..746a929c63bb 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
> @@ -115,7 +115,6 @@ patternProperties:
>  required:
>    - compatible
>    - reg
> -  - "#clock-cells"
>    - "#address-cells"
>    - "#size-cells"
>    - ranges
> --
> 2.35.1
>


-- 
With best wishes
Dmitry
