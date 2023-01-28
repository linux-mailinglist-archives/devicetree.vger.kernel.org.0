Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB4867F709
	for <lists+devicetree@lfdr.de>; Sat, 28 Jan 2023 11:20:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231672AbjA1KT6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 28 Jan 2023 05:19:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233348AbjA1KTg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 28 Jan 2023 05:19:36 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78E9BA250
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 02:19:35 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id d14so7037391wrr.9
        for <devicetree@vger.kernel.org>; Sat, 28 Jan 2023 02:19:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AYz+vi8tw+B66nlrFbg9zR+V3vjTShYFhKroNa0/+w4=;
        b=N7IIakkXuB3dWSwz5isrssWhLhjBjKg4lEfr2RlU6Ct7BEGSgK+eSqfXJUAjDracuB
         1ZBmd6PoeiWJ36JlkrPxn20K7biyY0J/+HaUY9Qp8W1Rw6l+55CqKGhvJgo1dV7mrd59
         eCCftwqH7y8+C0N5pBL1tzEnFx51yP3RVF9r2149Dpyvt/crLmdqa5v4CxPC8unR+yD8
         He+8P3eHN1P+nVWBLo3uRypkY6zhIoso5J6qygc3YhMu9pME1UWhRnXYhuWGxQOK//7c
         RKwZcuUHlkmL/76SODSAfT3UQzvg0UAySRaULOW/6dyWcjGDCgDF+umVBXK6Wsh/ygec
         159w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AYz+vi8tw+B66nlrFbg9zR+V3vjTShYFhKroNa0/+w4=;
        b=opnLhcaB03n1XiNTH5Tc6cIWVr0Sf1eDNKClJGd4wciVPYg9knY4/7SKp0p6Qr4Llq
         mZ2fgtSZ74bJNhqLoe4U3SfmWjmZ271XWkSrJmF9KddoEQ7F9QjdzvjPi4vdDysfyXlj
         rKoAid1hyJ6cP2/3pACNs8P20qbo6StH6etVngvPlXS0cso5ObVoGgS+gxfD0eKJQg/z
         b/hiAHi3ZRXW6Y8A1teKtKVyh57Wa+AgqHmYTM7AI4Mo09xbmZZ2eEZYb/YRQvMxaiA5
         773lzNbh3asEUgSWoAgwAeAi8/qJ674aOBM2FB4Hc3puUHUNZPbEW0GNYqRj0jTm2ke6
         u0hw==
X-Gm-Message-State: AFqh2kqLtqYlqvzuoz2XqpXdySdI2J7PaB4snKzLI7PMeS0EZJoOORC7
        eitCXp4XnO6P5fW9Tqav0c6oTQ==
X-Google-Smtp-Source: AMrXdXu7Ii8Mc14sPk8zxHayPTj92I+yxLHfVHEL31j9ODoLpVzR3gEr5TMXd2/9AZpaVhiSPnT5sA==
X-Received: by 2002:a5d:6b85:0:b0:2bd:d782:c2bc with SMTP id n5-20020a5d6b85000000b002bdd782c2bcmr37609068wrx.33.1674901174085;
        Sat, 28 Jan 2023 02:19:34 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z14-20020a5d4c8e000000b002bfc2d0eff0sm6188597wrs.47.2023.01.28.02.19.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Jan 2023 02:19:33 -0800 (PST)
Message-ID: <2dd3983b-3108-ea90-f5a6-7fd3522cd0a0@linaro.org>
Date:   Sat, 28 Jan 2023 11:19:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/2] remoteproc: qcom: pas: Add sm6115 remoteprocs
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc:     mani@kernel.org, mathieu.poirier@linaro.org, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20230128053504.2099620-1-bhupesh.sharma@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230128053504.2099620-1-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/01/2023 06:35, Bhupesh Sharma wrote:
> Among the subsystems in the Qualcomm sm6115 platform we find
> audio, compute and modem DSPs.
> 
> Add support for controlling these using the peripheral
> authentication service (PAS) remoteproc driver.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

