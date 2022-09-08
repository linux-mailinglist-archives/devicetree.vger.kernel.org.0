Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ABDD5B1BBF
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbiIHLmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:42:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbiIHLmn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:42:43 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38853910B7
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:42:42 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id z14-20020a7bc7ce000000b003a5db0388a8so1919812wmk.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 04:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=FwnGwBViBlBLM2m4hZkpIK1u+LRIojR8TOEYP0w8Jc8=;
        b=RYWio6c2sO+Dq1mNriGCyO2ndkf4YSCekG699Z33vaSoBlO3JkqngObYnqj8HTeCyq
         vvFgUwrBGwZVM6U30eMokmfaCFGSOGHjTnUY7cHgigBAC0SHe/GNu+myOHuNISS1f+Tp
         U6fiAvfYzbLuKGytwMPWachqYLFL2YhW5fha5D72aXesEiQMOgOlNvRuKuc5wwxGasHG
         luxYPEHYORl/uNCS23XwjFvqobXizGxnzxyYh5y2y5UGik9oVcbRiBXenckUnz8avG3m
         ba4Q4rJJsFsnLf37EEi4lcfxrMEDaXEGm20lJ7br9HejJ8pvntHKjS51BBF8BscTfW6d
         sVJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FwnGwBViBlBLM2m4hZkpIK1u+LRIojR8TOEYP0w8Jc8=;
        b=U4OJlrIA0vSrhaIwjltrgiZVpeQ+r5DlX2dAs9pLywGkgb7kbyWJWebEryOqLS8ekL
         DwkHnlwULNxRlkwCfM5JNBcbElAURpEcR8jIwZlsKoFbz3eFsxpyJAT2aL39IKdK1t/f
         BD/TiI565YC1mnCTZwVGDoC2rd4+FiohK79ceDqQaqTNUC/XGb60D4Rhjs8BKLUbETh7
         Ifp7NkPQXPduZC196yPVubrkVtwbj6TwhrND7esK4KUr3uc2x/CjBRuwx+63pQhQ4ZPV
         sVGAwn65+ifHMX5s+TbIcvIH32UPwnv89PTTt8Xhfzjrf5GzDYC+nPOTmOqadAEw0k5f
         +PpA==
X-Gm-Message-State: ACgBeo0csR4zkzRaFJS3VjATAHwHvPchKkn/toAdP1rWA+gvuoCfecJS
        ezH2RqDfoumibtMr2sg0QgTFbg==
X-Google-Smtp-Source: AA6agR41sigTM1QplFEk7ilx2AToTWI+44RsnWXwm+KCPkN3Ke9VOJb9Rbo/3Ibge0ahTCwUr+pt2w==
X-Received: by 2002:a05:600c:1d9b:b0:3a5:d66e:6370 with SMTP id p27-20020a05600c1d9b00b003a5d66e6370mr1954640wms.73.1662637360830;
        Thu, 08 Sep 2022 04:42:40 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id n3-20020a05600c4f8300b003a54d610e5fsm3014169wmq.26.2022.09.08.04.42.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 04:42:40 -0700 (PDT)
Message-ID: <24caa772-293b-3409-f8cf-23b3ad21f7b5@linaro.org>
Date:   Thu, 8 Sep 2022 12:42:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/1] arm64: dts: qcom: Fix apq8016 compat string to match
 yaml
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220908105720.857294-1-bryan.odonoghue@linaro.org>
 <20220908105720.857294-2-bryan.odonoghue@linaro.org>
 <bdc0c7f8-70ca-af57-1ed2-ad9d0fd6b9d3@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <bdc0c7f8-70ca-af57-1ed2-ad9d0fd6b9d3@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2022 12:31, Krzysztof Kozlowski wrote:
> It's not a fix and should not be backported because of breaking ABI.
> 

Ah I didn't think of the ABI, you're right.

> The other compatible was correct, just deprecated in June this year, I
> think. Quite fast to replace the deprecated compatible. Maybe this
> should be just documented in the bindings as deprecated.

Yes, I'll do that so.
