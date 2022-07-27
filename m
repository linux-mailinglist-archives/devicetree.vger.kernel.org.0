Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4893658299C
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 17:27:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233268AbiG0P1b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 11:27:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233170AbiG0P1a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 11:27:30 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38CD03336E
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 08:27:29 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id m12so26537555lfj.4
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 08:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=cldYDRGoUxCLGjKsA9926W9qeodJZ5xTATUaMdBvw+8=;
        b=IFEiuYWNIzztkedjqQaYCsURRrAMCmcyR3MxjlWulOlcDLq5r0GkgLlc0flh9hU6nB
         PUEeD5hTOQ5edIdxUSpnBvBwx1jihISMolvW2Qme/F1ADtXpLvDaksgfVW7Bvz+L9Mjv
         w2nDuh3hjSX+/d8ng3YY0SBoyz15Zmhr2il5qj7IbVSpV1rU6G9SjglVUXDvvoMHbkVR
         lXZZw2AcoPA5qEaoLcbRZUKWhZx+pvNTiUyVmAIPeoo/gIns5ZN94nEvfYOP+5ORaqYR
         aIvq/8KuvBZ3g6jY9SqSZQ1eDDfdTFvaGwc9ymnMT9LTmPA488cyU/aS7HS/tk5YJPTG
         FHng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cldYDRGoUxCLGjKsA9926W9qeodJZ5xTATUaMdBvw+8=;
        b=aXxZ/YxHu4nfIdld4JrZKeCGDxgmz2wtsaByAXTohkL03HuQ56c+srajyRDXK0gCGx
         tnEs093hmUQQCst7/SyGBrx1VbSNqqm2z7ekeoSRfooO3uMtjBOMc/RZXFal4RMpajZi
         WbEQ/2Qj6dEbUVcMMxBv/vIYyv5vr4dzuCzaO0C4J3ZdHXVi8VHD4GPV8oOiKpHnP8vo
         SDi+WT/wI3PV+/HmOqyKbIUfgOEKNDin6Ogr2AxomSp8UPRSxybU18I8rPuy58LgQ29K
         nP5YWf0OYw7MYeyuuFHGY/4AGuSL1VKeMsJZVOTwkDb7Vlzugzdea1ei8labJVGIY3Jz
         KIDg==
X-Gm-Message-State: AJIora/SJviEfXduIERAJ3Yf0Ectll56V05dkT56bEtm+2Xzp0brPZxk
        mwO+m2uDk3yVoiYg7qJ2qz06eg==
X-Google-Smtp-Source: AGRyM1tOIzFvIUBsCCRkrLBJuFm7HZXYfpM6CS8zcYiZaGmW4hlA1AJt9pj6bSSxBcxrMTF8RdqO8w==
X-Received: by 2002:ac2:4c8a:0:b0:48a:bee2:37fb with SMTP id d10-20020ac24c8a000000b0048abee237fbmr757958lfl.235.1658935647224;
        Wed, 27 Jul 2022 08:27:27 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id z20-20020a056512309400b0048a93325906sm1497148lfd.171.2022.07.27.08.27.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 08:27:26 -0700 (PDT)
Message-ID: <b094bf45-ad7e-9e42-89a6-bae0b8e4aae1@linaro.org>
Date:   Wed, 27 Jul 2022 17:27:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [v7 3/4] dt-bindings: arm: amlogic: add MagicBox M16S bindings
Content-Language: en-US
To:     Zhang Ning <zhangn1985@qq.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, narmstrong@baylibre.com,
        martin.blumenstingl@googlemail.com, sean@mess.org,
        christianshewitt@gmail.com, linux-amlogic@lists.infradead.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20220726143649.142574-1-zhangn1985@qq.com>
 <tencent_A962A641C180EEC2680CA53DDD6643BA6E05@qq.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <tencent_A962A641C180EEC2680CA53DDD6643BA6E05@qq.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2022 16:36, Zhang Ning wrote:
> Add manufactor bindings for Tmall
> Add the board bindings for Magicbox M16S Tv Box
> 
> Signed-off-by: Zhang Ning <zhangn1985@qq.com>

Please send patches with correct subject PATCH.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml     | 1 +
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  2 files changed, 3 insertions(+)

Best regards,
Krzysztof
