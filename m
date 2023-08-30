Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B20D78D9BF
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232678AbjH3SeC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:34:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243064AbjH3KKm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 06:10:42 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0F751B0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 03:10:39 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so1523469a12.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 03:10:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693390238; x=1693995038; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K6fAYHYlD9Q4cP+9uuxhoOpBar+Sw6tLFQ7HlxyUaOA=;
        b=LHWatOru0oTj90FU8rMxmwxUAobrtEdK9jeeQhJr+XnbpCKsTc2X0E9ijss4gdWj+t
         bHQRDtmJUejQ8GAUMTY0MOwEQyBci+xhW2YvSxSZIcItAa1bf01UkfJHerhIUDtDr0vE
         a7/B9LtTSy9ZQl+h2m01y8OyuWzi3B0cQR7S7PWIkaGw4CxXFimbXKCAlq7PC5wo6YsC
         f8ePmAeq8RSpQSAnpgNcasfgZ2N3rgl8qtaQRSDKAs3i1Cn7GMw6monC/TsZflSR0ukI
         a/xrZnUcsPVWdCp+zyQRLW0DMOKpYgOPC9k7gIjyYlvH9bboKeBhz/BubpNRs05XuBG/
         qYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693390238; x=1693995038;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K6fAYHYlD9Q4cP+9uuxhoOpBar+Sw6tLFQ7HlxyUaOA=;
        b=kY6a9QK68V054hWxewgG/bTh4/d9etuo2Mch07TOLNMu8yVwbAHI9TeWeqmUq6/dlz
         50eCFcxiH25dlG8egxz1VsYSTKkBLfIIQZvutDOzjJxVsPpQGo0JvYu4tWRL+Y2CzQdD
         7j5Ro3BMcxbJvOXuThvt0cYXXSQXo5szIXzjizRJu0mgbsZ/6sffTI+FfPfjPo2eDwaw
         mQ3g7awx+tOURb3BUko3vUaJAjsq+SjyguwlJkaquaWmZT4yDfaOge4T1yDy/elwmm8U
         jvMwoYMixcQaRrVBA4DgqFxSRCOPK1OWhnNLDsLyi+kvmsJTROLBeWmtzRUXUR4Izr8n
         nUVQ==
X-Gm-Message-State: AOJu0Yxw5jC869y/8lTDVOKnAp2Ug6+iJRh+emVXNXGMNdQbt5c+VV9+
        W+YdgfCM0RlZwugUV86pKo76Vg==
X-Google-Smtp-Source: AGHT+IFCwyfUmZdNpIfAR/2r8grquZf8w/lqNiLhyAhfpvYWkbd/+vc192a/XgLTwHSrcsc8zUTWUw==
X-Received: by 2002:aa7:c903:0:b0:523:b37e:b83b with SMTP id b3-20020aa7c903000000b00523b37eb83bmr2026693edt.13.1693390238047;
        Wed, 30 Aug 2023 03:10:38 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id o8-20020aa7d3c8000000b0052544bca116sm6579125edr.13.2023.08.30.03.10.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 03:10:37 -0700 (PDT)
Message-ID: <6f339b46-9f75-9b76-28e9-e15b5c1c3590@linaro.org>
Date:   Wed, 30 Aug 2023 12:10:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 09/11] cpufreq: Add QCM6490 to cpufreq-dt-platdev
 blocklist
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20230830-fp5-initial-v1-0-5a954519bbad@fairphone.com>
 <20230830-fp5-initial-v1-9-5a954519bbad@fairphone.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230830-fp5-initial-v1-9-5a954519bbad@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 11:58, Luca Weiss wrote:
> The Qualcomm QCM6490 platform uses the qcom-cpufreq-hw driver, so add it
> to the cpufreq-dt-platdev driver's blocklist.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

This patchset is collecting unnecessarily way too many subsystems. It
creates some feeling of dependencies, which is not true and not correct.
Putting DTS in the middle makes it more confusing - if driver depends on
DTS, then it is NAK.

Please split your patchset - independent changes touching separate
subsystems should go to their own set.

Best regards,
Krzysztof

