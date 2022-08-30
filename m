Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD5D55A5EB8
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 10:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230483AbiH3I4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 04:56:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230309AbiH3I4P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 04:56:15 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BF008B2C2
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 01:56:12 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id s15so5471300ljp.5
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 01:56:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=yksgcHaH8yK2nL0/KktGbN00V41GBl96J/5UMeIcDaY=;
        b=MiIh4A8LV+RAbbjdllOrCTzRQJalCXjENCi1YWUULbNDueGRtSEDZ+qnWGRkJkiyOD
         Dy+A91s6x4frfWPG2NJ3jIzWP/ByZjFzH30mCCa7H+GtAfPa/0iKOtosR57wC4p5TYdT
         j9Nas+5xRGYF5WBnjH8JWMuShunfxEOs3gcyi8SOis4bclqePvBRXkXy5SmppTq7D1Dm
         iyaGmtXrdKMfVxMIRqaeHqz/NmmBZUFqbRaiyin45dQDTtOihs+WF6B01ngFp9492Qvr
         g/YdyMqOxePjBLzeZU7Y3pCQpIAYZiKrYZU+CXCsbd3nQs3wVtVC+rR1/cjBEITICZQn
         vlZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=yksgcHaH8yK2nL0/KktGbN00V41GBl96J/5UMeIcDaY=;
        b=iD2YxlNrW53sFpGjJL8Vsz/M8PQia9tJ5h4su1U1Fel0I+cYamp0JGMsQRGsfV2p9K
         Elus7XtgXGHFH/0ZO2nGNaejpT3EXgKa7tSfspya+026L9a8tKosAIksbNUtc7LEfGKu
         ClF8cI1hZFc479hlEq52h/31epdQGQJzjqifrJhk2rH0ZP4/U1vcbb30IUJNw5EtQn+t
         OMwzSV4PjvDOC3sFy8+tHCKDNXGAZ6G6gEcwe5ZX4yegoBM5wJ2zTJzHizUbj3RrZ7hn
         dbcllrmmRUIDjucFq0P14jSZyoV6hoe6Qc/zj8OwWOUKcfGrgf2lNlgvITnjyfWuqaM9
         ZQLA==
X-Gm-Message-State: ACgBeo2cNotxSc1gnzlt8tk1fzyzC2eiTKld5g+3OUZEkoFsc7xW7s1e
        bgo004AmW/S/ZSIavOHp2FmCYA==
X-Google-Smtp-Source: AA6agR4zZBU15rr+qcZ9goA/DUAtlU7TAZ0VTwAna0Yhnj/neDvMXGtyCwyH92/wxaQkndWDniibrA==
X-Received: by 2002:a2e:bf29:0:b0:25f:fbd5:b693 with SMTP id c41-20020a2ebf29000000b0025ffbd5b693mr7114274ljr.372.1661849770702;
        Tue, 30 Aug 2022 01:56:10 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id f10-20020a056512360a00b004946e72711bsm539608lfs.76.2022.08.30.01.56.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 01:56:10 -0700 (PDT)
Message-ID: <45004d0c-e470-72e3-fad6-e8c48aefac1b@linaro.org>
Date:   Tue, 30 Aug 2022 11:56:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add sc7180-pazquel360
Content-Language: en-US
To:     Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     Henry Sun <henrysun@google.com>,
        Douglas Anderson <dianders@chromium.org>,
        Bob Moragues <moragues@chromium.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220830083740.v2.1.Ic4d4e0777115011544dbc2ab07ed4d7b408c003a@changeid>
 <20220830083740.v2.2.I5bd646de8fac81eb23c8bcf1cbe21125bf9638f3@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830083740.v2.2.I5bd646de8fac81eb23c8bcf1cbe21125bf9638f3@changeid>
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

On 30/08/2022 11:42, Yunlong Jia wrote:
> Create first version device tree for pazquel360
> pazquel360 is convertible and the pazquel it is based on is clamshell.
> sku 20 for lte & wifi
> sku 21 for wifi only
> sku 22 for lte w/o esim & wifi
> 
> Signed-off-by: Yunlong Jia <yunlong.jia@ecs.corp-partner.google.com>
> ---
> 
> Changes in v2:
> - Remove the touchscreen setting, as a follow-up patch
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

It's still wrong place for Rb tag. Apply this patch by yourself and
check the result...

Best regards,
Krzysztof
