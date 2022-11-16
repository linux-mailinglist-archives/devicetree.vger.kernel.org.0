Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD93462C00B
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 14:50:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232190AbiKPNuX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 08:50:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229638AbiKPNuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 08:50:21 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC6EAA47E
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:50:20 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id k19so21898989lji.2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:50:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6Sn5UM87DhZrfZ3hQtw98GzFaeDc/4SbGash74eXBh0=;
        b=oU+l3+XzM6TrPUMHbF9zIq4B4Ogop+SSeREssnwcc8HCPHsFbljky0/dJTbutxoycE
         muXdHPUvcDaj1HjSKUS3+PBduo6Add5vLlPKJ6zxeM7FCiXa6WxgSwzmJ+ebfd+d0c/O
         MEmtTHqas1vn7/cOgeD5+UjF9hgVDmAchG6meUV2Bus6n9rV85TF7L5qSz7vEssjUkPU
         Kq/HWod/3x4TFw/g6LVJ1KA7+mus74eiqGolFRZmXC2Z77o1DgF/08XiYHKv8u/vleUJ
         XfLPJzs12rOfIt7nlUJqcrANa74ZFSVewUfacmoEL/qCy4AFej+JBAuHULgbye/KoLub
         g1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Sn5UM87DhZrfZ3hQtw98GzFaeDc/4SbGash74eXBh0=;
        b=fOsifgbU1QK53yP/Y88znG5a2GSIA3u1aJUYwq41DiqZXSDo3aYRi/L6yfXWaLxdeY
         wtF9jTGU0B+uMnHtC3+PqL//nHZtEcusEhrLo/2UwKveih9Wlaaas+2DF36F6rUhb4OX
         /MN96b0VFdabX4H/21CgH7CZZO0rctPMBIa8EDYmTzN0YXSKschltDx5bB8QM8ir7ERH
         0oItFcPequsYVH79/uTGkyckxJIta9elOc6wDUwwfj7OEDoYmx8toG8ZHOWA71D9klvd
         WCFC6haqjUkBeupbYptJwPKla5vi9ZpQ49VQuC5u9tuRbfiYUqQgdfvwb4qQtWielwQf
         Qv3A==
X-Gm-Message-State: ANoB5plJ3CurnJ00iwAfPhLh6BEbQtaRq6NdtKHpB5O7j/nDfYxAqJ4m
        kb3/0/8QhIiRqcgU11HybRR9NQ==
X-Google-Smtp-Source: AA0mqf683ZYqCh5cU+GCVbk0AsSh697zN1LMG/DDoncQ9kNzFkC+7cOhTPE+rnPHRULHF0GBu2P0cQ==
X-Received: by 2002:a2e:7317:0:b0:26d:f909:6b7f with SMTP id o23-20020a2e7317000000b0026df9096b7fmr8322629ljc.482.1668606619148;
        Wed, 16 Nov 2022 05:50:19 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l10-20020a056512110a00b004979e231fafsm2602754lfg.38.2022.11.16.05.50.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 05:50:18 -0800 (PST)
Message-ID: <c5ad6155-e99c-3d58-2e59-2a239cb34282@linaro.org>
Date:   Wed, 16 Nov 2022 16:50:18 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 04/15] phy: qcom-qmp-combo: restructure PHY creation
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221115144005.2478-1-johan+linaro@kernel.org>
 <20221115144005.2478-5-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221115144005.2478-5-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 17:39, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use child
> nodes, move the PHY creation to probe() proper and parse the serdes,
> dp_com and dp_serdes resources in a dedicated legacy devicetree helper.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 89 ++++++++++++-----------
>   1 file changed, 48 insertions(+), 41 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

