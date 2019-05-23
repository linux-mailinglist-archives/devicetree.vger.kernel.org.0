Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BC35427FF0
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 16:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730860AbfEWOib (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 10:38:31 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:56148 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730900AbfEWOia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 10:38:30 -0400
Received: by mail-wm1-f65.google.com with SMTP id x64so6102275wmb.5
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 07:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=/HlefMV0bwmUzLKXhAmlVYeXPjcTFvz8Ki1WeUsw4eA=;
        b=s0hr3OtJjjizR8t7XxwJFiZcY+6l+tr9RBVt0An3WE8H+XpnT9Q354IZCKjX87NYVI
         KMk1cXfrqu6RCRqcI98jFGRx1YYoz3lbaq4KFt6yMwBS8R+K9ASEWZqavrD1Wsnu/WU8
         yi+6BwDM4vC3tlJ212bOE7v1LDXV5rEc4NkCtXp3021wJGiS1NsImjO5DEfvBr7ZGbT4
         yXmuBa7JWmTolKuO24gcGD1V3qcuYN+PPrXNlhSmWqXzRlnDNU8celvj0R2+jQ15sJln
         xLhJFArPQsm3zOfKh/0nJNYSJ7GYhYDW15rmrA9P8f56L9m/E3lPhPbFx4F5A3efrQh5
         QWsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/HlefMV0bwmUzLKXhAmlVYeXPjcTFvz8Ki1WeUsw4eA=;
        b=Y0M9gotMC6I7p6LChCISu4aFasIBRHKPNnfbldybnAHEGEwp7tA3bXeCuv/mVx8B9m
         VaB/uw2HyfRgNlVwckBQ4RjDrYQu6qKG1ZCB2U9cRyhqMEgaEWxLJNp6cFlVddNU/AFK
         rVyWvHINLlGU0BbGituOT7HbzmLvF5Ha/GLF8lzTkVPHYbW+LK+Zd5MlSq7EV328Fnva
         wl9xkdWsEx7Jj+9BMSpk7dPiIaeLgJW9cj8xGJTelOFwS6wey1wXME4WCuLV0x7G2ueB
         6kYoYcBi8f/jPpLld9RHTbPdsloF1rfYpcmZ/EB3x0q8Sd1iLolkZAqm/TdBgGCVy5pY
         /iEQ==
X-Gm-Message-State: APjAAAXOhWThWxAorv6tLUbaI4RLvcSYPZ+wDjYYi5VRl1woak6oW8ZH
        L21fDiI7JHBNPIGX4jiTdLIEmKnmYXdaYA==
X-Google-Smtp-Source: APXvYqxQgq+rdSwKf1bkfpHBWA6HZtKthLBgqdX6MDBQOoVwnphvJBoTyijnAK9ayk/rlfQnsZN15g==
X-Received: by 2002:a1c:ef0c:: with SMTP id n12mr12266159wmh.3.1558622308599;
        Thu, 23 May 2019 07:38:28 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id t13sm60423742wra.81.2019.05.23.07.38.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 May 2019 07:38:27 -0700 (PDT)
Subject: Re: [PATCH] soc: qcom: apr: Don't use reg for domain id
To:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20190522015342.29501-1-bjorn.andersson@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e7046725-578d-8854-872b-a7837d0fc20a@linaro.org>
Date:   Thu, 23 May 2019 15:38:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190522015342.29501-1-bjorn.andersson@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 22/05/2019 02:53, Bjorn Andersson wrote:
> The reg property represents the address and size on the bus that a
> device lives, but for APR the parent is a rpmsg bus, which does not have
> numerical addresses. Simply defining #address/#size-cells to 1 and 0,
> respectively, to silence the compiler is not an appropriate solution.
> 
I agree.

> Replace the use of "reg" with an APR specific property.
> 
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> ---
Can you also change the example too.

other than that am okay with the change.

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

--srini
> 
> The APR device was recently added to msm8996.dtsi, but this is still
> depending on working SMMU to provide functional audio support.
> 
>   Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt | 2 +-
>   drivers/soc/qcom/apr.c                                  | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
> index bcc612cc7423..38d3c06abc41 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom,apr.txt
> @@ -9,7 +9,7 @@ used for audio/voice services on the QDSP.
>   	Value type: <stringlist>
>   	Definition: must be "qcom,apr-v<VERSION-NUMBER>", example "qcom,apr-v2"
>   
> -- reg
> +- qcom,apr-domain
>   	Usage: required
>   	Value type: <u32>
>   	Definition: Destination processor ID.
> diff --git a/drivers/soc/qcom/apr.c b/drivers/soc/qcom/apr.c
> index 74f8b9607daa..b83d71b2e0a4 100644
> --- a/drivers/soc/qcom/apr.c
> +++ b/drivers/soc/qcom/apr.c
> @@ -276,7 +276,7 @@ static int apr_probe(struct rpmsg_device *rpdev)
>   	if (!apr)
>   		return -ENOMEM;
>   
> -	ret = of_property_read_u32(dev->of_node, "reg", &apr->dest_domain_id);
> +	ret = of_property_read_u32(dev->of_node, "qcom,apr-domain", &apr->dest_domain_id);
>   	if (ret) {
>   		dev_err(dev, "APR Domain ID not specified in DT\n");
>   		return ret;
> 
