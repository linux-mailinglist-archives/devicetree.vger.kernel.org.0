Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60C86690E6D
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 17:37:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjBIQh2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 11:37:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbjBIQh2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 11:37:28 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 026D313DCB
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 08:37:27 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id r2so2361300wrv.7
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 08:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+6IMHM6bYOKutk0YdNvntbL0y2XtMlW6qRW152/MzxA=;
        b=Wfn6Ir6i0SB6/k4FLWKx+lzycFZDfN9jz9YWijUMfx50xkhrtGhUlk1SF3X980iKGd
         mfURqJO113X6jF9cgsffnZbYxxC4SUCiVBpg0zIOIUotmi/6n2otDHjH9cIeFLi1W80+
         l8x+KtQbgn5OzYc9hMkQk7Z5EqwWZZhttYiy/yXCWyAEdkAGn7qWrVyVYSTOXD5Q8pP0
         UwCvie7MbnY2HptWoM7VZZBvCoUGFiR17OzNy++/CHJFE/qVjK+h0PYZuO5VhsvJXRtf
         G5GGqR5HUzmfcx44oior+/N9kRMpAQ8z+OMAcZGL6j9U5XsglMxtDl28FeMca87UGPcU
         j89Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+6IMHM6bYOKutk0YdNvntbL0y2XtMlW6qRW152/MzxA=;
        b=x2d9GW9WpDfIamF8hqMI37qX7C+3rw5DjQm2SW4yZGvs667IEb+KBtjVcWqw4tHOMK
         DXO2ou1DX5wbVwtnzzsPhBSkkGpEOs1t96YJOYHjJJrmNhns5tdRpz5zb6As30pk3b/e
         fO9n5B7z9tGKGNkK081xCuxJk2mnHEdwRBFDfXwBcueCvI5T+EH3kdF+fC5zybhPTbs4
         tZHFKkAzC8OSodWcqqMawv/w181A+n3mgH6VB6huZy5gozYkGY3f0qssHRcWTEpuAPEt
         1XT1MbgXFXsttfuYbs3CSPS9iFGgPrP9ldJ6Lognsz2Q+7uuV3tDX/OVuPuneevhXKTX
         F/yg==
X-Gm-Message-State: AO0yUKWf84HhxiVP7P/gbHzXoOXN5Yj84c/DOQnjnMpn7PXzcBx+SxyL
        ySMvhzURnQTURhuwQgHfwsv3kJVCyWP8nKL5
X-Google-Smtp-Source: AK7set9dfFDigYwrxwbkMbGuhq64PcoLZzpYnYkNJPQHYcVgPOBa6CwZp19qG1Oih9nJ1ZdvR6GGMg==
X-Received: by 2002:a5d:488b:0:b0:2c3:db9e:4b07 with SMTP id g11-20020a5d488b000000b002c3db9e4b07mr10571081wrq.64.1675960645624;
        Thu, 09 Feb 2023 08:37:25 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n7-20020a5d4207000000b002c3ce97ec38sm1668525wrq.115.2023.02.09.08.37.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 08:37:25 -0800 (PST)
Message-ID: <6729433e-9560-4a09-e0b5-badc2542e6ca@linaro.org>
Date:   Thu, 9 Feb 2023 17:37:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v5 1/8] arm64: dts: qcom: sc7280: Extract audio nodes from
 common idp dtsi file
Content-Language: en-US
To:     Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        broonie@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_rohkumar@quicinc.com, srinivas.kandagatla@linaro.org,
        dianders@chromium.org, swboyd@chromium.org, judyhsiao@chromium.org,
        alsa-devel@alsa-project.org, quic_rjendra@quicinc.com,
        konrad.dybcio@somainline.org, mka@chromium.org,
        quic_mohs@quicinc.com
References: <1675700201-12890-1-git-send-email-quic_srivasam@quicinc.com>
 <1675700201-12890-2-git-send-email-quic_srivasam@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1675700201-12890-2-git-send-email-quic_srivasam@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/02/2023 17:16, Srinivasa Rao Mandadapu wrote:
> Split common idp dtsi file into audio specific dtsi and common
> idp dtsi file.
> 
> It is required to isolate idp and crd-rev3 platform device tree nodes
> and convert crd-rev3 platform device tree nodes into audioreach specific
> device tree nodes.
> 
> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
> Tested-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

