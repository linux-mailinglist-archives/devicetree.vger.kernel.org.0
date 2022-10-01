Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B0DB5F1B0E
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 11:14:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229598AbiJAJOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 05:14:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229505AbiJAJOq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 05:14:46 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6098F2A978
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 02:14:45 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id bs18so5494961ljb.1
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 02:14:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=RQLpdS+2LqUI484Ef19q/QRpyzVCZQoXii9w6Kt0aAQ=;
        b=foAthLWvif1oxb+TUZTFEpnXPO4OLKDqS9q4X2d6w4g5jmnZE5ShEtRbZvEDOJW7OH
         4EpKcPI4DwLWID6Ri7adYxn3fczFpfIwyM6PTpGTaQNewHtRaakj8TEJp1AVbs2kKoWP
         f29BWBcB6FE5bRkBeVeJdGFBarJQ54Dltz5OnQ2axbyAgdtB6wNRfkRDX3aOd+9aAl5F
         emqSphiHzaFvIud/eiw8lTzCPoXwNS5M4D0fOGWXV3lnwOMralII8kYI3La2KthZXo5Y
         GgPHBqqYuW9vOFB318SsTMPbjqj/xucL6beOSliFyA8MlqER8PZ5cEH/rf37kZiBqoq9
         O1jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=RQLpdS+2LqUI484Ef19q/QRpyzVCZQoXii9w6Kt0aAQ=;
        b=PVpYUCjH+oQIw1+DYHN81O30+R5k703sbSTxwe0nKZrn54db1MVgWOASJYEh8C0Dda
         OFibyHuY6RyNYdWBH03zO8TS3o+DiQo5LwzpYWSKip5sQOmjHdQcf8TDXq+rzkxGUuab
         rj9vYncWe4BX7WYTMoM1BQfg74mL1Zxh5OjDsDik6cgzEUloyjSvZRMuYFY+y9RhOU3b
         wcmU0r6lQWDzdDQp1XqBzd4/5OcljRFQXAH8b5IgO3HdMUqSrlBUPrOd8ZEYbtfCrLon
         2v2pQFN/DcHLcA2i4YublIZryQki0NRqLIPkoxVtmJ18xqpTJygd+AAXHEDjCe3GK2Um
         Ek3w==
X-Gm-Message-State: ACrzQf1F7zMViwbrzZKnOSPKUr6U/6oXFjQs4M8ADfN7oGXholZ5CrCR
        sh3IOZDUocb7qxXBzx52hFZUZg==
X-Google-Smtp-Source: AMsMyM4BlAuOGwwmx3avewwpS7HJgELPjBgCpDgL3ato7szDRdK5mZCL4vpQMg01A6qvghmZMGjxBg==
X-Received: by 2002:a2e:a9a7:0:b0:26c:4ec7:fbf8 with SMTP id x39-20020a2ea9a7000000b0026c4ec7fbf8mr3693512ljq.413.1664615683763;
        Sat, 01 Oct 2022 02:14:43 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o6-20020ac24bc6000000b004a0589786ddsm702097lfq.69.2022.10.01.02.14.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Oct 2022 02:14:43 -0700 (PDT)
Message-ID: <17b067f0-7b93-c1c1-9818-cb0069d1547d@linaro.org>
Date:   Sat, 1 Oct 2022 11:14:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 04/19] arm64: dts: qcom: qdu1000: Add reserved memory
 nodes
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221001030656.29365-1-quic_molvera@quicinc.com>
 <20221001030656.29365-5-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221001030656.29365-5-quic_molvera@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/10/2022 05:06, Melody Olvera wrote:
> Add reserved memory nodes for QDU1000 SoCs based on downstream
> documentation.

Patch on its own does not make any sense.

Best regards,
Krzysztof

