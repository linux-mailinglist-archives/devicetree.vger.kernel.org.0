Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 859CF6FE0FF
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 17:01:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237071AbjEJPBd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 11:01:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237192AbjEJPBb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 11:01:31 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE60BD06E
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 08:01:15 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9659c5b14d8so1199466466b.3
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 08:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683730870; x=1686322870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vVd0FRReFbXFOhYx5lQ2Gap/VFHzmaCiqe9z4rWLb1I=;
        b=Z76Uye+WL6zR8S1PJRJcI4sbHKFdwnQZhvZ6YNufRTR0RQ8xl7yYxQCRgwPgb+7nFB
         Gf3oqye9xFWWaIPAyRinl5vOH16ryJFJd4no8h6feni33/TzWjEfZFNW3gh5alf06aSH
         Ox7PGNenQwIL/JrZp7W44N5QRsBx4wpNEfJfEpOVCHD1AuwHfDrFYeJodiFkcTv4SmGD
         dRdMZB856zY/Y/SjsMGQ/9J/amYcXG7nVnDAyqINe9EY/a3+5UIwBEjOM+M/Z7AOTVhX
         aIG/l2DH4W2+1sP4Rn+2tw0QMMiuoPNvDZnjnA0VBnroORsDSBzaqemaXfPtweGmrVrH
         F5cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683730870; x=1686322870;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vVd0FRReFbXFOhYx5lQ2Gap/VFHzmaCiqe9z4rWLb1I=;
        b=WXz66ZB4rCuVib7tetZ+SjaqHi3Sm6HUik5lpaKLx/muMeXop4sN17qE1aXliQVF36
         hnz+NWWng93WHVRSg+p/sI0XmQ0FfBF8xKjOkPe4qq8zM3aG+eEQn+wg72930/pMJ0VO
         tJIXpAHR0EzMVohxpw6qlkKT/CGBJdHOYY9BRbWeiYRqA4WqN0V8ypHN23f/W1PzGwlg
         nPNo5nqcnW7aQQotU0MpHMVDoKiZj/pwT+mJnvSDz5jZ+w9CmnLmwkhjSikwcHOGprKL
         CI9a2TeJ1H1UjfQm7om4NCW5irckJ+6dcyYwJ6CxdfJEzb1U/JDPVZmcNcy5f7qCzj9A
         QK2g==
X-Gm-Message-State: AC+VfDziJJixNc4l225nZh8bnBFXtsdJ6IIyZTm/1L+hb3i+tbOILs4l
        yssumx8G7zkZoiWpsF3jK8Lemg==
X-Google-Smtp-Source: ACHHUZ7GiXX4UuZSC2NCohugLiUujJCC7bZc0/nv1q/rRJXQUlxcUI15rUlcsE8El9c2BC1nLuC3+g==
X-Received: by 2002:a17:906:974b:b0:965:ff38:2fb3 with SMTP id o11-20020a170906974b00b00965ff382fb3mr15745406ejy.74.1683730869782;
        Wed, 10 May 2023 08:01:09 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:c175:a0f9:6928:8c9d? ([2a02:810d:15c0:828:c175:a0f9:6928:8c9d])
        by smtp.gmail.com with ESMTPSA id gf25-20020a170906e21900b0094edfbd475csm2716496ejb.127.2023.05.10.08.01.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 May 2023 08:01:08 -0700 (PDT)
Message-ID: <390d42f2-56ed-1613-7665-ea5cbaf743ee@linaro.org>
Date:   Wed, 10 May 2023 17:01:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 4/6] dt-bindings: Add bindings to support DRAM MRQ GSCs
Content-Language: en-US
To:     Peter De Schrijver <pdeschrijver@nvidia.com>,
        thierry.reding@gmail.com, jonathanh@nvidia.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
        stefank@nvidia.com
References: <20230510142248.183629-1-pdeschrijver@nvidia.com>
 <20230510142248.183629-5-pdeschrijver@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510142248.183629-5-pdeschrijver@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/05/2023 16:22, Peter De Schrijver wrote:
> Add bindings for DRAM MRQ GSC support.
> 
> Co-developed-by: Stefan Kristiansson <stefank@nvidia

Subject: drop second/last, redundant "bindings". The "dt-bindings"
prefix is already stating that these are bindings.


Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).

.com>
> Signed-off-by: Stefan Kristiansson <stefank@nvidia.com>
> Signed-off-by: Peter De Schrijver <pdeschrijver@nvidia.com>
> ---

Missing changelog. I am not going to review the same patch.

Best regards,
Krzysztof

