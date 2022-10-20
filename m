Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2944C606592
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 18:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230188AbiJTQTQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 12:19:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230478AbiJTQTN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 12:19:13 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63C6D180AFC
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 09:19:12 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id z8so14012048qtv.5
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 09:19:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3nmjFBEeD9ZP/eQLwAKtGJ8tL9wL4OpdvH58XZgElX0=;
        b=Ew3XbGq/ADOFDDQULys1w5f0CUfRk2TBhCZqASgyGf36zV7VrScYztVOw8PmvpPlIB
         HYGwtPKOluSR6DSzzIvr24JeJ0YYWoedtS8MzVoC5I74C3fbl78BwL4tOR0KcydB2KSb
         /V2CzhHyrKES9ZLC827HHJDu0gp7CJm6ybgYZrtdqvPzZMmoCUXj/HWvUXMmWbIG1pmn
         T1bsNTHO9qQzwZZnkI0HRDhTTPZ9azKvLazcaXqn1eFLd1J/GxU3DtrwmOLyVeSlsYvg
         bG461MfFxyncmwL3rNmwLUZIHwqKECSrwdyKE4M5VeHTEJ9bCVZBJz3/LEdk03MCSnR0
         Cw8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3nmjFBEeD9ZP/eQLwAKtGJ8tL9wL4OpdvH58XZgElX0=;
        b=BEpakDxfUaYL8YkzJsewrvWobZ6N7zapYhbDCgXXaME9qRNqhrgWWQmvhorFQECnGU
         O3TFoYlq3qbgBUJnCKQDiCdCDcO2Ue6wgLs8QS9c8dMeu1eFH2qYAQ3LZg4fNxiaS0bu
         litrvGkZMkbCXOWt+rom4yUsyVuMvYgNj9wIlyhXOvOYL2wyBv5o2uMVE+ug73Bq+0L5
         8XEhWcCPah3cx3qC7LtZHipltdlFbBEyZTx8Cop7I6AnVp2FMlE2UxilEZDZAm5EuCvX
         a1wmtWOx+h2lL3h4qHIa2raguym6v3pQaO9VBF9i4/Pv8RZ62sNgWQo6ScupMp7xP6kq
         003w==
X-Gm-Message-State: ACrzQf26M8l06lw0R9sy+pil1y4WfzgKuikbQj95+Y0jRZJYTVvIMUZb
        +zGdB3T+6RWLkyUyts0Q+g71Ug==
X-Google-Smtp-Source: AMsMyM7XjZb4dPpbk62kCztyoDByKSy+hibNQg8o9nkkhr20RuX1MAdCla2yOjzYa0GvSTYvZIsm+g==
X-Received: by 2002:ac8:7c44:0:b0:39c:cbe1:2787 with SMTP id o4-20020ac87c44000000b0039ccbe12787mr11764085qtv.214.1666282750048;
        Thu, 20 Oct 2022 09:19:10 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id r17-20020ac87951000000b0039cb9ef50b5sm6277185qtt.26.2022.10.20.09.19.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 09:19:09 -0700 (PDT)
Message-ID: <aaf7d4a9-c767-6a63-691d-e3ae00b206fc@linaro.org>
Date:   Thu, 20 Oct 2022 12:19:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 1/3] dt-bindings: soc: mediatek: pwrap: add MT8365 SoC
 bindings
Content-Language: en-US
To:     fchiby@baylibre.com, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Johnson Wang <johnson.wang@mediatek.com>,
        "Zhiyong.Tao" <zhiyong.tao@mediatek.com>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Rob Herring <robh@kernel.org>,
        Tinghan Shen <tinghan.shen@mediatek.com>,
        Sen Chu <sen.chu@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
References: <20221020130957.25197-1-fchiby@baylibre.com>
 <20221020130957.25197-2-fchiby@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221020130957.25197-2-fchiby@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2022 09:09, fchiby@baylibre.com wrote:
> From: Fabien Parent <fparent@baylibre.com>
> 
> Add pwrap binding documentation for
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> Acked-by: Rob Herring <robh@kernel.org>

This is not exactly v1 then. Please use patch versioning and add
changelog (to cover letter or to individual patches).

Best regards,
Krzysztof

