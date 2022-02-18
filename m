Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C24D14BB824
	for <lists+devicetree@lfdr.de>; Fri, 18 Feb 2022 12:32:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233348AbiBRLc7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Feb 2022 06:32:59 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233328AbiBRLc6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Feb 2022 06:32:58 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3329E2B0B08
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 03:32:42 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 660303F203
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 11:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645183960;
        bh=UvFAlplJwnxMAQBlNc5igwERL0YBCCEO2tKezb7VW+A=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Z2bNVh6XLleHxDbY5PwyQgeshjB70zlxdh+Gegl3/4gh/hEx/xdN8vD4+rPi+fTqV
         0aFsE0I/a5N0MfOalCvsiUBmcdEtcKah4S1CnNROVU408gzUdjyk49LCJhfQSxgPON
         jqrIss2KgaFYTolBviuhKHPDICijatUHEfiERABKtwLtwmfdvWNHP/5o28BUOEEdud
         n1Ru28FKdDgpdjKk+5aqekjZosi9DORKwAxQ5g7GycBerq9CMBq3sOJicZcNMd4AJu
         zU9ST7LtVeDIOWa/YLdXLeLC8nO6HAOkFi5tAuEwdvrkTTCLWqEyru3JGHiyrIDA9K
         nkZc9TIvTbgoA==
Received: by mail-ed1-f71.google.com with SMTP id j29-20020a508a9d000000b00412aa79f367so2506266edj.0
        for <devicetree@vger.kernel.org>; Fri, 18 Feb 2022 03:32:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=UvFAlplJwnxMAQBlNc5igwERL0YBCCEO2tKezb7VW+A=;
        b=wkp1WFpaQoYEIbIAitV01BsFAPlb48f5Y0KIujX+lFOJLINv6eTPGJH3CJTrREmwbU
         buLYJj9oKXWnM2gKdfvkKiDnr0Cwa785hpQHjg7Dc8a0vI0yqb5HJTpk/Cz85ZOwp/JV
         Z2AqvPpvXd7ymhul7VGFPof9qFP4Y4uWcJX95eOX9Q+aUyFk7QjAmnSGM9ldV7ZLn/kr
         C0bjzPeCvuNS2N6MGxp26Qc7ehVG5V+9lIyAV5EUC2M9K+jsoSDto5v2+z3GtiZIXP3i
         xc0UVJ0PL0lvADNdiTaZ56FY7fbwSvsUq2s3pL5fj8bglLn6lGrlgtxC/WA+jplV0hU+
         keZQ==
X-Gm-Message-State: AOAM533Q8/rMkUwPPe6vKdWLZO4nuGLZ1XfnhePUfYJvl5qjwg2aptuo
        6Dx/HHdo3877lzXmWNUfKnxdMaXEkF0WbCUaVm7Yiu39cq2OZ4sjImX56iqRUbgtmdhTwjlpyd+
        GlJSzM/JbVSns4gakvG/lDf3GGitzmGvnLsqbs+Q=
X-Received: by 2002:a50:d711:0:b0:410:a51a:77c5 with SMTP id t17-20020a50d711000000b00410a51a77c5mr7948026edi.154.1645183960092;
        Fri, 18 Feb 2022 03:32:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx2BGgtV4Rd6cxQm5ku1pja1UubWBVIolHvtF8LVAKjcSADCCBUKO4UoAMMNJvsWlax6cMtgw==
X-Received: by 2002:a50:d711:0:b0:410:a51a:77c5 with SMTP id t17-20020a50d711000000b00410a51a77c5mr7948005edi.154.1645183959873;
        Fri, 18 Feb 2022 03:32:39 -0800 (PST)
Received: from [192.168.0.114] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id i6sm2177831eja.132.2022.02.18.03.32.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Feb 2022 03:32:39 -0800 (PST)
Message-ID: <12b558e3-dc99-db6a-73ea-7d704262ac6a@canonical.com>
Date:   Fri, 18 Feb 2022 12:32:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 1/2] Documentation: dt: extcon: add optional
 input-debounce attribute
Content-Language: en-US
To:     Raveendra Padasalagi <raveendra.padasalagi@broadcom.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     bcm-kernel-feedback-list@broadcom.com
References: <1508406773-887-1-git-send-email-raveendra.padasalagi@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1508406773-887-1-git-send-email-raveendra.padasalagi@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2017 11:52, Raveendra Padasalagi wrote:
> Add documentation on optional dt attribute "input-debounce"
> in extcon node to capture user specified timeout value for id
> and vbus gpio detection.
> 
> Signed-off-by: Raveendra Padasalagi <raveendra.padasalagi@broadcom.com>
> Reviewed-by: Ray Jui <ray.jui@broadcom.com>
> Reviewed-by: Srinath Mannam <srinath.mannam@broadcom.com>
> Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
> 
> Changes in v3:
>  - Modified commit log to name debounce-timeout-ms to input-debounce
>  - Added Reviewed-by: Chanwoo Choi <cw00.choi@samsung.com>
> 
> Changes in v2:
>  Rename debounce-timeout-ms to input-debounce
> 
>  Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> index dfc14f7..d115900 100644
> --- a/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> +++ b/Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
> @@ -10,6 +10,9 @@ Either one of id-gpio or vbus-gpio must be present. Both can be present as well.
>  - id-gpio: gpio for USB ID pin. See gpio binding.
>  - vbus-gpio: gpio for USB VBUS pin.
>  
> +Optional properties:
> +- input-debounce: debounce timeout value for id and vbus gpio in microseconds.
> +

Use standard unit suffix. See schemas/property-units.yaml in dtschema
sources/repo.


Best regards,
Krzysztof
