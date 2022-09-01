Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F405F5A9164
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 09:58:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbiIAH6t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 03:58:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42110 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233460AbiIAH60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 03:58:26 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DCD5110DB1
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 00:58:24 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id q16so17017852ljp.8
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 00:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=/RjCPmDOfNfv/A2l7hq11fpbpsdvqY762PVO7MBZqtU=;
        b=bszRMH1TT25QjXwTM5jvz/8cu8MeWt0Ghdn0UXO079BLlnm/n8JQiI4R+SJ4dzr7nH
         5mEAiJg96YlB3PvPxBmCyYhtWuyCjkv2vwJoPVL9YIvd7UU8zAK4jpnpmyxb172JjRLP
         xFBfgIpFt/em5rbQrqw9R8rvW4rPB1VqcXdJflBaumnKXiPms6r2Ez8ZFKZfeLILv9N0
         uN7BSZ/WFpbWPwSX4B6YvBn2N+oafLUj+1M9UBndUTtK3jIwSCbjA5UxVh97BTh1lth5
         SjAoqhqzvZYz16nuGhvWiaTzCd84Vvv6jgm7b3tu8iZBTKUFmsLQgKqPdPEtDGGqAT+E
         Y5/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=/RjCPmDOfNfv/A2l7hq11fpbpsdvqY762PVO7MBZqtU=;
        b=sI0ceLyMU/wDXd8Qfi5DNu5uxOGWPuhLjKrXQa7gHRapRhbcIL+T5FpRB0H41CCAYq
         MW1xaeodeeOczEw3QSSj8iE+iTGg5t6FfeJMRUS5W9HsSdck4JB7o3VdcWFoRz9RpNqb
         ZnJK1ocgiDKlBqpI4EcjcaypmGxK7ctXN+OIx1orgHklLZtCnoNceEMvV8+TZArKHC+c
         ljlXrl6/CumOq4uqr+EJ5ZdLEPJzwUiIszq/KOFS8uy8R8ULjl2FRrCS8+XPeXA9S318
         I+FTm9+ninZVHqm1vTBk9Bj9G0edLf4TkaGU9P+IpD8m3YgjD6VmvgaiaSqWgpxU+iYJ
         Ax9w==
X-Gm-Message-State: ACgBeo0dW/7ME9rEaBjSs9/X8eUnQ1udAxX5pjnqXYDaia41s2crao6g
        hU/fcqKV+576IdKkGCTbFkpl6A==
X-Google-Smtp-Source: AA6agR77i2lH7h6SAd6Yx0FPM1Fu7uQdX0zOfkJ2D2cKG1K3q7c8GirrdrNpOca7kkzWv9xIhBlIMw==
X-Received: by 2002:a05:651c:154b:b0:268:95fa:7f7a with SMTP id y11-20020a05651c154b00b0026895fa7f7amr1804824ljp.237.1662019102724;
        Thu, 01 Sep 2022 00:58:22 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id w21-20020a0565120b1500b0048af9d2d119sm2246002lfu.130.2022.09.01.00.58.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 00:58:22 -0700 (PDT)
Message-ID: <fb459831-e906-e59e-823b-4df72a76e823@linaro.org>
Date:   Thu, 1 Sep 2022 10:58:21 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/2] dt-bindings: arm: qcom: document sc7280 and evoker
 board
Content-Language: en-US
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     mka@chromium.org, dianders@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220901061336.61386-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20220901141304.2.Ief93544cd0cbfa412092f5de92de10d59a2a5b3a@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901141304.2.Ief93544cd0cbfa412092f5de92de10d59a2a5b3a@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2022 09:13, Sheng-Liang Pan wrote:
> This adds Chromebook Evoker to the yaml.
> 
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
> ---

I think I saw this patch, but this is still v1?

Where is the changelog and numbering?

Before any posting please read carefully:
https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst

This is another set of poor submissions from Google Partners :(

Best regards,
Krzysztof
