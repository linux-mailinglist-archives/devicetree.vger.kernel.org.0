Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74A664FB123
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 02:49:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234047AbiDKAvT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 20:51:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233951AbiDKAvS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 20:51:18 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA2E56362
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 17:49:02 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id r7so8960617wmq.2
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 17:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4tamNyF6bf9rRzkDETI85U1UDzFyh16eTk+YBeoZJpk=;
        b=v52Gi7fvd4cBuk2zqBLEimee1BywfpJmFAGLJ6bYfVjMlO5tx/4gySMDT1yoTzw5R9
         v4aaa85yxVKNHqTCX5U8U1eJKoglAJ5uhaS8u2V92vEo7GhrXCa/4gYriGxkPMmuXKWP
         BvsDYkeVqZq9a+zXpPoQ5OO/wBSjWym5cpg7XsxulHBOJ+kzMlx07VaQsmPPL+Wuk9QR
         UMAf9MV5WVMF9zuTcnoc926PtniyaR8wg5EfTvN5b7G+j1gBihRWPLrysZeTFNO9lOHE
         Irnno23Hmk7KkBltFwJzXk2TT5d9d1QejC4otiiSyAf3yYep4PsIjZgyDjPTfZPNNLpH
         m9ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4tamNyF6bf9rRzkDETI85U1UDzFyh16eTk+YBeoZJpk=;
        b=BIeQDi8SFn3FiuV2yy2EmT65eUb6TrVLmtWPffjcQ4+EAoMK33zdWseXdK7T7DF0ot
         iH3InxcOq83Rw5/2uhrHuk3+OcNo6PluNGJXGYuMMPGI+ITpJ/6pgr1GxLpkYr54dU+H
         fhSjgoXoKmtDvrfnFlwXgO5HOmGqgLWWSK4h3yLb8kl0m+vpARlhxmCccqQJ/6Hque1y
         xKX7YzpmDF6zq9pIzftU1mM4pooe2l91KDBcz09mJ/zKz15GnUoDn4u7boTm6y2MBB9V
         8egRlT2ZagHxGWbT1zhFJ5FhGCWrouMScTHCDJT76n3c+72t8/5WzAeJWnHfqey5CyZx
         PKZQ==
X-Gm-Message-State: AOAM530VRyH95iBpDCU8o97VR4F0fSbHQXnLnJl4qTgKiusVUGZpi7Lo
        N5+rUJclK3W2xQITMPp+B3F7PQ==
X-Google-Smtp-Source: ABdhPJy2LpITWb8vyg5MwZYCXU3lJ6EnL+9e4eamOUkfQHXNaqobnpHvTASKu+gShCncVTEjTgivHA==
X-Received: by 2002:a05:600c:5103:b0:38e:bdce:d69c with SMTP id o3-20020a05600c510300b0038ebdced69cmr362592wms.168.1649638141148;
        Sun, 10 Apr 2022 17:49:01 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id p17-20020adfc391000000b002079f14979dsm4633664wrf.13.2022.04.10.17.48.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Apr 2022 17:49:00 -0700 (PDT)
Message-ID: <1627f666-da37-db85-307f-e75cf7e7521b@linaro.org>
Date:   Mon, 11 Apr 2022 01:48:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: [RESEND PATCH 1/2] media: dt-bindings: imx412: Add regulator
 descriptions
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        mchehab@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     robert.foss@linaro.org, hfink@snap.com, jgrahsl@snap.com,
        dmitry.baryshkov@linaro.org, vladimir.zapolskiy@linaro.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
References: <20220410163553.3501938-1-bryan.odonoghue@linaro.org>
 <20220410163553.3501938-2-bryan.odonoghue@linaro.org>
 <d69346e0-77a0-13da-77b6-b343cfadd5c6@linaro.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <d69346e0-77a0-13da-77b6-b343cfadd5c6@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2022 19:43, Krzysztof Kozlowski wrote:
> You could shorten this to "interface power supply"

np

I did a copy/paste from another DTS, I don't mind reformatting though
