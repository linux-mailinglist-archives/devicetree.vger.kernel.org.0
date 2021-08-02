Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 94BC43DD1B7
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 10:11:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232690AbhHBILu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 04:11:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232632AbhHBILt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 04:11:49 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FAC4C0613D5
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 01:11:39 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id h14so20366810wrx.10
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 01:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=0x3dgReXcWC1iYS+qAFXrajP0ewYcayc6ZfVqT+YfLM=;
        b=c4ULYQYnFODtSFxOCRIK+uB3bc4g+h2xCaHtmtontDioQWPqE11fRSw1pyTYLspiWE
         ynH5XhNaQuIZnrNns4h7VPbDlJZbNI7igjlBg4Qoukcsq/yuCqJIFUZW7pu0OetCguZn
         OPvV03I9iVBdyZ9BUheiOG+dTxelg9mYMVnUm3BIaq7zyDwTAfNV3+Yp1RMVgPZd3sJz
         U+2oTQwS+YTK6fhoi6hxbZ5nvJYWifv3c55QahSuXEhWLPijdSH+0hnQv+ZtLuY8m2e5
         PWbfXLGnNVBRUqrXXNjiShXRgSBBPhO3doI7jSfTimAn+aw5zMqtpGoFYrDs6rNzCvqz
         6x4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0x3dgReXcWC1iYS+qAFXrajP0ewYcayc6ZfVqT+YfLM=;
        b=mA6ozNhipk73Mk4XbzMNvCG2DkHTtYguTIRDVzyMe4lJneMzrnHCG+WfHD/voB4YHA
         jR17xeKsmghOiH6Wlz/OrlQV4a9hs6TUS60qqlDzOmRlgTOUx23GlilcsaxEzbd2MAWb
         YM9tKJ0nsGCZrYQvNuM25IWMKNZVb0EclmBPGV2B84FYpVmKLQplZa/GquljD3oPYwa5
         N/vKEH1rkfOWpZKdErXWykbKS+R34AIqhiUYXyFYUZGhaRkB5yL8O/qeyG/FTL9EQSrO
         CBt264W3QSwVKyUoJ4hKjizPT2J7FSvmY9mJcNOX3DDxkYH3BL92IsiVH3wUL5qByDdq
         L0zw==
X-Gm-Message-State: AOAM530WJD+a3ik2Wio2TJftl25jnIp0pEw+bB4AFJEkh9gKBVl89lah
        q5gN1b1b8cP1RFBfA8dksDootQ==
X-Google-Smtp-Source: ABdhPJyytz0qtGBKDG8wz0JExBsJg4sVp89R90AMZHsqTJLfgh0N2TC4adR2r3yMg0+e/RVuP4cveA==
X-Received: by 2002:adf:eb4a:: with SMTP id u10mr5296618wrn.11.1627891898264;
        Mon, 02 Aug 2021 01:11:38 -0700 (PDT)
Received: from google.com ([109.180.115.228])
        by smtp.gmail.com with ESMTPSA id d15sm10299636wrn.28.2021.08.02.01.11.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Aug 2021 01:11:37 -0700 (PDT)
Date:   Mon, 2 Aug 2021 09:11:35 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     satya priya <skakit@codeaurora.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Das Srinagesh <gurus@codeaurora.org>, kgunda@codeaurora.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH V7 1/3] dt-bindings: mfd: pm8008: Add gpio-ranges and
 spmi-gpio compatible
Message-ID: <YQeot5xqsiQqxXkR@google.com>
References: <1627029074-23449-1-git-send-email-skakit@codeaurora.org>
 <1627029074-23449-2-git-send-email-skakit@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1627029074-23449-2-git-send-email-skakit@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 23 Jul 2021, satya priya wrote:

> Add gpio-ranges and "qcom,spmi-gpio" compatible to match with the
> parent qcom,pmic-gpio.yaml binding.
> 
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
> Changes in V7:
>  - This is newly added in V7 to resolve below error.
>  dtschema/dtc warnings/errors:
>  /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/qcom,pm8008.example.dt.yaml: gpio@c000: compatible: ['qcom,pm8008-gpio'] is too short
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
>  /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/qcom,pm8008.example.dt.yaml: gpio@c000: 'gpio-ranges' is a required property
> 	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml
> 
>  Documentation/devicetree/bindings/mfd/qcom,pm8008.yaml | 13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
