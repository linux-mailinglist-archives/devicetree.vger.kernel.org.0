Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 390F160AF0D
	for <lists+devicetree@lfdr.de>; Mon, 24 Oct 2022 17:29:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230022AbiJXP3g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 11:29:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232512AbiJXP3O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 11:29:14 -0400
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB7C290
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 07:16:01 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id u2so3773184ljl.3
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 07:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OEFP8+56rR9PvuAAqNAvtloZrK4zeXNg7EvBCjIpJgQ=;
        b=Z+wojvNOo17B1XSeQtJq5/B77ewxu77Xa8OqTUUlzdoBdxgs2C9cGp1E71npftPZzp
         E0OoQYLS9WRNzX9AHLW5qOQWMB54EzRdQl5Hp8WUpgTFe0nptilBWJcpjUkVWqWUFQr7
         CFYdh0umW4F5rPD4qf7QCkQsT4A/t7fMdiqpEHJGblm9R/41bkZrXbHjl1sp85HmD51D
         sthw0wmVFzeUhwJW8EoCtXIxsGGfsNl56YZQ69kfnskiTGqnUmAS0p1WThONQtwfDCKd
         4jBgATf0ayOBwQzzZqX5LV92t0Zsr5KuQYUiEqOhiNB+TpakfqbY9Xm9PH2/1uHnLQvR
         sBkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OEFP8+56rR9PvuAAqNAvtloZrK4zeXNg7EvBCjIpJgQ=;
        b=q8UdRXWfyn+TUSluJyKP/x977kbRUp/E1gLiSrCB6ldH/kY2kyYlp5ntNUesMm4Z+D
         ovDYlfrYxooOqXNSuS3tUeEok1gWXeqpFPBXzx2ivEL04e2/hPwxH+88X8biXkuhCsqx
         FpNyeqnQfrtohr5TXg2gdudMiU3JBKudFkV8nKKeIEC9dNXM9gIuiLvUwWEje8a6VAZN
         H91NmLxk8Qa1AHxQsDSi29rGMmLW1kCxv0bbo4Pt1DlcqskurGIpv7aIis/QxFHzRe8t
         o4vy+m6LX0gUn3pPFi1bJ2eLXqr3jxAddERHq3/4na/X8JiOgIPX92npzweBRCb6OmTd
         OVHA==
X-Gm-Message-State: ACrzQf1mmTI9OcVNfl6uFyS8dBJ2f1b2dbi3Mla+epYAkOK+wy30pmSU
        d8JmfgfFNaEZ+T3BeSCJzCndjZHKKSvjZJoU
X-Google-Smtp-Source: AMsMyM4Hg7dpthJWZwkUnvoNsm8BSrOEizgPXzEPxmzDJocBi5HppPiwJ7HkmQ1KaardkYsiQuW7oA==
X-Received: by 2002:a2e:b11a:0:b0:26e:4c9:f7f7 with SMTP id p26-20020a2eb11a000000b0026e04c9f7f7mr11599749ljl.522.1666618418471;
        Mon, 24 Oct 2022 06:33:38 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id q21-20020a0565123a9500b004ac393ecc32sm329035lfu.304.2022.10.24.06.33.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:33:38 -0700 (PDT)
Message-ID: <0b384fd6-a72b-4975-7649-9376f193700c@linaro.org>
Date:   Mon, 24 Oct 2022 16:33:37 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 04/13] phy: qcom-qmp-usb: move pm ops
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
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-5-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024100632.20549-5-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 13:06, Johan Hovold wrote:
> Move the PM ops structure next to the implementation to keep the driver
> callbacks grouped.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 10 +++++-----
>   1 file changed, 5 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

