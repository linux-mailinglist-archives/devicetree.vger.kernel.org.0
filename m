Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7336159E4DF
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 16:05:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239478AbiHWOFr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 10:05:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242917AbiHWODm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 10:03:42 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02F3724793A
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 04:12:57 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id a16so10896770lfs.3
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 04:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=RyGB8PQO8ADQrO2JFjLIJii6hzK5vNZX03ZezGuypGs=;
        b=oCfh6AI2QwLBOgQEi1W8eHyNhAH/PsXgbcycKMnCTV5RxfayaL3wtv4jIvSOvZZzE8
         gzUXOExHburHxVgMSsMbHibLI1L2SnbkuVLjvD+bljZz7Sn6Mia3nJOyOn07BVOgDr2l
         abxhLitpMAPOzrXk3jSQvcxgg7QwV8n5lW1lQqSbk8+a6T5oNh/sQQpbsuMaBSgrrI8A
         bJ2jSdmA27l2XZwB1wTkNwf60Ej1NEZsOhpD4PpcvP1LSahuyUmZkYQ+Q6M13KC/36C/
         o/KZNDD1g/R8rdQRYab4Ck4uov5qDnDC/psQAJognpFGI2eXoLgZ6Dd82cMKEbgDGmgv
         HJQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=RyGB8PQO8ADQrO2JFjLIJii6hzK5vNZX03ZezGuypGs=;
        b=Kiez+qxA17yw9jY2hAV2aCv+eTRgzqZ8tKVL2YgvwDwUJEkaNggP6CYif3++EC3ZC9
         b9wohGUl4lZrLWCcAxejMZb1bO0GDe0EhKRDM7/YZUVB3PfWY2Ue6zEuLaT0Tk5HD0Zr
         H1Ac08hHtgzXM0xsVJUsFuybi07DTMGjriVXkVpN5M42s4Ewnm0VYs0xUzj0XY9EZTGO
         XBPuy63RLH1/vZzmBsqsMWS69ORrw4pwjY7hsqvY6E26gQneTUCXXw6vFfcAwsaDMQ5W
         W3tCJeerZjvXkiiTHErTmUaSPuau6e55gZTBUVgrlzjG35stnUK3DZCsZgPiPFY6Fpv5
         iphw==
X-Gm-Message-State: ACgBeo16D1ZxkZFTKgERTZzVMzMqX7EpBapI6W+IxCnisjeCVaSlmQ0+
        Nmh6C2uJRvOoDMUK1l8MNrsBUg==
X-Google-Smtp-Source: AA6agR431MJa34QlqrqboyJ2CF1O1nEgGRTLQBgHBhF/nzaTuInpM0Ee1WeB028VXCHqg7KXMU98oA==
X-Received: by 2002:a19:654f:0:b0:492:f148:beb with SMTP id c15-20020a19654f000000b00492f1480bebmr1379997lfj.493.1661253109390;
        Tue, 23 Aug 2022 04:11:49 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id r30-20020ac25c1e000000b00492f1b2ac0bsm511806lfp.101.2022.08.23.04.11.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 04:11:48 -0700 (PDT)
Message-ID: <e8a02030-d114-fa4b-1978-15327501b7e9@linaro.org>
Date:   Tue, 23 Aug 2022 14:11:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 5/6] dt-bindings: drm/msm/gpu: Add optional resets
Content-Language: en-US
To:     Akhil P Oommen <quic_akhilpo@quicinc.com>,
        freedreno <freedreno@lists.freedesktop.org>,
        dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Douglas Anderson <dianders@chromium.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, Sean Paul <sean@poorly.run>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1660927246-11327-1-git-send-email-quic_akhilpo@quicinc.com>
 <20220819221017.v4.5.Ieffadd08a071a233213ced4406bf84bb5922ab9a@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220819221017.v4.5.Ieffadd08a071a233213ced4406bf84bb5922ab9a@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2022 19:40, Akhil P Oommen wrote:
>  Documentation/devicetree/bindings/display/msm/gpu.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
> index 3397bc3..4576b31 100644
> --- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
> @@ -109,6 +109,13 @@ properties:
>        For GMU attached devices a phandle to the GMU device that will
>        control the power for the GPU.
>  
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: cx_collapse
> +

Just one blank line, not two. You can keep Rob's ack with that change.

>  required:
>    - compatible


Best regards,
Krzysztof
