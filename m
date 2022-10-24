Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7AF2D60B879
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 21:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232021AbiJXTqg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 15:46:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232051AbiJXTos (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 15:44:48 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA1F125F1CE
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 11:12:42 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id f37so18008326lfv.8
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 11:12:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9mKsfIWpa7V9k46Arai0KI6Ar9k3GJZZKenWY2uV0rU=;
        b=ywvMqT+z+qb9B9IOh9FO4Rw7gnnbwZSApPutG7lpctxAL21queUrkzYeLZMeloFSbl
         x9K6DXvCSWwG5lU0epxgjqFuxhgMeSengsuV6d2ZycOPLYNh0dncq5S+MZMG2Fql+Z4k
         qEcdJojzp98vOr12LtDmQ5+cffJNfr7Um1/EhAT4wttCCc0XT/Xhr5x38xAQUvI0DCxs
         hW6XWRLOOVNGql9EuG43BKD6ioeYzglQemNd1zoJb6YdYeWSDe9Jq+9FsBigPvh9hpuf
         MMjOCRzfG7gYxAxAj6hb49pVwp/pJTEVl8sCqKMYxVnf3zagnVChCsiZ4qxC5u//c1nl
         B3Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9mKsfIWpa7V9k46Arai0KI6Ar9k3GJZZKenWY2uV0rU=;
        b=i8cO0MDd5P0CKwAAl4tiziUtqloHqQHfBX2/FAofG8uumGi0tanMyTzriRcjU5h6h8
         QHfFO/kvU5NTnmiMOSfHn58ufdOrklKTMmj//d5l4cwfjYwnGd4kQgNKfJFogq5WPo2H
         Dn1/uZI2WV1WAHwywanG/KbZRy4csrQf5TmoKogyhJcWkiM7m+aykn/ME3dQVihUub4y
         YEbNjzSvfhed7464mI/oHBhRPDl+8V7Pli9HI9LP0hp8O2cXpHbXfqFtXLGRbpi9UxDi
         IXn/5y+xXejRcxGpFwg5B2Jr+DSiUmV0e/odXUhat4oDhgsb8uyP7D3M4NeDPsv8BsAK
         dqpg==
X-Gm-Message-State: ACrzQf3qgklL/Jn9LJhlDMUcZES8wydzeCqtu6ww0wzSNkPzLZMq380j
        +zZ15Xwu4NnGV1MAfm2DlTvfM6iJRZvbmroY
X-Google-Smtp-Source: AMsMyM7WUs6aeUNCICLhdJhwB77WGIRqZ7ubxT1Qp1R7WDdA/kFHuprTdIx1QPeWe6A8jDWVL7bYxg==
X-Received: by 2002:a2e:8697:0:b0:26f:b795:8b39 with SMTP id l23-20020a2e8697000000b0026fb7958b39mr12457697lji.218.1666618322142;
        Mon, 24 Oct 2022 06:32:02 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c24-20020ac244b8000000b004947f8b6266sm4411058lfm.203.2022.10.24.06.32.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:32:01 -0700 (PDT)
Message-ID: <d8ffbfeb-be30-e221-6185-974569f72515@linaro.org>
Date:   Mon, 24 Oct 2022 16:32:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 09/10] phy: qcom-qmp-ufs: restructure PHY creation
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-10-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-10-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 12:00, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use a
> child node, move the PHY creation to probe() proper and parse the serdes
> resource in what is now the legacy devicetree helper.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 34 ++++++++++++-------------
>   1 file changed, 16 insertions(+), 18 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

