Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9047514D231
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2020 21:58:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726708AbgA2U6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jan 2020 15:58:54 -0500
Received: from mail-pf1-f194.google.com ([209.85.210.194]:39820 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726683AbgA2U6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jan 2020 15:58:54 -0500
Received: by mail-pf1-f194.google.com with SMTP id 84so274061pfy.6
        for <devicetree@vger.kernel.org>; Wed, 29 Jan 2020 12:58:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=UoMAzn/099CvNvcShTE0fqakA9YvEbTZbA/yOdNPeow=;
        b=DquI3KoXfcdwBJ3y7b80B31FvtkFeKlD1KIQaJ2I79W1Os4hdnhEFGXWl0HK9kPGhJ
         LsORtAnSvWwEXshGIH/dAoH9VMRgrJ6LxINyGGrpB1IC7rT84Ig6sYmN/XPt96k9hq0l
         HoZUtz+lLd+TGSEU11nBcpCVypQCqLpDTmqr8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=UoMAzn/099CvNvcShTE0fqakA9YvEbTZbA/yOdNPeow=;
        b=rv+0meyrv6GtK1B4weiaGrRR0cLN/yXAKg74pYaGjToeuUe42J03E5yYYpXI949eoH
         geK0VEnjQIlwYyOUA3nutHlaN9cNogfbcIBVeh6XzxZ8sFqRJZgmbuVJVRj4LWH40GFQ
         HZrhMqC2IbBkPCqUGX8qYASRXAp5lRJlrnb9pkj3v0Rda3Swi/Q2P85JElBHb6artp/B
         2r83OjcBC+8QrPN8UX8jBQHICi3VfG+ScwzB96XUZQSHipXuD6LqmIyBN+BeBYEpIAsF
         u/klw7pGS0dQF77ZxLrESqoq3Pk0k9MiQnwZopDL8f1QJRTA4LWqRM73QVwA/Bb3/B0M
         S1eA==
X-Gm-Message-State: APjAAAWvDAT5XacbyZuVktFUW2GdB2tCxb8Aag1RiNUC2gqSu2O9mUa/
        vGH+6jPMHAguP1eee2pIA4Vucw==
X-Google-Smtp-Source: APXvYqwjnqHvrvMkWU2n+NRKl9k2drCHiF4vLcBdGx+Z7bM/W2rp1iRPMu9xJw3rFRmv7O7yIBxJ1g==
X-Received: by 2002:a62:6c6:: with SMTP id 189mr1469295pfg.224.1580331533751;
        Wed, 29 Jan 2020 12:58:53 -0800 (PST)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
        by smtp.gmail.com with ESMTPSA id e6sm3748856pfh.32.2020.01.29.12.58.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 12:58:53 -0800 (PST)
Date:   Wed, 29 Jan 2020 12:58:52 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/8] dt-bindings: phy: qcom,qusb2: Add compatibles for
 QUSB2 V2 phy and SC7180
Message-ID: <20200129205852.GH71044@google.com>
References: <1580305919-30946-1-git-send-email-sanm@codeaurora.org>
 <1580305919-30946-3-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1580305919-30946-3-git-send-email-sanm@codeaurora.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 29, 2020 at 07:21:53PM +0530, Sandeep Maheswaram wrote:
> Add compatibles for generic QUSB2 V2 phy which can be used for
> sdm845 and sc7180.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> index 90b3cc6..43082c8 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
> @@ -15,10 +15,17 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,msm8996-qusb2-phy
> -      - qcom,msm8998-qusb2-phy
> -      - qcom,sdm845-qusb2-phy
> +    oneOf:
> +      - items:
> +        - enum:
> +          - qcom,msm8996-qusb2-phy
> +          - qcom,msm8998-qusb2-phy
> +          - qcom,qusb2-v2-phy
> +      - items:
> +        - enum:
> +          - qcom,sc7180-qusb2-phy
> +          - qcom,sdm845-qusb2-phy
> +        - const: qcom,qusb2-v2-phy
>    reg:
>      maxItems: 1

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
