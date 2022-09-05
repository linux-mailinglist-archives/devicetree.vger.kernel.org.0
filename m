Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3AE005AD7BA
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 18:42:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232173AbiIEQlh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 12:41:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232137AbiIEQle (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 12:41:34 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B08360537
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 09:41:33 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id by6so9739116ljb.11
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 09:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=T3v5751OE2r9b+b3tuHzjTy+B6krnTRYANy87il59m8=;
        b=EU2mK70tIhkHs+x1jaGeTlHRD8s/VFjjf6K38KN6K/L4xKJV3wDZdTIHOBCPIOO8SJ
         JvG/ORl1RSJzYoONEHsGdKvEFVGXwf38oY8GRrtzoBjO5RL4bZKHHGeQ5jnDK8k53LCT
         ip5XJZHZc3Dph8jqOJN8flQZzFLdYWGEcv6K4xDVKBe6p4XVhJHWG1SQFE1mCbRpAyVN
         kXJacu0Nk7F4aZ6a7ksL/LhsYHeFrbhS0d84BN4uvYlXJfSSAYluUgE9pYvxnc3Z/PCd
         VDzdyXroe+Z5+Wk6mSWIUu6utpmpuDtVy4gLqSEcNud8XUxi6AS+VO6uvCAlTqCReo92
         DSOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=T3v5751OE2r9b+b3tuHzjTy+B6krnTRYANy87il59m8=;
        b=69iYKd3SUb5jIT2WfuV788ah0SGQGNfpSjey9jalV+r/A+c/gJENcG0xc56jhNGnvk
         Jac1Bmxoe4DYSsOhlVWZ4ro4NZTL/QQnkwwaJkp9sB0tvkFnJS+2wCFJdssSmOQkUrym
         xdGn/Dav2vkOlRXsM7yV6nvfHlMMl4avyLfe4CqSopvyG1fkLV1yLzVlgZIHkPSCJU0W
         ti2Gu/A3gNkK5RCXB753Ts3I41tSpbhcgFSmXQineGx93Y2larCOUThhf2ULfO2RJCJ+
         sh4zsffpCAK2n8GAOujbL2vyh9pxUVD6r+2zh1I6bAUE5P0Md95sw4B8obP0yPSplwH7
         LhWQ==
X-Gm-Message-State: ACgBeo1myvcv97hR0v2T3qkixp7FDDDVZsa2q4LPP4UfThgq7Ldpc7lv
        +FBziOSNtU50xyHlzIOEeyPXmg==
X-Google-Smtp-Source: AA6agR5ZVT41wrK0ZXXwj5GGKIpijWd1xdQLIgCf1Rj+pMVwEvIQv16ulkKT99NLOj0K+w0j3n6OZg==
X-Received: by 2002:a2e:92c8:0:b0:25d:6ddf:e71d with SMTP id k8-20020a2e92c8000000b0025d6ddfe71dmr14349523ljh.170.1662396091440;
        Mon, 05 Sep 2022 09:41:31 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e1-20020a196901000000b004947555dbc2sm1238106lfc.100.2022.09.05.09.41.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 09:41:30 -0700 (PDT)
Message-ID: <3a6c3b79-74c6-3549-d108-c82f72e43dfe@linaro.org>
Date:   Mon, 5 Sep 2022 18:41:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/3] mfd: qcom-spmi-pmic: Add pm7250b compatible
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220902111055.106814-1-luca.weiss@fairphone.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220902111055.106814-1-luca.weiss@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 13:10, Luca Weiss wrote:
> Document the compatible for pm7250b that is used with e.g. sm6350.
> 
> Also while we're at it, sort the compatibles alphabetically.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
