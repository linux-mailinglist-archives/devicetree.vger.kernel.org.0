Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF19C79E2A7
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 10:54:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239103AbjIMIyF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 04:54:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235107AbjIMIyD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 04:54:03 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1AAB1998
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 01:53:59 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-401d10e3e54so71031385e9.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 01:53:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694595238; x=1695200038; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GhHrKGkwknmn53kTVek0J706okQHEDAGQ9NnXjohhwc=;
        b=GWk6iuSEuCFhD9ZoTd4XeA4MjqL1LK7EgPPji+7OEk/t9odzZH2F/Em8IVwJQqbaUT
         +ahBRgAigrkRmH2FVAbGdW2mpbrF5O0C2a5B4AomxE3RMZeSFGbHGf5Q4ZGUsXrdizWq
         wkuVOKPke9doXDRoX2CbQZtEjai5MWKz0uhgm2Ul4QXqqIQWMrRy9fZrg/5Q0iuOfcPK
         97Fz8O+OzeJejuIitDR6PBMZW0a1+AwwVeChGGqbqnC6FjiJ6ZrJaBbDnKMQ7xcYDhCD
         gsEEZeEbx21wMCl/e+ZzadVH43TiEgm3WSexaLwqlVG2LfOoATiFdTtw2f+EpZqmtorJ
         Qjcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694595238; x=1695200038;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GhHrKGkwknmn53kTVek0J706okQHEDAGQ9NnXjohhwc=;
        b=PVdJCMGKAK8DzXOZOw6vjj4BOxSwG7LBxgyQAGfCTgv8YzphlatndPxoRosZN8Np+Q
         ZzBWqUY+IgHydKGaM/E7TRmNEbH+ogRTJfgW7LzhEDeA2hU6aaRyKfCHkjLv0BN1vpn3
         A6EqaBuqHWAk6inK2c8Msw45+iUBlji8NLKIqznOv5TlDCZng/vhn1/2czllEGw/gMoS
         rBd7YD6Dqr8kb9UC+jiVCkOOpmYqaPXK7UKGHhgftOrxnrMKRRVgx3Z/49eI2jHUswlp
         /EQ5dyhB7b2pWecf8YXR8WL1u74ZkVbM32GKLXZKKr9uuuGWdvwHY2BCai0wcuMIHWMC
         mZ+A==
X-Gm-Message-State: AOJu0YzwjfQruXOdOXRDGoDZnw5Qi9F3yxa/dsACK4uo0bQrv6M9ZSMB
        7I0KduuhCM95ga2/6x8kdRDekw==
X-Google-Smtp-Source: AGHT+IHlx1wBmhFt+Xhr2HaUbSAyTT3NDErkIFWBlr4Be2MBvo6kfY/pyhgj249iwl6Zy5PgBzaFXg==
X-Received: by 2002:a7b:cbc8:0:b0:3fe:111a:d1d9 with SMTP id n8-20020a7bcbc8000000b003fe111ad1d9mr1571454wmi.25.1694595238135;
        Wed, 13 Sep 2023 01:53:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id k23-20020a05600c0b5700b00402fa98abe3sm1369905wmr.46.2023.09.13.01.53.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 01:53:57 -0700 (PDT)
Message-ID: <7b500bba-3091-f425-a60d-e58a3d9e4c1a@linaro.org>
Date:   Wed, 13 Sep 2023 10:53:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 01/14] arm64: dts: qcom: msm8916: Drop RPM bus clocks
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Alexey Minnekhanov <alexeymin@postmarketos.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        linux-usb@vger.kernel.org
References: <20230721-topic-rpm_clk_cleanup-v2-0-1e506593b1bd@linaro.org>
 <20230721-topic-rpm_clk_cleanup-v2-1-1e506593b1bd@linaro.org>
 <bd11d1b1-efe5-4f96-43e7-163fca5d3278@linaro.org>
 <ac501bcc-80a1-4b65-ba24-272152d1c95c@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ac501bcc-80a1-4b65-ba24-272152d1c95c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 10:47, Konrad Dybcio wrote:
> On 13.09.2023 09:07, Krzysztof Kozlowski wrote:
>> On 12/09/2023 15:31, Konrad Dybcio wrote:
>>> These clocks are now handled from within the icc framework and are
>>
>> That's a driver behavior, not hardware.
> I believe we've been over this already..
> 
> The rationale behind this change is: that hardware, which falls
> under the "interconnect" class, was previously misrepresented as
> a bunch of clocks. There are clocks underneath, but accessing them
> directly would be equivalent to e.g. circumventing the PHY subsystem
> and initializing your UFS PHY from within the UFS device.

And every time one write such commit msg, how should we remember there
is some exception and actually it is about clock representation not CCF
or ICC framework.

Best regards,
Krzysztof

