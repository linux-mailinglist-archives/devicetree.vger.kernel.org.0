Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAE0756800D
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 09:38:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231769AbiGFHhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 03:37:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231781AbiGFHhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 03:37:46 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B35322BEE
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 00:37:39 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id c15so17418375ljr.0
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 00:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iIAexuesD3/xg7eAmfqotEatXDt1HRkHyqYMg7E1hxw=;
        b=DXVjfULjCWw5Z1vRiZi9Ql0gEoa7/pXv4U6zLgZB3jGi97QNeq8qDbpcnUtLpJ/KhR
         IcbOoNKlLuNmqE+YC5f+PZB1LvUYU7fmFPcFXREw2xWVrnxhyvI6d0z+nxIBPIZxzIKP
         baHtIZLMgXH837hQHQiX6E0GRoG/uWAAbmG0BPztxsKYc0qKyG7aVdGiwAbbhdmBQANq
         ofaEK+Jauc6Ln9ZWAcWz/tNR6LgJzVuUePnC64hNCS/6qMn2VrFPKUJss/O9LDXlJzVK
         2TLckA5adTw5TIyf4tkdIdIixrmnaaLFahND29e+bHX4Y6esl2kkpG/5lV5Qn6jg3PRF
         Yh4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iIAexuesD3/xg7eAmfqotEatXDt1HRkHyqYMg7E1hxw=;
        b=pMdhcMwq8YAuaq4aogo4b4HNhhy4HSpxy6/k2E6Xs1jbdWNJr1P/7T8V4xFhhsiD7j
         E/32C1wA88J3GOMum6lvoBvrGR8ZTc/A9PxJnciUHdVr+oyJhrevEju6cqXaDqgnSeHn
         rKQqq1zJ9lv6/cg2L8zha1RxfEW3oR4y2WLGKJT6sFnCw1tsUn6q8BTvp8obKhDFu0HW
         eB6oReDndoIOtU8yGmXKy16V32IAh92dvMTMjUx+3qb74zCdOCCwoioyOclLh/J3SWAA
         SY8Y7KxOWRDibrtkGY4+NW4FHyjUksjozi6DKxMxOOc/sNBXxfsqP3Da8q777x4k4zee
         C07A==
X-Gm-Message-State: AJIora+PMO1MvPATjrJbmtG26UQ50SptKBMMTb22hGesKcvYqNzRNra6
        hK9LOL1T//Mzhe3g9eK/+2zzcw==
X-Google-Smtp-Source: AGRyM1vkuazYe0AkchqV44aLB4Vax9ic8gKK1wKl/wCnwX1ibxBSEdHS6fJVKl/RSluEcPGnSKo8+Q==
X-Received: by 2002:a2e:8217:0:b0:25a:7232:b3d6 with SMTP id w23-20020a2e8217000000b0025a7232b3d6mr21029432ljg.463.1657093057259;
        Wed, 06 Jul 2022 00:37:37 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id d3-20020ac241c3000000b00478fe3327aasm6110131lfi.217.2022.07.06.00.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 00:37:36 -0700 (PDT)
Message-ID: <0493d71a-0fbf-699a-f9ed-523dbe454d76@linaro.org>
Date:   Wed, 6 Jul 2022 09:37:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH net-next v2 3/9] dt-bindings: memory: Add Tegra234 MGBE
 memory clients
Content-Language: en-US
To:     Bhadram Varka <vbhadram@nvidia.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com, kuba@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, pabeni@redhat.com,
        davem@davemloft.net, edumazet@google.com,
        Thierry Reding <treding@nvidia.com>
References: <20220706031259.53746-1-vbhadram@nvidia.com>
 <20220706031259.53746-4-vbhadram@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706031259.53746-4-vbhadram@nvidia.com>
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

On 06/07/2022 05:12, Bhadram Varka wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Add the memory client and stream ID definitions for the MGBE hardware
> found on Tegra234 SoCs.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Bhadram Varka <vbhadram@nvidia.com>
> ---

Eh? What happened with the tag?


Best regards,
Krzysztof
