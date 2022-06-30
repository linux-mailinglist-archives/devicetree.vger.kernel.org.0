Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0FA56226B
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 20:59:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235957AbiF3S7I (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 14:59:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39336 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235847AbiF3S7I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 14:59:08 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 489941EAF6
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 11:59:07 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id pk21so40820949ejb.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 11:59:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4q21ggPdTyeit3h5q0XZaKPf1WMDwmb/exUUFTFO1os=;
        b=Ccf9ma6E9UX3J8fQ3Ht1TewapbhoTIZR4BXkKnLYPdFBaJSW1ynJ06icNRRKF2dxgZ
         lmfzm/0MWjIQ3xSjA40Swp0uVjdLdgCD2dhndiGiqWgSzc/BAJVvrN7p3OQuERLKtPIh
         t6rsj9gCvH/MMYwXnTVDXeBHLzFx0TM2LuefZoLVEcUJFEXxKTbYAZmcnno65TyJXtbb
         /zwcoLzD0V+MgwherN5IypUJazdEa77OLJa+rvgClPgSCRh0XmwTx3ZyeQ7p15b/hWOy
         eHAyiQTf9rmC/VTYkVAdQfY2KO46iT07qTdPGJlYeueYwi2EwXfo5xg3hdNVft8pmB9Y
         Zh0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4q21ggPdTyeit3h5q0XZaKPf1WMDwmb/exUUFTFO1os=;
        b=24QS+BjiYyI4XfIwMK55h9t5w0HiJK5j47+MuBh+LQy5T3pfyPq3sGd20pcRWQkWz2
         avp1dVa2tU1Ot9WleoUVx5HDY59GeE+fYvX78O8ay8QT7cbWl6zswRM3OOLdTu7gXMoY
         KvRZ7SUrm0mlkJCTPmW2gjNWxnK+z49fh2yP7Jq0IcYY76/1mkx/hIb7lbDpUUkPTLa/
         YndGop4WdRlFjOd/WuyAgUqfjwa0oQe8FpNn+Aymhsj6d2mHhUCnCkrQXVGn8BCBhSHf
         xLuuMLRANdtAFsEL0hUhbJl995W68oDVudLdnum3msVBLGkMtTzs0ePz8KfZtxvWNKFI
         gp8g==
X-Gm-Message-State: AJIora9q/qgF2MxzwNwkkdWhd4QcIjE6Xb9vznJJG1XdZbQ5PN2G0bjY
        oF6WFGL/KWpOlVxN6sZ59Bd++A==
X-Google-Smtp-Source: AGRyM1uE64dtWtGZMbzHs6M6S5fYap/RCGHDO9B10pekIM+vwNcayRqVPfpHlkOeAiMbW59r9xjd2g==
X-Received: by 2002:a17:907:948a:b0:726:f3d7:c7d6 with SMTP id dm10-20020a170907948a00b00726f3d7c7d6mr10467497ejc.2.1656615545858;
        Thu, 30 Jun 2022 11:59:05 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i13-20020a1709061e4d00b006fef51aa566sm9414673ejj.2.2022.06.30.11.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 11:59:04 -0700 (PDT)
Message-ID: <ff3caa0b-a248-d5ee-a3e5-c49fc41b8cff@linaro.org>
Date:   Thu, 30 Jun 2022 20:59:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/7] dt-bindings: msm: dsi: Fix phy-name binding
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
 <20220630120845.3356144-2-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630120845.3356144-2-bryan.odonoghue@linaro.org>
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

On 30/06/2022 14:08, Bryan O'Donoghue wrote:
> The driver doesn't care about the name of the phy in DTS. msm8916 has since
> 2016 named the phy "dsi-phy" with later SoCs taking the name "dsi".
> 
> There's no reason to have a constraint on the name here, simply to have a
> name. Remove the redundant const in favour of maxItems: 1.

For single entry the names field could be as well removed. But if it is
there, let's make it specific, not generic. Therefore instead add
allOf:if:then restricting it per variants.

Best regards,
Krzysztof
