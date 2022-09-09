Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66EF5B3863
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 15:00:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230241AbiIIM7R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 08:59:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230369AbiIIM7Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 08:59:16 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5E4512FB8C
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 05:59:14 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id bt10so2572474lfb.1
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 05:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=rA10oFBcS9GRs6H+G14jFrSjNL7+PyqMnaddez2Lzeg=;
        b=g4H3N5jGyBppcvdMdKiBAveMjZNYWZhgKJNH2909ePl6bmnHyfgr0Lf8CK4Mhckcqw
         ZauNOqqyYABkub0aFeSE8v/n0bKFuAbEii1Kcyh97oM2xHFSm5pbaLs4BpII+0+JkgY4
         5kgG1+sy77rbjVLtmELp6Xr2nkcfC6bLUZ3u29meS51J8/C3fbnvqcRh16KRR84fh8eZ
         EGSJm/fDhj6ibfx3jyqF7wAIay++U2JoRttTfK+ZxnbTS6QEG/dflMhA+bj7qxlH6IbJ
         ejGbWUE0akjBK+M/6OlYOqL4EW9dx0KRjIBj4HD1pn2x/0Z5Fh+JAfJszQ8uHw4xyE3E
         7kTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=rA10oFBcS9GRs6H+G14jFrSjNL7+PyqMnaddez2Lzeg=;
        b=RQ4cuHrmHHu4k2osB69IsIe67pXYIkNbXnKQvZYA7yJB+Y0xrS1oCwDaLX9yrEginL
         sdZErWOHbxfjrA+4Da9WoRv4E3rku8Ev3Ku82w5K43m+FKX3qwEyg+FYM5ixCYf+lzhx
         +U0GcHqN7Iu72ErSf1hNBq4QAvr0p//ZNpnBAIDNZQe+sc2JPUfPNBg+38G5QuCE7GGR
         JOsqOM4akYjsJ3sL0jGcbPS8vAyQtG5yNYLAMsSFz79wsrLSpKwozooVR7TKzhpDpNcI
         LlkVYulFmFnWaEyxKXQ4G0p2VTPPsQ/1O62pcnqrRhvWGZjLkUv7bLCzjyUs446Gp2BK
         3CKQ==
X-Gm-Message-State: ACgBeo29ekwXFwGm9Wp5+7adPE3gQwhW5RtVETnXIcIVXt1dfFZTLXSu
        6PE8WCUak9/yAfQ/SOdhPMuSjg==
X-Google-Smtp-Source: AA6agR5h57scqqN6r6woKLG+U0SHVgPqMbYFto4DWbVSCqxkfPXmISBfwqGsCPJJj4DqJVCvgv/25A==
X-Received: by 2002:a05:6512:1190:b0:48c:bf4e:b64 with SMTP id g16-20020a056512119000b0048cbf4e0b64mr4571134lfr.239.1662728352593;
        Fri, 09 Sep 2022 05:59:12 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id bi38-20020a05651c232600b002688cceee44sm64546ljb.132.2022.09.09.05.59.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 05:59:11 -0700 (PDT)
Message-ID: <68a7b637-82eb-3beb-a0b2-39dd2102aa4d@linaro.org>
Date:   Fri, 9 Sep 2022 14:59:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 2/5] clk: qcom: gcc-msm8660: use ARRAY_SIZE instead of
 specifying num_parents
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220909105136.3733919-1-dmitry.baryshkov@linaro.org>
 <20220909105136.3733919-3-dmitry.baryshkov@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220909105136.3733919-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 12:51, Dmitry Baryshkov wrote:
> Use ARRAY_SIZE() instead of manually specifying num_parents. This makes
> adding/removing entries to/from parent_data easy and errorproof.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
