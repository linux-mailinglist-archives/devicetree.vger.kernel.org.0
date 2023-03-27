Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73BF36CA125
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 12:21:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233512AbjC0KVk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 06:21:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232861AbjC0KVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 06:21:39 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0F6030F9
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:21:37 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id by8so8363361ljb.12
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 03:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679912496;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oBjAZjhZt2Kos0OPc0NoSOuwiBwcjf9HHxEXr2cpC34=;
        b=PI18rf8DX54UhgFlSCEZDY+Wb+eAVTd6NqI3RtZT+xa9FF48FM6NBSRZrY0HGJhXkq
         mKbGSiaHqnEOK1+GAstUytm5wwIBrov15+I3FlE0TLg7Mcb2I/fOYgeqvaluL1Mtgh/O
         Z06k3KmHsJagpVM0naEkwyPb0aY3rQ6WSArbshKzRoLCjve97B93+XAPtQNpoPxWhbKI
         JlgP6d+ZsSyKcoq3Ob11LC4H+xtMQHmNqFSoGCJrrMXH2DalgxanYvrgUYB7AoKbBpTv
         oxfELqoiTCw8MnDOCPuWUxEX5Ec6E2mOjL/Xns0kSxMUGc27aNPsnJPJYyQBzPS9vVlC
         6Dyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679912496;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oBjAZjhZt2Kos0OPc0NoSOuwiBwcjf9HHxEXr2cpC34=;
        b=DmEEIbN5zT03umY2RW2oAFEx4AUbsJ21GuKLXuDe6VLMcDHmUt+SaJNqHTu4sm5z0P
         zGj+o4ex31MK4pZxHVIFyKjPO8QdBT1s5DSGjycKk4pU04vFXgTUdsuh4ZSd9eTj3NUM
         OXxUiFjYJ6AyCgwHCFYxhthNEC7MqSH+d8rPwXxiZh1DkQxu24f9S6R/8ykFsSKEX87x
         pTpSeaeas7UqGtxNeh/GoeEX0ybz8pPwij6DcCBaU9f1G4NvmIRlNpaOkYVQEPM39LpR
         ZueVlCjqWiFmuyOx4Iu6HY4LzJ57CRPfkpkZBordAJUjYyH1AehOWujvMYs3GKCyPxK5
         QIkw==
X-Gm-Message-State: AAQBX9cm+eMZ9BMmdas6pHr3ulHn5vB+nB6HDBXxxRvUQT5HgCIuiO/D
        9DKvyAXh6oFFnfk0/ljZ5Lv+Ww==
X-Google-Smtp-Source: AKy350ai6cINLU+vH1OqohOljZduIP0o4msJq72d2C3h4OUe/B0nWK/MDypGJCEHV1JGz9GlJaahyg==
X-Received: by 2002:a2e:6e03:0:b0:298:aad1:153e with SMTP id j3-20020a2e6e03000000b00298aad1153emr3618616ljc.11.1679912496274;
        Mon, 27 Mar 2023 03:21:36 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id k14-20020a2e92ce000000b002a5f97eaef0sm184755ljh.126.2023.03.27.03.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:21:35 -0700 (PDT)
Message-ID: <3381e839-b8a6-ce55-7f1d-fc047e572eeb@linaro.org>
Date:   Mon, 27 Mar 2023 13:21:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 06/11] arm64: dts: qcom: sc7180-trogdor-wormdingler: use
 just "port" in panel
Content-Language: en-GB
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326155753.92007-1-krzysztof.kozlowski@linaro.org>
 <20230326155753.92007-6-krzysztof.kozlowski@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230326155753.92007-6-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 18:57, Krzysztof Kozlowski wrote:
> The panel bindings expect to have only one port, thus they do not allow
> to use "ports" node:
> 
>    sc7180-trogdor-wormdingler-rev1-boe.dtb: panel@0: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../boot/dts/qcom/sc7180-trogdor-wormdingler.dtsi     | 11 +++--------
>   1 file changed, 3 insertions(+), 8 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

