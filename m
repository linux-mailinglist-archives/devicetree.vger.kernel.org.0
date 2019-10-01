Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0B9CEC3179
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 12:32:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729869AbfJAKcV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 06:32:21 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:39855 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725765AbfJAKcU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 06:32:20 -0400
Received: by mail-wm1-f66.google.com with SMTP id v17so2617658wml.4
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 03:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qa7ARWil+Gf9sud6ZwWxSqOjB3puoeCNU9UJi6QNvHk=;
        b=gnCF+7PVh8ab0gVFhLAurpYA7CDb19oGezEpAWvuA7WvQitru63Q1+9a8Ntl49D0gX
         3+vN8FlWdtx/5icsQzhuyfxSXARkdBYSWxfIf+GtCvoU7Dv0Af/JXS8lSoSjX12KGSQN
         B7YzbgfRquvVDIg8olpnj/EzUus4vaSrGKfHDVkn11m1jSbjKHpGO0bQiwR7EALgt/Nd
         9Vr1ROAZ1NdcNGtpr3Q8jin48dPs+sEXMLCIoAg9TXPQ98Tavl0aFY9rFOxQ/GejGZjz
         9xYmVqsjG/QIj6i75j2hDPzFbktOc2GFOBl9UdavMRSOP/FqqdNovYolGZxmuhV3RLSM
         5CCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qa7ARWil+Gf9sud6ZwWxSqOjB3puoeCNU9UJi6QNvHk=;
        b=gkRd1fgIYBX7nPpD5lTCH5QaZiPgr3tfEO1RE3pJItNNzcoICpDkCLGBbUux2n2LWA
         m9+GI9jVHbI3/bHbnAcRAiHS541XU57eGKJriHxlJ6YG+XjfP4Kirpg9Rq8t9itrqdPH
         klk/uPf6TMaFdNgQZpYs4DlqoJL2r6AVMYthX3wCGWQrrREGTeLQ/5EwlwDnFHcSBHcA
         rPTmq9qo+N6K8xPqFq+FuUD5/GTb+8+KbUKyoOglL1jdzMnDGqZNlFyHXzBD7X68Ct+v
         Te8d8G22iSp07a26lc61m70BVwTRBDLY5l8bbBMVSRBQZeF+0ZM0q9tSGxfC9eDqCCgW
         62wg==
X-Gm-Message-State: APjAAAXixR9j17ijZGWsS7v4KMMP0HDHVIsf4iNL10lGyAX0lTqmn4OD
        QgSZvX91mFK1+4MZI9nQFnemlw==
X-Google-Smtp-Source: APXvYqzhgfIIJO6HBAuwZ0yhqRjbelGNUuYo1EivdFb3MbEwst9N1mnI1vyxyVUM3GOPqpF4R0y1dA==
X-Received: by 2002:a7b:c451:: with SMTP id l17mr2745570wmi.61.1569925938927;
        Tue, 01 Oct 2019 03:32:18 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id w125sm5293337wmg.32.2019.10.01.03.32.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 03:32:17 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] dt-bindings: nvmem: Add Spreadtrum eFuse
 controller documentation
To:     Baolin Wang <baolin.wang@linaro.org>, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     orsonzhai@gmail.com, zhang.lyra@gmail.com, freeman.liu@unisoc.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20f750aab0e16e45fa2d4e32843cee08395c7350.1568094534.git.baolin.wang@linaro.org>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <9da5f5f9-885f-3131-d700-e1d8e2628884@linaro.org>
Date:   Tue, 1 Oct 2019 11:32:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20f750aab0e16e45fa2d4e32843cee08395c7350.1568094534.git.baolin.wang@linaro.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/09/2019 06:52, Baolin Wang wrote:
> From: Freeman Liu <freeman.liu@unisoc.com>
> 
> This patch adds the binding documentation for Spreadtrum eFuse controller.
> 
> Signed-off-by: Freeman Liu <freeman.liu@unisoc.com>
> Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---

Applied both,

Thanks,
srini
> Changes from v1:
>   - Add reviewed tag from Rob.
> ---
>   .../devicetree/bindings/nvmem/sprd-efuse.txt       |   39 ++++++++++++++++++++
>   1 file changed, 39 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/nvmem/sprd-efuse.txt
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/sprd-efuse.txt b/Documentation/devicetree/bindings/nvmem/sprd-efuse.txt
> new file mode 100644
> index 0000000..96b6fee
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/nvmem/sprd-efuse.txt
> @@ -0,0 +1,39 @@
> += Spreadtrum eFuse device tree bindings =
> +
> +Required properties:
> +- compatible: Should be "sprd,ums312-efuse".
> +- reg: Specify the address offset of efuse controller.
> +- clock-names: Should be "enable".
> +- clocks: The phandle and specifier referencing the controller's clock.
> +- hwlocks: Reference to a phandle of a hwlock provider node.
> +
> += Data cells =
> +Are child nodes of eFuse, bindings of which as described in
> +bindings/nvmem/nvmem.txt
> +
> +Example:
> +
> +	ap_efuse: efuse@32240000 {
> +		compatible = "sprd,ums312-efuse";
> +		reg = <0 0x32240000 0 0x10000>;
> +		clock-names = "enable";
> +		hwlocks = <&hwlock 8>;
> +		clocks = <&aonapb_gate CLK_EFUSE_EB>;
> +
> +		/* Data cells */
> +		thermal_calib: calib@10 {
> +			reg = <0x10 0x2>;
> +		};
> +	};
> +
> += Data consumers =
> +Are device nodes which consume nvmem data cells.
> +
> +Example:
> +
> +	thermal {
> +		...
> +
> +		nvmem-cells = <&thermal_calib>;
> +		nvmem-cell-names = "calibration";
> +	};
> 
