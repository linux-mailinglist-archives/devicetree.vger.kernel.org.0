Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A53995BB977
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 18:39:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbiIQQjF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 12:39:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229548AbiIQQjD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 12:39:03 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 159AA2E685
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 09:39:01 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id r12so27694946ljg.10
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 09:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=jv8GEPaOzA51HS42MLvcalei0LdzBjeg8X2ynLQXFTo=;
        b=heonmGT9UlfLGrV2gjcSr8TGX3oHDqHdGhNOLL9xAzFdmqQMLLaaaOOR3Q5FaviTh5
         9xQtvr17nJFnShfA1FCAQ/VTl0WF4Lgxx+68mnZgfqOaL8CCKch/U3GKVHgdKIwlXkf6
         cEbbW5GluXUGX6/56iNExCxQKKzWvQF6SAf9pIjC15cPu2yM4KPo1xKNzoiBtAr1TaRb
         fuDuues6pjvf/bqrhArFzj6C6IrlwZowWKHPEsOvgDxxRurcvTKgQGm0Vtqw2gH05jV3
         IY6b2LyLW9Fh58UFuBx7jzVZeZ614WPmLsnGQes9dOUDMMI4xVu1lrEp/1CYsBAmvNa2
         +fPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=jv8GEPaOzA51HS42MLvcalei0LdzBjeg8X2ynLQXFTo=;
        b=nJSRJDKxQfxLuLIcPkv7rbFJXWQpAu2MQi5sHNzRBOOpKtL36Fh1ml959Ci0sPDkN2
         OcYxarP0qUDzbt5P2d9tE6YEVHuJVzEMtGBaXrToj1OQopfr7dtthXMc66B93NZ0A/H4
         Wck93Im153+3A6p8cTKPzD4I3eTPrfjUGCeGRZW4hZaWLi/AoOSNmdIvfhYtGp4uvfnC
         RJ62t0acbW33qYBkauaRZRdkKLL2NbZiURos6W8HijdlMx8Y+JwgnA/jxoMHTLXKqgDj
         zg2zhFhMrhQjqy3LdISo0rUL49zPlfA5p/DC/bcoSvwMMgEFLjEbrCVtI7QCkxGOgMR3
         FpXg==
X-Gm-Message-State: ACrzQf14MP40yDR14c6NWfhlUtPFFh9JwxGkwW5d7YOkWjENjo+DhL1I
        1AIVN3enHM1hqBR75lkWu4SxDw==
X-Google-Smtp-Source: AMsMyM7IFRyWB0vbDFXPb7MWxW0iXecCmHjk4Yuy4bpxirZcEDAPPXFBXhO44aAlWeu47VI1U9hSiw==
X-Received: by 2002:a2e:b16f:0:b0:26a:c77f:9f49 with SMTP id a15-20020a2eb16f000000b0026ac77f9f49mr2978803ljm.112.1663432739465;
        Sat, 17 Sep 2022 09:38:59 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 28-20020ac25f5c000000b004998d9ccb62sm3802898lfz.99.2022.09.17.09.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 09:38:58 -0700 (PDT)
Message-ID: <31c979ea-88eb-8ac1-7433-607fd8202c1d@linaro.org>
Date:   Sat, 17 Sep 2022 17:38:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: input: qcom,pm8xxx-vib: convert to yaml
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220917155705.2284-1-luca@z3ntu.xyz>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220917155705.2284-1-luca@z3ntu.xyz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/09/2022 16:57, Luca Weiss wrote:
> Convert the PM8xxx PMIC Vibrator bindings to dt-schema.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>



Best regards,
Krzysztof
