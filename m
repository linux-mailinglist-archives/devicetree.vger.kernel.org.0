Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C147604631
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 15:00:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231474AbiJSM5Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 08:57:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232094AbiJSM4y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 08:56:54 -0400
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com [IPv6:2607:f8b0:4864:20::f2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4955210F88C
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 05:40:09 -0700 (PDT)
Received: by mail-qv1-xf2a.google.com with SMTP id l19so11237078qvu.4
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 05:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l6HYyoIjnUvMwU0yHagIn4/18iAr7NA//UMNayfCA+Y=;
        b=dOvlTzjU6BuP1xy7GcxjujxEOKHwCReRbfOLizRueBfSY4FEnUFZnc3MJQBdxAonYR
         cFVPgQVYkTHgCCNXwvCeexr31HkXl9SQl7x9T+RPUCiaxG4tSM/1uequdCROWB2egGVa
         LQmlcU/YaL1ZgPxRckvGKI33MT6lTRwcQyJuVL3tAwN7qdwIaNZUH5Jnd0ytgV6ZEbIi
         uEuncEuR5nDSN6XWNGqB5FbAzAfD+aapeTrfyZxkCFoqakaA5beR1rNpNBLKCa50gZnU
         aJcxDzxDJJpSQ6eLxBLX8JAU4NGfAMKodKevmuEHWebdpwQzz7riEHaZnRPp1/ibRyUo
         4tYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=l6HYyoIjnUvMwU0yHagIn4/18iAr7NA//UMNayfCA+Y=;
        b=CMHiO8/J89YtvL0G/+yZ1QPuWMayomycD9uhjZwqBOeasfA7NmsmmTwN+BMLbJByFK
         XmEw93IPDub3OwksSFqJ+wxT6WeEILFdYeSaM0CGw67ZHSzLi3ovSHcfmjJ11+ovMNr8
         vJr0Sm+73JNcBtAfk3UD5ASAyAneH3Tjwo3G6TrMdm/507Xd40JNZPVG6NXlbbSrc7qi
         zer3uLkHpKtlYmBLc4oiSvF2ReFWXaG0Z56zt+BCqNopQ0rodvcPh0HXPzaPj8GUVbuS
         qFHmhw51gJM7cskPxq0zWnLvx9QK7b9XfDuAiMu8qoYIXHFzo8kTz9+0uw/Pn+X75STV
         3PcA==
X-Gm-Message-State: ACrzQf2jBH7PVvVhX2DWR1QeT+5qaN3eS3YyQlnLCbxwmnBWMK6aJeTE
        TLR7oGGCAiFOcx57p7ERlFy+YQ==
X-Google-Smtp-Source: AMsMyM6sbGZb7PJUgIQ1RnhFxi87WWEJX86EP7sxBpspPM4u/LORyoNprWbrcZrCBb0JQauxsamnLg==
X-Received: by 2002:a05:6214:d4b:b0:4b1:80eb:64e2 with SMTP id 11-20020a0562140d4b00b004b180eb64e2mr6312320qvr.123.1666183154441;
        Wed, 19 Oct 2022 05:39:14 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id s15-20020a05622a178f00b0035d432f5ba3sm4043604qtk.17.2022.10.19.05.39.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 05:39:13 -0700 (PDT)
Message-ID: <c6cc4363-2004-a3e8-97cb-d6eb2b8c8704@linaro.org>
Date:   Wed, 19 Oct 2022 08:39:12 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 09/15] dt-bindings: phy: qcom,qmp-pcie: rename current
 bindings
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-10-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221019113552.22353-10-johan+linaro@kernel.org>
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

On 19/10/2022 07:35, Johan Hovold wrote:
> The current QMP PCIe PHY bindings are based on the original MSM8996
> binding which provided multiple PHYs per IP block and these in turn were
> described by child nodes.
> 
> Later QMP PCIe PHY blocks only provide a single PHY and the remnant
> child node does not really reflect the hardware.
> 
> The original MSM8996 binding also ended up describing the individual
> register blocks as belonging to either the wrapper node or the PHY child
> nodes.
> 
> This is an unnecessary level of detail which has lead to problems when
> later IP blocks using different register layouts have been forced to fit
> the original mould rather than updating the binding. The bindings are
> arguable also incomplete as they only the describe register blocks used
> by the current Linux drivers (e.g. does not include the per lane PCS
> registers).
> 
> In preparation for adding new bindings for SC8280XP which further
> bindings can be based on, rename the current schema file after IPQ8074,
> which was the first SoC added to the bindings after MSM8996 (which has
> already been split out), and add a reference to the SC8280XP bindings.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  ...om,qmp-pcie-phy.yaml => qcom,ipq8074-qmp-pcie-phy.yaml} | 7 +++++--


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

