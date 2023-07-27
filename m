Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D4E776485E
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 09:20:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233168AbjG0HUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 03:20:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233185AbjG0HUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 03:20:09 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 364DA5FC8
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:13:22 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5221f193817so764765a12.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 00:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690441949; x=1691046749;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lFqE8r5CtlgU1LoE0+yybns5D17+UGGGRnbdRjn75UQ=;
        b=yW9GI/Jeu8KatNBEkbADekfBexGaJp8iJqjHgAcCMGgHuhLPAN6zRT9cFXkSXDFjJI
         SSOw/3CiXedms5XnVwL1ON/Zj5MZHkEm0Prq2AO2oYqzMNaZmp3zTGpXE2tnYQKtuVXa
         alDMwA6SMkod0Jdxn8kGdGxqnSaNp77uLOawOVifFFgwCItnxrrzR3ascsok2DEZ9MG8
         E7pFOEt+cyi+YHOsXoIMycG8OjdVMSIQ4u66J59Ft0KKC5ik0BxWY9NFqZDZqVVhBig7
         s5ptocsgpkmIGx/W+BqIXwrvqJ+NLSa1z+XoiR1NKmJ+j+nwK+TAvvk0MNA/tVUTws9e
         Z+mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690441949; x=1691046749;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lFqE8r5CtlgU1LoE0+yybns5D17+UGGGRnbdRjn75UQ=;
        b=HGSnvFnoh5WWyKybSO77SCxO/+Zosgh/3he8Pof7cI9+EZXJOs/UUIWZhKyi2/4eTn
         aGgFJpdAjWDmuNmEiPJMrfp1QJBg+NlcIr9EmLQQeASSuURmrP8glD7xobQbw1UImLMO
         ICVSC8cmUhXjAzPHoErbtVK3x7VIbNw3PKRvA+K2e+xp1Meqj3RwBaGevYm2ETYDVdHp
         ZaNvJnicdNWoCwL3ideABx+bMCruT7FWwgK1i475ynRdRnKbKaj0FzqvwoOZSbarJWqc
         bYy9TDN00Osfh9eno9/lCLqqKrw7K6uBmtjWNcgYFZpuhkZ3GrcOJVNv3txekIDXl7DH
         U7FQ==
X-Gm-Message-State: ABy/qLZsAkljFpf5gVLgjpk9wduSxq9nigPcfsxmfBUIdAblAgAlnZbO
        YdBuPvD4ben4dq94to5syiTsLQ==
X-Google-Smtp-Source: APBJJlGpg+0/nLk4w83EaG6UQXNsZiCVcmuVU3faIKI5eOKHpMH/thLDsVyAPxgz0THKl8q21kARPQ==
X-Received: by 2002:aa7:d443:0:b0:522:6e6c:68a2 with SMTP id q3-20020aa7d443000000b005226e6c68a2mr1046551edr.18.1690441949300;
        Thu, 27 Jul 2023 00:12:29 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id n10-20020aa7c44a000000b0052238bc70ccsm307703edr.89.2023.07.27.00.12.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 00:12:28 -0700 (PDT)
Message-ID: <33ae66df-a01b-1f4a-b55e-1a6f70567243@linaro.org>
Date:   Thu, 27 Jul 2023 09:12:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/3] dt-bindings: display: panel: Move HannStar HSD101PWW2
 to LVDS
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Jon Hunter <jonathanh@nvidia.com>,
        Svyatoslav Ryhel <clamor95@gmail.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20230726184857.2294570-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230726184857.2294570-1-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 20:48, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The HannStar HSD101PWW2 is an LVDS panel, so move it to the correct
> bindings file.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

