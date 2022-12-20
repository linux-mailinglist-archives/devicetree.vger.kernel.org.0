Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 21A3E651E2A
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 10:58:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233624AbiLTJ5v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 04:57:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233781AbiLTJ5E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 04:57:04 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C461DD9A
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 01:55:33 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id y25so17759703lfa.9
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 01:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5F3EDqHaAaBkwK8dgS+P6ptpGavemal+xXF9dHVZ1Mo=;
        b=hZUVLL7EDHfJZhxzTxFapYTZHxS7c0VQUioNmCOCJw7i9iV1AIx2pQuTp5diNyxIY/
         cvpKNTQglgXR9AuUqg7UQC2CQB2gKZ4z/WgcdYJXs9gyljd/DdNLC5w7VJWenCgoz5sh
         J9WSzDc/0h01Tkvn4MGFBCVEACSKHlM1+WdWwSTbRWwRs70Vk1Y6kwRRgJcSOXsadTWn
         6BP0Iu36PwhvgI3v8wHi3rNPkcYNEgDw/w5IWhayxkTVL2srHBSfl7a42J1aSowqmhUh
         KOw7lIuu6bDEyK06iQHrjDwEkbBI8doceNv7c2DMEoxpPMngi5YrmqgGPwgmPOSTrSMl
         KkFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5F3EDqHaAaBkwK8dgS+P6ptpGavemal+xXF9dHVZ1Mo=;
        b=UQHjZVdH+HpRvoycMyf2ERHgx6cAfy9VMzvMqHXk66zQ6iZNgVE6RZwBnnS43uTN3e
         pbSwmv8jQTc44FzOY7eUlf8EmVqiuzy0hYJ8AoA7iHiKcbKelEybOyGM3AEelnDQsSe/
         zdurlEOptptefqFS4qxnU1vx/xaZTuCkwE0U1qR9bWNUD9aOqTV90q2RbaxwmOd1TxXF
         D3X0HNnxFf8vbPK7y1ZvbB/APv8Z7Ubxfa6clDDaW2saXAvgqK5I6Q8Rw4uvsM7IBia0
         zxDS1ErqMDKqW/93OQWNoTvictHJgsTP8UQ3ejKRRwKvU41J+eTLsAfk+XbR1PKWVNcQ
         5UcA==
X-Gm-Message-State: AFqh2krMUBrJImdCfrVmGIIq0G5IrLpCUQuTIirzLU9YlmRlWEmYGRbd
        W3YRA7wAzAxhr0H924NYDIgCrg==
X-Google-Smtp-Source: AMrXdXstQOU+EuywhBXn05xJVw1VNj9pca0CefR0lvpIHyr15hfGmdJwDvONL/yTCuejQPkFV4buww==
X-Received: by 2002:a05:6512:34c2:b0:4b6:fae9:c9b7 with SMTP id w2-20020a05651234c200b004b6fae9c9b7mr477078lfr.7.1671530132182;
        Tue, 20 Dec 2022 01:55:32 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t5-20020a056512208500b004acd6e441cesm1387856lfr.205.2022.12.20.01.55.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 01:55:31 -0800 (PST)
Message-ID: <26d4662b-1742-2963-a7d9-08a39bcfba7b@linaro.org>
Date:   Tue, 20 Dec 2022 10:55:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v1 1/9] dt-bindings: media: rockchip-vpu: Add rk3588 vpu
 compatible
Content-Language: en-US
To:     Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
        mchehab@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        daniel.almeida@collabora.com, nicolas.dufresne@collabora.co.uk
Cc:     linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20221219155616.848690-1-benjamin.gaignard@collabora.com>
 <20221219155616.848690-2-benjamin.gaignard@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221219155616.848690-2-benjamin.gaignard@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/12/2022 16:56, Benjamin Gaignard wrote:
> Add compatible for rk3588 AV1 vpu decoder.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-vpu.yaml | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

