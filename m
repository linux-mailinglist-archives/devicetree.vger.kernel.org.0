Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 927572CE33C
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 00:58:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731376AbgLCX5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 18:57:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731372AbgLCX5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 18:57:00 -0500
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7F97C08C5F2
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 15:56:14 -0800 (PST)
Received: by mail-oi1-x241.google.com with SMTP id l200so4190202oig.9
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 15:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Tj/eqYhhAQcKhYafB9RPIyuN5cfJ1B/TPw46tE9Fbis=;
        b=Cv0f1XYlFWVeIv0CnpbmITuX9a/QfNIUokjvwnG1Y0tpB/b4WTNLEgsx2GqHYbwmbX
         bvhqEZ/ouLGsCDneKK0NjCs+MOlgw4gyuxVtxu5QAnpiqTh+ijsMRzYylX4ynJBTDsrU
         OzSOWrY03hNVSMfLHOQO9/r2RtcCwUrGj+SsK0GoABwDOaddcMNCUBqvhCuQIv+YlQxp
         hGlZhtQX2ph3prAyNeYbNocnwO1T2aIHyqwwAyZBYsn1RYBDDfQJ4TcRZgL9yLuPo8mF
         jO9f19aonKqQ35gSQu21U8SdFeMqcnNavI6kmjc1DwFFbg0PIJDPW5SZZMfbVA+2mOJq
         KnlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Tj/eqYhhAQcKhYafB9RPIyuN5cfJ1B/TPw46tE9Fbis=;
        b=dw5ob+xNNMoUlGiHGZ6nSSnoN0lb3iamKS+rwD+3O1N8+3pxbNDl1I4Mc25RA8cthQ
         p002TaRXsyDOLMlbFMe1LdgqU4BCLgVqxvXBJzXQ+HAlVRfQ5L+YvzfmM9Zj+K+mkcYt
         lTg8W3f2O7qUXgjmtb6lY3eBpPrZFx21FCSI1tTkleNFqMKBnWt1e0dPdy/JLIA74AjR
         kOM8xUCWXbYn8K6CscYnO31V9wxLHLNrncUQ/xDxOANFVtUDomX39YapH5WrmGI5pSx3
         umPorNkM5eUhXp435SlZZuqLfAkM967YQ0UW2w3b/oe9WJKCW/dw4YqDFJU5mX7PIjEX
         T//w==
X-Gm-Message-State: AOAM532dbRmSO2F73OqXNfd3Gx3+EjPNIF0AYeDoOvQ93XuET09L73/F
        ibmqr4SnAvHAO6k9dEnVX1N1Sg==
X-Google-Smtp-Source: ABdhPJzQPweT/buGuh+MWJkK+6cjezKR9RTV5x/u3ct6Fn8EYBV5akr7cubnndZ8rc/R3woJjd/r1w==
X-Received: by 2002:aca:728b:: with SMTP id p133mr1227521oic.125.1607039774149;
        Thu, 03 Dec 2020 15:56:14 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id j16sm268488oot.24.2020.12.03.15.56.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 15:56:13 -0800 (PST)
Date:   Thu, 3 Dec 2020 17:56:11 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: clock: Add RPMHCC bindings for SM8350
Message-ID: <X8l7Gwekn2UHO/2z@builder.lan>
References: <20201203070241.2648874-1-vkoul@kernel.org>
 <20201203070241.2648874-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201203070241.2648874-2-vkoul@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 03 Dec 01:02 CST 2020, Vinod Koul wrote:

> Add bindings and update documentation for clock rpmh driver on SM8350.
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

> ---
>  Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
> index a46a3a799a70..3037eb98c810 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,rpmhcc.yaml
> @@ -21,6 +21,7 @@ properties:
>        - qcom,sdm845-rpmh-clk
>        - qcom,sm8150-rpmh-clk
>        - qcom,sm8250-rpmh-clk
> +      - qcom,sm8350-rpmh-clk
>  
>    clocks:
>      maxItems: 1
> -- 
> 2.26.2
> 
