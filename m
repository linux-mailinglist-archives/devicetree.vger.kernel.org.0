Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A67A5B2047
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 16:13:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbiIHONU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 10:13:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232541AbiIHONR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 10:13:17 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 291C7B24AB
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 07:13:16 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id x10so20075991ljq.4
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 07:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=o+TCgSTIjUJf2ZyvZPD2DDvJwwEznDT2FZ47NjeBns4=;
        b=iq3nL2djKggombliRyDV6ER47DIbJhmHz3D3HV1nfuc7dkI5gJz7Z14ylgCEAJvCJR
         8lR2fQka0L42XcIzlXzEjy0ZLfGZ5Zgwp/ijOjXxsc5SFmHEVz7TvCOkffQit0sgsoB3
         a5fSjVk4QObKSYxvGHzAlSgx2u8TLx3zA7cEnSOrh3piDDAz3kuWHYH5al5JEKdrN1RJ
         K/3XErhEZIngqvhTkwgowkpl2NQi/Pw9B/srHNqpyBLmXYuc72pJHHijXn9hSTIpfTfj
         VrGUyurBEqxDkFWA9YhEcHQqh+5NZ9tH9ExmZFmTvUGnOGckhdeI6NhYQhfPap99o9cO
         DJjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=o+TCgSTIjUJf2ZyvZPD2DDvJwwEznDT2FZ47NjeBns4=;
        b=7FdgyaJ0blP9K4FD7UDA3e5QPWhP7FR+oPcDUETSrGxLioYsKtafV1huwdKVQIc+3F
         nsCaaylY0U+QCZt9UWaWmAusBrHleBc0fLKlbKPgIzHsg9zaW+Hu6DZoV5kdx4wv/7Gv
         bhX5gcrYRl8rxb2tuj67EKXLlGxJw02fb9l240RvcQ9RA4BDOxa7eHDbXMjcor1tsMkT
         z1cJ9vUAc5MCUn2yZ1hIbi7Q1vPRqNs5BPAHohScRhVOLuY476aAWGYFApxX0G73E026
         s4R1pwc6WJS2mI+Gu8rGqk1M86Et8CMHgTZ1Db9NM7n164h2uHHlqy3BwU9F1/AWa2jQ
         DRaA==
X-Gm-Message-State: ACgBeo259ENqEiYTw9dpLBI8ekriOMJ3Kf9868MZwMlMxhSwHMOaTFh5
        0F8OIuZ81SfKuCqZoFYjsbDsx1jHQbBpjg==
X-Google-Smtp-Source: AA6agR40orb0LN0Pe63JfkxHJ7vt6mFQMheM30SPtDuMAVm8Ga699Zm5dWYan6cT8BdN6bpXu3lHFQ==
X-Received: by 2002:a2e:9ec3:0:b0:261:c893:679c with SMTP id h3-20020a2e9ec3000000b00261c893679cmr2534772ljk.378.1662646394477;
        Thu, 08 Sep 2022 07:13:14 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u17-20020a05651220d100b00492f0f66956sm3044998lfr.284.2022.09.08.07.13.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 07:13:13 -0700 (PDT)
Message-ID: <91c097b1-3b15-5565-5ec4-747ac5f688c7@linaro.org>
Date:   Thu, 8 Sep 2022 16:13:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 11/11] arm64: dts: qcom: sm8250: Drop redundant phy-names
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
 <20220907000105.786265-12-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220907000105.786265-12-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 02:01, Bryan O'Donoghue wrote:
> phy-names has been marked deprecated. Remove it from the sm8250 DSI
> controller block.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
