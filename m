Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 212296B6A1E
	for <lists+devicetree@lfdr.de>; Sun, 12 Mar 2023 19:33:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231749AbjCLSdd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 12 Mar 2023 14:33:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231800AbjCLSdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 12 Mar 2023 14:33:15 -0400
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73682497C6
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:30:08 -0700 (PDT)
Received: by mail-ed1-f53.google.com with SMTP id fd5so6334044edb.7
        for <devicetree@vger.kernel.org>; Sun, 12 Mar 2023 11:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678645684;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uklOMUJVS+u74q2lNQ2L3Oa76MwPD6cKkPZXD0PzvOk=;
        b=kUd2LNXbyBH2cyv9T1xvYy0j7Yzrltsvb7NN0XhFEZ5ohdEYc8t1s2rpTVzLbPZeio
         A3S7uuWKKbdawAfu+mheL2m6GCMSDNnQwlvt2zyjz4xmA4sAXknHLFt+M8U3SoLS/5W/
         6uOhCwP1IdhFnrk3x7H+gMFItnNAXqrPMQIiznL1Rc2Kb/ZSTQFXGqZxj1wwDFe0ZOlb
         6Mfb3TpPwvA/kulpMCTegGAiBoA028XTmepqEvS6JB2y4j8WJKkdYzazmxKZH9wlcVjM
         8TrdU+7dbuGVcG0fGtp9IhEP5w5jbHzXjTZtpniLD9PxJKkwY75dBzk6QVl4dKxyBrJ+
         dTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678645684;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uklOMUJVS+u74q2lNQ2L3Oa76MwPD6cKkPZXD0PzvOk=;
        b=DiBL2kYVl4LwVofShxFXf26XwHQ+DaCE1lmdRvHbGMhQffPBSc+ANWqzf35dQ/Bg2O
         4b63RlPC/kfdRODCe+H4m/ajUP9R++mogpJGo4Cl/RZoCEQR92hL5W1ePc7LiXBMbpzB
         +Fg5tYURqcHlprpoP1VGxXbDe1CJGkc42FOg1a0I4Fyat9B5SShDG3ZIGU5IagDJzlH5
         c5pOcFs6hg2ad9GkRy43dPoxDT4GLviHMX8dHyWx2C2P1MzfXySCMuU9S02OockuI9XN
         baoDpT+SL4nsH1EuY7TkqKbyGVJ8rjIQl2ohA/T1Px3l0boziyRPB9h+B6LmjkBesMxT
         jtFg==
X-Gm-Message-State: AO0yUKXTTMiAng7dZFwhHnYKcpQmHQba2K4tTpPDiL4BdRIaejjXtCvQ
        +tIN9RteQGdJBzmyyAMZ/IVaqGfj58/xGBG3zoE=
X-Google-Smtp-Source: AK7set+wLPwfiYTBJKHeb6798JXdZToZ1wN8CLYiuEE03LcKlvgRWrhC81BlP33K3TpRYzt56OBfGQ==
X-Received: by 2002:a17:906:1604:b0:8af:7b80:82ba with SMTP id m4-20020a170906160400b008af7b8082bamr30601317ejd.20.1678644712043;
        Sun, 12 Mar 2023 11:11:52 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d9f6:3e61:beeb:295a? ([2a02:810d:15c0:828:d9f6:3e61:beeb:295a])
        by smtp.gmail.com with ESMTPSA id b18-20020a17090636d200b008d0dbf15b8bsm2441348ejc.212.2023.03.12.11.11.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Mar 2023 11:11:51 -0700 (PDT)
Message-ID: <f0f6d714-f35c-fa53-f9bf-44cd4baa4aea@linaro.org>
Date:   Sun, 12 Mar 2023 19:11:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v5 1/3] dt-bindings: exynos-dw-mshc-common: add exynos7885
 variants
Content-Language: en-US
To:     Sergey Lisov <sleirsgoevy@gmail.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Jaehoon Chung <jh80.chung@samsung.com>
Cc:     linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <1678644516.665314-1-sleirsgoevy@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1678644516.665314-1-sleirsgoevy@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/03/2023 18:58, Sergey Lisov wrote:
> Some Samsung Exynos boards using the arm64 architecture have DW MMC
> controllers configured for a 32-bit data bus but a 64-bit FIFO. On these
> systems the 64-bit FIFO registers must be accessed in two 32-bit halves.
> 
> Add two new compatible strings, "samsung,exynos7885-dw-mshc" and
> "samsung,exynos7885-dw-mshc-smu" respectively, to denote exynos7885
> boards that need this quirk. But it's very possible that all
> "samsung,exynos7-dw-mshc" boards are actually affected.

And now this is third copy of the same email. This is not acceptable.

Best regards,
Krzysztof

