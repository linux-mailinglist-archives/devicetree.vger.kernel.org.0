Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7953639690
	for <lists+devicetree@lfdr.de>; Sat, 26 Nov 2022 15:41:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbiKZOlo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Nov 2022 09:41:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229582AbiKZOln (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 26 Nov 2022 09:41:43 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D33F71B9CE
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 06:41:41 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id bn5so8211082ljb.2
        for <devicetree@vger.kernel.org>; Sat, 26 Nov 2022 06:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LcpZ2v4R4rV4js+pgJmRUOcThZTfcN01I5uv2UUj3Pk=;
        b=gIr8xGUAH2211xt8AE/1c3ib2vUjORyW7/lrZMgJ1sgEezi/tcWKaWG/HWDhCe10t9
         n+NWIn6IETO3EDXz1TQ94L4F8AmqZmmK+KtG1IQVLgVbr3p+7DYoLVKmO1XRjuXhRDKO
         VCXTRat6DbzSu5GzBxLNkVwR6HhFya5e7L7Bjfiq4rO5D/3dyhzd/SJzA1cq0lc4ejfC
         Vh/6pO5x/MZco7gEzDxjVt8qL1xfsqOQ+tR3WpZ+tJ7BmJ+RcXFn7MdX/qcrMrru3odz
         6YOR6Flgmyd7MjOPuxx6a0oPPS0QUz+VHYhUUSRQNHNJkBtEujhDDthwxnCPXJzX+ajz
         ud9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LcpZ2v4R4rV4js+pgJmRUOcThZTfcN01I5uv2UUj3Pk=;
        b=HP5Z7WFHg9WYd8L6JeWQTBRH9N8NqVXCKX2Znh6dg9fIUeVrLdDz23ms2sKQVkx4hC
         8/iFz8/ecaWlq9MKY9PnG5EwzvwFtnaxeaLFJhZ7PfHIz7nxrflVT3bQEiZ930wKGxxr
         g2d9dY0IgjU+Yp+x3hIvzkrU94tiiyhzitXVccKfEHkWVNDiH46sab6cutqBMWPd+5m7
         5b5pq96Y10eEtYueEQ7PLTikJfqTyIK+NCC5aRU84C7BLDRKFUZuzLQ7QdTkCfof3gnh
         vIrU/OjzDDSVDDqE+MXSCKSjKvSM8ps5DBfz6VuDGdVhZbvf+OR2lRfbZ4bhCLn7ILsM
         vPNA==
X-Gm-Message-State: ANoB5pm3G1fi0J+9AHu/gevm/VSzVzGyIBNndMV5DKLuC2OwG4JGalDr
        N3PACRbTV+i9vY9u19tnaq5GAg==
X-Google-Smtp-Source: AA0mqf73mQkLWU9ZPxx/9Q10S5YyT13jjhDYgerD8FIcIYglklF652qu6cW2/15lvocuVKeSbGpPMg==
X-Received: by 2002:a05:651c:906:b0:279:1349:b2e2 with SMTP id e6-20020a05651c090600b002791349b2e2mr13490093ljq.382.1669473700019;
        Sat, 26 Nov 2022 06:41:40 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f30-20020a19381e000000b004b177293a8dsm946364lfa.210.2022.11.26.06.41.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Nov 2022 06:41:39 -0800 (PST)
Message-ID: <4f562df6-99ce-34fd-defb-217f2cdb5ba6@linaro.org>
Date:   Sat, 26 Nov 2022 15:41:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 07/18] dt-bindings: msm: dsi-controller-main: Fix clock
 declarations
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
Cc:     robdclark@gmail.com, quic_abhinavk@quicinc.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run, airlied@gmail.com,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@chromium.org,
        david@ixit.cz, krzysztof.kozlowski+dt@linaro.org,
        swboyd@chromium.org, konrad.dybcio@somainline.org,
        agross@kernel.org, andersson@kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20221124004801.361232-1-bryan.odonoghue@linaro.org>
 <20221124004801.361232-8-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221124004801.361232-8-bryan.odonoghue@linaro.org>
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

On 24/11/2022 01:47, Bryan O'Donoghue wrote:
> When converting from .txt to .yaml dt-binding descriptions we appear to
> have missed some of the previous detail on the number and names of
> permissible clocks.
> 
> Fix this by listing the clock descriptions against the clock names at a
> high level.
> 
> Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../display/msm/dsi-controller-main.yaml      | 20 ++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> index 0c09b9230b7f5..0fbb0c04f4b06 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml
> @@ -36,13 +36,19 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    items:
> -      - description: Display byte clock
> -      - description: Display byte interface clock
> -      - description: Display pixel clock
> -      - description: Display core clock
> -      - description: Display AHB clock
> -      - description: Display AXI clock
> +    description: |
> +      Several clocks are used, depending on the variant. Typical ones are::
> +       - bus:: Display AHB clock.
> +       - byte:: Display byte clock.
> +       - byte_intf:: Display byte interface clock.
> +       - core:: Display core clock.
> +       - core_mss:: Core MultiMedia SubSystem clock.
> +       - iface:: Display AXI clock.
> +       - mdp_core:: MDP Core clock.
> +       - mnoc:: MNOC clock
> +       - pixel:: Display pixel clock.
> +    minItems: 6
> +    maxItems: 9

I don't understand why this is separate from your previous patch. At
patch #5 this part become wrong, so it cannot be separate, obviously.
IOW, Your patch #5 is buggy without this piece.

Best regards,
Krzysztof

