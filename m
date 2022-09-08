Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D6BC5B2040
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:13:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232489AbiIHONR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:13:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230414AbiIHONL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:13:11 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80319BC10E
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:12:58 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id f11so13936173lfa.6
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=IvrlMjmlOgVlugC/I6C+dg34QSdadLxD9KM1BW4vzoE=;
        b=soOA/J9vYytAZneHm0U7W6i09Qxcqz9AO+Y6bltVlfq6/TdZStHVe45k7Bd7utvD9D
         lG6IY/Xcna2rQ4qQdBmY4VeZhoN7YJ18rChB9LNgpIm7jupDnfZNalUvrGypRYoEhcAf
         zXbGsDZvtX0Jtwj1vuzr121Ood+ed9NEaoUUvyha7ZZWnmQTmF9g8KLUB1QTqb5HHBuO
         D4Pcas5ARyem7ixwPeLRkjisfgtylJOdStttmYGhAbkyLMmSpnZjqiGLxGouzZyGo8AJ
         DbcbCIU6SCl6YNvrjtxRk4KNKsEwVOLK/u9ZhiBGBawOxksQ5hKUrRODDcHiKRiYRJbG
         QE1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=IvrlMjmlOgVlugC/I6C+dg34QSdadLxD9KM1BW4vzoE=;
        b=OvYz9uLCvQjj8EHZyd6PLq1dWR2mmBV8MvsqdEq+OiSC1hnzy6TXs5qpXyl+smwIdX
         kXh5M/QrFv8M0BYjmfhn4huc+TPKOixcUb/HvL8afz98vFm/rnIMrBcFgEmdvdNlTHtn
         aRguMXo5RLzNBGPdyNG9FyCuQNA4SXR2uVIlxTxwSoED0Hzno4xwPHKW8G4GDHXzb/xc
         ickFbjBzBlDpbBAxHRBVxOEg4a3vXSjXmh9J65XJU+gNANPSrRHhv26LglSKWJEQ81l/
         LsNtMZi7Ewyb9rVeHlQeReIkrIjJ54tg45RVinzv+ibsIZ4xvmSs0ybgthNsp1T1ATJe
         NNAA==
X-Gm-Message-State: ACgBeo2qvad6fpkpYkT6xgAqYnkPoZlPBNPyAjAIMTqGtGKxBZFzf3AQ
        gvENqvDnpg9cd3k+9s7aQA8zYQ==
X-Google-Smtp-Source: AA6agR7JaNtD8dc6ovzBxHPfuBetLBx+70XWJ7v06Hz9a28r88fkA3pOcTuGXmj0++Nkd2M2NUVt8A==
X-Received: by 2002:ac2:5d25:0:b0:497:a280:9825 with SMTP id i5-20020ac25d25000000b00497a2809825mr2686357lfb.409.1662646378110;
        Thu, 08 Sep 2022 07:12:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id j18-20020a056512345200b004979ec19387sm1531284lfr.305.2022.09.08.07.12.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:12:56 -0700 (PDT)
Message-ID: <2ce84764-c776-c754-8fea-705d652398d3@linaro.org>
Date:   Thu, 8 Sep 2022 16:12:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 08/11] arm64: dts: qcom: sdm660: Drop redundant phy-names
 from DSI controller
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
 <20220907000105.786265-9-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907000105.786265-9-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 02:01, Bryan O'Donoghue wrote:
> phy-names has been marked deprecated. Remove it from the sdm660 DSI
> controller block.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
