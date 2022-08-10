Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE3B258E741
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 08:20:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231349AbiHJGUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 02:20:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231200AbiHJGTv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 02:19:51 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 655A266106
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 23:19:50 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id a9so19831458lfm.12
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 23:19:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=cgxrceMRQO0vyuTZMziuSdvM9yTkOlxs43d6QtFjxCI=;
        b=CgbB3UkMwQg8ANoP0fTaJtEtDOkZbc48FnUHQjkEEIIZOYkGOFzKrxe1ISuPlDr2kM
         Sq+wuGZO95Je8y5L2yVzoPh8tKtpEtS/M6YhKFeG2DBO6J1s+Cdk/RVBK5F5hY8lOo1u
         TiNAnuNpZEFcpLFc0Dm3HOfC+BzSu6x1nsSUNoqE0IVDVf0ttPVpx8pIH96KIcy2zsFW
         vc9mEo5o1PEmia80LqJ3jwxPXziIyMhdEXPtgOr5eBnMQYRY3xeIDtPURpRMhPwzPK8f
         W8tzHGPkKg63LmQhjxVXmezgGZIC8SoAVCV6zA2mjYUOSxgsIpYVty3tiYdmvMWcKyrf
         e3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=cgxrceMRQO0vyuTZMziuSdvM9yTkOlxs43d6QtFjxCI=;
        b=fH7l7d5QQOKzKusT6cOSpblODvLYe15TFe0tYoI4/1Y+x5viKOBYo4tsFmLZY/2XQP
         7dQcAs/rJEhh6QsxaXTSdhRUaLQYOKbFtC+d5SN7ZEUDAeQBMwy1RnHk76SHBNJE8hJ1
         4uTsFmA5wwSzVC7wRLDB4Qfym7XUfhzRIW1NaXBc9yAmWs6kXdIPSm1Y5vJR7zHxoV25
         R+VXTDWovibqXbaH9GiHQYiZbBA/pTqfj93nwS28byb3jChldp/Etw6faTui4fwmAu2G
         kW7Bj8ENqpIn6T2TNy30IbpSwibLssB9c3WSXgTMi+qrbueI2pGmtYaEcErA+rm1C6ro
         RRvA==
X-Gm-Message-State: ACgBeo37UrCG06DBuG2RNcil/H4g2fO/OUYM14GMqecyUwtnf2csy/7E
        cHcmjHOWkGZ/o8jprtTO7naDTQ==
X-Google-Smtp-Source: AA6agR6xRoXCDUti2kiH9gODNIBvqPgqJLL+VHsxEBVldfU73KbukeOv6gFbxVV/UKnQN69ZqNyq7w==
X-Received: by 2002:a05:6512:3ba8:b0:48a:f8e2:8ee8 with SMTP id g40-20020a0565123ba800b0048af8e28ee8mr8446438lfv.104.1660112388777;
        Tue, 09 Aug 2022 23:19:48 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id v8-20020ac258e8000000b0048b3581eb7dsm211756lfo.260.2022.08.09.23.19.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Aug 2022 23:19:48 -0700 (PDT)
Message-ID: <886604bf-6ff0-09cf-4271-b7d5669b8b3b@linaro.org>
Date:   Wed, 10 Aug 2022 09:19:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: pinctrl: qcom,ipq6018: Fix example
 'gpio-ranges' size
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sricharan R <sricharan@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220809214556.2489822-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220809214556.2489822-1-robh@kernel.org>
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

On 10/08/2022 00:45, Rob Herring wrote:
> 'gpio-ranges' entries have a fixed size of 1 phandle plus arg 3 cells.
> The qcom,ipq6018-pinctrl example is a cell short:
> 
> Documentation/devicetree/bindings/pinctrl/qcom,ipq6018-pinctrl.example.dtb: pinctrl@1000000: gpio-ranges:0: [1, 0, 80] is too short
> 	From schema: /usr/local/lib/python3.10/dist-packages/dtschema/schemas/gpio/gpio.yaml
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> Please ack and I can send to Linus before rc1.
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
