Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4066E638D60
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 16:19:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229570AbiKYPTW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 10:19:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229732AbiKYPTU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 10:19:20 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AABE725290
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:19:19 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id q7so5509993ljp.9
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 07:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ycHWgZSr32i91azQqyxUznDoRODxzhi2IJ/I8pPfmy8=;
        b=OKhk4rKG+3lAVJ+5lYht1pDJstcCAVIftdQG4+KREUpvP6HwK2Vh0tFuZh5+seLE2A
         Bc3ws6ioxUAhnlK2J1wevymAHzZRyredfNs2T2/apP5OjylwdP+Uc9Lwc88tIn/XZ6So
         j9/gom8iBRsEPPuL9qAFbV9kKrM+tKidZZSseQZlncAa9T8tPSy0h1JCRDSyU5MQ5BFg
         FaDSbLgw3AydVcJjItJ46fvPBzQpCSwdIxJMnjk3QsY7GKg5ZcKLhbNnALaiuX8I9cFG
         YDi08YYZ5oWpKQ+U71vanD7AzILV4ee1Zb/e3kIJh95qspc+qJ0UGWa857QMvrv+Dn/v
         fO9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ycHWgZSr32i91azQqyxUznDoRODxzhi2IJ/I8pPfmy8=;
        b=Zn64/eGvmaKazCcwcKkXII8XAMRnKmVp9oB7LIXqpNtHzygzsoJxWAl6iTdl94AxZx
         1I7QcseCfXSenUCrz6n+TYEDdT6buXicc0M9qPtU/DwgDRz9YNTa7rQGv9EKnjgYAodz
         dARsPk1cwuVqGjHVKaGszZaQAykyyPlCil/M+ARlWhkfpF5RsDwZ/qokJQDDbMxoES++
         TJWI7wyGbHhFu5MKr/OmFc8qhW9XatZAKeOtvljTmdJrGH/XHRMdGNA4dVmxZZaVDRsN
         lEExtKQCWy6SS3zbQ6DC73j4Vu90EhTg6qc9mGRfw+UwYiFE8V2FiDS/NDZL7dteI0CT
         0N5w==
X-Gm-Message-State: ANoB5plI5senuBwI+i4qLxTuye49i6PHGmAD5Ill94fwE9GBhtdJCKe5
        TvYVmNmuaBS+Bc2MUlticgAmbA==
X-Google-Smtp-Source: AA0mqf7Vx+8hYCcCVDabkesMX6kF1I3Y1VIz85S3nb7w0p0wzBOoolOxon9NHcNnyRD3/2JxU1GEpQ==
X-Received: by 2002:a05:651c:1603:b0:26d:d603:8df2 with SMTP id f3-20020a05651c160300b0026dd6038df2mr11516146ljq.189.1669389557979;
        Fri, 25 Nov 2022 07:19:17 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n25-20020a05651203f900b0049f54c5f2a4sm555475lfq.229.2022.11.25.07.19.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Nov 2022 07:19:17 -0800 (PST)
Message-ID: <756daf8d-9d4e-12f7-4d3a-e9da8480ed6a@linaro.org>
Date:   Fri, 25 Nov 2022 16:19:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 7/8] media: dt-bindings: media: i2c: Add mlx7502x
 camera sensor
Content-Language: en-US
To:     Volodymyr Kharuk <vkh@melexis.com>, linux-media@vger.kernel.org
Cc:     Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>
References: <cover.1669381013.git.vkh@melexis.com>
 <343c0ab708ab35ec101bcefbe2fda5c15d5e6bfd.1669381013.git.vkh@melexis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <343c0ab708ab35ec101bcefbe2fda5c15d5e6bfd.1669381013.git.vkh@melexis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/11/2022 14:34, Volodymyr Kharuk wrote:
> Add device tree binding of the mlx7502x and update MAINTAINERS
> 
> Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
> ---
>  .../bindings/media/i2c/melexis,mlx7502x.yaml  | 126 ++++++++++++++++++

I mentioned you have wrong subject prefix. Only one "media" in the
subject prefix is needed, so:
"media: dt-bindings: Add melexis,mlx7502x camera sensor"

>  MAINTAINERS                                   |   1 +
>  2 files changed, 127 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

