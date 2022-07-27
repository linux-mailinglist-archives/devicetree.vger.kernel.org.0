Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90755582439
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 12:26:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231152AbiG0K0q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 06:26:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60592 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229594AbiG0K0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 06:26:45 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6811C3E749
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:26:44 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id w15so18422201lft.11
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 03:26:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Z33rM/h/GlDJMPaTzwReos/+8Z/HNYbQEZfYG6DUeSU=;
        b=fgebQcKdw/6LPwbhDVieKfEk9ZXG4yQLpXIdRfYG+Z5tRiOjTWbfrCwl8KTrNr6Myx
         TZWe2LK1bwwL5Ky7WiEpPMf2yG9JlOY0yc100LEFaLna4xgFVoe+MXLkm1Twh+lviVTi
         qfXrqMTkDTX5lHGeSA1/4lRRjIWCzbMX0LD1IZnd6G4a2CAGFOreLDh8ZM5vjM25a6kB
         dH5H3J0oPpVdeB2CKxKMBdcGelcN3vtnuV7bIm7P8KJNHnvxEJp2AcO1WAMgTw1Cifmo
         CmiVNplBlXOgpzOmM+Wlsum/AMmyEVzAmPxWfBTFYv5cm24MgS4krICxRrCjcYlUFcxb
         M7Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Z33rM/h/GlDJMPaTzwReos/+8Z/HNYbQEZfYG6DUeSU=;
        b=7pn7W9XKHA5rC8uKRn++XEZFoq8GtSXFolYr2XgM9de72oe9gAqUsQXgs//fBYvMDU
         wcL07aK2fblFelBk4w8yYVpAB9Knwuxa+V2n/aOj1mYELq6UvZmznZmPq22so+mKNhsH
         A3vKfEX+tj4YXYZDcTrvQ6NjQMtBNWRyl0C6s/CL2Y2Kux3txYIkzmGbE7nqOZNnr1Nz
         J1J0qhHKKNMxk/4B0Sj0PW9iOB5xlNlGZ5Pi3tEPSBV2iBMhfRquVI4+japgQT9w4uxz
         ohgTBzsL+nlE347UQqKwnpwsgsFp/IPe/5gIpPiHye85HfndqyvPj4nmBSXjLToh3mqU
         UW7g==
X-Gm-Message-State: AJIora+KSOjgNa2Ih8swA+RrCy2QMhJy0LV/79PwaZBnd7JRisXVAmsZ
        M4rIJHKYJ8gpfyOVpUsL7tZM0Q==
X-Google-Smtp-Source: AGRyM1uzvrmok+B71SjJ0xUan/RKfTaBGV1waMaJriK6Oe72/2/Wan5P+Xay5aCki1HX5CUSZUfxzw==
X-Received: by 2002:a05:6512:1048:b0:489:ddda:d2a3 with SMTP id c8-20020a056512104800b00489dddad2a3mr8303696lfb.57.1658917602712;
        Wed, 27 Jul 2022 03:26:42 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id y3-20020a2e9d43000000b0025d83984893sm3680646ljj.68.2022.07.27.03.26.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Jul 2022 03:26:42 -0700 (PDT)
Message-ID: <a7230c4d-94dc-c0fb-e39b-50de971da511@linaro.org>
Date:   Wed, 27 Jul 2022 12:26:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: spmi: add compatible for mt8188
Content-Language: en-US
To:     Sen Chu <sen.chu@mediatek.com>, Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Cc:     Hui Liu <hui.liu@mediatek.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220726103729.24525-1-sen.chu@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726103729.24525-1-sen.chu@mediatek.com>
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

On 26/07/2022 12:37, Sen Chu wrote:
> Add dt-binding documentation of spmi for Mediatek MT8188 SoC platform.
> 
> Signed-off-by: Sen Chu <sen.chu@mediatek.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
