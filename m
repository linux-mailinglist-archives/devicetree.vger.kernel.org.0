Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB7848305F
	for <lists+devicetree@lfdr.de>; Mon,  3 Jan 2022 12:16:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229883AbiACLQ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jan 2022 06:16:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbiACLQ1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jan 2022 06:16:27 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94A9EC061761
        for <devicetree@vger.kernel.org>; Mon,  3 Jan 2022 03:16:26 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id g7-20020a7bc4c7000000b00345c4bb365aso18216122wmk.4
        for <devicetree@vger.kernel.org>; Mon, 03 Jan 2022 03:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=t28TMUufcPVifrbma5vt3kzMSNjxpkRPdx4Vm4ZAvJY=;
        b=kCyJMKVuV44jLYAWVrdRkNS0uHdIPQLOn855UQt8nIy2sDf/SGtoIxJw/28XZzn9y+
         FJMuqiugk2LfWAvjCXz63NtutgMUUqWqP1oZ3J9cj635XRD4dceL4V4XYaVkQt3ItIQu
         dOWwoyM2oY7qK/A7IGidF4RhgSOHRPbmfiTTbBqZxa9Z5/1J6iqUlnqFSsb/zST4NuoN
         n42ypdYOp2ioTFPdrnpHoCRSCCwmJUq0tHNNbu0SYs+viVWqYjkNK+fBiS+kxXmCTQIP
         ok8R1ZsQBZmP9K63c5TgQHivOlM0ZH9dd3uujUgAsbobOtbR6S0cELJjHmOzR+g81/fo
         p6fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=t28TMUufcPVifrbma5vt3kzMSNjxpkRPdx4Vm4ZAvJY=;
        b=m/9XtjoYiXaQeUVAsrLVb3POEUGClqlMduG6OJ6uL6b6tzd8BRugHJC++9WqYTaeYi
         zz1CN7qlOlJJ9etm7MIr3I3yuAFFuxDqwYmHYtzYSCSFd0NdjRcHYnYyTvwfinHe2S4J
         gAJ2QM6sDITTP42JTX5/azC3hqq9/NM8pvH95m3mNs7Kuur0ME2v6GYVfJeHCpBCflQo
         /mDObQ7H4epnS7SHhw5hA+qP2m0g2WZzJTh9YmBEvlgiOhUgc1ExbJNaYeK2avd2Wfjs
         nYdCFIncwWM8ErXRIJXJxTB1vikvzXsIJIksOBKWzPeeeD4iOPLP6frXwG7d3I9xQz5G
         193A==
X-Gm-Message-State: AOAM533JKrNswATmrVVv3J+JojraiV3Gbx/v8jTF4fyalknG4T7d7xyB
        TpBi3r7+wDNvtuKDQw6WeHIz9OXInwPKMA==
X-Google-Smtp-Source: ABdhPJz2WwhZD5aHiO6DEz0k1dNtVSYr/xgKMa4zYwjSlVO1l0QAKWV3xeEhunQSO6SI0h7yMS4/+g==
X-Received: by 2002:a1c:f012:: with SMTP id a18mr38043532wmb.73.1641208584245;
        Mon, 03 Jan 2022 03:16:24 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:7c9d:a967:38e2:5220? ([2001:861:44c0:66c0:7c9d:a967:38e2:5220])
        by smtp.gmail.com with ESMTPSA id m10sm35357402wms.25.2022.01.03.03.16.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jan 2022 03:16:23 -0800 (PST)
Subject: Re: [PATCH v2 1/1] dt-bindings: display: meson-vpu: Add missing
 amlogic,canvas property
To:     Alexander Stein <alexander.stein@mailbox.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
References: <20211219094155.177206-1-alexander.stein@mailbox.org>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <af0a8ecd-3c41-2eb8-43bf-dd439a958d53@baylibre.com>
Date:   Mon, 3 Jan 2022 12:16:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211219094155.177206-1-alexander.stein@mailbox.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/12/2021 10:41, Alexander Stein wrote:
> This property was already mentioned in the old textual bindings
> amlogic,meson-vpu.txt, but got dropped during conversion.
> Adding it back similar to amlogic,gx-vdec.yaml.
> 
> Fixes: 6b9ebf1e0e67 ("dt-bindings: display: amlogic, meson-vpu: convert to yaml")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Changes in v2:
> * Do not linebreak Fixes tag
> * Make amlogic,canvas mandatory as it was in textual binding already
> * Add amlogic,canvas to example
> 
>  .../devicetree/bindings/display/amlogic,meson-vpu.yaml      | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
> index 851cb0781217..047fd69e0377 100644
> --- a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
> +++ b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
> @@ -78,6 +78,10 @@ properties:
>    interrupts:
>      maxItems: 1
>  
> +  amlogic,canvas:
> +    description: should point to a canvas provider node
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
>    power-domains:
>      maxItems: 1
>      description: phandle to the associated power domain
> @@ -106,6 +110,7 @@ required:
>    - port@1
>    - "#address-cells"
>    - "#size-cells"
> +  - amlogic,canvas
>  
>  additionalProperties: false
>  
> @@ -118,6 +123,7 @@ examples:
>          interrupts = <3>;
>          #address-cells = <1>;
>          #size-cells = <0>;
> +        amlogic,canvas = <&canvas>;
>  
>          /* CVBS VDAC output port */
>          port@0 {
> 

Applying to drm-misc-fixes,

Thanks,
Neil
