Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F15F571F10E
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 19:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232915AbjFARpc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 13:45:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233056AbjFARpa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 13:45:30 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BFFE19D
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 10:45:28 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-514ab6cb529so5145167a12.1
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 10:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685641527; x=1688233527;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CBRDIKv9pFHHAnzSCCPWxz8E2s9GC4jBbWRxKZHWfIc=;
        b=u+Y5wfCebXA7ka7woUFCIcXqRRZJnjDVXm+r6UIoZoD6rYdgUmg6RTJk98psKqP/Sk
         1FpJk99QsDASd9QZNZQEpAYASYc8cNOYZv2Bf9mNMH2nHjQ41+nDmFXY4R8CIDrLcPPl
         gRDmuhrvnZzyXAh6HL5uaXSCOHO8LYUHBKZgHXm8+ee7nufTlW9g4bvSW9v1FIlSB1eX
         H4hZwftzd+dxrjJs2/n1B5/SkrqKb7ZpDXV4KNF3zu5DJNXOci9nwrhSsKjYRADxkcPI
         teBDJVf/u36rvJ1j0Jwdc5QdqUPysrkdwcXOHgwPAeOzj+ly2LDU7VZpZgVABuH4gS0W
         QkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685641527; x=1688233527;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CBRDIKv9pFHHAnzSCCPWxz8E2s9GC4jBbWRxKZHWfIc=;
        b=b06yLYZ5vnUPUwPyuO5EA9pgHxRG6ge8PgxZKowJUqfAsqaJzQHmbfHlHpfbCAUW/y
         ucSw9u3/vZKyh373JLy5BOIi4QQD0zm+7HuCG6vT8w/Rq8DXWoXW0Dseq5ScHXKuN9cX
         c8meDqxR17rky5OAP1zWTWoM0PlypN0TLJ58u2Tu2K9HjcAFiS0zVy6JhBfCvWi98E5N
         ZEQGCpPEiuvqXAMZZ1AN8TJWWtlhkHR0yw5gEjR/BwL1s0vKpDmjKOqLjmEWufFsTGVN
         tOCSQm9+3Xy5ER27DYimzA8Yxn1iDzDWVQu/4exwKnAGViScH8VGi8X7ky5G6q4tcZDi
         M60g==
X-Gm-Message-State: AC+VfDy0+N2MtyZ9o5vUOGubor8hBJTcqdiLwrG9F9EqFM1BMqyAKpn4
        tOWUvf0n4NVX7d7PwIEZaSCfJQ==
X-Google-Smtp-Source: ACHHUZ7Unk95/39P64w6MIuE0m9e+mNxNCBz6qY02E+GST/o0s5lxoRIlH/bV7R9zajjnFD7YNu7aQ==
X-Received: by 2002:a05:6402:3582:b0:514:a5cf:745b with SMTP id y2-20020a056402358200b00514a5cf745bmr637933edc.3.1685641526752;
        Thu, 01 Jun 2023 10:45:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id p16-20020a056402045000b005147f604965sm7519209edw.24.2023.06.01.10.45.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 10:45:26 -0700 (PDT)
Message-ID: <bd257ed0-71a7-0504-0bfe-14775ac93571@linaro.org>
Date:   Thu, 1 Jun 2023 19:45:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: Add NXP i.MX93
 parallel display format configuration
Content-Language: en-US
To:     Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     andrzej.hajda@intel.com, neil.armstrong@linaro.org,
        rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
        jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com
References: <20230531093206.3893469-1-victor.liu@nxp.com>
 <20230531093206.3893469-2-victor.liu@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531093206.3893469-2-victor.liu@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 11:32, Liu Ying wrote:
> NXP i.MX93 mediamix blk-ctrl contains one DISPLAY_MUX register which
> configures parallel display format by using the "PARALLEL_DISP_FORMAT"
> field. Add device tree bindings for the display format configuration.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v2:
> * No change.

How did you implement Rob's comment?

> 
>  .../display/bridge/nxp,imx93-pdfc.yaml        | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/nxp,imx93-pdfc.yaml
> 


Best regards,
Krzysztof

