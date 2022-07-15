Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60907575E90
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 11:30:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231467AbiGOJ2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 05:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230105AbiGOJ2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 05:28:35 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 715DA7BE22
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:28:28 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id y11so6908739lfs.6
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:28:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=spTRD7uH+zz+Do5jAg9snd7uUL6MjKjkWOeq5SImiLE=;
        b=elR+i8Q4YMvX9z2CIHoH5yEfNoHdH4Iv6eEt9cpquW8X9n2UHdW0Bg3EBV22ZKDSCs
         +ChICdtOdYn1Kd6GQjIB9fWEt4j39pHhRzkcuPwcB3vFRs1GxohFBiinhkndE9cMyl2P
         6z8LWcVHZ3iceZ3oZJqDktC2DtYVqk6B2ppASDSK/nzmqwyOS5+sZYi480y36Wqo7EQR
         OPJndF72VRWyV51DMcsW6Fo6qxLA8BOMlhzPvp+w+adg7goDxJSfyG1nxm7+Zk95ClXq
         s4CwW3t0jqYWsAWMb8F7fr/t7a+s7dYxMPDEvjvlXw/4YZiCPq4gyRjzx8CfdY8VFORU
         p+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=spTRD7uH+zz+Do5jAg9snd7uUL6MjKjkWOeq5SImiLE=;
        b=IizA+WgymKxRec4H8H8hAUnqXqwWoyDiPahzB5bYLugYPQfJVR98OOVpzvfYluuoZ3
         hEWTrdVwTnYK+gWF88lvFXlb0S+9b8j7QDzqVojNWPhH4gRm1JV+qxEFTIxpurEAcpXp
         AyjjEgaUbM1nDOFAfJpSkNZn8DblCMwufXCfmUiX3sCSmHW7iC+WZkFyh1EKXt7J1l7A
         nwyjdCVDF9LZ6UNc0NntUDIG8YD3UrO27v/LEG2kYxD5gaLYMQdqlQ2X73uygaFTcMrc
         jNfQMkYzBYRzf0vIAMmtBoXNfAu+K8Ff2ISoj91mitC0VjpkoF1BOKFdC+m5Y9/bobK/
         6MnA==
X-Gm-Message-State: AJIora/RgDQHDFfavArdnU81QELr8WVenBlfwPIdTnng7kCNf7iVkjgy
        B/heh8wqgnhjOY//QJday9lxWQ==
X-Google-Smtp-Source: AGRyM1t4UUAqL/ykt2xtB3H/xDVUDoiUS/J1dyO5R3SE+XKpuVVMRdY5sftmPnzCycKxB+c6eCnJng==
X-Received: by 2002:a05:6512:b23:b0:489:d24e:5abf with SMTP id w35-20020a0565120b2300b00489d24e5abfmr7811557lfu.636.1657877306666;
        Fri, 15 Jul 2022 02:28:26 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id s6-20020a056512202600b0047255d21190sm812585lfs.191.2022.07.15.02.28.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 02:28:25 -0700 (PDT)
Message-ID: <49546e85-feec-4996-e8d4-34585dd7e0e5@linaro.org>
Date:   Fri, 15 Jul 2022 11:28:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 29/30] phy: qcom-qmp-pcie-msm8996: drop reset lane
 suffix
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-30-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714124333.27643-30-johan+linaro@kernel.org>
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

On 14/07/2022 14:43, Johan Hovold wrote:
> The lane reset is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the reset name.
> 
> Update driver to support the new binding where the "lane" reset name has
> been deprecated by instead requesting the reset by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
