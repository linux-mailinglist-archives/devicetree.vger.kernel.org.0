Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6926E3AC5
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 19:43:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229743AbjDPRnb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 13:43:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229530AbjDPRna (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 13:43:30 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AABFB26A8
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 10:43:28 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id vc20so3491864ejc.10
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 10:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681667007; x=1684259007;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cY4dL+cUq0/Tvegynn94s2stFQV130nkYRZfRYAeYPY=;
        b=e69Zb9dzK6GpsAvCcC2Z5CYx+RcD97Cak0AWRUq7GsRJzAEXddYwxGbbz3h1kxnww9
         aGYLKxag9ltd+TUyOticn3vT2nit79G36PAq0l6jtyhJ+xiJD0ffvCHKVVb09T68oPdQ
         cEtK4Hi8sjkuMWA3rTgBIWWm+6zKi1mgjDkqwkyIWmg/l47naySDAAd8xzGj+dEWwku+
         gyoX3pQpfpYuXw8fSv51Sc7eMqTjQuZm5bralnQrKGt/adHvtVsFUi+smRlQ/R4jvcTm
         sdM9Tzp85rpRf68JS+s1D2vyycjSx6iT6eDjZvWCKvOyZefXqJOouMIfvPkVIY5Ohir8
         R5HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681667007; x=1684259007;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cY4dL+cUq0/Tvegynn94s2stFQV130nkYRZfRYAeYPY=;
        b=LszqT5gmFlLMvZvT1kx0bt49fF91iDSQlsUcyvChI1momuHZ/0v/UZZ7iMtnczKiCc
         4NPfu7NmotDLnt/6zUIMFsABCKTFC3cvTHkDwGioeEDN/Dcn8cD7kbGj1cs3XVAmAYM3
         b1187qVY+TRjfLawqDWWlS2TxmvYRpv3xM9qb5OHcjLttuQ0RN3W7h6XwTfTgRjH6Rso
         n3rICIXCSmFwG9gclUcb2UXOz5Ingu6tEm916Omvj8TdSCcOW9NqYWxSLF7kpGawfCOO
         VRZWVwXAO1Xh8lrDX0eZKFWBsbBomDjaqgjNb93dPRgy6kvlGAUUP+kKEVeo3tqqJAMW
         FWsw==
X-Gm-Message-State: AAQBX9dcAKv4EyNn4fHmgnyvRR5kNHW4I66Yen/4tnYi/uIi0kv3dmBA
        RKlAsf2eoETjqkpCrfZ9cgTKNA==
X-Google-Smtp-Source: AKy350ZL5PiH2QbcAiLhGfdhIUMICPHfqdbl637zRIH01dTa2MyVwiVljA41xXNm5xi08mIVXzK3iQ==
X-Received: by 2002:a17:906:828f:b0:94a:4739:bed9 with SMTP id h15-20020a170906828f00b0094a4739bed9mr4669293ejx.13.1681667007162;
        Sun, 16 Apr 2023 10:43:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f9e3:1d38:66a7:ae92? ([2a02:810d:15c0:828:f9e3:1d38:66a7:ae92])
        by smtp.gmail.com with ESMTPSA id m2-20020a1709062ac200b008f89953b761sm5375920eje.3.2023.04.16.10.43.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 10:43:26 -0700 (PDT)
Message-ID: <684c14e6-0a6c-92c8-e408-c52689a58d68@linaro.org>
Date:   Sun, 16 Apr 2023 19:43:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v5 01/14] dt-bindings: regulator: qcom,usb-vbus-regulator:
 Mark reg as required
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, linux@roeck-us.net,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     caleb.connolly@linaro.org, konrad.dybcio@linaro.org,
        subbaram@quicinc.com, jackp@quicinc.com, robertom@qti.qualcomm.com
References: <20230413113438.1577658-1-bryan.odonoghue@linaro.org>
 <20230413113438.1577658-2-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230413113438.1577658-2-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2023 13:34, Bryan O'Donoghue wrote:
> The regulator code needs to know the location of the register to write to
> to switch on/off. Right now we have a driver that does this, a yaml that
> partially describes it and no dts that uses it.
> 
> Switching on the VBUS for sm8250 shows that we haven't documented reg as a
> required property, do so now.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../devicetree/bindings/regulator/qcom,usb-vbus-regulator.yaml   | 1 +
>  1 file changed, 1 insertion(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

