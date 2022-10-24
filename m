Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEA1860B773
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 21:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231651AbiJXTYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 15:24:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233244AbiJXTYC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 15:24:02 -0400
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6E851867B6
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 10:58:10 -0700 (PDT)
Received: by mail-qk1-x735.google.com with SMTP id 8so6561460qka.1
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 10:58:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VpFxVbNlUVx4khx8wR7XZ3WqQqzobxqL9P5HDrXvqlc=;
        b=VtmMvdAmjbQlupNcboZB0rYkr/vfgXXmpLysoK7V5k6cOP3hZENoSlDJcCHANlahB8
         UIoG0JHOiXdlN4kBaXY4TH5I1k8MZUxKzDcmFd41zxisSMb/oaM9JkFjAdMOdgztd2kE
         CmWIxolWQwmB2kmV4aPHXnTfE/VHN7fi/wTu2dKbUvO1pm+UXg4gibOU6vfj9DlfZKPq
         M8+PUy2IKVoBb0mCYs15vttJG0xGVXb+ywbmjjhDbGKS0zkZgUR8CTKQLWCdiZFnwZXB
         3OAq55fsKwpxhjOI63LrU9jcuHfR3oKCbAVXHwUs8ioSPq52PM284h5BtT6FWl5ghBp8
         bxtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VpFxVbNlUVx4khx8wR7XZ3WqQqzobxqL9P5HDrXvqlc=;
        b=jnQSA0/JIrmhtQFR05NYrBv2xbSF4N/l/pYxIoMCvHFWAgxgFijK2Kfv59UHgd+Sd1
         3n7HEjG1M+cvsPGwy000H/pe9vt8aqH3SJSTvsr1obF5NXODDsOZy56Q7y9qo+2TXd3S
         swU3f66Xk+hrjtupFzP48PltqOXDC/gsQoSn5SHgB0Z+j7lbRc1Uxdcu2Q6nX/hmAB8/
         BuhE7mFhq30rHv/NTNqSeK1NWy3EWOG/a/pB8uN195Wy09zfL9eScqKu3s9UZU10Xm6y
         dp3VKvPk6sO2Gl+Y5t9RQemMLpP3Qp6GPxpJyPcPDptzIVKeyDIhskwmsx4h6mimIUsQ
         oL1w==
X-Gm-Message-State: ACrzQf11xoT7Yc6AccCfu7GXqVKW23beHctpm5PscbgXlvgjjrLiA8wt
        iyAlETAir/FUgRICGOM4YdfLunouHuG+5A==
X-Google-Smtp-Source: AMsMyM4N7VSQhNGDlB28vU1BJ0fiLgP+WhtT+9B869oCikzicsq0fwHB+QI2//H2iNap7alEzCxiog==
X-Received: by 2002:ac8:5c49:0:b0:39c:d73f:a7cd with SMTP id j9-20020ac85c49000000b0039cd73fa7cdmr28269946qtj.317.1666630081466;
        Mon, 24 Oct 2022 09:48:01 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id l12-20020ac8458c000000b00397e97baa96sm266984qtn.0.2022.10.24.09.47.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 09:48:00 -0700 (PDT)
Message-ID: <db92a42c-e362-e40d-67a1-b003f8bcab55@linaro.org>
Date:   Mon, 24 Oct 2022 12:47:59 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v9 3/4] ARM: imx_v6_v7_defconfig: Enable the cyttsp5
 touchscreen
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>
Cc:     Alistair Francis <alistair@alistair23.me>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linus.walleij@linaro.org, s.hauer@pengutronix.de,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        alistair23@gmail.com, dmitry.torokhov@gmail.com,
        rydberg@bitmath.org, shawnguo@kernel.org
References: <20221024111017.43859-1-alistair@alistair23.me>
 <20221024111017.43859-4-alistair@alistair23.me>
 <08cb81ce-7ebd-d79f-3f5c-4df596b5cb95@linaro.org>
 <20221024170232.6b0175df@aktux>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024170232.6b0175df@aktux>
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

On 24/10/2022 11:02, Andreas Kemnade wrote:
> Hi,
> 
> I want to get that thing in, so I am tring to help as much as possible.
> 
> On Mon, 24 Oct 2022 08:21:45 -0400
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> wrote:
> 
>> On 24/10/2022 07:10, Alistair Francis wrote:
>>> Signed-off-by: Alistair Francis <alistair@alistair23.me>  
>>
>> you miss here commit msg explaining why you want to enable this.
>>
> proposal:
> The imx6/7 based devices Remarkable 2, Kobo Clara HD, Kobo Libra H2O,
> Tolino Shine 3, Tolino Vision 5 all cantain a Cypress TT2100
> touchscreen so enable the corresponding driver.

Sounds great!

Best regards,
Krzysztof

