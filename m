Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 82E0353A462
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:53:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348283AbiFALwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:52:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbiFALwm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:52:42 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 772C52F013
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:52:41 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id n10so3228854ejk.5
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KrPBM8TYY3bOnaJ5976mXy/QINopFncMpgKZedtLopc=;
        b=FQ+Fc7v+kBGL/TcfPo0SfM0ECaf+R1RihcQJVHo+fqR/oFIXxBAsdTm1XLQExF9nK/
         rzunFmzcK5442KjBts5zAj3OIog/EkJIgEaRNXIDYMuN5OsMrQBYS+uazHJkTVz5YEkM
         Ap9ws9imrcR1nS+uES2BRFwIKHvKddodmZMFv6av4rxf8ZHRwXcKBk7OD1HF9L6UF4b1
         Y6aWfaZcy/XxOcUimzjDuoPMiv56Tug06FStSmAqsMG6Ckmr80RwIdSVu5KotfC3GT7S
         21Hm6Gs3Eh3cY9qy/jgwhHlHupg+ktmtgmtJ/tJ5vCjPcFzomaIhy2yp9XXnh6HZMLpo
         Rhkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KrPBM8TYY3bOnaJ5976mXy/QINopFncMpgKZedtLopc=;
        b=2r/a+9wfG8hrtJiX06/shwKV5MpevoB/YtXvHDzTjWCV0/dnqdl5K6O7t7dQ0IOI3i
         zBg7aGG1xhOYI6AVGiRgPgjsSZzHOLb2V2SX4mwXnbXabKPx7PRulMB9fif4ClKsGGPB
         6H5IPehMSNSQY40JsG185OGmzUBnSKv+ZGrdYVtHWauA2a6cWJESTOttq7he+o5uMh3K
         rKb9Ek1S3uaisKmxmm1y0nCf8I3YhjJSZZJh9aNqPAbb2sk38+7vn2GICJ/OpeaESjk/
         qR44lUjw/c5AzWJpCAv58kVhNb0+rDVzpltCQfELtU5nY9WE0aV0qpTqV24RFBLHliaA
         Q+vQ==
X-Gm-Message-State: AOAM531p/3Qz8wWajlhgzIYXJIJnGdQH7hlRcLfeLrkvc4mam1EeEt9c
        SDs8/dv/g+NjFbBm0GUcUfV9CQ==
X-Google-Smtp-Source: ABdhPJwL1AUUvBQLimLQyXaFTsUziUCg3CoLrAXDhVRFfvyOZhsYj8MqMY20SyiEIfDtXrnSFGIL5w==
X-Received: by 2002:a17:906:39d1:b0:6fa:8e62:c8a2 with SMTP id i17-20020a17090639d100b006fa8e62c8a2mr59097373eje.487.1654084358250;
        Wed, 01 Jun 2022 04:52:38 -0700 (PDT)
Received: from [192.168.0.179] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id vz22-20020a17090704d600b006fedcc56b0bsm621280ejb.170.2022.06.01.04.52.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 04:52:37 -0700 (PDT)
Message-ID: <361c60ca-5c13-7437-46e9-b4b7cd78682e@linaro.org>
Date:   Wed, 1 Jun 2022 13:52:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 2/8] dt-bindings: soc: imx: add interconnect property for
 i.MX8MP hdmi blk ctrl
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, djakov@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        abel.vesa@nxp.com, abailon@baylibre.com, l.stach@pengutronix.de,
        laurent.pinchart@ideasonboard.com, marex@denx.de,
        paul.elder@ideasonboard.com, Markus.Niebel@ew.tq-group.com,
        aford173@gmail.com
Cc:     kernel@pengutronix.de, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-imx@nxp.com,
        Peng Fan <peng.fan@nxp.com>
References: <20220601094537.3390127-1-peng.fan@oss.nxp.com>
 <20220601094537.3390127-3-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601094537.3390127-3-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 11:45, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add interconnect property for i.MX8MP hdmi blk ctrl
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
